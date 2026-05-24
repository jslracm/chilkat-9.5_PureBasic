; FormMain.pb - Main window and all dialogs
; Requires all other modules to be XIncluded first.
;
; Layout:
;   Main window 1400×900
;   ├── Top bar (y=0, h=40): SyncPL, SyncCL, status label, Columns button
;   └── PanelGadget (y=40, h=860):
;       ├── Tab 0 "Registros (Todos)"  – full grid
;       ├── Tab 1 "Registros (PL)"     – filter bar + grid, ctx-menu: detail
;       ├── Tab 2 "Registros (CL)"     – filter bar + grid, ctx-menu: detail + reply
;       └── Tab 3 "Búsqueda/Filtros"  – search bar + grid

; ---- Gadget ID globals ----

Global MainWin.i

; Top bar
Global BtnSyncPL.i, BtnSyncCL.i, LblStatus.i, BtnColumns.i

; PanelGadget
Global PanelMain.i

; Grids (ListIconGadget)
Global GridAll.i, GridPL.i, GridCL.i, GridSearch.i

; PL filter gadgets
Global CmbEmpresaPL.i, TxtMailPL.i, TxtSubjectPL.i, ChkVigentesPL.i, BtnApplyPL.i, BtnResetPL.i

; CL filter gadgets
Global CmbEmpresaCL.i, TxtMailCL.i, TxtSubjectCL.i, ChkVigentesCL.i, BtnApplyCL.i, BtnResetCL.i

; Search filter gadgets
Global CmbEmpresaSrch.i, CmbOrigenSrch.i, TxtMailSrch.i, TxtSubjectSrch.i, ChkVigentesSrch.i, BtnBuscar.i

; Cached combo selections (updated on #PB_EventType_Change; avoids stale reads at button-press time)
Global CurrentEmpresaPL.s, CurrentEmpresaCL.s, CurrentEmpresaSrch.s, CurrentOrigenSrch.s

; Context menus
Global MenuPL.i, MenuCL.i

; Menu item IDs
#MenuPL_Detail = 1001
#MenuCL_Detail = 2001
#MenuCL_Reply  = 2002

; Timer for sync status polling
#TimerStatus = 1

; ---- Add columns to a ListIconGadget from ColNames/ColWidths ----
Procedure AddGridColumns(grid.i, firstColWidth.i = 0)
  ; First column already set at creation time; add the rest
  Protected c.i
  If firstColWidth > 0
    ; resize first column (no standard API; it was set at creation)
  EndIf
  For c = 1 To #NCOLS - 1
    AddGadgetColumn(grid, c, ColNames(c), ColWidths(c))
  Next
EndProcedure

; ---- Fill a ListIconGadget from a List Of Registro ----
Procedure FillGrid(grid.i, List rows.Registro())
  ClearGadgetItems(grid)
  Protected r.i = 0
  ForEach rows()
    AddGadgetItem(grid, -1, Str(rows()\id))
    SetGadgetItemText(grid, r,  rows()\sourceAccount,    1)
    SetGadgetItemText(grid, r,  rows()\mailbox,           2)
    SetGadgetItemText(grid, r,  rows()\producto,          3)
    SetGadgetItemText(grid, r,  rows()\versionProducto,   4)
    SetGadgetItemText(grid, r,  rows()\clienteEmpresa,    5)
    SetGadgetItemText(grid, r,  rows()\clienteNombre,     6)
    SetGadgetItemText(grid, r,  rows()\clienteApellidos,  7)
    SetGadgetItemText(grid, r,  rows()\clienteMail,       8)
    SetGadgetItemText(grid, r,  rows()\clienteTelefono,   9)
    SetGadgetItemText(grid, r,  rows()\fechaRegistro,     10)
    SetGadgetItemText(grid, r,  rows()\fechaUltimaValida, 11)
    SetGadgetItemText(grid, r,  rows()\instCode,          12)
    SetGadgetItemText(grid, r,  rows()\subject,           13)
    SetGadgetItemText(grid, r,  rows()\fechaCorreo,       14)
    SetGadgetItemText(grid, r,  rows()\rawMessageId,      15)
    r + 1
  Next
EndProcedure

; Apply current ColWidths to all live grids using the Windows API directly.
; LVM_SETCOLUMNWIDTH ($101E) bypasses any PureBasic internal column-width cache.
#LVM_SETCOLUMNWIDTH = $101E

Procedure ApplyColumnWidths()
  Protected c.i, g.i
  Dim grids.i(3)
  grids(0) = GridAll : grids(1) = GridPL : grids(2) = GridCL : grids(3) = GridSearch
  For g = 0 To 3
    If grids(g) = 0 : Continue : EndIf
    Protected hLV.i = GadgetID(grids(g))
    For c = 0 To #NCOLS - 1
      SendMessage_(hLV, #LVM_SETCOLUMNWIDTH, c, ColWidths(c))
    Next
  Next
EndProcedure

; ---- Reload all grids ----
Procedure LoadAllGrids()
  QueryRows(DataAll(),    "",   "", 0, "", "")
  QueryRows(DataPL(),     "PL", "", 0, "", "")
  QueryRows(DataCL(),     "CL", "", 0, "", "")
  QueryRows(DataSearch(), "",   "", 0, "", "")
  FillGrid(GridAll,    DataAll())
  FillGrid(GridPL,     DataPL())
  FillGrid(GridCL,     DataCL())
  FillGrid(GridSearch, DataSearch())
  ApplyColumnWidths()
EndProcedure

; ---- Refresh empresa combos (PL, CL, Search) ----
Procedure RefreshEmpresaCombos()
  Protected NewList emp.s()
  GetEmpresas(emp())

  Dim cmbs.i(2)
  cmbs(0) = CmbEmpresaPL : cmbs(1) = CmbEmpresaCL : cmbs(2) = CmbEmpresaSrch

  Protected c.i
  For c = 0 To 2
    ClearGadgetItems(cmbs(c))
    AddGadgetItem(cmbs(c), -1, "")
    ForEach emp()
      AddGadgetItem(cmbs(c), -1, emp())
    Next
  Next
EndProcedure

; ---- Apply PL filter ----
Procedure ApplyFilterPL()
  Protected emp.s   = CurrentEmpresaPL
  Protected mail.s  = GetGadgetText(TxtMailPL)
  Protected subj.s  = GetGadgetText(TxtSubjectPL)
  Protected vig.i   = GetGadgetState(ChkVigentesPL)
  QueryRows(DataPL(), "PL", emp, vig, mail, subj)
  FillGrid(GridPL, DataPL())
  ApplyColumnWidths()
EndProcedure
Procedure ApplyCLFilter()
  Protected emp.s   = CurrentEmpresaCL
  Protected mail.s  = GetGadgetText(TxtMailCL)
  Protected subj.s  = GetGadgetText(TxtSubjectCL)
  Protected vig.i   = GetGadgetState(ChkVigentesCL)
  QueryRows(DataCL(), "CL", emp, vig, mail, subj)
  FillGrid(GridCL, DataCL())
  ApplyColumnWidths()
EndProcedure
Procedure ApplySearchFilter()
  Protected emp.s    = CurrentEmpresaSrch
  Protected origen.s = CurrentOrigenSrch
  Protected mail.s   = GetGadgetText(TxtMailSrch)
  Protected subj.s   = GetGadgetText(TxtSubjectSrch)
  Protected vig.i    = GetGadgetState(ChkVigentesSrch)
  QueryRows(DataSearch(), origen, emp, vig, mail, subj)
  FillGrid(GridSearch, DataSearch())
  ApplyColumnWidths()
EndProcedure

; ---- Get selected Registro from a grid+list pair ----
; Returns pointer to the element in the list, or #Null if nothing selected.

Procedure.i GetSelectedRow(grid.i, List rows.Registro())
  Protected idx.i = GetGadgetState(grid)
  If idx < 0 : ProcedureReturn #Null : EndIf
  Protected i.i = 0
  ForEach rows()
    If i = idx : ProcedureReturn @rows() : EndIf
    i + 1
  Next
  ProcedureReturn #Null
EndProcedure

; ---- Detail dialog ----

Procedure ShowDetailDialog(parentWin.i, *reg.Registro)
  Protected dlg.i = OpenWindow(#PB_Any, 0, 0, 750, 580,
    "Detalle " + Chr(8211) + " " + *reg\clienteEmpresa + " " + Chr(8211) + " " + *reg\producto,
    #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(parentWin))
  If Not dlg : ProcedureReturn : EndIf

  Protected y.i = 10
  ; Display subject
  TextGadget(#PB_Any, 10, y, 120, 20, "Subject:", #PB_Text_Right)
  Protected edtSubj.i = StringGadget(#PB_Any, 138, y, 595, 22, *reg\subject, #PB_String_ReadOnly)
  y + 30

  ; Key fields
  Macro LabelField(lbl, val, yy)
    TextGadget(#PB_Any, 10, yy, 120, 20, lbl, #PB_Text_Right)
    StringGadget(#PB_Any, 138, yy, 280, 22, val, #PB_String_ReadOnly)
  EndMacro

  LabelField("producto:",         *reg\producto,          y) : y + 28
  LabelField("versi" + Chr(243) + "n:",          *reg\versionProducto,   y) : y + 28
  LabelField("empresa:",          *reg\clienteEmpresa,    y) : y + 28
  LabelField("nombre:",           *reg\clienteNombre,     y) : y + 28
  LabelField("apellidos:",        *reg\clienteApellidos,  y) : y + 28
  LabelField("mail:",             *reg\clienteMail,       y) : y + 28
  LabelField("tel" + Chr(233) + "fono:",         *reg\clienteTelefono,   y) : y + 28
  LabelField("fechaRegistro:",    *reg\fechaRegistro,     y) : y + 28
  LabelField("fechaUltimaValida:",*reg\fechaUltimaValida, y) : y + 28
  LabelField("instCode:",         *reg\instCode,          y) : y + 28
  LabelField("fechaCorreo:",      *reg\fechaCorreo,       y) : y + 28
  LabelField("rawMessageId:",     *reg\rawMessageId,      y) : y + 28
  LabelField("sourceAccount:",    *reg\sourceAccount,     y) : y + 28

  Protected btnClose.i = ButtonGadget(#PB_Any, 325, y + 10, 100, 26, "Cerrar")

  Repeat
    Protected ev.i = WaitWindowEvent()
    Select ev
      Case #PB_Event_CloseWindow
        If EventWindow() = dlg : Break : EndIf
      Case #PB_Event_Gadget
        If EventGadget() = btnClose : Break : EndIf
    EndSelect
  ForEver
  CloseWindow(dlg)
EndProcedure

; ---- ShowReplyJsonOptions: checkboxes ViewerTutorial / DataloggerViewer ----
; Returns two booleans via pointers; returns #True if user clicked OK.

Procedure.i ShowReplyJsonOptions(parentWin.i, *optVT.Integer, *optDV.Integer)
  Protected dlg.i = OpenWindow(#PB_Any, 0, 0, 420, 160,
    "Productos adicionales",
    #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(parentWin))
  If Not dlg : ProcedureReturn #False : EndIf

  TextGadget(#PB_Any, 14, 12, 390, 22, "Selecciona los productos a notificar (opcional):")
  Protected chkVT.i = CheckBoxGadget(#PB_Any, 14, 40, 380, 22, "ViewerTutorial")
  Protected chkDV.i = CheckBoxGadget(#PB_Any, 14, 68, 380, 22, "DataloggerViewer")
  Protected btnOk.i     = ButtonGadget(#PB_Any, 220, 108, 88, 26, "OK")
  Protected btnCancel.i = ButtonGadget(#PB_Any, 316, 108, 88, 26, "Cancelar")

  ; Pre-check based on previous values
  SetGadgetState(chkVT, *optVT\i)
  SetGadgetState(chkDV, *optDV\i)

  Protected accepted.i = #False
  Repeat
    Protected ev.i = WaitWindowEvent()
    Select ev
      Case #PB_Event_CloseWindow
        If EventWindow() = dlg : Break : EndIf
      Case #PB_Event_Gadget
        Select EventGadget()
          Case btnOk
            *optVT\i = GetGadgetState(chkVT)
            *optDV\i = GetGadgetState(chkDV)
            accepted = #True
            Break
          Case btnCancel
            Break
        EndSelect
    EndSelect
  ForEver
  CloseWindow(dlg)
  ProcedureReturn accepted
EndProcedure

; ---- ExtractPcIdPrefix: strip Re:/Fw: then extract "IDdelPC,producto," prefix ----
; Returns the two-field prefix (e.g. "PC12345,MiProducto,") from the subject.

Procedure.s ExtractPcIdPrefix(rawSubject.s)
  ; Strip leading Re: / Fw: / RE: / FW: (repeated)
  Protected s.s = rawSubject
  Repeat
    Protected stripped.i = 0
    If Left(s, 3) = "Re:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 3) = "re:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 3) = "RE:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 3) = "Fw:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 3) = "fw:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 3) = "FW:"  : s = Trim(Mid(s, 4)) : stripped = 1 : EndIf
    If Left(s, 4) = "Fwd:" : s = Trim(Mid(s, 5)) : stripped = 1 : EndIf
    If Not stripped : Break : EndIf
  ForEver

  ; Extract first two comma-separated fields: "field1,field2,"
  Protected pos1.i = FindString(s, ",", 1)
  If pos1 = 0 : ProcedureReturn s : EndIf
  Protected pos2.i = FindString(s, ",", pos1 + 1)
  If pos2 = 0 : ProcedureReturn Left(s, pos1) : EndIf
  ProcedureReturn Left(s, pos2)
EndProcedure

; ---- Simple date comparison (works for yyyy-MM-dd and yyyy/MM/dd format) ----
; Returns 1 if a > b, -1 if a < b, 0 if equal or both empty.

Procedure.i CompareDateStrings(a.s, b.s)
  ; Normalise separators
  a = ReplaceString(a, "/", "-")
  b = ReplaceString(b, "/", "-")
  If a > b : ProcedureReturn 1 : EndIf
  If a < b : ProcedureReturn -1 : EndIf
  ProcedureReturn 0
EndProcedure

; ---- Reply JSON dialog helpers ----

; Parse fechaUltimaValida (YYYY/MM/DD, YYYY-MM-DD, YYYY.MM.DD) -> PB date integer.
; Returns 0 if the string cannot be parsed.
Procedure.i ParseFechaUVDate(d.s)
  If Len(d) < 10 : ProcedureReturn 0 : EndIf
  Protected norm.s = ReplaceString(ReplaceString(d, "/", "-"), ".", "-")
  Protected result.i = ParseDate("%yyyy-%mm-%dd", Left(norm, 10))
  If result > 0 : ProcedureReturn result : EndIf
  ProcedureReturn 0
EndProcedure

; Load JSON from edtBody, update fechaUltimaValida to newDate, re-emit pretty-printed.
Procedure UpdateBodyDate(edtBody.i, newDate.s)
  Protected cur.s = GetGadgetText(edtBody)
  Protected j.i = CkJsonObject::ckCreate()
  If Not j : ProcedureReturn : EndIf
  If CkJsonObject::ckLoad(j, cur)
    CkJsonObject::ckUpdateString(j, "fechaUltimaValida", newDate)
    CkJsonObject::setCkEmitCompact(j, #False)
    SetGadgetText(edtBody, CkJsonObject::ckEmit(j))
  EndIf
  CkJsonObject::ckDispose(j)
EndProcedure

; ---- Reply JSON dialog ----

Procedure OnReplyJsonFromCL()
  Protected *reg.Registro = GetSelectedRow(GridCL, DataCL())
  If Not *reg
    MessageRequester("Gestor Licencias", "Selecciona una fila primero.", #PB_MessageRequester_Ok | #PB_MessageRequester_Warning)
    ProcedureReturn
  EndIf

  If *reg\producto = ""
    MessageRequester("Gestor Licencias", "La fila seleccionada no tiene 'producto'.", #PB_MessageRequester_Ok | #PB_MessageRequester_Warning)
    ProcedureReturn
  EndIf

  ; --- Options dialog ---
  Protected optVT.Integer, optDV.Integer
  optVT\i = 0 : optDV\i = 0
  If Not ShowReplyJsonOptions(MainWin, optVT, optDV)
    ProcedureReturn
  EndIf

  ; --- Build initial JSON body from registry row ---
  Protected initJson.i = CkJsonObject::ckCreate()
  CkJsonObject::ckAppendString(initJson, "producto",          *reg\producto)
  CkJsonObject::ckAppendString(initJson, "versionProducto",   *reg\versionProducto)
  CkJsonObject::ckAppendString(initJson, "clienteNombre",     *reg\clienteNombre)
  CkJsonObject::ckAppendString(initJson, "clienteApellidos",  *reg\clienteApellidos)
  CkJsonObject::ckAppendString(initJson, "clienteDireccion",  "")
  CkJsonObject::ckAppendString(initJson, "clienteEmpresa",    *reg\clienteEmpresa)
  CkJsonObject::ckAppendString(initJson, "clienteMail",       *reg\clienteMail)
  CkJsonObject::ckAppendString(initJson, "clienteTelefono",   *reg\clienteTelefono)
  CkJsonObject::ckAppendString(initJson, "fechaRegistro",     *reg\fechaRegistro)
  CkJsonObject::ckAppendString(initJson, "fechaUltimaValida", *reg\fechaUltimaValida)
  CkJsonObject::ckAppendString(initJson, "instCode",          *reg\instCode)
  CkJsonObject::setCkEmitCompact(initJson, #False)
  Protected initBodyStr.s    = CkJsonObject::ckEmit(initJson)
  Protected initFechaUV.s    = JsonStr(initJson, "fechaUltimaValida")
  CkJsonObject::ckDispose(initJson)

  ; --- Reply dialog ---
  Protected dlg.i = OpenWindow(#PB_Any, 0, 0, 820, 620,
    "Responder con JSON " + Chr(8211) + " " + *reg\clienteEmpresa + " " + Chr(8211) + " " + *reg\producto,
    #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(MainWin))
  If Not dlg : ProcedureReturn : EndIf

  TextGadget(#PB_Any, 10, 10, 200, 20, "Nueva fechaUltimaValida:")
  Protected initDateVal.i = ParseFechaUVDate(initFechaUV)
  If initDateVal <= 0 : initDateVal = AddDate(Date(), #PB_Date_Day, 30) : EndIf
  Protected edtDate.i = DateGadget(#PB_Any, 215, 7, 200, 24, "%yyyy/%mm/%dd", initDateVal)

  TextGadget(#PB_Any, 10, 42, 200, 20, "Ajuste (" + Chr(177) + "d" + Chr(237) + "as):")
  Protected edtDelta.i      = StringGadget(#PB_Any, 215, 39, 60, 24, "0")
  Protected btnApplyDelta.i = ButtonGadget(#PB_Any, 279, 39, 30, 24, "+")

  TextGadget(#PB_Any, 10, 72, 200, 20, "JSON body (editable):")
  Protected edtBody.i = EditorGadget(#PB_Any, 10, 95, 795, 320)
  SetGadgetText(edtBody, initBodyStr)

  TextGadget(#PB_Any, 10, 420, 800, 20, "Subject: Re: " + *reg\subject)

  Protected btnSend.i   = ButtonGadget(#PB_Any, 620, 450, 90, 28, "Enviar")
  Protected btnCancel.i = ButtonGadget(#PB_Any, 718, 450, 88, 28, "Cancelar")

  ; History panel (read-only multiline)
  TextGadget(#PB_Any, 10, 490, 200, 18, "Historial correos:")
  Protected edtHist.i = EditorGadget(#PB_Any, 10, 510, 795, 95, #PB_Editor_ReadOnly)

  ; Load history
  Protected histBuf.s = ""
  Protected NewList histRows.Registro()
  QueryRows(histRows(), "PL", "", 0, *reg\clienteMail, "")
  ForEach histRows()
    histBuf + histRows()\fechaCorreo + "  " + histRows()\fechaUltimaValida + "  " + histRows()\subject + Chr(10)
  Next
  SetGadgetText(edtHist, histBuf)

  Protected sent.i = #False
  Protected subjectReply.s = *reg\subject
  If Left(Trim(subjectReply), 3) <> "Re:" And Left(Trim(subjectReply), 3) <> "re:"
    subjectReply = "Re: " + subjectReply
  EndIf

  Repeat
    Protected ev.i = WaitWindowEvent()
    Select ev
      Case #PB_Event_CloseWindow
        If EventWindow() = dlg : Break : EndIf

      Case #PB_Event_Gadget
        Select EventGadget()

          Case edtDate
            ; Date widget changed: sync fechaUltimaValida in JSON body
            UpdateBodyDate(edtBody, FormatDate("%yyyy/%mm/%dd", GetGadgetState(edtDate)))

          Case btnApplyDelta
            ; Apply integer delta to DateGadget date, reset field to 0
            Protected dltVal.i = Val(GetGadgetText(edtDelta))
            If dltVal <> 0
              Protected dltNewDate.i = AddDate(GetGadgetState(edtDate), #PB_Date_Day, dltVal)
              SetGadgetState(edtDate, dltNewDate)
              UpdateBodyDate(edtBody, FormatDate("%yyyy/%mm/%dd", dltNewDate))
            EndIf
            SetGadgetText(edtDelta, "0")

          Case btnCancel
            Break

          Case btnSend
            Protected bodyToSend.s = GetGadgetText(edtBody)
            If bodyToSend = ""
              MessageRequester("Gestor Licencias", "El cuerpo JSON est" + Chr(225) + " vac" + Chr(237) + "o.", #PB_MessageRequester_Ok | #PB_MessageRequester_Warning)
              Continue
            EndIf

            ; Validate JSON parse to extract new date
            Protected jSend.i = CkJsonObject::ckCreate()
            Protected newFechaUV.s = ""
            If jSend And CkJsonObject::ckLoad(jSend, bodyToSend)
              newFechaUV = JsonStr(jSend, "fechaUltimaValida")
              CkJsonObject::ckDispose(jSend)
            Else
              If jSend : CkJsonObject::ckDispose(jSend) : EndIf
              MessageRequester("Gestor Licencias", "JSON no v" + Chr(225) + "lido.", #PB_MessageRequester_Ok | #PB_MessageRequester_Warning)
              Continue
            EndIf

            ; Send main correo_de_licencia to PL
            Protected sendErr.s = SendTextMail(AppConfig\CL_USER, AppConfig\PL_USER, "",
              subjectReply, bodyToSend, *reg\rawMessageId)

            If sendErr <> ""
              MessageRequester("Error al enviar", sendErr, #PB_MessageRequester_Ok | #PB_MessageRequester_Error)
              Continue
            EndIf

            ; ---- Adicional emails for selected products ----
            Protected pcPrefix.s = ExtractPcIdPrefix(*reg\subject)

            If optVT\i
              Protected plResult_VT.PlSearchResult
              FindLatestPlJsonBySubjectContains(pcPrefix + "ViewerTutorial,1", plResult_VT)
              If Not plResult_VT\found Or CompareDateStrings(plResult_VT\fechaUltimaValida, newFechaUV) < 0
                Protected extraSubj_VT.s = subjectReply + ",(IDdelPC)ViewerTutorial,1"
                If Left(*reg\subject, 3) <> "Re:" : extraSubj_VT = "Re: " + *reg\subject + ",ViewerTutorial,1" : EndIf
                extraSubj_VT = pcPrefix + "ViewerTutorial,1"
                SendTextMail(AppConfig\CL_USER, AppConfig\PL_USER, "", extraSubj_VT, bodyToSend, "")
              EndIf
            EndIf

            If optDV\i
              Protected plResult_DV.PlSearchResult
              FindLatestPlJsonBySubjectContains(pcPrefix + "DataloggerViewer,1", plResult_DV)
              If Not plResult_DV\found Or CompareDateStrings(plResult_DV\fechaUltimaValida, newFechaUV) < 0
                Protected extraSubj_DV.s = pcPrefix + "DataloggerViewer,1"
                SendTextMail(AppConfig\CL_USER, AppConfig\PL_USER, "", extraSubj_DV, bodyToSend, "")
              EndIf
            EndIf

            sent = #True
            Break
        EndSelect
    EndSelect
  ForEver

  CloseWindow(dlg)

  If sent
    MessageRequester("Gestor Licencias", "Correo(s) enviado(s) correctamente.", #PB_MessageRequester_Ok | #PB_MessageRequester_Info)
    ; Reload grids to reflect any changes
    LoadAllGrids()
    RefreshEmpresaCombos()
  EndIf
EndProcedure

; ---- Column preferences dialog ----

Procedure ShowColumnsDialog()
  ; We allow toggling which columns appear in ALL grids simultaneously.
  ; Uses a simple set of checkboxes, one per column.
  ; On OK we recreate the grids (simplest approach).

  Protected dlg.i = OpenWindow(#PB_Any, 0, 0, 400, 420,
    "Columnas visibles",
    #PB_Window_SystemMenu | #PB_Window_WindowCentered, WindowID(MainWin))
  If Not dlg : ProcedureReturn : EndIf

  TextGadget(#PB_Any, 10, 8, 380, 20, "Selecciona las columnas a mostrar:")

  Protected NewList chks.i()
  Protected c.i
  For c = 0 To #NCOLS - 1
    Protected chk.i = CheckBoxGadget(#PB_Any, 14, 34 + c * 22, 370, 20, ColNames(c))
    SetGadgetState(chk, Bool(ColWidths(c) > 0))
    AddElement(chks()) : chks() = chk
  Next

  Protected btnOk.i     = ButtonGadget(#PB_Any, 190, 370, 90, 26, "Aceptar")
  Protected btnCancel.i = ButtonGadget(#PB_Any, 290, 370, 90, 26, "Cancelar")

  Repeat
    Protected ev.i = WaitWindowEvent()
    Select ev
      Case #PB_Event_CloseWindow
        If EventWindow() = dlg : Break : EndIf
      Case #PB_Event_Gadget
        If EventGadget() = btnCancel : Break : EndIf
        If EventGadget() = btnOk
          ; Read checkbox states back into ColWidths (0 = hidden)
          Protected idx.i = 0
          Dim defaultWidths.i(15)
          defaultWidths(0)=40  : defaultWidths(1)=55 : defaultWidths(2)=60 : defaultWidths(3)=130
          defaultWidths(4)=90  : defaultWidths(5)=130: defaultWidths(6)=100: defaultWidths(7)=110
          defaultWidths(8)=170 : defaultWidths(9)=95 : defaultWidths(10)=95: defaultWidths(11)=105
          defaultWidths(12)=130: defaultWidths(13)=300:defaultWidths(14)=135:defaultWidths(15)=160

          ForEach chks()
            If GetGadgetState(chks()) = 0
              ColWidths(idx) = 0
            Else
              If ColWidths(idx) = 0 : ColWidths(idx) = defaultWidths(idx) : EndIf
            EndIf
            idx + 1
          Next
          Break
        EndIf
    EndSelect
  ForEver

  CloseWindow(dlg)
  ApplyColumnWidths()
EndProcedure

; ---- Create the main window and all its gadgets ----

Procedure.i CreateMainWindow()
  MainWin = OpenWindow(#PB_Any, 0, 0, 1400, 900,
    "Gestor Licencias RMT [PB]",
    #PB_Window_SystemMenu | #PB_Window_ScreenCentered | #PB_Window_SizeGadget)
  If Not MainWin : ProcedureReturn #False : EndIf

  ; --- Top bar ---
  BtnSyncPL  = ButtonGadget(#PB_Any,   5,  7, 180, 26, "Sincronizar PL (FROM CL)")
  BtnSyncCL  = ButtonGadget(#PB_Any, 195,  7, 180, 26, "Sincronizar CL (FROM PL)")
  LblStatus  = TextGadget(#PB_Any,   385,  12, 680, 20, "Listo.")
  BtnColumns = ButtonGadget(#PB_Any, 1280,  7, 110, 26, "Columnas...")

  ; --- Panel (tabs) ---
  PanelMain = PanelGadget(#PB_Any, 0, 40, 1400, 855)

    ; --- Tab 0: Registros (Todos) ---
    AddGadgetItem(PanelMain, -1, "Registros (Todos)")
      GridAll = ListIconGadget(#PB_Any, 2, 2, 1388, 818, ColNames(0), ColWidths(0),
                               #PB_ListIcon_FullRowSelect | #PB_ListIcon_GridLines)
      AddGridColumns(GridAll)

    ; --- Tab 1: Registros (PL) ---
    AddGadgetItem(PanelMain, -1, "Registros (PL)")
      ; Filter bar
      TextGadget(#PB_Any, 5, 5, 90, 20, "Empresa:")
      CmbEmpresaPL  = ComboBoxGadget(#PB_Any, 98,  2, 180, 24)
      TextGadget(#PB_Any, 285, 5, 40, 20, "Mail:")
      TxtMailPL     = StringGadget(#PB_Any, 328, 2, 180, 24, "")
      TextGadget(#PB_Any, 515, 5, 55, 20, "Subject:")
      TxtSubjectPL  = StringGadget(#PB_Any, 573, 2, 250, 24, "")
      ChkVigentesPL = CheckBoxGadget(#PB_Any, 830, 5, 100, 20, "S" + Chr(243) + "lo vigentes")
      BtnApplyPL    = ButtonGadget(#PB_Any, 936, 2, 80, 24, "Aplicar")
      BtnResetPL    = ButtonGadget(#PB_Any, 1022, 2, 80, 24, "Reset")
      ; Grid
      GridPL = ListIconGadget(#PB_Any, 2, 34, 1388, 786, ColNames(0), ColWidths(0),
                              #PB_ListIcon_FullRowSelect | #PB_ListIcon_GridLines)
      AddGridColumns(GridPL)

    ; --- Tab 2: Registros (CL) ---
    AddGadgetItem(PanelMain, -1, "Registros (CL)")
      TextGadget(#PB_Any, 5, 5, 90, 20, "Empresa:")
      CmbEmpresaCL  = ComboBoxGadget(#PB_Any, 98, 2, 180, 24)
      TextGadget(#PB_Any, 285, 5, 40, 20, "Mail:")
      TxtMailCL     = StringGadget(#PB_Any, 328, 2, 180, 24, "")
      TextGadget(#PB_Any, 515, 5, 55, 20, "Subject:")
      TxtSubjectCL  = StringGadget(#PB_Any, 573, 2, 250, 24, "")
      ChkVigentesCL = CheckBoxGadget(#PB_Any, 830, 5, 100, 20, "S" + Chr(243) + "lo vigentes")
      BtnApplyCL    = ButtonGadget(#PB_Any, 936, 2, 80, 24, "Aplicar")
      BtnResetCL    = ButtonGadget(#PB_Any, 1022, 2, 80, 24, "Reset")
      GridCL = ListIconGadget(#PB_Any, 2, 34, 1388, 786, ColNames(0), ColWidths(0),
                              #PB_ListIcon_FullRowSelect | #PB_ListIcon_GridLines)
      AddGridColumns(GridCL)

    ; --- Tab 3: Búsqueda/Filtros ---
    AddGadgetItem(PanelMain, -1, "B" + Chr(250) + "squeda / Filtros")
      TextGadget(#PB_Any, 5, 5, 90, 20, "Empresa:")
      CmbEmpresaSrch  = ComboBoxGadget(#PB_Any, 98, 2, 180, 24)
      TextGadget(#PB_Any, 285, 5, 55, 20, "Origen:")
      CmbOrigenSrch   = ComboBoxGadget(#PB_Any, 343, 2, 90, 24)
      AddGadgetItem(CmbOrigenSrch, -1, "")
      AddGadgetItem(CmbOrigenSrch, -1, "PL")
      AddGadgetItem(CmbOrigenSrch, -1, "CL")
      TextGadget(#PB_Any, 442, 5, 40, 20, "Mail:")
      TxtMailSrch     = StringGadget(#PB_Any, 485, 2, 180, 24, "")
      TextGadget(#PB_Any, 672, 5, 55, 20, "Subject:")
      TxtSubjectSrch  = StringGadget(#PB_Any, 730, 2, 250, 24, "")
      ChkVigentesSrch = CheckBoxGadget(#PB_Any, 988, 5, 100, 20, "S" + Chr(243) + "lo vigentes")
      BtnBuscar       = ButtonGadget(#PB_Any, 1095, 2, 80, 24, "Buscar")
      GridSearch = ListIconGadget(#PB_Any, 2, 34, 1388, 786, ColNames(0), ColWidths(0),
                                 #PB_ListIcon_FullRowSelect | #PB_ListIcon_GridLines)
      AddGridColumns(GridSearch)

  CloseGadgetList()  ; End PanelGadget

  ; --- Context menus ---
  MenuPL = CreatePopupMenu(#PB_Any)
  If MenuPL
    MenuItem(#MenuPL_Detail, "Ver detalle (Subject + JSON)")
  EndIf

  MenuCL = CreatePopupMenu(#PB_Any)
  If MenuCL
    MenuItem(#MenuCL_Detail, "Ver detalle (Subject + JSON)")
    MenuItem(#MenuCL_Reply,  "Responder (JSON)...")
  EndIf

  ; --- Timer for sync status updates (300 ms) ---
  AddWindowTimer(MainWin, #TimerStatus, 300)

  ProcedureReturn #True
EndProcedure

; ---- Main event loop ----

Procedure RunMainEventLoop()
  Protected ev.i, evGad.i, evType.i, evMenu.i, evWin.i

  Repeat
    ev = WaitWindowEvent()

    Select ev

      Case #PB_Event_CloseWindow
        If EventWindow() = MainWin : Break : EndIf

      Case #PB_Event_Timer
        If EventTimer() = #TimerStatus
          SetGadgetText(LblStatus, SyncStatusText)
          ; Check if sync thread finished
          If SyncResultPL\done
            SyncResultPL\done = 0
            If SyncResultPL\errorMsg <> ""
              SyncStatusText = "Error PL: " + SyncResultPL\errorMsg
            Else
              SyncStatusText = "PL sync OK " + Chr(8211) + " " + Str(SyncResultPL\saved) + " nuevos / " + Str(SyncResultPL\processed) + " procesados"
            EndIf
            LoadAllGrids()
            RefreshEmpresaCombos()
            SetGadgetText(LblStatus, SyncStatusText)
          EndIf
          If SyncResultCL\done
            SyncResultCL\done = 0
            If SyncResultCL\errorMsg <> ""
              SyncStatusText = "Error CL: " + SyncResultCL\errorMsg
            Else
              SyncStatusText = "CL sync OK " + Chr(8211) + " " + Str(SyncResultCL\saved) + " nuevos / " + Str(SyncResultCL\processed) + " procesados"
            EndIf
            LoadAllGrids()
            RefreshEmpresaCombos()
            SetGadgetText(LblStatus, SyncStatusText)
          EndIf
        EndIf

      Case #PB_Event_Gadget
        evGad  = EventGadget()
        evType = EventType()

        ; Sync buttons
        If evGad = BtnSyncPL
          SyncStatusText = "Sincronizando PL..."
          SetGadgetText(LblStatus, SyncStatusText)
          SyncResultPL\done = 0
          CreateThread(@Thread_SyncPL(), 0)

        ElseIf evGad = BtnSyncCL
          SyncStatusText = "Sincronizando CL..."
          SetGadgetText(LblStatus, SyncStatusText)
          SyncResultCL\done = 0
          CreateThread(@Thread_SyncCL(), 0)

        ElseIf evGad = BtnColumns
          ShowColumnsDialog()

        ; PL filter
        ElseIf evGad = BtnApplyPL
          ApplyFilterPL()
        ElseIf evGad = BtnResetPL
          SetGadgetText(TxtMailPL, "") : SetGadgetText(TxtSubjectPL, "")
          SetGadgetState(ChkVigentesPL, 0) : SetGadgetState(CmbEmpresaPL, 0) : CurrentEmpresaPL = ""
          QueryRows(DataPL(), "PL", "", 0, "", "") : FillGrid(GridPL, DataPL()) : ApplyColumnWidths()

        ; CL filter
        ElseIf evGad = BtnApplyCL
          ApplyCLFilter()
        ElseIf evGad = BtnResetCL
          SetGadgetText(TxtMailCL, "") : SetGadgetText(TxtSubjectCL, "")
          SetGadgetState(ChkVigentesCL, 0) : SetGadgetState(CmbEmpresaCL, 0) : CurrentEmpresaCL = ""
          QueryRows(DataCL(), "CL", "", 0, "", "") : FillGrid(GridCL, DataCL()) : ApplyColumnWidths()

        ; Search
        ElseIf evGad = BtnBuscar
          ApplySearchFilter()

        ; Cache combo selections on change (so Apply always reads the committed value)
        ElseIf evGad = CmbEmpresaPL
          CurrentEmpresaPL = GetGadgetText(CmbEmpresaPL)
        ElseIf evGad = CmbEmpresaCL
          CurrentEmpresaCL = GetGadgetText(CmbEmpresaCL)
        ElseIf evGad = CmbEmpresaSrch
          CurrentEmpresaSrch = GetGadgetText(CmbEmpresaSrch)
        ElseIf evGad = CmbOrigenSrch
          CurrentOrigenSrch = GetGadgetText(CmbOrigenSrch)

        ; Right-click on grids → context menu
        ElseIf evType = #PB_EventType_RightClick
          If evGad = GridPL
            DisplayPopupMenu(MenuPL, WindowID(MainWin))
          ElseIf evGad = GridCL
            DisplayPopupMenu(MenuCL, WindowID(MainWin))
          EndIf
        EndIf

      Case #PB_Event_Menu
        evMenu = EventMenu()
        Select evMenu
          Case #MenuPL_Detail
            Protected *rPL.Registro = GetSelectedRow(GridPL, DataPL())
            If *rPL : ShowDetailDialog(MainWin, *rPL) : EndIf

          Case #MenuCL_Detail
            Protected *rCL.Registro = GetSelectedRow(GridCL, DataCL())
            If *rCL : ShowDetailDialog(MainWin, *rCL) : EndIf

          Case #MenuCL_Reply
            OnReplyJsonFromCL()
        EndSelect

    EndSelect
  ForEver

  ; Cleanup
  RemoveWindowTimer(MainWin, #TimerStatus)
  CloseWindow(MainWin)
EndProcedure

; IDE Options = PureBasic 6.40 (Windows - x64)
; CursorPosition = 56
; FirstLine = 48
; Folding = ----
; EnableThread
; EnableXP
; DPIAware
; Encoding = UTF8