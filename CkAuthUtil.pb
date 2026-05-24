DeclareModule CkAuthUtil
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
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckWalmartSignature(obj.i, requestUrl.s, consumerId.s, privateKey.s, requestMethod.s)
EndDeclareModule

Module CkAuthUtil
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkAuthUtilCreate()
  PrototypeC CkAuthUtilDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthUtilLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthUtilLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthUtilLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthUtilLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthUtilLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthUtilCreate.CkAuthUtilCreate = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_CreateW")
  Global AuthUtilDispose.CkAuthUtilDispose = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_DisposeW")
  Global AuthUtilDebugLogFilePath.cksPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_debugLogFilePathW")
  Global AuthUtilPSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_putDebugLogFilePathW")
  Global AuthUtilLastErrorHtml.cksPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_lastErrorHtmlW")
  Global AuthUtilLastErrorText.cksPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_lastErrorTextW")
  Global AuthUtilLastErrorXml.cksPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_lastErrorXmlW")
  Global AuthUtilLastMethodSuccess.cklPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_getLastMethodSuccessW")
  Global AuthUtilPSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_putLastMethodSuccessW")
  Global AuthUtilVerboseLogging.cklPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_getVerboseLoggingW")
  Global AuthUtilPSetVerboseLogging.cklPropSet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_putVerboseLoggingW")
  Global AuthUtilVersion.cksPropGet = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_versionW")
  Global AuthUtilSaveLastError.cklMs = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_SaveLastErrorW")
  Global AuthUtilWalmartSignature.cklMssss = GetFunction(CkAuthUtilLibId,"CkAuthUtilU_walmartSignatureW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthUtilCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthUtilDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthUtilDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthUtilPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthUtilLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthUtilLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthUtilLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthUtilLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthUtilPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthUtilVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthUtilPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthUtilVersion(obj)) : EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthUtilSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckWalmartSignature(obj.i, requestUrl.s, consumerId.s, privateKey.s, requestMethod.s) :  ProcedureReturn PeekS(AuthUtilWalmartSignature(obj, requestUrl, consumerId, privateKey, requestMethod)) :  EndProcedure
EndModule

