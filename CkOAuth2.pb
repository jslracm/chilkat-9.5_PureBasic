DeclareModule CkOAuth2
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessToken(obj.i)
  Declare setCkAccessToken(obj.i, value.s)
  Declare.s ckAccessTokenResponse(obj.i)
  Declare.s ckAppCallbackUrl(obj.i)
  Declare setCkAppCallbackUrl(obj.i, value.s)
  Declare.l ckAuthFlowState(obj.i)
  Declare.s ckAuthorizationEndpoint(obj.i)
  Declare setCkAuthorizationEndpoint(obj.i, value.s)
  Declare.s ckClientId(obj.i)
  Declare setCkClientId(obj.i, value.s)
  Declare.s ckClientSecret(obj.i)
  Declare setCkClientSecret(obj.i, value.s)
  Declare.l ckCodeChallenge(obj.i)
  Declare setCkCodeChallenge(obj.i, value.l)
  Declare.s ckCodeChallengeMethod(obj.i)
  Declare setCkCodeChallengeMethod(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckFailureInfo(obj.i)
  Declare.l ckIncludeNonce(obj.i)
  Declare setCkIncludeNonce(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckListenPort(obj.i)
  Declare setCkListenPort(obj.i, value.l)
  Declare.l ckListenPortRangeEnd(obj.i)
  Declare setCkListenPortRangeEnd(obj.i, value.l)
  Declare.s ckLocalHost(obj.i)
  Declare setCkLocalHost(obj.i, value.s)
  Declare.l ckNonceLength(obj.i)
  Declare setCkNonceLength(obj.i, value.l)
  Declare.s ckRedirectAllowHtml(obj.i)
  Declare setCkRedirectAllowHtml(obj.i, value.s)
  Declare.s ckRedirectDenyHtml(obj.i)
  Declare setCkRedirectDenyHtml(obj.i, value.s)
  Declare.s ckRefreshToken(obj.i)
  Declare setCkRefreshToken(obj.i, value.s)
  Declare.s ckResource(obj.i)
  Declare setCkResource(obj.i, value.s)
  Declare.s ckResponseMode(obj.i)
  Declare setCkResponseMode(obj.i, value.s)
  Declare.s ckResponseType(obj.i)
  Declare setCkResponseType(obj.i, value.s)
  Declare.s ckScope(obj.i)
  Declare setCkScope(obj.i, value.s)
  Declare.s ckTokenEndpoint(obj.i)
  Declare setCkTokenEndpoint(obj.i, value.s)
  Declare.s ckTokenType(obj.i)
  Declare setCkTokenType(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUseBasicAuth(obj.i)
  Declare setCkUseBasicAuth(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddAuthQueryParam(obj.i, name.s, value.s)
  Declare.l ckAddTokenQueryParam(obj.i, name.s, value.s)
  Declare.l ckCancel(obj.i)
  Declare.s ckGetRedirectRequestParam(obj.i, paramName.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckMonitor(obj.i)
  Declare.i ckMonitorAsync(obj.i)
  Declare.l ckRefreshAccessToken(obj.i)
  Declare.i ckRefreshAccessTokenAsync(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetRefreshHeader(obj.i, name.s, value.s)
  Declare.i ckSetRefreshHeaderAsync(obj.i, name.s, value.s)
  Declare ckSleepMs(obj.i, millisec.l)
  Declare.s ckStartAuth(obj.i)
  Declare.l ckUseConnection(obj.i, sock.i)
EndDeclareModule

Module CkOAuth2
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.i CkOAuth2Create()
  PrototypeC CkOAuth2Dispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkOAuth2LibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkOAuth2LibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkOAuth2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkOAuth2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkOAuth2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global OAuth2Create.CkOAuth2Create = GetFunction(CkOAuth2LibId,"CkOAuth2U_CreateW")
  Global OAuth2Dispose.CkOAuth2Dispose = GetFunction(CkOAuth2LibId,"CkOAuth2U_DisposeW")
  Global OAuth2AccessToken.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_accessTokenW")
  Global OAuth2PSetAccessToken.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putAccessTokenW")
  Global OAuth2AccessTokenResponse.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_accessTokenResponseW")
  Global OAuth2AppCallbackUrl.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_appCallbackUrlW")
  Global OAuth2PSetAppCallbackUrl.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putAppCallbackUrlW")
  Global OAuth2AuthFlowState.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getAuthFlowStateW")
  Global OAuth2AuthorizationEndpoint.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_authorizationEndpointW")
  Global OAuth2PSetAuthorizationEndpoint.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putAuthorizationEndpointW")
  Global OAuth2ClientId.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_clientIdW")
  Global OAuth2PSetClientId.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putClientIdW")
  Global OAuth2ClientSecret.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_clientSecretW")
  Global OAuth2PSetClientSecret.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putClientSecretW")
  Global OAuth2CodeChallenge.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getCodeChallengeW")
  Global OAuth2PSetCodeChallenge.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putCodeChallengeW")
  Global OAuth2CodeChallengeMethod.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_codeChallengeMethodW")
  Global OAuth2PSetCodeChallengeMethod.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putCodeChallengeMethodW")
  Global OAuth2DebugLogFilePath.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_debugLogFilePathW")
  Global OAuth2PSetDebugLogFilePath.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putDebugLogFilePathW")
  Global OAuth2FailureInfo.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_failureInfoW")
  Global OAuth2IncludeNonce.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getIncludeNonceW")
  Global OAuth2PSetIncludeNonce.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putIncludeNonceW")
  Global OAuth2LastErrorHtml.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_lastErrorHtmlW")
  Global OAuth2LastErrorText.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_lastErrorTextW")
  Global OAuth2LastErrorXml.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_lastErrorXmlW")
  Global OAuth2LastMethodSuccess.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getLastMethodSuccessW")
  Global OAuth2PSetLastMethodSuccess.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putLastMethodSuccessW")
  Global OAuth2ListenPort.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getListenPortW")
  Global OAuth2PSetListenPort.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putListenPortW")
  Global OAuth2ListenPortRangeEnd.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getListenPortRangeEndW")
  Global OAuth2PSetListenPortRangeEnd.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putListenPortRangeEndW")
  Global OAuth2LocalHost.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_localHostW")
  Global OAuth2PSetLocalHost.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putLocalHostW")
  Global OAuth2NonceLength.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getNonceLengthW")
  Global OAuth2PSetNonceLength.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putNonceLengthW")
  Global OAuth2RedirectAllowHtml.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_redirectAllowHtmlW")
  Global OAuth2PSetRedirectAllowHtml.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putRedirectAllowHtmlW")
  Global OAuth2RedirectDenyHtml.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_redirectDenyHtmlW")
  Global OAuth2PSetRedirectDenyHtml.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putRedirectDenyHtmlW")
  Global OAuth2RefreshToken.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_refreshTokenW")
  Global OAuth2PSetRefreshToken.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putRefreshTokenW")
  Global OAuth2Resource.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_resourceW")
  Global OAuth2PSetResource.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putResourceW")
  Global OAuth2ResponseMode.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_responseModeW")
  Global OAuth2PSetResponseMode.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putResponseModeW")
  Global OAuth2ResponseType.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_responseTypeW")
  Global OAuth2PSetResponseType.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putResponseTypeW")
  Global OAuth2Scope.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_scopeW")
  Global OAuth2PSetScope.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putScopeW")
  Global OAuth2TokenEndpoint.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_tokenEndpointW")
  Global OAuth2PSetTokenEndpoint.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putTokenEndpointW")
  Global OAuth2TokenType.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_tokenTypeW")
  Global OAuth2PSetTokenType.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putTokenTypeW")
  Global OAuth2UncommonOptions.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_uncommonOptionsW")
  Global OAuth2PSetUncommonOptions.cksPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putUncommonOptionsW")
  Global OAuth2UseBasicAuth.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getUseBasicAuthW")
  Global OAuth2PSetUseBasicAuth.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putUseBasicAuthW")
  Global OAuth2VerboseLogging.cklPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_getVerboseLoggingW")
  Global OAuth2PSetVerboseLogging.cklPropSet = GetFunction(CkOAuth2LibId,"CkOAuth2U_putVerboseLoggingW")
  Global OAuth2Version.cksPropGet = GetFunction(CkOAuth2LibId,"CkOAuth2U_versionW")
  Global OAuth2AddAuthQueryParam.cklMss = GetFunction(CkOAuth2LibId,"CkOAuth2U_AddAuthQueryParamW")
  Global OAuth2AddTokenQueryParam.cklMss = GetFunction(CkOAuth2LibId,"CkOAuth2U_AddTokenQueryParamW")
  Global OAuth2Cancel.cklM = GetFunction(CkOAuth2LibId,"CkOAuth2U_CancelW")
  Global OAuth2GetRedirectRequestParam.cklMs = GetFunction(CkOAuth2LibId,"CkOAuth2U_getRedirectRequestParamW")
  Global OAuth2LoadTaskCaller.cklMi = GetFunction(CkOAuth2LibId,"CkOAuth2U_LoadTaskCallerW")
  Global OAuth2Monitor.cklM = GetFunction(CkOAuth2LibId,"CkOAuth2U_MonitorW")
  Global OAuth2MonitorAsync.ckiM = GetFunction(CkOAuth2LibId,"CkOAuth2U_MonitorAsyncW")
  Global OAuth2RefreshAccessToken.cklM = GetFunction(CkOAuth2LibId,"CkOAuth2U_RefreshAccessTokenW")
  Global OAuth2RefreshAccessTokenAsync.ckiM = GetFunction(CkOAuth2LibId,"CkOAuth2U_RefreshAccessTokenAsyncW")
  Global OAuth2SaveLastError.cklMs = GetFunction(CkOAuth2LibId,"CkOAuth2U_SaveLastErrorW")
  Global OAuth2SetRefreshHeader.cklMss = GetFunction(CkOAuth2LibId,"CkOAuth2U_SetRefreshHeaderW")
  Global OAuth2SetRefreshHeaderAsync.ckiMss = GetFunction(CkOAuth2LibId,"CkOAuth2U_SetRefreshHeaderAsyncW")
  Global OAuth2SleepMs.ckvMl = GetFunction(CkOAuth2LibId,"CkOAuth2U_SleepMsW")
  Global OAuth2StartAuth.cklM = GetFunction(CkOAuth2LibId,"CkOAuth2U_startAuthW")
  Global OAuth2UseConnection.cklMi = GetFunction(CkOAuth2LibId,"CkOAuth2U_UseConnectionW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn OAuth2Create() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn OAuth2Dispose(obj) : EndProcedure
  Procedure.s ckAccessToken(obj.i) : ProcedureReturn PeekS(OAuth2AccessToken(obj)) : EndProcedure
  Procedure setCkAccessToken(obj.i, value.s) : ProcedureReturn OAuth2PSetAccessToken(obj,value) : EndProcedure
  Procedure.s ckAccessTokenResponse(obj.i) : ProcedureReturn PeekS(OAuth2AccessTokenResponse(obj)) : EndProcedure
  Procedure.s ckAppCallbackUrl(obj.i) : ProcedureReturn PeekS(OAuth2AppCallbackUrl(obj)) : EndProcedure
  Procedure setCkAppCallbackUrl(obj.i, value.s) : ProcedureReturn OAuth2PSetAppCallbackUrl(obj,value) : EndProcedure
  Procedure.l ckAuthFlowState(obj.i) : ProcedureReturn OAuth2AuthFlowState(obj) : EndProcedure
  Procedure.s ckAuthorizationEndpoint(obj.i) : ProcedureReturn PeekS(OAuth2AuthorizationEndpoint(obj)) : EndProcedure
  Procedure setCkAuthorizationEndpoint(obj.i, value.s) : ProcedureReturn OAuth2PSetAuthorizationEndpoint(obj,value) : EndProcedure
  Procedure.s ckClientId(obj.i) : ProcedureReturn PeekS(OAuth2ClientId(obj)) : EndProcedure
  Procedure setCkClientId(obj.i, value.s) : ProcedureReturn OAuth2PSetClientId(obj,value) : EndProcedure
  Procedure.s ckClientSecret(obj.i) : ProcedureReturn PeekS(OAuth2ClientSecret(obj)) : EndProcedure
  Procedure setCkClientSecret(obj.i, value.s) : ProcedureReturn OAuth2PSetClientSecret(obj,value) : EndProcedure
  Procedure.l ckCodeChallenge(obj.i) : ProcedureReturn OAuth2CodeChallenge(obj) : EndProcedure
  Procedure setCkCodeChallenge(obj.i, value.l) : ProcedureReturn OAuth2PSetCodeChallenge(obj,value) : EndProcedure
  Procedure.s ckCodeChallengeMethod(obj.i) : ProcedureReturn PeekS(OAuth2CodeChallengeMethod(obj)) : EndProcedure
  Procedure setCkCodeChallengeMethod(obj.i, value.s) : ProcedureReturn OAuth2PSetCodeChallengeMethod(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(OAuth2DebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn OAuth2PSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckFailureInfo(obj.i) : ProcedureReturn PeekS(OAuth2FailureInfo(obj)) : EndProcedure
  Procedure.l ckIncludeNonce(obj.i) : ProcedureReturn OAuth2IncludeNonce(obj) : EndProcedure
  Procedure setCkIncludeNonce(obj.i, value.l) : ProcedureReturn OAuth2PSetIncludeNonce(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(OAuth2LastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(OAuth2LastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(OAuth2LastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn OAuth2LastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn OAuth2PSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckListenPort(obj.i) : ProcedureReturn OAuth2ListenPort(obj) : EndProcedure
  Procedure setCkListenPort(obj.i, value.l) : ProcedureReturn OAuth2PSetListenPort(obj,value) : EndProcedure
  Procedure.l ckListenPortRangeEnd(obj.i) : ProcedureReturn OAuth2ListenPortRangeEnd(obj) : EndProcedure
  Procedure setCkListenPortRangeEnd(obj.i, value.l) : ProcedureReturn OAuth2PSetListenPortRangeEnd(obj,value) : EndProcedure
  Procedure.s ckLocalHost(obj.i) : ProcedureReturn PeekS(OAuth2LocalHost(obj)) : EndProcedure
  Procedure setCkLocalHost(obj.i, value.s) : ProcedureReturn OAuth2PSetLocalHost(obj,value) : EndProcedure
  Procedure.l ckNonceLength(obj.i) : ProcedureReturn OAuth2NonceLength(obj) : EndProcedure
  Procedure setCkNonceLength(obj.i, value.l) : ProcedureReturn OAuth2PSetNonceLength(obj,value) : EndProcedure
  Procedure.s ckRedirectAllowHtml(obj.i) : ProcedureReturn PeekS(OAuth2RedirectAllowHtml(obj)) : EndProcedure
  Procedure setCkRedirectAllowHtml(obj.i, value.s) : ProcedureReturn OAuth2PSetRedirectAllowHtml(obj,value) : EndProcedure
  Procedure.s ckRedirectDenyHtml(obj.i) : ProcedureReturn PeekS(OAuth2RedirectDenyHtml(obj)) : EndProcedure
  Procedure setCkRedirectDenyHtml(obj.i, value.s) : ProcedureReturn OAuth2PSetRedirectDenyHtml(obj,value) : EndProcedure
  Procedure.s ckRefreshToken(obj.i) : ProcedureReturn PeekS(OAuth2RefreshToken(obj)) : EndProcedure
  Procedure setCkRefreshToken(obj.i, value.s) : ProcedureReturn OAuth2PSetRefreshToken(obj,value) : EndProcedure
  Procedure.s ckResource(obj.i) : ProcedureReturn PeekS(OAuth2Resource(obj)) : EndProcedure
  Procedure setCkResource(obj.i, value.s) : ProcedureReturn OAuth2PSetResource(obj,value) : EndProcedure
  Procedure.s ckResponseMode(obj.i) : ProcedureReturn PeekS(OAuth2ResponseMode(obj)) : EndProcedure
  Procedure setCkResponseMode(obj.i, value.s) : ProcedureReturn OAuth2PSetResponseMode(obj,value) : EndProcedure
  Procedure.s ckResponseType(obj.i) : ProcedureReturn PeekS(OAuth2ResponseType(obj)) : EndProcedure
  Procedure setCkResponseType(obj.i, value.s) : ProcedureReturn OAuth2PSetResponseType(obj,value) : EndProcedure
  Procedure.s ckScope(obj.i) : ProcedureReturn PeekS(OAuth2Scope(obj)) : EndProcedure
  Procedure setCkScope(obj.i, value.s) : ProcedureReturn OAuth2PSetScope(obj,value) : EndProcedure
  Procedure.s ckTokenEndpoint(obj.i) : ProcedureReturn PeekS(OAuth2TokenEndpoint(obj)) : EndProcedure
  Procedure setCkTokenEndpoint(obj.i, value.s) : ProcedureReturn OAuth2PSetTokenEndpoint(obj,value) : EndProcedure
  Procedure.s ckTokenType(obj.i) : ProcedureReturn PeekS(OAuth2TokenType(obj)) : EndProcedure
  Procedure setCkTokenType(obj.i, value.s) : ProcedureReturn OAuth2PSetTokenType(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(OAuth2UncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn OAuth2PSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUseBasicAuth(obj.i) : ProcedureReturn OAuth2UseBasicAuth(obj) : EndProcedure
  Procedure setCkUseBasicAuth(obj.i, value.l) : ProcedureReturn OAuth2PSetUseBasicAuth(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn OAuth2VerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn OAuth2PSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(OAuth2Version(obj)) : EndProcedure
  Procedure.l ckAddAuthQueryParam(obj.i, name.s, value.s) :  ProcedureReturn OAuth2AddAuthQueryParam(obj, name, value) :  EndProcedure
  Procedure.l ckAddTokenQueryParam(obj.i, name.s, value.s) :  ProcedureReturn OAuth2AddTokenQueryParam(obj, name, value) :  EndProcedure
  Procedure.l ckCancel(obj.i) :  ProcedureReturn OAuth2Cancel(obj) :  EndProcedure
  Procedure.s ckGetRedirectRequestParam(obj.i, paramName.s) :  ProcedureReturn PeekS(OAuth2GetRedirectRequestParam(obj, paramName)) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn OAuth2LoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckMonitor(obj.i) :  ProcedureReturn OAuth2Monitor(obj) :  EndProcedure
  Procedure.i ckMonitorAsync(obj.i) :  ProcedureReturn OAuth2MonitorAsync(obj) :  EndProcedure
  Procedure.l ckRefreshAccessToken(obj.i) :  ProcedureReturn OAuth2RefreshAccessToken(obj) :  EndProcedure
  Procedure.i ckRefreshAccessTokenAsync(obj.i) :  ProcedureReturn OAuth2RefreshAccessTokenAsync(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn OAuth2SaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetRefreshHeader(obj.i, name.s, value.s) :  ProcedureReturn OAuth2SetRefreshHeader(obj, name, value) :  EndProcedure
  Procedure.i ckSetRefreshHeaderAsync(obj.i, name.s, value.s) :  ProcedureReturn OAuth2SetRefreshHeaderAsync(obj, name, value) :  EndProcedure
  Procedure ckSleepMs(obj.i, millisec.l) :  ProcedureReturn OAuth2SleepMs(obj, millisec) :  EndProcedure
  Procedure.s ckStartAuth(obj.i) :  ProcedureReturn PeekS(OAuth2StartAuth(obj)) :  EndProcedure
  Procedure.l ckUseConnection(obj.i, sock.i) :  ProcedureReturn OAuth2UseConnection(obj, sock) :  EndProcedure
EndModule

