DeclareModule CkUpload
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckBandwidthThrottleUp(obj.i)
  Declare setCkBandwidthThrottleUp(obj.i, value.l)
  Declare.l ckChunkSize(obj.i)
  Declare setCkChunkSize(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckExpect100Continue(obj.i)
  Declare setCkExpect100Continue(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHostname(obj.i)
  Declare setCkHostname(obj.i, value.s)
  Declare.l ckIdleTimeoutMs(obj.i)
  Declare setCkIdleTimeoutMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLogin(obj.i)
  Declare setCkLogin(obj.i, value.s)
  Declare.l ckNumBytesSent(obj.i)
  Declare.s ckPassword(obj.i)
  Declare setCkPassword(obj.i, value.s)
  Declare.s ckPath(obj.i)
  Declare setCkPath(obj.i, value.s)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPercentUploaded(obj.i)
  Declare.l ckPort(obj.i)
  Declare setCkPort(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.s ckProxyDomain(obj.i)
  Declare setCkProxyDomain(obj.i, value.s)
  Declare.s ckProxyLogin(obj.i)
  Declare setCkProxyLogin(obj.i, value.s)
  Declare.s ckProxyPassword(obj.i)
  Declare setCkProxyPassword(obj.i, value.s)
  Declare.l ckProxyPort(obj.i)
  Declare setCkProxyPort(obj.i, value.l)
  Declare.s ckResponseBodyStr(obj.i)
  Declare.s ckResponseHeader(obj.i)
  Declare.l ckResponseStatus(obj.i)
  Declare.l ckSsl(obj.i)
  Declare setCkSsl(obj.i, value.l)
  Declare.s ckSslAllowedCiphers(obj.i)
  Declare setCkSslAllowedCiphers(obj.i, value.s)
  Declare.s ckSslProtocol(obj.i)
  Declare setCkSslProtocol(obj.i, value.s)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.l ckTotalUploadSize(obj.i)
  Declare.l ckUploadInProgress(obj.i)
  Declare.l ckUploadSuccess(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckAbortUpload(obj.i)
  Declare ckAddCustomHeader(obj.i, name.s, value.s)
  Declare ckAddFileReference(obj.i, name.s, filename.s)
  Declare ckAddParam(obj.i, name.s, value.s)
  Declare.l ckBeginUpload(obj.i)
  Declare.l ckBlockingUpload(obj.i)
  Declare.i ckBlockingUploadAsync(obj.i)
  Declare ckClearFileReferences(obj.i)
  Declare ckClearParams(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSleepMs(obj.i, millisec.l)
EndDeclareModule

Module CkUpload
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.i CkUploadCreate()
  PrototypeC CkUploadDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUploadLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkUploadLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkUploadLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUploadLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkUploadLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global UploadCreate.CkUploadCreate = GetFunction(CkUploadLibId,"CkUploadU_CreateW")
  Global UploadDispose.CkUploadDispose = GetFunction(CkUploadLibId,"CkUploadU_DisposeW")
  Global UploadAbortCurrent.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getAbortCurrentW")
  Global UploadPSetAbortCurrent.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putAbortCurrentW")
  Global UploadBandwidthThrottleUp.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getBandwidthThrottleUpW")
  Global UploadPSetBandwidthThrottleUp.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putBandwidthThrottleUpW")
  Global UploadChunkSize.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getChunkSizeW")
  Global UploadPSetChunkSize.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putChunkSizeW")
  Global UploadClientIpAddress.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_clientIpAddressW")
  Global UploadPSetClientIpAddress.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putClientIpAddressW")
  Global UploadDebugLogFilePath.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_debugLogFilePathW")
  Global UploadPSetDebugLogFilePath.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putDebugLogFilePathW")
  Global UploadExpect100Continue.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getExpect100ContinueW")
  Global UploadPSetExpect100Continue.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putExpect100ContinueW")
  Global UploadHeartbeatMs.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getHeartbeatMsW")
  Global UploadPSetHeartbeatMs.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putHeartbeatMsW")
  Global UploadHostname.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_hostnameW")
  Global UploadPSetHostname.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putHostnameW")
  Global UploadIdleTimeoutMs.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getIdleTimeoutMsW")
  Global UploadPSetIdleTimeoutMs.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putIdleTimeoutMsW")
  Global UploadLastErrorHtml.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_lastErrorHtmlW")
  Global UploadLastErrorText.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_lastErrorTextW")
  Global UploadLastErrorXml.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_lastErrorXmlW")
  Global UploadLastMethodSuccess.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getLastMethodSuccessW")
  Global UploadPSetLastMethodSuccess.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putLastMethodSuccessW")
  Global UploadLogin.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_loginW")
  Global UploadPSetLogin.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putLoginW")
  Global UploadNumBytesSent.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getNumBytesSentW")
  Global UploadPassword.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_passwordW")
  Global UploadPSetPassword.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putPasswordW")
  Global UploadPath.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_pathW")
  Global UploadPSetPath.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putPathW")
  Global UploadPercentDoneScale.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getPercentDoneScaleW")
  Global UploadPSetPercentDoneScale.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putPercentDoneScaleW")
  Global UploadPercentUploaded.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getPercentUploadedW")
  Global UploadPort.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getPortW")
  Global UploadPSetPort.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putPortW")
  Global UploadPreferIpv6.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getPreferIpv6W")
  Global UploadPSetPreferIpv6.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putPreferIpv6W")
  Global UploadProxyDomain.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_proxyDomainW")
  Global UploadPSetProxyDomain.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putProxyDomainW")
  Global UploadProxyLogin.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_proxyLoginW")
  Global UploadPSetProxyLogin.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putProxyLoginW")
  Global UploadProxyPassword.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_proxyPasswordW")
  Global UploadPSetProxyPassword.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putProxyPasswordW")
  Global UploadProxyPort.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getProxyPortW")
  Global UploadPSetProxyPort.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putProxyPortW")
  Global UploadResponseBodyStr.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_responseBodyStrW")
  Global UploadResponseHeader.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_responseHeaderW")
  Global UploadResponseStatus.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getResponseStatusW")
  Global UploadSsl.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getSslW")
  Global UploadPSetSsl.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putSslW")
  Global UploadSslAllowedCiphers.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_sslAllowedCiphersW")
  Global UploadPSetSslAllowedCiphers.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putSslAllowedCiphersW")
  Global UploadSslProtocol.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_sslProtocolW")
  Global UploadPSetSslProtocol.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putSslProtocolW")
  Global UploadTlsPinSet.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_tlsPinSetW")
  Global UploadPSetTlsPinSet.cksPropSet = GetFunction(CkUploadLibId,"CkUploadU_putTlsPinSetW")
  Global UploadTotalUploadSize.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getTotalUploadSizeW")
  Global UploadUploadInProgress.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getUploadInProgressW")
  Global UploadUploadSuccess.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getUploadSuccessW")
  Global UploadVerboseLogging.cklPropGet = GetFunction(CkUploadLibId,"CkUploadU_getVerboseLoggingW")
  Global UploadPSetVerboseLogging.cklPropSet = GetFunction(CkUploadLibId,"CkUploadU_putVerboseLoggingW")
  Global UploadVersion.cksPropGet = GetFunction(CkUploadLibId,"CkUploadU_versionW")
  Global UploadAbortUpload.ckvM = GetFunction(CkUploadLibId,"CkUploadU_AbortUploadW")
  Global UploadAddCustomHeader.ckvMss = GetFunction(CkUploadLibId,"CkUploadU_AddCustomHeaderW")
  Global UploadAddFileReference.ckvMss = GetFunction(CkUploadLibId,"CkUploadU_AddFileReferenceW")
  Global UploadAddParam.ckvMss = GetFunction(CkUploadLibId,"CkUploadU_AddParamW")
  Global UploadBeginUpload.cklM = GetFunction(CkUploadLibId,"CkUploadU_BeginUploadW")
  Global UploadBlockingUpload.cklM = GetFunction(CkUploadLibId,"CkUploadU_BlockingUploadW")
  Global UploadBlockingUploadAsync.ckiM = GetFunction(CkUploadLibId,"CkUploadU_BlockingUploadAsyncW")
  Global UploadClearFileReferences.ckvM = GetFunction(CkUploadLibId,"CkUploadU_ClearFileReferencesW")
  Global UploadClearParams.ckvM = GetFunction(CkUploadLibId,"CkUploadU_ClearParamsW")
  Global UploadLoadTaskCaller.cklMi = GetFunction(CkUploadLibId,"CkUploadU_LoadTaskCallerW")
  Global UploadSaveLastError.cklMs = GetFunction(CkUploadLibId,"CkUploadU_SaveLastErrorW")
  Global UploadSleepMs.ckvMl = GetFunction(CkUploadLibId,"CkUploadU_SleepMsW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn UploadCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn UploadDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn UploadAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn UploadPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleUp(obj.i) : ProcedureReturn UploadBandwidthThrottleUp(obj) : EndProcedure
  Procedure setCkBandwidthThrottleUp(obj.i, value.l) : ProcedureReturn UploadPSetBandwidthThrottleUp(obj,value) : EndProcedure
  Procedure.l ckChunkSize(obj.i) : ProcedureReturn UploadChunkSize(obj) : EndProcedure
  Procedure setCkChunkSize(obj.i, value.l) : ProcedureReturn UploadPSetChunkSize(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(UploadClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn UploadPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(UploadDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn UploadPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckExpect100Continue(obj.i) : ProcedureReturn UploadExpect100Continue(obj) : EndProcedure
  Procedure setCkExpect100Continue(obj.i, value.l) : ProcedureReturn UploadPSetExpect100Continue(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn UploadHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn UploadPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHostname(obj.i) : ProcedureReturn PeekS(UploadHostname(obj)) : EndProcedure
  Procedure setCkHostname(obj.i, value.s) : ProcedureReturn UploadPSetHostname(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn UploadIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn UploadPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(UploadLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(UploadLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(UploadLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn UploadLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn UploadPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLogin(obj.i) : ProcedureReturn PeekS(UploadLogin(obj)) : EndProcedure
  Procedure setCkLogin(obj.i, value.s) : ProcedureReturn UploadPSetLogin(obj,value) : EndProcedure
  Procedure.l ckNumBytesSent(obj.i) : ProcedureReturn UploadNumBytesSent(obj) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(UploadPassword(obj)) : EndProcedure
  Procedure setCkPassword(obj.i, value.s) : ProcedureReturn UploadPSetPassword(obj,value) : EndProcedure
  Procedure.s ckPath(obj.i) : ProcedureReturn PeekS(UploadPath(obj)) : EndProcedure
  Procedure setCkPath(obj.i, value.s) : ProcedureReturn UploadPSetPath(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn UploadPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn UploadPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPercentUploaded(obj.i) : ProcedureReturn UploadPercentUploaded(obj) : EndProcedure
  Procedure.l ckPort(obj.i) : ProcedureReturn UploadPort(obj) : EndProcedure
  Procedure setCkPort(obj.i, value.l) : ProcedureReturn UploadPSetPort(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn UploadPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn UploadPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.s ckProxyDomain(obj.i) : ProcedureReturn PeekS(UploadProxyDomain(obj)) : EndProcedure
  Procedure setCkProxyDomain(obj.i, value.s) : ProcedureReturn UploadPSetProxyDomain(obj,value) : EndProcedure
  Procedure.s ckProxyLogin(obj.i) : ProcedureReturn PeekS(UploadProxyLogin(obj)) : EndProcedure
  Procedure setCkProxyLogin(obj.i, value.s) : ProcedureReturn UploadPSetProxyLogin(obj,value) : EndProcedure
  Procedure.s ckProxyPassword(obj.i) : ProcedureReturn PeekS(UploadProxyPassword(obj)) : EndProcedure
  Procedure setCkProxyPassword(obj.i, value.s) : ProcedureReturn UploadPSetProxyPassword(obj,value) : EndProcedure
  Procedure.l ckProxyPort(obj.i) : ProcedureReturn UploadProxyPort(obj) : EndProcedure
  Procedure setCkProxyPort(obj.i, value.l) : ProcedureReturn UploadPSetProxyPort(obj,value) : EndProcedure
  Procedure.s ckResponseBodyStr(obj.i) : ProcedureReturn PeekS(UploadResponseBodyStr(obj)) : EndProcedure
  Procedure.s ckResponseHeader(obj.i) : ProcedureReturn PeekS(UploadResponseHeader(obj)) : EndProcedure
  Procedure.l ckResponseStatus(obj.i) : ProcedureReturn UploadResponseStatus(obj) : EndProcedure
  Procedure.l ckSsl(obj.i) : ProcedureReturn UploadSsl(obj) : EndProcedure
  Procedure setCkSsl(obj.i, value.l) : ProcedureReturn UploadPSetSsl(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(UploadSslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn UploadPSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(UploadSslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn UploadPSetSslProtocol(obj,value) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(UploadTlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn UploadPSetTlsPinSet(obj,value) : EndProcedure
  Procedure.l ckTotalUploadSize(obj.i) : ProcedureReturn UploadTotalUploadSize(obj) : EndProcedure
  Procedure.l ckUploadInProgress(obj.i) : ProcedureReturn UploadUploadInProgress(obj) : EndProcedure
  Procedure.l ckUploadSuccess(obj.i) : ProcedureReturn UploadUploadSuccess(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn UploadVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn UploadPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(UploadVersion(obj)) : EndProcedure
  Procedure ckAbortUpload(obj.i) :  ProcedureReturn UploadAbortUpload(obj) :  EndProcedure
  Procedure ckAddCustomHeader(obj.i, name.s, value.s) :  ProcedureReturn UploadAddCustomHeader(obj, name, value) :  EndProcedure
  Procedure ckAddFileReference(obj.i, name.s, filename.s) :  ProcedureReturn UploadAddFileReference(obj, name, filename) :  EndProcedure
  Procedure ckAddParam(obj.i, name.s, value.s) :  ProcedureReturn UploadAddParam(obj, name, value) :  EndProcedure
  Procedure.l ckBeginUpload(obj.i) :  ProcedureReturn UploadBeginUpload(obj) :  EndProcedure
  Procedure.l ckBlockingUpload(obj.i) :  ProcedureReturn UploadBlockingUpload(obj) :  EndProcedure
  Procedure.i ckBlockingUploadAsync(obj.i) :  ProcedureReturn UploadBlockingUploadAsync(obj) :  EndProcedure
  Procedure ckClearFileReferences(obj.i) :  ProcedureReturn UploadClearFileReferences(obj) :  EndProcedure
  Procedure ckClearParams(obj.i) :  ProcedureReturn UploadClearParams(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn UploadLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn UploadSaveLastError(obj, path) :  EndProcedure
  Procedure ckSleepMs(obj.i, millisec.l) :  ProcedureReturn UploadSleepMs(obj, millisec) :  EndProcedure
EndModule

