DeclareModule CkAuthAzureStorage
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessKey(obj.i)
  Declare setCkAccessKey(obj.i, value.s)
  Declare.s ckAccount(obj.i)
  Declare setCkAccount(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckScheme(obj.i)
  Declare setCkScheme(obj.i, value.s)
  Declare.s ckService(obj.i)
  Declare setCkService(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckXMsVersion(obj.i)
  Declare setCkXMsVersion(obj.i, value.s)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkAuthAzureStorage
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkAuthAzureStorageCreate()
  PrototypeC CkAuthAzureStorageDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureStorageLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthAzureStorageLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthAzureStorageLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureStorageLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthAzureStorageLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthAzureStorageCreate.CkAuthAzureStorageCreate = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_CreateW")
  Global AuthAzureStorageDispose.CkAuthAzureStorageDispose = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_DisposeW")
  Global AuthAzureStorageAccessKey.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_accessKeyW")
  Global AuthAzureStoragePSetAccessKey.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putAccessKeyW")
  Global AuthAzureStorageAccount.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_accountW")
  Global AuthAzureStoragePSetAccount.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putAccountW")
  Global AuthAzureStorageDebugLogFilePath.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_debugLogFilePathW")
  Global AuthAzureStoragePSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putDebugLogFilePathW")
  Global AuthAzureStorageLastErrorHtml.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_lastErrorHtmlW")
  Global AuthAzureStorageLastErrorText.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_lastErrorTextW")
  Global AuthAzureStorageLastErrorXml.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_lastErrorXmlW")
  Global AuthAzureStorageLastMethodSuccess.cklPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_getLastMethodSuccessW")
  Global AuthAzureStoragePSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putLastMethodSuccessW")
  Global AuthAzureStorageScheme.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_schemeW")
  Global AuthAzureStoragePSetScheme.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putSchemeW")
  Global AuthAzureStorageService.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_serviceW")
  Global AuthAzureStoragePSetService.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putServiceW")
  Global AuthAzureStorageVerboseLogging.cklPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_getVerboseLoggingW")
  Global AuthAzureStoragePSetVerboseLogging.cklPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putVerboseLoggingW")
  Global AuthAzureStorageVersion.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_versionW")
  Global AuthAzureStorageXMsVersion.cksPropGet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_xMsVersionW")
  Global AuthAzureStoragePSetXMsVersion.cksPropSet = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_putXMsVersionW")
  Global AuthAzureStorageSaveLastError.cklMs = GetFunction(CkAuthAzureStorageLibId,"CkAuthAzureStorageU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthAzureStorageCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthAzureStorageDispose(obj) : EndProcedure
  Procedure.s ckAccessKey(obj.i) : ProcedureReturn PeekS(AuthAzureStorageAccessKey(obj)) : EndProcedure
  Procedure setCkAccessKey(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetAccessKey(obj,value) : EndProcedure
  Procedure.s ckAccount(obj.i) : ProcedureReturn PeekS(AuthAzureStorageAccount(obj)) : EndProcedure
  Procedure setCkAccount(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetAccount(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthAzureStorageDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthAzureStorageLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthAzureStorageLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthAzureStorageLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthAzureStorageLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthAzureStoragePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckScheme(obj.i) : ProcedureReturn PeekS(AuthAzureStorageScheme(obj)) : EndProcedure
  Procedure setCkScheme(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetScheme(obj,value) : EndProcedure
  Procedure.s ckService(obj.i) : ProcedureReturn PeekS(AuthAzureStorageService(obj)) : EndProcedure
  Procedure setCkService(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetService(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthAzureStorageVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthAzureStoragePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthAzureStorageVersion(obj)) : EndProcedure
  Procedure.s ckXMsVersion(obj.i) : ProcedureReturn PeekS(AuthAzureStorageXMsVersion(obj)) : EndProcedure
  Procedure setCkXMsVersion(obj.i, value.s) : ProcedureReturn AuthAzureStoragePSetXMsVersion(obj,value) : EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthAzureStorageSaveLastError(obj, path) :  EndProcedure
EndModule

