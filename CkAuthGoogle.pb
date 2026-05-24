DeclareModule CkAuthGoogle
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessToken(obj.i)
  Declare setCkAccessToken(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEmailAddress(obj.i)
  Declare setCkEmailAddress(obj.i, value.s)
  Declare.l ckExpireNumSeconds(obj.i)
  Declare setCkExpireNumSeconds(obj.i, value.l)
  Declare.l ckIat(obj.i)
  Declare setCkIat(obj.i, value.l)
  Declare.s ckJsonKey(obj.i)
  Declare setCkJsonKey(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumSecondsRemaining(obj.i)
  Declare.s ckScope(obj.i)
  Declare setCkScope(obj.i, value.s)
  Declare.s ckSubEmailAddress(obj.i)
  Declare setCkSubEmailAddress(obj.i, value.s)
  Declare.l ckValid(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.i ckGetP12(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckObtainAccessToken(obj.i, connection.i)
  Declare.i ckObtainAccessTokenAsync(obj.i, connection.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetP12(obj.i, key.i)
EndDeclareModule

Module CkAuthGoogle
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkAuthGoogleCreate()
  PrototypeC CkAuthGoogleDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthGoogleLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthGoogleLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthGoogleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthGoogleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthGoogleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthGoogleCreate.CkAuthGoogleCreate = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_CreateW")
  Global AuthGoogleDispose.CkAuthGoogleDispose = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_DisposeW")
  Global AuthGoogleAccessToken.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_accessTokenW")
  Global AuthGooglePSetAccessToken.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putAccessTokenW")
  Global AuthGoogleDebugLogFilePath.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_debugLogFilePathW")
  Global AuthGooglePSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putDebugLogFilePathW")
  Global AuthGoogleEmailAddress.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_emailAddressW")
  Global AuthGooglePSetEmailAddress.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putEmailAddressW")
  Global AuthGoogleExpireNumSeconds.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getExpireNumSecondsW")
  Global AuthGooglePSetExpireNumSeconds.cklPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putExpireNumSecondsW")
  Global AuthGoogleIat.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getIatW")
  Global AuthGooglePSetIat.cklPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putIatW")
  Global AuthGoogleJsonKey.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_jsonKeyW")
  Global AuthGooglePSetJsonKey.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putJsonKeyW")
  Global AuthGoogleLastErrorHtml.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_lastErrorHtmlW")
  Global AuthGoogleLastErrorText.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_lastErrorTextW")
  Global AuthGoogleLastErrorXml.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_lastErrorXmlW")
  Global AuthGoogleLastMethodSuccess.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getLastMethodSuccessW")
  Global AuthGooglePSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putLastMethodSuccessW")
  Global AuthGoogleNumSecondsRemaining.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getNumSecondsRemainingW")
  Global AuthGoogleScope.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_scopeW")
  Global AuthGooglePSetScope.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putScopeW")
  Global AuthGoogleSubEmailAddress.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_subEmailAddressW")
  Global AuthGooglePSetSubEmailAddress.cksPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putSubEmailAddressW")
  Global AuthGoogleValid.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getValidW")
  Global AuthGoogleVerboseLogging.cklPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_getVerboseLoggingW")
  Global AuthGooglePSetVerboseLogging.cklPropSet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_putVerboseLoggingW")
  Global AuthGoogleVersion.cksPropGet = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_versionW")
  Global AuthGoogleGetP12.ckiM = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_GetP12W")
  Global AuthGoogleLoadTaskCaller.cklMi = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_LoadTaskCallerW")
  Global AuthGoogleObtainAccessToken.cklMi = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_ObtainAccessTokenW")
  Global AuthGoogleObtainAccessTokenAsync.ckiMi = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_ObtainAccessTokenAsyncW")
  Global AuthGoogleSaveLastError.cklMs = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_SaveLastErrorW")
  Global AuthGoogleSetP12.cklMi = GetFunction(CkAuthGoogleLibId,"CkAuthGoogleU_SetP12W")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthGoogleCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthGoogleDispose(obj) : EndProcedure
  Procedure.s ckAccessToken(obj.i) : ProcedureReturn PeekS(AuthGoogleAccessToken(obj)) : EndProcedure
  Procedure setCkAccessToken(obj.i, value.s) : ProcedureReturn AuthGooglePSetAccessToken(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthGoogleDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthGooglePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEmailAddress(obj.i) : ProcedureReturn PeekS(AuthGoogleEmailAddress(obj)) : EndProcedure
  Procedure setCkEmailAddress(obj.i, value.s) : ProcedureReturn AuthGooglePSetEmailAddress(obj,value) : EndProcedure
  Procedure.l ckExpireNumSeconds(obj.i) : ProcedureReturn AuthGoogleExpireNumSeconds(obj) : EndProcedure
  Procedure setCkExpireNumSeconds(obj.i, value.l) : ProcedureReturn AuthGooglePSetExpireNumSeconds(obj,value) : EndProcedure
  Procedure.l ckIat(obj.i) : ProcedureReturn AuthGoogleIat(obj) : EndProcedure
  Procedure setCkIat(obj.i, value.l) : ProcedureReturn AuthGooglePSetIat(obj,value) : EndProcedure
  Procedure.s ckJsonKey(obj.i) : ProcedureReturn PeekS(AuthGoogleJsonKey(obj)) : EndProcedure
  Procedure setCkJsonKey(obj.i, value.s) : ProcedureReturn AuthGooglePSetJsonKey(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthGoogleLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthGoogleLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthGoogleLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthGoogleLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthGooglePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumSecondsRemaining(obj.i) : ProcedureReturn AuthGoogleNumSecondsRemaining(obj) : EndProcedure
  Procedure.s ckScope(obj.i) : ProcedureReturn PeekS(AuthGoogleScope(obj)) : EndProcedure
  Procedure setCkScope(obj.i, value.s) : ProcedureReturn AuthGooglePSetScope(obj,value) : EndProcedure
  Procedure.s ckSubEmailAddress(obj.i) : ProcedureReturn PeekS(AuthGoogleSubEmailAddress(obj)) : EndProcedure
  Procedure setCkSubEmailAddress(obj.i, value.s) : ProcedureReturn AuthGooglePSetSubEmailAddress(obj,value) : EndProcedure
  Procedure.l ckValid(obj.i) : ProcedureReturn AuthGoogleValid(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthGoogleVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthGooglePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthGoogleVersion(obj)) : EndProcedure
  Procedure.i ckGetP12(obj.i) :  ProcedureReturn AuthGoogleGetP12(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn AuthGoogleLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckObtainAccessToken(obj.i, connection.i) :  ProcedureReturn AuthGoogleObtainAccessToken(obj, connection) :  EndProcedure
  Procedure.i ckObtainAccessTokenAsync(obj.i, connection.i) :  ProcedureReturn AuthGoogleObtainAccessTokenAsync(obj, connection) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthGoogleSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetP12(obj.i, key.i) :  ProcedureReturn AuthGoogleSetP12(obj, key) :  EndProcedure
EndModule

