DeclareModule CkAuthAzureSAS
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessKey(obj.i)
  Declare setCkAccessKey(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckStringToSign(obj.i)
  Declare setCkStringToSign(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckClear(obj.i)
  Declare.s ckGenerateToken(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetNonTokenParam(obj.i, name.s, value.s)
  Declare.l ckSetTokenParam(obj.i, name.s, authParamName.s, value.s)
EndDeclareModule

Module CkAuthAzureSAS
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkAuthAzureSASCreate()
  PrototypeC CkAuthAzureSASDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureSASLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthAzureSASLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthAzureSASLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureSASLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthAzureSASLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthAzureSASCreate.CkAuthAzureSASCreate = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_CreateW")
  Global AuthAzureSASDispose.CkAuthAzureSASDispose = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_DisposeW")
  Global AuthAzureSASAccessKey.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_accessKeyW")
  Global AuthAzureSASPSetAccessKey.cksPropSet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_putAccessKeyW")
  Global AuthAzureSASDebugLogFilePath.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_debugLogFilePathW")
  Global AuthAzureSASPSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_putDebugLogFilePathW")
  Global AuthAzureSASLastErrorHtml.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_lastErrorHtmlW")
  Global AuthAzureSASLastErrorText.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_lastErrorTextW")
  Global AuthAzureSASLastErrorXml.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_lastErrorXmlW")
  Global AuthAzureSASLastMethodSuccess.cklPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_getLastMethodSuccessW")
  Global AuthAzureSASPSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_putLastMethodSuccessW")
  Global AuthAzureSASStringToSign.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_stringToSignW")
  Global AuthAzureSASPSetStringToSign.cksPropSet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_putStringToSignW")
  Global AuthAzureSASVerboseLogging.cklPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_getVerboseLoggingW")
  Global AuthAzureSASPSetVerboseLogging.cklPropSet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_putVerboseLoggingW")
  Global AuthAzureSASVersion.cksPropGet = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_versionW")
  Global AuthAzureSASClear.ckvM = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_ClearW")
  Global AuthAzureSASGenerateToken.cklM = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_generateTokenW")
  Global AuthAzureSASSaveLastError.cklMs = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_SaveLastErrorW")
  Global AuthAzureSASSetNonTokenParam.cklMss = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_SetNonTokenParamW")
  Global AuthAzureSASSetTokenParam.cklMsss = GetFunction(CkAuthAzureSASLibId,"CkAuthAzureSASU_SetTokenParamW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthAzureSASCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthAzureSASDispose(obj) : EndProcedure
  Procedure.s ckAccessKey(obj.i) : ProcedureReturn PeekS(AuthAzureSASAccessKey(obj)) : EndProcedure
  Procedure setCkAccessKey(obj.i, value.s) : ProcedureReturn AuthAzureSASPSetAccessKey(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthAzureSASDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthAzureSASPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthAzureSASLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthAzureSASLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthAzureSASLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthAzureSASLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthAzureSASPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckStringToSign(obj.i) : ProcedureReturn PeekS(AuthAzureSASStringToSign(obj)) : EndProcedure
  Procedure setCkStringToSign(obj.i, value.s) : ProcedureReturn AuthAzureSASPSetStringToSign(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthAzureSASVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthAzureSASPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthAzureSASVersion(obj)) : EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn AuthAzureSASClear(obj) :  EndProcedure
  Procedure.s ckGenerateToken(obj.i) :  ProcedureReturn PeekS(AuthAzureSASGenerateToken(obj)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthAzureSASSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetNonTokenParam(obj.i, name.s, value.s) :  ProcedureReturn AuthAzureSASSetNonTokenParam(obj, name, value) :  EndProcedure
  Procedure.l ckSetTokenParam(obj.i, name.s, authParamName.s, value.s) :  ProcedureReturn AuthAzureSASSetTokenParam(obj, name, authParamName, value) :  EndProcedure
EndModule

