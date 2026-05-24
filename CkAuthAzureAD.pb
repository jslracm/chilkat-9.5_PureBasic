DeclareModule CkAuthAzureAD
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessToken(obj.i)
  Declare setCkAccessToken(obj.i, value.s)
  Declare.s ckClientId(obj.i)
  Declare setCkClientId(obj.i, value.s)
  Declare.s ckClientSecret(obj.i)
  Declare setCkClientSecret(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumSecondsRemaining(obj.i)
  Declare.s ckResource(obj.i)
  Declare setCkResource(obj.i, value.s)
  Declare.s ckTenantId(obj.i)
  Declare setCkTenantId(obj.i, value.s)
  Declare.l ckValid(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckObtainAccessToken(obj.i, connection.i)
  Declare.i ckObtainAccessTokenAsync(obj.i, connection.i)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkAuthAzureAD
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkAuthAzureADCreate()
  PrototypeC CkAuthAzureADDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureADLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthAzureADLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthAzureADLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAzureADLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthAzureADLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthAzureADCreate.CkAuthAzureADCreate = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_CreateW")
  Global AuthAzureADDispose.CkAuthAzureADDispose = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_DisposeW")
  Global AuthAzureADAccessToken.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_accessTokenW")
  Global AuthAzureADPSetAccessToken.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putAccessTokenW")
  Global AuthAzureADClientId.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_clientIdW")
  Global AuthAzureADPSetClientId.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putClientIdW")
  Global AuthAzureADClientSecret.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_clientSecretW")
  Global AuthAzureADPSetClientSecret.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putClientSecretW")
  Global AuthAzureADDebugLogFilePath.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_debugLogFilePathW")
  Global AuthAzureADPSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putDebugLogFilePathW")
  Global AuthAzureADLastErrorHtml.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_lastErrorHtmlW")
  Global AuthAzureADLastErrorText.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_lastErrorTextW")
  Global AuthAzureADLastErrorXml.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_lastErrorXmlW")
  Global AuthAzureADLastMethodSuccess.cklPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_getLastMethodSuccessW")
  Global AuthAzureADPSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putLastMethodSuccessW")
  Global AuthAzureADNumSecondsRemaining.cklPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_getNumSecondsRemainingW")
  Global AuthAzureADResource.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_resourceW")
  Global AuthAzureADPSetResource.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putResourceW")
  Global AuthAzureADTenantId.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_tenantIdW")
  Global AuthAzureADPSetTenantId.cksPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putTenantIdW")
  Global AuthAzureADValid.cklPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_getValidW")
  Global AuthAzureADVerboseLogging.cklPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_getVerboseLoggingW")
  Global AuthAzureADPSetVerboseLogging.cklPropSet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_putVerboseLoggingW")
  Global AuthAzureADVersion.cksPropGet = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_versionW")
  Global AuthAzureADLoadTaskCaller.cklMi = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_LoadTaskCallerW")
  Global AuthAzureADObtainAccessToken.cklMi = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_ObtainAccessTokenW")
  Global AuthAzureADObtainAccessTokenAsync.ckiMi = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_ObtainAccessTokenAsyncW")
  Global AuthAzureADSaveLastError.cklMs = GetFunction(CkAuthAzureADLibId,"CkAuthAzureADU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthAzureADCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthAzureADDispose(obj) : EndProcedure
  Procedure.s ckAccessToken(obj.i) : ProcedureReturn PeekS(AuthAzureADAccessToken(obj)) : EndProcedure
  Procedure setCkAccessToken(obj.i, value.s) : ProcedureReturn AuthAzureADPSetAccessToken(obj,value) : EndProcedure
  Procedure.s ckClientId(obj.i) : ProcedureReturn PeekS(AuthAzureADClientId(obj)) : EndProcedure
  Procedure setCkClientId(obj.i, value.s) : ProcedureReturn AuthAzureADPSetClientId(obj,value) : EndProcedure
  Procedure.s ckClientSecret(obj.i) : ProcedureReturn PeekS(AuthAzureADClientSecret(obj)) : EndProcedure
  Procedure setCkClientSecret(obj.i, value.s) : ProcedureReturn AuthAzureADPSetClientSecret(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthAzureADDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthAzureADPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthAzureADLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthAzureADLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthAzureADLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthAzureADLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthAzureADPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumSecondsRemaining(obj.i) : ProcedureReturn AuthAzureADNumSecondsRemaining(obj) : EndProcedure
  Procedure.s ckResource(obj.i) : ProcedureReturn PeekS(AuthAzureADResource(obj)) : EndProcedure
  Procedure setCkResource(obj.i, value.s) : ProcedureReturn AuthAzureADPSetResource(obj,value) : EndProcedure
  Procedure.s ckTenantId(obj.i) : ProcedureReturn PeekS(AuthAzureADTenantId(obj)) : EndProcedure
  Procedure setCkTenantId(obj.i, value.s) : ProcedureReturn AuthAzureADPSetTenantId(obj,value) : EndProcedure
  Procedure.l ckValid(obj.i) : ProcedureReturn AuthAzureADValid(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthAzureADVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthAzureADPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthAzureADVersion(obj)) : EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn AuthAzureADLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckObtainAccessToken(obj.i, connection.i) :  ProcedureReturn AuthAzureADObtainAccessToken(obj, connection) :  EndProcedure
  Procedure.i ckObtainAccessTokenAsync(obj.i, connection.i) :  ProcedureReturn AuthAzureADObtainAccessTokenAsync(obj, connection) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthAzureADSaveLastError(obj, path) :  EndProcedure
EndModule

