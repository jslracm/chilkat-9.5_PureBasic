; Database.pb - SQLite persistence layer (JSON parsing + SQLite via PureBasic built-in)
; NOTE: UseSQLiteDatabase() must be called in the main file BEFORE this module.
; CkJsonObject must already be XIncluded.

; DB_PATH is resolved at runtime to the directory of the running executable.
; This ensures the .db file is always created next to the .exe regardless of CWD.
Global DB_PATH.s
#DB      = 0

; ---- Data structure ----

Structure Registro
  id.i
  sourceAccount.s
  mailbox.s
  producto.s
  versionProducto.s
  clienteEmpresa.s
  clienteNombre.s
  clienteApellidos.s
  clienteMail.s
  clienteTelefono.s
  fechaRegistro.s
  fechaUltimaValida.s
  instCode.s
  subject.s
  fechaCorreo.s
  rawMessageId.s
EndStructure

Global NewList DataAll.Registro()
Global NewList DataPL.Registro()
Global NewList DataCL.Registro()
Global NewList DataSearch.Registro()

; ---- DB init ----

Procedure.i InitDB()
  ; Place the DB next to the running executable.
  ; When compiled and run directly this is the project/install folder.
  DB_PATH = GetPathPart(ProgramFilename()) + "registros_clientes.db"

  If Not OpenDatabase(#DB, DB_PATH, "", "", #PB_Database_SQLite)
    ProcedureReturn #False
  EndIf

  DatabaseUpdate(#DB, "CREATE TABLE IF NOT EXISTS registros (" +
    "id INTEGER PRIMARY KEY AUTOINCREMENT," +
    "producto TEXT, versionProducto TEXT, clienteNombre TEXT," +
    "clienteApellidos TEXT, clienteDireccion TEXT, clienteEmpresa TEXT," +
    "clienteMail TEXT, clienteTelefono TEXT, fechaRegistro TEXT," +
    "fechaUltimaValida TEXT, instCode TEXT, rawMessageId TEXT," +
    "sourceAccount TEXT, mailbox TEXT, subject TEXT, fechaCorreo TEXT," +
    "createdAt TEXT DEFAULT (datetime('now')))")

  DatabaseUpdate(#DB, "CREATE INDEX IF NOT EXISTS idx_empresa ON registros (clienteEmpresa)")
  DatabaseUpdate(#DB, "CREATE INDEX IF NOT EXISTS idx_source  ON registros (sourceAccount)")
  DatabaseUpdate(#DB, "CREATE INDEX IF NOT EXISTS idx_msgid   ON registros (rawMessageId, sourceAccount)")
  DatabaseUpdate(#DB, "CREATE INDEX IF NOT EXISTS idx_fcor    ON registros (sourceAccount, fechaCorreo)")

  ProcedureReturn #True
EndProcedure

; ---- Date normalisation (keeps yyyy-MM-dd or yyyy/MM/dd as-is, converts others) ----

Procedure.s IsoDateOrSame(d.s)
  ; Already yyyy-MM-dd or yyyy/MM/dd?
  If Len(d) >= 10
    Protected y.s = Left(d, 4)
    If Val(y) > 1900 : ProcedureReturn d : EndIf
  EndIf
  ProcedureReturn d
EndProcedure

; ---- JSON parsing ----
; Extract first balanced JSON object from free text, return CkJsonObject or 0.
; Caller must dispose the returned object.

Procedure.i ParseFirstJsonFromText(txt.s)
  Protected depth.i = 0
  Protected startIdx.i = -1
  Protected i.i, ch.s

  For i = 1 To Len(txt)
    ch = Mid(txt, i, 1)
    If ch = "{"
      If depth = 0 : startIdx = i : EndIf
      depth + 1
    ElseIf ch = "}"
      If depth > 0
        depth - 1
        If depth = 0 And startIdx > 0
          Protected cand.s = Mid(txt, startIdx, i - startIdx + 1)
          Protected json.i = CkJsonObject::ckCreate()
          If json And CkJsonObject::ckLoad(json, cand)
            ProcedureReturn json
          EndIf
          If json : CkJsonObject::ckDispose(json) : EndIf
          startIdx = -1
        EndIf
      EndIf
    EndIf
  Next
  ProcedureReturn 0
EndProcedure

; Helper: read a JSON string field, empty string if missing
Procedure.s JsonStr(json.i, key.s)
  If CkJsonObject::ckHasMember(json, key)
    ProcedureReturn CkJsonObject::ckStringOf(json, key)
  EndIf
  ProcedureReturn ""
EndProcedure

; ---- Save record (skip duplicates by rawMessageId + instCode + sourceAccount) ----

Procedure.i SaveRecord(json.i, rawMessageId.s, sourceAccount.s, mailbox.s, subject.s, fechaCorreo.s)
  ; Check for duplicate
  If DatabaseQuery(#DB, "SELECT 1 FROM registros WHERE rawMessageId=? AND instCode=? AND sourceAccount=? LIMIT 1")
    SetDatabaseString(#DB, 0, rawMessageId)
    SetDatabaseString(#DB, 1, JsonStr(json, "instCode"))
    SetDatabaseString(#DB, 2, sourceAccount)
    If NextDatabaseRow(#DB)
      FinishDatabaseQuery(#DB)
      ProcedureReturn #False
    EndIf
    FinishDatabaseQuery(#DB)
  EndIf

  Protected sql.s = "INSERT INTO registros (producto,versionProducto,clienteNombre,clienteApellidos," +
    "clienteDireccion,clienteEmpresa,clienteMail,clienteTelefono," +
    "fechaRegistro,fechaUltimaValida,instCode,rawMessageId," +
    "sourceAccount,mailbox,subject,fechaCorreo) " +
    "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

  SetDatabaseString(#DB, 0,  JsonStr(json, "producto"))
  SetDatabaseString(#DB, 1,  JsonStr(json, "versionProducto"))
  SetDatabaseString(#DB, 2,  JsonStr(json, "clienteNombre"))
  SetDatabaseString(#DB, 3,  JsonStr(json, "clienteApellidos"))
  SetDatabaseString(#DB, 4,  JsonStr(json, "clienteDireccion"))
  SetDatabaseString(#DB, 5,  JsonStr(json, "clienteEmpresa"))
  SetDatabaseString(#DB, 6,  JsonStr(json, "clienteMail"))
  SetDatabaseString(#DB, 7,  JsonStr(json, "clienteTelefono"))
  SetDatabaseString(#DB, 8,  IsoDateOrSame(JsonStr(json, "fechaRegistro")))
  SetDatabaseString(#DB, 9,  IsoDateOrSame(JsonStr(json, "fechaUltimaValida")))
  SetDatabaseString(#DB, 10, JsonStr(json, "instCode"))
  SetDatabaseString(#DB, 11, rawMessageId)
  SetDatabaseString(#DB, 12, sourceAccount)
  SetDatabaseString(#DB, 13, mailbox)
  SetDatabaseString(#DB, 14, subject)
  SetDatabaseString(#DB, 15, fechaCorreo)
  DatabaseUpdate(#DB, sql)

  ProcedureReturn #True
EndProcedure

; ---- Update subject/fechaCorreo of existing record ----

Procedure UpsertSubjectFecha(rawMessageId.s, instCode.s, sourceAccount.s, subject.s, fechaCorreo.s)
  If DatabaseQuery(#DB, "SELECT id, subject, fechaCorreo FROM registros WHERE rawMessageId=? AND instCode=? AND sourceAccount=? LIMIT 1")
    SetDatabaseString(#DB, 0, rawMessageId)
    SetDatabaseString(#DB, 1, instCode)
    SetDatabaseString(#DB, 2, sourceAccount)
    If NextDatabaseRow(#DB)
      Protected rowId.i    = GetDatabaseLong(#DB, 0)
      Protected oldSubj.s  = GetDatabaseString(#DB, 1)
      Protected oldFecha.s = GetDatabaseString(#DB, 2)
      FinishDatabaseQuery(#DB)

      Protected newSubj.s = oldSubj
      If oldSubj = "" Or Len(subject) > Len(oldSubj)
        newSubj = subject
      EndIf
      Protected newFecha.s = oldFecha
      If fechaCorreo <> "" : newFecha = fechaCorreo : EndIf

      SetDatabaseString(#DB, 0, newSubj)
      SetDatabaseString(#DB, 1, newFecha)
      SetDatabaseLong(#DB, 2, rowId)
      DatabaseUpdate(#DB, "UPDATE registros SET subject=?, fechaCorreo=? WHERE id=?")
    Else
      FinishDatabaseQuery(#DB)
    EndIf
  EndIf
EndProcedure

; ---- Max fechaCorreo for incremental sync ----

Procedure.s GetMaxFechaCorreo(source.s)
  Protected result.s = ""
  If DatabaseQuery(#DB, "SELECT MAX(fechaCorreo) FROM registros WHERE sourceAccount=?")
    SetDatabaseString(#DB, 0, source)
    If NextDatabaseRow(#DB)
      result = GetDatabaseString(#DB, 0)
    EndIf
    FinishDatabaseQuery(#DB)
  EndIf
  ProcedureReturn result
EndProcedure

; ---- List distinct companies ----

Procedure GetEmpresas(List empresas.s())
  ClearList(empresas())
  If DatabaseQuery(#DB, "SELECT DISTINCT TRIM(clienteEmpresa) FROM registros WHERE clienteEmpresa IS NOT NULL AND TRIM(clienteEmpresa) <> '' ORDER BY 1 COLLATE NOCASE")
    While NextDatabaseRow(#DB)
      AddElement(empresas()) : empresas() = GetDatabaseString(#DB, 0)
    Wend
    FinishDatabaseQuery(#DB)
  EndIf
EndProcedure

; ---- Generic row query -> fills a List Of Registro ----

Procedure QueryRows(List result.Registro(), source.s, empresa.s, soloVigentes.i, mailLike.s, subjectLike.s)
  ClearList(result())

  Protected sql.s = "SELECT id,sourceAccount,mailbox,producto,versionProducto,clienteEmpresa," +
    "clienteNombre,clienteApellidos,clienteMail,clienteTelefono,fechaRegistro," +
    "fechaUltimaValida,instCode,subject,fechaCorreo,rawMessageId " +
    "FROM registros WHERE 1=1"

  Protected params.i = 0

  If source = "PL" Or source = "CL"
    sql + " AND sourceAccount=?"
    params + 1
  EndIf
  If empresa <> ""
    sql + " AND clienteEmpresa=?"
    params + 1
  EndIf
  If soloVigentes
    sql + " AND (fechaUltimaValida IS NOT NULL AND fechaUltimaValida > date('now'))"
  EndIf
  If mailLike <> ""
    sql + " AND clienteMail LIKE ?"
    params + 1
  EndIf
  If subjectLike <> ""
    sql + " AND subject IS NOT NULL AND subject <> '' AND subject LIKE ?"
    params + 1
  EndIf

  sql + " ORDER BY id DESC"

  If DatabaseQuery(#DB, sql)
    Protected pi.i = 0
    If source = "PL" Or source = "CL"
      SetDatabaseString(#DB, pi, source) : pi + 1
    EndIf
    If empresa <> ""
      SetDatabaseString(#DB, pi, empresa) : pi + 1
    EndIf
    If mailLike <> ""
      SetDatabaseString(#DB, pi, "%" + mailLike + "%") : pi + 1
    EndIf
    If subjectLike <> ""
      SetDatabaseString(#DB, pi, "%" + subjectLike + "%") : pi + 1
    EndIf

    While NextDatabaseRow(#DB)
      AddElement(result())
      With result()
        \id               = GetDatabaseLong(#DB, 0)
        \sourceAccount    = GetDatabaseString(#DB, 1)
        \mailbox          = GetDatabaseString(#DB, 2)
        \producto         = GetDatabaseString(#DB, 3)
        \versionProducto  = GetDatabaseString(#DB, 4)
        \clienteEmpresa   = GetDatabaseString(#DB, 5)
        \clienteNombre    = GetDatabaseString(#DB, 6)
        \clienteApellidos = GetDatabaseString(#DB, 7)
        \clienteMail      = GetDatabaseString(#DB, 8)
        \clienteTelefono  = GetDatabaseString(#DB, 9)
        \fechaRegistro    = GetDatabaseString(#DB, 10)
        \fechaUltimaValida= GetDatabaseString(#DB, 11)
        \instCode         = GetDatabaseString(#DB, 12)
        \subject          = GetDatabaseString(#DB, 13)
        \fechaCorreo      = GetDatabaseString(#DB, 14)
        \rawMessageId     = GetDatabaseString(#DB, 15)
      EndWith
    Wend
    FinishDatabaseQuery(#DB)
  EndIf
EndProcedure
