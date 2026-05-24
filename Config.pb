; Config.pb - Configuration structure and loading
; GestorLicenciasRMT - PureBasic Edition

; NOTE: CkJsonObject must already be XIncluded before this file.

Structure ConfigData
  IMAP_HOST.s
  IMAP_PORT.i
  CL_USER.s
  CL_PASS.s
  PL_USER.s
  PL_PASS.s
  MAILBOX_PL.s
  SMTP_HOST.s
  SMTP_PORT_SSL.i
  SMTP_PORT_STARTTLS.i
  SMTP_USER.s
  SMTP_PASS.s
  SMTP_PREFERRED_SECURITY.s
EndStructure

Global AppConfig.ConfigData

Procedure InitDefaultConfig()
  With AppConfig
    \IMAP_HOST              = "imap.ionos.es"
    \IMAP_PORT              = 993
    \CL_USER                = "cl@acm-sl.com"
    \CL_PASS                = ""
    \PL_USER                = "pl@acm-sl.com"
    \PL_PASS                = ""
    \MAILBOX_PL             = "INBOX"
    \SMTP_HOST              = "smtp.ionos.es"
    \SMTP_PORT_SSL          = 465
    \SMTP_PORT_STARTTLS     = 587
    \SMTP_USER              = "cl@acm-sl.com"
    \SMTP_PASS              = ""
    \SMTP_PREFERRED_SECURITY= "SSL"
  EndWith
EndProcedure

Procedure LoadConfig()
  InitDefaultConfig()

  Protected cfgPath.s = GetEnvironmentVariable("RMT_CONFIG")
  If cfgPath = ""
    cfgPath = GetCurrentDirectory() + "config.json"
  EndIf

  If FileSize(cfgPath) > 0
    Protected json.i = CkJsonObject::ckCreate()
    If json And CkJsonObject::ckLoadFile(json, cfgPath)
      Protected sv.s
      Protected iv.i

      sv = CkJsonObject::ckStringOf(json, "IMAP_HOST")             : If sv <> "" : AppConfig\IMAP_HOST = sv : EndIf
      iv = CkJsonObject::ckIntOf(json, "IMAP_PORT")               : If iv <> 0  : AppConfig\IMAP_PORT = iv : EndIf
      sv = CkJsonObject::ckStringOf(json, "CL_USER")              : If sv <> "" : AppConfig\CL_USER = sv : EndIf
      sv = CkJsonObject::ckStringOf(json, "PL_USER")              : If sv <> "" : AppConfig\PL_USER = sv : EndIf
      sv = CkJsonObject::ckStringOf(json, "MAILBOX_PL")           : If sv <> "" : AppConfig\MAILBOX_PL = sv : EndIf
      sv = CkJsonObject::ckStringOf(json, "SMTP_HOST")            : If sv <> "" : AppConfig\SMTP_HOST = sv : EndIf
      iv = CkJsonObject::ckIntOf(json, "SMTP_PORT_SSL")           : If iv <> 0  : AppConfig\SMTP_PORT_SSL = iv : EndIf
      iv = CkJsonObject::ckIntOf(json, "SMTP_PORT_STARTTLS")      : If iv <> 0  : AppConfig\SMTP_PORT_STARTTLS = iv : EndIf
      sv = CkJsonObject::ckStringOf(json, "SMTP_USER")            : If sv <> "" : AppConfig\SMTP_USER = sv : EndIf
      sv = CkJsonObject::ckStringOf(json, "SMTP_PREFERRED_SECURITY"): If sv <> "" : AppConfig\SMTP_PREFERRED_SECURITY = sv : EndIf
    EndIf
    If json : CkJsonObject::ckDispose(json) : EndIf
  EndIf
EndProcedure

; Grid column definitions
#NCOLS = 16   ; number of grid columns
Global Dim ColNames.s(#NCOLS - 1)
Global Dim ColWidths.i(#NCOLS - 1)

Procedure InitColDefs()
  ColNames(0)  = "id"               : ColWidths(0)  = 40
  ColNames(1)  = "sourceAccount"    : ColWidths(1)  = 55
  ColNames(2)  = "mailbox"          : ColWidths(2)  = 60
  ColNames(3)  = "producto"         : ColWidths(3)  = 130
  ColNames(4)  = "versionProducto"  : ColWidths(4)  = 90
  ColNames(5)  = "clienteEmpresa"   : ColWidths(5)  = 130
  ColNames(6)  = "clienteNombre"    : ColWidths(6)  = 100
  ColNames(7)  = "clienteApellidos" : ColWidths(7)  = 110
  ColNames(8)  = "clienteMail"      : ColWidths(8)  = 170
  ColNames(9)  = "clienteTelefono"  : ColWidths(9)  = 95
  ColNames(10) = "fechaRegistro"    : ColWidths(10) = 95
  ColNames(11) = "fechaUltimaValida": ColWidths(11) = 105
  ColNames(12) = "instCode"         : ColWidths(12) = 130
  ColNames(13) = "subject"          : ColWidths(13) = 300
  ColNames(14) = "fechaCorreo"      : ColWidths(14) = 135
  ColNames(15) = "rawMessageId"     : ColWidths(15) = 160
EndProcedure
