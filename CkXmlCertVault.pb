DeclareModule CkXmlCertVault
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckMasterPassword(obj.i)
  Declare setCkMasterPassword(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddCert(obj.i, cert.i)
  Declare.l ckAddCertChain(obj.i, certChain.i)
  Declare.l ckAddCertEncoded(obj.i, encodedBytes.s, encoding.s)
  Declare.l ckAddCertFile(obj.i, path.s)
  Declare.l ckAddCertString(obj.i, certData.s)
  Declare.l ckAddPemFile(obj.i, path.s, password.s)
  Declare.l ckAddPfx(obj.i, pfx.i)
  Declare.l ckAddPfxEncoded(obj.i, encodedBytes.s, encoding.s, password.s)
  Declare.l ckAddPfxFile(obj.i, path.s, password.s)
  Declare.s ckGetXml(obj.i)
  Declare.l ckLoadXml(obj.i, xml.s)
  Declare.l ckLoadXmlFile(obj.i, path.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveXml(obj.i, path.s)
EndDeclareModule

Module CkXmlCertVault
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkXmlCertVaultCreate()
  PrototypeC CkXmlCertVaultDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlCertVaultLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkXmlCertVaultLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkXmlCertVaultLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlCertVaultLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkXmlCertVaultLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global XmlCertVaultCreate.CkXmlCertVaultCreate = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_CreateW")
  Global XmlCertVaultDispose.CkXmlCertVaultDispose = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_DisposeW")
  Global XmlCertVaultDebugLogFilePath.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_debugLogFilePathW")
  Global XmlCertVaultPSetDebugLogFilePath.cksPropSet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_putDebugLogFilePathW")
  Global XmlCertVaultLastErrorHtml.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_lastErrorHtmlW")
  Global XmlCertVaultLastErrorText.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_lastErrorTextW")
  Global XmlCertVaultLastErrorXml.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_lastErrorXmlW")
  Global XmlCertVaultLastMethodSuccess.cklPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_getLastMethodSuccessW")
  Global XmlCertVaultPSetLastMethodSuccess.cklPropSet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_putLastMethodSuccessW")
  Global XmlCertVaultMasterPassword.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_masterPasswordW")
  Global XmlCertVaultPSetMasterPassword.cksPropSet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_putMasterPasswordW")
  Global XmlCertVaultVerboseLogging.cklPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_getVerboseLoggingW")
  Global XmlCertVaultPSetVerboseLogging.cklPropSet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_putVerboseLoggingW")
  Global XmlCertVaultVersion.cksPropGet = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_versionW")
  Global XmlCertVaultAddCert.cklMi = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddCertW")
  Global XmlCertVaultAddCertChain.cklMi = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddCertChainW")
  Global XmlCertVaultAddCertEncoded.cklMss = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddCertEncodedW")
  Global XmlCertVaultAddCertFile.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddCertFileW")
  Global XmlCertVaultAddCertString.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddCertStringW")
  Global XmlCertVaultAddPemFile.cklMss = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddPemFileW")
  Global XmlCertVaultAddPfx.cklMi = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddPfxW")
  Global XmlCertVaultAddPfxEncoded.cklMsss = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddPfxEncodedW")
  Global XmlCertVaultAddPfxFile.cklMss = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_AddPfxFileW")
  Global XmlCertVaultGetXml.cklM = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_getXmlW")
  Global XmlCertVaultLoadXml.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_LoadXmlW")
  Global XmlCertVaultLoadXmlFile.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_LoadXmlFileW")
  Global XmlCertVaultSaveLastError.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_SaveLastErrorW")
  Global XmlCertVaultSaveXml.cklMs = GetFunction(CkXmlCertVaultLibId,"CkXmlCertVaultU_SaveXmlW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn XmlCertVaultCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn XmlCertVaultDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(XmlCertVaultDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn XmlCertVaultPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(XmlCertVaultLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(XmlCertVaultLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(XmlCertVaultLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn XmlCertVaultLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn XmlCertVaultPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckMasterPassword(obj.i) : ProcedureReturn PeekS(XmlCertVaultMasterPassword(obj)) : EndProcedure
  Procedure setCkMasterPassword(obj.i, value.s) : ProcedureReturn XmlCertVaultPSetMasterPassword(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn XmlCertVaultVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn XmlCertVaultPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(XmlCertVaultVersion(obj)) : EndProcedure
  Procedure.l ckAddCert(obj.i, cert.i) :  ProcedureReturn XmlCertVaultAddCert(obj, cert) :  EndProcedure
  Procedure.l ckAddCertChain(obj.i, certChain.i) :  ProcedureReturn XmlCertVaultAddCertChain(obj, certChain) :  EndProcedure
  Procedure.l ckAddCertEncoded(obj.i, encodedBytes.s, encoding.s) :  ProcedureReturn XmlCertVaultAddCertEncoded(obj, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckAddCertFile(obj.i, path.s) :  ProcedureReturn XmlCertVaultAddCertFile(obj, path) :  EndProcedure
  Procedure.l ckAddCertString(obj.i, certData.s) :  ProcedureReturn XmlCertVaultAddCertString(obj, certData) :  EndProcedure
  Procedure.l ckAddPemFile(obj.i, path.s, password.s) :  ProcedureReturn XmlCertVaultAddPemFile(obj, path, password) :  EndProcedure
  Procedure.l ckAddPfx(obj.i, pfx.i) :  ProcedureReturn XmlCertVaultAddPfx(obj, pfx) :  EndProcedure
  Procedure.l ckAddPfxEncoded(obj.i, encodedBytes.s, encoding.s, password.s) :  ProcedureReturn XmlCertVaultAddPfxEncoded(obj, encodedBytes, encoding, password) :  EndProcedure
  Procedure.l ckAddPfxFile(obj.i, path.s, password.s) :  ProcedureReturn XmlCertVaultAddPfxFile(obj, path, password) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(XmlCertVaultGetXml(obj)) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xml.s) :  ProcedureReturn XmlCertVaultLoadXml(obj, xml) :  EndProcedure
  Procedure.l ckLoadXmlFile(obj.i, path.s) :  ProcedureReturn XmlCertVaultLoadXmlFile(obj, path) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn XmlCertVaultSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveXml(obj.i, path.s) :  ProcedureReturn XmlCertVaultSaveXml(obj, path) :  EndProcedure
EndModule

