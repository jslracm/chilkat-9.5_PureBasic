DeclareModule CkRest
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAllowHeaderFolding(obj.i)
  Declare setCkAllowHeaderFolding(obj.i, value.l)
  Declare.l ckAllowHeaderQB(obj.i)
  Declare setCkAllowHeaderQB(obj.i, value.l)
  Declare.s ckAuthorization(obj.i)
  Declare setCkAuthorization(obj.i, value.s)
  Declare.l ckConnectFailReason(obj.i)
  Declare.l ckConnectTimeoutMs(obj.i)
  Declare setCkConnectTimeoutMs(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDebugMode(obj.i)
  Declare setCkDebugMode(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHost(obj.i)
  Declare setCkHost(obj.i, value.s)
  Declare.l ckIdleTimeoutMs(obj.i)
  Declare setCkIdleTimeoutMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastRequestHeader(obj.i)
  Declare.s ckLastRequestStartLine(obj.i)
  Declare.l ckNumResponseHeaders(obj.i)
  Declare.s ckPartSelector(obj.i)
  Declare setCkPartSelector(obj.i, value.s)
  Declare.l ckPercentDoneOnSend(obj.i)
  Declare setCkPercentDoneOnSend(obj.i, value.l)
  Declare.s ckResponseHeader(obj.i)
  Declare.l ckResponseStatusCode(obj.i)
  Declare.s ckResponseStatusText(obj.i)
  Declare.l ckStreamNonChunked(obj.i)
  Declare setCkStreamNonChunked(obj.i, value.l)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddHeader(obj.i, name.s, value.s)
  Declare.l ckAddMwsSignature(obj.i, httpVerb.s, uriPath.s, domain.s, mwsSecretKey.s)
  Declare.l ckAddPathParam(obj.i, name.s, value.s)
  Declare.l ckAddQueryParam(obj.i, name.s, value.s)
  Declare.l ckAddQueryParams(obj.i, queryString.s)
  Declare.l ckAddQueryParamSb(obj.i, name.s, value.i)
  Declare.l ckClearAllHeaders(obj.i)
  Declare.l ckClearAllParts(obj.i)
  Declare.l ckClearAllPathParams(obj.i)
  Declare.l ckClearAllQueryParams(obj.i)
  Declare.l ckClearAuth(obj.i)
  Declare ckClearResponseBodyStream(obj.i)
  Declare.l ckConnect(obj.i, hostname.s, port.l, tls.l, autoReconnect.l)
  Declare.i ckConnectAsync(obj.i, hostname.s, port.l, tls.l, autoReconnect.l)
  Declare.l ckDisconnect(obj.i, maxWaitMs.l)
  Declare.i ckDisconnectAsync(obj.i, maxWaitMs.l)
  Declare.l ckFullRequestBd(obj.i, httpVerb.s, uriPath.s, binData.i, responseBody.i)
  Declare.i ckFullRequestBdAsync(obj.i, httpVerb.s, uriPath.s, binData.i, responseBody.i)
  Declare.s ckFullRequestFormUrlEncoded(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckFullRequestFormUrlEncodedAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.s ckFullRequestMultipart(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckFullRequestMultipartAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.s ckFullRequestNoBody(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckFullRequestNoBodyAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.l ckFullRequestNoBodyBd(obj.i, httpVerb.s, uriPath.s, binData.i)
  Declare.i ckFullRequestNoBodyBdAsync(obj.i, httpVerb.s, uriPath.s, binData.i)
  Declare.l ckFullRequestNoBodySb(obj.i, httpVerb.s, uriPath.s, sb.i)
  Declare.i ckFullRequestNoBodySbAsync(obj.i, httpVerb.s, uriPath.s, sb.i)
  Declare.l ckFullRequestSb(obj.i, httpVerb.s, uriPath.s, requestBody.i, responseBody.i)
  Declare.i ckFullRequestSbAsync(obj.i, httpVerb.s, uriPath.s, requestBody.i, responseBody.i)
  Declare.s ckFullRequestStream(obj.i, httpVerb.s, uriPath.s, stream.i)
  Declare.i ckFullRequestStreamAsync(obj.i, httpVerb.s, uriPath.s, stream.i)
  Declare.s ckFullRequestString(obj.i, httpVerb.s, uriPath.s, bodyText.s)
  Declare.i ckFullRequestStringAsync(obj.i, httpVerb.s, uriPath.s, bodyText.s)
  Declare.l ckGetLastDebugRequest(obj.i, bd.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckReadRespBd(obj.i, responseBody.i)
  Declare.i ckReadRespBdAsync(obj.i, responseBody.i)
  Declare.l ckReadRespBodyStream(obj.i, stream.i, autoSetStreamCharset.l)
  Declare.i ckReadRespBodyStreamAsync(obj.i, stream.i, autoSetStreamCharset.l)
  Declare.s ckReadRespBodyString(obj.i)
  Declare.i ckReadRespBodyStringAsync(obj.i)
  Declare.l ckReadResponseHeader(obj.i)
  Declare.i ckReadResponseHeaderAsync(obj.i)
  Declare.l ckReadRespSb(obj.i, responseBody.i)
  Declare.i ckReadRespSbAsync(obj.i, responseBody.i)
  Declare.i ckRedirectUrl(obj.i)
  Declare.l ckRemoveHeader(obj.i, name.s)
  Declare.l ckRemoveQueryParam(obj.i, name.s)
  Declare.s ckResponseHdrByName(obj.i, name.s)
  Declare.s ckResponseHdrName(obj.i, index.l)
  Declare.s ckResponseHdrValue(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSendReqBd(obj.i, httpVerb.s, uriPath.s, body.i)
  Declare.i ckSendReqBdAsync(obj.i, httpVerb.s, uriPath.s, body.i)
  Declare.l ckSendReqFormUrlEncoded(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckSendReqFormUrlEncodedAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.l ckSendReqMultipart(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckSendReqMultipartAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.l ckSendReqNoBody(obj.i, httpVerb.s, uriPath.s)
  Declare.i ckSendReqNoBodyAsync(obj.i, httpVerb.s, uriPath.s)
  Declare.l ckSendReqSb(obj.i, httpVerb.s, uriPath.s, bodySb.i)
  Declare.i ckSendReqSbAsync(obj.i, httpVerb.s, uriPath.s, bodySb.i)
  Declare.l ckSendReqStreamBody(obj.i, httpVerb.s, uriPath.s, stream.i)
  Declare.i ckSendReqStreamBodyAsync(obj.i, httpVerb.s, uriPath.s, stream.i)
  Declare.l ckSendReqStringBody(obj.i, httpVerb.s, uriPath.s, bodyText.s)
  Declare.i ckSendReqStringBodyAsync(obj.i, httpVerb.s, uriPath.s, bodyText.s)
  Declare.l ckSetAuthAws(obj.i, authProvider.i)
  Declare.l ckSetAuthAzureAD(obj.i, authProvider.i)
  Declare.l ckSetAuthAzureSas(obj.i, authProvider.i)
  Declare.l ckSetAuthAzureStorage(obj.i, authProvider.i)
  Declare.l ckSetAuthBasic(obj.i, username.s, password.s)
  Declare.l ckSetAuthBasicSecure(obj.i, username.i, password.i)
  Declare.l ckSetAuthGoogle(obj.i, authProvider.i)
  Declare.l ckSetAuthOAuth1(obj.i, authProvider.i, useQueryParams.l)
  Declare.l ckSetAuthOAuth2(obj.i, authProvider.i)
  Declare.l ckSetMultipartBodyBd(obj.i, bodyData.i)
  Declare.l ckSetMultipartBodySb(obj.i, bodySb.i)
  Declare.l ckSetMultipartBodyStream(obj.i, stream.i)
  Declare.l ckSetMultipartBodyString(obj.i, bodyText.s)
  Declare.l ckSetResponseBodyStream(obj.i, expectedStatus.l, autoSetStreamCharset.l, responseStream.i)
  Declare.l ckUseConnection(obj.i, connection.i, autoReconnect.l)
EndDeclareModule

Module CkRest
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMil(obj.i, arg1.i, arg2.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMssii(obj.i, arg1.s, arg2.s, arg3.i, arg4.i)
  PrototypeC.l cklMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMssii(obj.i, arg1.s, arg2.s, arg3.i, arg4.i)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMlli(obj.i, arg1.l, arg2.l, arg3.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkRestCreate()
  PrototypeC CkRestDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRestLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkRestLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkRestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkRestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global RestCreate.CkRestCreate = GetFunction(CkRestLibId,"CkRestU_CreateW")
  Global RestDispose.CkRestDispose = GetFunction(CkRestLibId,"CkRestU_DisposeW")
  Global RestAllowHeaderFolding.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getAllowHeaderFoldingW")
  Global RestPSetAllowHeaderFolding.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putAllowHeaderFoldingW")
  Global RestAllowHeaderQB.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getAllowHeaderQBW")
  Global RestPSetAllowHeaderQB.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putAllowHeaderQBW")
  Global RestAuthorization.cksPropGet = GetFunction(CkRestLibId,"CkRestU_authorizationW")
  Global RestPSetAuthorization.cksPropSet = GetFunction(CkRestLibId,"CkRestU_putAuthorizationW")
  Global RestConnectFailReason.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getConnectFailReasonW")
  Global RestConnectTimeoutMs.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getConnectTimeoutMsW")
  Global RestPSetConnectTimeoutMs.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putConnectTimeoutMsW")
  Global RestDebugLogFilePath.cksPropGet = GetFunction(CkRestLibId,"CkRestU_debugLogFilePathW")
  Global RestPSetDebugLogFilePath.cksPropSet = GetFunction(CkRestLibId,"CkRestU_putDebugLogFilePathW")
  Global RestDebugMode.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getDebugModeW")
  Global RestPSetDebugMode.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putDebugModeW")
  Global RestHeartbeatMs.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getHeartbeatMsW")
  Global RestPSetHeartbeatMs.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putHeartbeatMsW")
  Global RestHost.cksPropGet = GetFunction(CkRestLibId,"CkRestU_hostW")
  Global RestPSetHost.cksPropSet = GetFunction(CkRestLibId,"CkRestU_putHostW")
  Global RestIdleTimeoutMs.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getIdleTimeoutMsW")
  Global RestPSetIdleTimeoutMs.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putIdleTimeoutMsW")
  Global RestLastErrorHtml.cksPropGet = GetFunction(CkRestLibId,"CkRestU_lastErrorHtmlW")
  Global RestLastErrorText.cksPropGet = GetFunction(CkRestLibId,"CkRestU_lastErrorTextW")
  Global RestLastErrorXml.cksPropGet = GetFunction(CkRestLibId,"CkRestU_lastErrorXmlW")
  Global RestLastMethodSuccess.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getLastMethodSuccessW")
  Global RestPSetLastMethodSuccess.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putLastMethodSuccessW")
  Global RestLastRequestHeader.cksPropGet = GetFunction(CkRestLibId,"CkRestU_lastRequestHeaderW")
  Global RestLastRequestStartLine.cksPropGet = GetFunction(CkRestLibId,"CkRestU_lastRequestStartLineW")
  Global RestNumResponseHeaders.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getNumResponseHeadersW")
  Global RestPartSelector.cksPropGet = GetFunction(CkRestLibId,"CkRestU_partSelectorW")
  Global RestPSetPartSelector.cksPropSet = GetFunction(CkRestLibId,"CkRestU_putPartSelectorW")
  Global RestPercentDoneOnSend.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getPercentDoneOnSendW")
  Global RestPSetPercentDoneOnSend.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putPercentDoneOnSendW")
  Global RestResponseHeader.cksPropGet = GetFunction(CkRestLibId,"CkRestU_responseHeaderW")
  Global RestResponseStatusCode.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getResponseStatusCodeW")
  Global RestResponseStatusText.cksPropGet = GetFunction(CkRestLibId,"CkRestU_responseStatusTextW")
  Global RestStreamNonChunked.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getStreamNonChunkedW")
  Global RestPSetStreamNonChunked.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putStreamNonChunkedW")
  Global RestUncommonOptions.cksPropGet = GetFunction(CkRestLibId,"CkRestU_uncommonOptionsW")
  Global RestPSetUncommonOptions.cksPropSet = GetFunction(CkRestLibId,"CkRestU_putUncommonOptionsW")
  Global RestVerboseLogging.cklPropGet = GetFunction(CkRestLibId,"CkRestU_getVerboseLoggingW")
  Global RestPSetVerboseLogging.cklPropSet = GetFunction(CkRestLibId,"CkRestU_putVerboseLoggingW")
  Global RestVersion.cksPropGet = GetFunction(CkRestLibId,"CkRestU_versionW")
  Global RestAddHeader.cklMss = GetFunction(CkRestLibId,"CkRestU_AddHeaderW")
  Global RestAddMwsSignature.cklMssss = GetFunction(CkRestLibId,"CkRestU_AddMwsSignatureW")
  Global RestAddPathParam.cklMss = GetFunction(CkRestLibId,"CkRestU_AddPathParamW")
  Global RestAddQueryParam.cklMss = GetFunction(CkRestLibId,"CkRestU_AddQueryParamW")
  Global RestAddQueryParams.cklMs = GetFunction(CkRestLibId,"CkRestU_AddQueryParamsW")
  Global RestAddQueryParamSb.cklMsi = GetFunction(CkRestLibId,"CkRestU_AddQueryParamSbW")
  Global RestClearAllHeaders.cklM = GetFunction(CkRestLibId,"CkRestU_ClearAllHeadersW")
  Global RestClearAllParts.cklM = GetFunction(CkRestLibId,"CkRestU_ClearAllPartsW")
  Global RestClearAllPathParams.cklM = GetFunction(CkRestLibId,"CkRestU_ClearAllPathParamsW")
  Global RestClearAllQueryParams.cklM = GetFunction(CkRestLibId,"CkRestU_ClearAllQueryParamsW")
  Global RestClearAuth.cklM = GetFunction(CkRestLibId,"CkRestU_ClearAuthW")
  Global RestClearResponseBodyStream.ckvM = GetFunction(CkRestLibId,"CkRestU_ClearResponseBodyStreamW")
  Global RestConnect.cklMslll = GetFunction(CkRestLibId,"CkRestU_ConnectW")
  Global RestConnectAsync.ckiMslll = GetFunction(CkRestLibId,"CkRestU_ConnectAsyncW")
  Global RestDisconnect.cklMl = GetFunction(CkRestLibId,"CkRestU_DisconnectW")
  Global RestDisconnectAsync.ckiMl = GetFunction(CkRestLibId,"CkRestU_DisconnectAsyncW")
  Global RestFullRequestBd.cklMssii = GetFunction(CkRestLibId,"CkRestU_FullRequestBdW")
  Global RestFullRequestBdAsync.ckiMssii = GetFunction(CkRestLibId,"CkRestU_FullRequestBdAsyncW")
  Global RestFullRequestFormUrlEncoded.cklMss = GetFunction(CkRestLibId,"CkRestU_fullRequestFormUrlEncodedW")
  Global RestFullRequestFormUrlEncodedAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_FullRequestFormUrlEncodedAsyncW")
  Global RestFullRequestMultipart.cklMss = GetFunction(CkRestLibId,"CkRestU_fullRequestMultipartW")
  Global RestFullRequestMultipartAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_FullRequestMultipartAsyncW")
  Global RestFullRequestNoBody.cklMss = GetFunction(CkRestLibId,"CkRestU_fullRequestNoBodyW")
  Global RestFullRequestNoBodyAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_FullRequestNoBodyAsyncW")
  Global RestFullRequestNoBodyBd.cklMssi = GetFunction(CkRestLibId,"CkRestU_FullRequestNoBodyBdW")
  Global RestFullRequestNoBodyBdAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_FullRequestNoBodyBdAsyncW")
  Global RestFullRequestNoBodySb.cklMssi = GetFunction(CkRestLibId,"CkRestU_FullRequestNoBodySbW")
  Global RestFullRequestNoBodySbAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_FullRequestNoBodySbAsyncW")
  Global RestFullRequestSb.cklMssii = GetFunction(CkRestLibId,"CkRestU_FullRequestSbW")
  Global RestFullRequestSbAsync.ckiMssii = GetFunction(CkRestLibId,"CkRestU_FullRequestSbAsyncW")
  Global RestFullRequestStream.cklMssi = GetFunction(CkRestLibId,"CkRestU_fullRequestStreamW")
  Global RestFullRequestStreamAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_FullRequestStreamAsyncW")
  Global RestFullRequestString.cklMsss = GetFunction(CkRestLibId,"CkRestU_fullRequestStringW")
  Global RestFullRequestStringAsync.ckiMsss = GetFunction(CkRestLibId,"CkRestU_FullRequestStringAsyncW")
  Global RestGetLastDebugRequest.cklMi = GetFunction(CkRestLibId,"CkRestU_GetLastDebugRequestW")
  Global RestLastJsonData.ckiM = GetFunction(CkRestLibId,"CkRestU_LastJsonDataW")
  Global RestLoadTaskCaller.cklMi = GetFunction(CkRestLibId,"CkRestU_LoadTaskCallerW")
  Global RestReadRespBd.cklMi = GetFunction(CkRestLibId,"CkRestU_ReadRespBdW")
  Global RestReadRespBdAsync.ckiMi = GetFunction(CkRestLibId,"CkRestU_ReadRespBdAsyncW")
  Global RestReadRespBodyStream.cklMil = GetFunction(CkRestLibId,"CkRestU_ReadRespBodyStreamW")
  Global RestReadRespBodyStreamAsync.ckiMil = GetFunction(CkRestLibId,"CkRestU_ReadRespBodyStreamAsyncW")
  Global RestReadRespBodyString.cklM = GetFunction(CkRestLibId,"CkRestU_readRespBodyStringW")
  Global RestReadRespBodyStringAsync.ckiM = GetFunction(CkRestLibId,"CkRestU_ReadRespBodyStringAsyncW")
  Global RestReadResponseHeader.cklM = GetFunction(CkRestLibId,"CkRestU_ReadResponseHeaderW")
  Global RestReadResponseHeaderAsync.ckiM = GetFunction(CkRestLibId,"CkRestU_ReadResponseHeaderAsyncW")
  Global RestReadRespSb.cklMi = GetFunction(CkRestLibId,"CkRestU_ReadRespSbW")
  Global RestReadRespSbAsync.ckiMi = GetFunction(CkRestLibId,"CkRestU_ReadRespSbAsyncW")
  Global RestRedirectUrl.ckiM = GetFunction(CkRestLibId,"CkRestU_RedirectUrlW")
  Global RestRemoveHeader.cklMs = GetFunction(CkRestLibId,"CkRestU_RemoveHeaderW")
  Global RestRemoveQueryParam.cklMs = GetFunction(CkRestLibId,"CkRestU_RemoveQueryParamW")
  Global RestResponseHdrByName.cklMs = GetFunction(CkRestLibId,"CkRestU_responseHdrByNameW")
  Global RestResponseHdrName.cklMl = GetFunction(CkRestLibId,"CkRestU_responseHdrNameW")
  Global RestResponseHdrValue.cklMl = GetFunction(CkRestLibId,"CkRestU_responseHdrValueW")
  Global RestSaveLastError.cklMs = GetFunction(CkRestLibId,"CkRestU_SaveLastErrorW")
  Global RestSendReqBd.cklMssi = GetFunction(CkRestLibId,"CkRestU_SendReqBdW")
  Global RestSendReqBdAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_SendReqBdAsyncW")
  Global RestSendReqFormUrlEncoded.cklMss = GetFunction(CkRestLibId,"CkRestU_SendReqFormUrlEncodedW")
  Global RestSendReqFormUrlEncodedAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_SendReqFormUrlEncodedAsyncW")
  Global RestSendReqMultipart.cklMss = GetFunction(CkRestLibId,"CkRestU_SendReqMultipartW")
  Global RestSendReqMultipartAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_SendReqMultipartAsyncW")
  Global RestSendReqNoBody.cklMss = GetFunction(CkRestLibId,"CkRestU_SendReqNoBodyW")
  Global RestSendReqNoBodyAsync.ckiMss = GetFunction(CkRestLibId,"CkRestU_SendReqNoBodyAsyncW")
  Global RestSendReqSb.cklMssi = GetFunction(CkRestLibId,"CkRestU_SendReqSbW")
  Global RestSendReqSbAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_SendReqSbAsyncW")
  Global RestSendReqStreamBody.cklMssi = GetFunction(CkRestLibId,"CkRestU_SendReqStreamBodyW")
  Global RestSendReqStreamBodyAsync.ckiMssi = GetFunction(CkRestLibId,"CkRestU_SendReqStreamBodyAsyncW")
  Global RestSendReqStringBody.cklMsss = GetFunction(CkRestLibId,"CkRestU_SendReqStringBodyW")
  Global RestSendReqStringBodyAsync.ckiMsss = GetFunction(CkRestLibId,"CkRestU_SendReqStringBodyAsyncW")
  Global RestSetAuthAws.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthAwsW")
  Global RestSetAuthAzureAD.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthAzureADW")
  Global RestSetAuthAzureSas.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthAzureSasW")
  Global RestSetAuthAzureStorage.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthAzureStorageW")
  Global RestSetAuthBasic.cklMss = GetFunction(CkRestLibId,"CkRestU_SetAuthBasicW")
  Global RestSetAuthBasicSecure.cklMii = GetFunction(CkRestLibId,"CkRestU_SetAuthBasicSecureW")
  Global RestSetAuthGoogle.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthGoogleW")
  Global RestSetAuthOAuth1.cklMil = GetFunction(CkRestLibId,"CkRestU_SetAuthOAuth1W")
  Global RestSetAuthOAuth2.cklMi = GetFunction(CkRestLibId,"CkRestU_SetAuthOAuth2W")
  Global RestSetMultipartBodyBd.cklMi = GetFunction(CkRestLibId,"CkRestU_SetMultipartBodyBdW")
  Global RestSetMultipartBodySb.cklMi = GetFunction(CkRestLibId,"CkRestU_SetMultipartBodySbW")
  Global RestSetMultipartBodyStream.cklMi = GetFunction(CkRestLibId,"CkRestU_SetMultipartBodyStreamW")
  Global RestSetMultipartBodyString.cklMs = GetFunction(CkRestLibId,"CkRestU_SetMultipartBodyStringW")
  Global RestSetResponseBodyStream.cklMlli = GetFunction(CkRestLibId,"CkRestU_SetResponseBodyStreamW")
  Global RestUseConnection.cklMil = GetFunction(CkRestLibId,"CkRestU_UseConnectionW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn RestCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn RestDispose(obj) : EndProcedure
  Procedure.l ckAllowHeaderFolding(obj.i) : ProcedureReturn RestAllowHeaderFolding(obj) : EndProcedure
  Procedure setCkAllowHeaderFolding(obj.i, value.l) : ProcedureReturn RestPSetAllowHeaderFolding(obj,value) : EndProcedure
  Procedure.l ckAllowHeaderQB(obj.i) : ProcedureReturn RestAllowHeaderQB(obj) : EndProcedure
  Procedure setCkAllowHeaderQB(obj.i, value.l) : ProcedureReturn RestPSetAllowHeaderQB(obj,value) : EndProcedure
  Procedure.s ckAuthorization(obj.i) : ProcedureReturn PeekS(RestAuthorization(obj)) : EndProcedure
  Procedure setCkAuthorization(obj.i, value.s) : ProcedureReturn RestPSetAuthorization(obj,value) : EndProcedure
  Procedure.l ckConnectFailReason(obj.i) : ProcedureReturn RestConnectFailReason(obj) : EndProcedure
  Procedure.l ckConnectTimeoutMs(obj.i) : ProcedureReturn RestConnectTimeoutMs(obj) : EndProcedure
  Procedure setCkConnectTimeoutMs(obj.i, value.l) : ProcedureReturn RestPSetConnectTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(RestDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn RestPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDebugMode(obj.i) : ProcedureReturn RestDebugMode(obj) : EndProcedure
  Procedure setCkDebugMode(obj.i, value.l) : ProcedureReturn RestPSetDebugMode(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn RestHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn RestPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHost(obj.i) : ProcedureReturn PeekS(RestHost(obj)) : EndProcedure
  Procedure setCkHost(obj.i, value.s) : ProcedureReturn RestPSetHost(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn RestIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn RestPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(RestLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(RestLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(RestLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn RestLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn RestPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastRequestHeader(obj.i) : ProcedureReturn PeekS(RestLastRequestHeader(obj)) : EndProcedure
  Procedure.s ckLastRequestStartLine(obj.i) : ProcedureReturn PeekS(RestLastRequestStartLine(obj)) : EndProcedure
  Procedure.l ckNumResponseHeaders(obj.i) : ProcedureReturn RestNumResponseHeaders(obj) : EndProcedure
  Procedure.s ckPartSelector(obj.i) : ProcedureReturn PeekS(RestPartSelector(obj)) : EndProcedure
  Procedure setCkPartSelector(obj.i, value.s) : ProcedureReturn RestPSetPartSelector(obj,value) : EndProcedure
  Procedure.l ckPercentDoneOnSend(obj.i) : ProcedureReturn RestPercentDoneOnSend(obj) : EndProcedure
  Procedure setCkPercentDoneOnSend(obj.i, value.l) : ProcedureReturn RestPSetPercentDoneOnSend(obj,value) : EndProcedure
  Procedure.s ckResponseHeader(obj.i) : ProcedureReturn PeekS(RestResponseHeader(obj)) : EndProcedure
  Procedure.l ckResponseStatusCode(obj.i) : ProcedureReturn RestResponseStatusCode(obj) : EndProcedure
  Procedure.s ckResponseStatusText(obj.i) : ProcedureReturn PeekS(RestResponseStatusText(obj)) : EndProcedure
  Procedure.l ckStreamNonChunked(obj.i) : ProcedureReturn RestStreamNonChunked(obj) : EndProcedure
  Procedure setCkStreamNonChunked(obj.i, value.l) : ProcedureReturn RestPSetStreamNonChunked(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(RestUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn RestPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn RestVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn RestPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(RestVersion(obj)) : EndProcedure
  Procedure.l ckAddHeader(obj.i, name.s, value.s) :  ProcedureReturn RestAddHeader(obj, name, value) :  EndProcedure
  Procedure.l ckAddMwsSignature(obj.i, httpVerb.s, uriPath.s, domain.s, mwsSecretKey.s) :  ProcedureReturn RestAddMwsSignature(obj, httpVerb, uriPath, domain, mwsSecretKey) :  EndProcedure
  Procedure.l ckAddPathParam(obj.i, name.s, value.s) :  ProcedureReturn RestAddPathParam(obj, name, value) :  EndProcedure
  Procedure.l ckAddQueryParam(obj.i, name.s, value.s) :  ProcedureReturn RestAddQueryParam(obj, name, value) :  EndProcedure
  Procedure.l ckAddQueryParams(obj.i, queryString.s) :  ProcedureReturn RestAddQueryParams(obj, queryString) :  EndProcedure
  Procedure.l ckAddQueryParamSb(obj.i, name.s, value.i) :  ProcedureReturn RestAddQueryParamSb(obj, name, value) :  EndProcedure
  Procedure.l ckClearAllHeaders(obj.i) :  ProcedureReturn RestClearAllHeaders(obj) :  EndProcedure
  Procedure.l ckClearAllParts(obj.i) :  ProcedureReturn RestClearAllParts(obj) :  EndProcedure
  Procedure.l ckClearAllPathParams(obj.i) :  ProcedureReturn RestClearAllPathParams(obj) :  EndProcedure
  Procedure.l ckClearAllQueryParams(obj.i) :  ProcedureReturn RestClearAllQueryParams(obj) :  EndProcedure
  Procedure.l ckClearAuth(obj.i) :  ProcedureReturn RestClearAuth(obj) :  EndProcedure
  Procedure ckClearResponseBodyStream(obj.i) :  ProcedureReturn RestClearResponseBodyStream(obj) :  EndProcedure
  Procedure.l ckConnect(obj.i, hostname.s, port.l, tls.l, autoReconnect.l) :  ProcedureReturn RestConnect(obj, hostname, port, tls, autoReconnect) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, hostname.s, port.l, tls.l, autoReconnect.l) :  ProcedureReturn RestConnectAsync(obj, hostname, port, tls, autoReconnect) :  EndProcedure
  Procedure.l ckDisconnect(obj.i, maxWaitMs.l) :  ProcedureReturn RestDisconnect(obj, maxWaitMs) :  EndProcedure
  Procedure.i ckDisconnectAsync(obj.i, maxWaitMs.l) :  ProcedureReturn RestDisconnectAsync(obj, maxWaitMs) :  EndProcedure
  Procedure.l ckFullRequestBd(obj.i, httpVerb.s, uriPath.s, binData.i, responseBody.i) :  ProcedureReturn RestFullRequestBd(obj, httpVerb, uriPath, binData, responseBody) :  EndProcedure
  Procedure.i ckFullRequestBdAsync(obj.i, httpVerb.s, uriPath.s, binData.i, responseBody.i) :  ProcedureReturn RestFullRequestBdAsync(obj, httpVerb, uriPath, binData, responseBody) :  EndProcedure
  Procedure.s ckFullRequestFormUrlEncoded(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn PeekS(RestFullRequestFormUrlEncoded(obj, httpVerb, uriPath)) :  EndProcedure
  Procedure.i ckFullRequestFormUrlEncodedAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestFullRequestFormUrlEncodedAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.s ckFullRequestMultipart(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn PeekS(RestFullRequestMultipart(obj, httpVerb, uriPath)) :  EndProcedure
  Procedure.i ckFullRequestMultipartAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestFullRequestMultipartAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.s ckFullRequestNoBody(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn PeekS(RestFullRequestNoBody(obj, httpVerb, uriPath)) :  EndProcedure
  Procedure.i ckFullRequestNoBodyAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestFullRequestNoBodyAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.l ckFullRequestNoBodyBd(obj.i, httpVerb.s, uriPath.s, binData.i) :  ProcedureReturn RestFullRequestNoBodyBd(obj, httpVerb, uriPath, binData) :  EndProcedure
  Procedure.i ckFullRequestNoBodyBdAsync(obj.i, httpVerb.s, uriPath.s, binData.i) :  ProcedureReturn RestFullRequestNoBodyBdAsync(obj, httpVerb, uriPath, binData) :  EndProcedure
  Procedure.l ckFullRequestNoBodySb(obj.i, httpVerb.s, uriPath.s, sb.i) :  ProcedureReturn RestFullRequestNoBodySb(obj, httpVerb, uriPath, sb) :  EndProcedure
  Procedure.i ckFullRequestNoBodySbAsync(obj.i, httpVerb.s, uriPath.s, sb.i) :  ProcedureReturn RestFullRequestNoBodySbAsync(obj, httpVerb, uriPath, sb) :  EndProcedure
  Procedure.l ckFullRequestSb(obj.i, httpVerb.s, uriPath.s, requestBody.i, responseBody.i) :  ProcedureReturn RestFullRequestSb(obj, httpVerb, uriPath, requestBody, responseBody) :  EndProcedure
  Procedure.i ckFullRequestSbAsync(obj.i, httpVerb.s, uriPath.s, requestBody.i, responseBody.i) :  ProcedureReturn RestFullRequestSbAsync(obj, httpVerb, uriPath, requestBody, responseBody) :  EndProcedure
  Procedure.s ckFullRequestStream(obj.i, httpVerb.s, uriPath.s, stream.i) :  ProcedureReturn PeekS(RestFullRequestStream(obj, httpVerb, uriPath, stream)) :  EndProcedure
  Procedure.i ckFullRequestStreamAsync(obj.i, httpVerb.s, uriPath.s, stream.i) :  ProcedureReturn RestFullRequestStreamAsync(obj, httpVerb, uriPath, stream) :  EndProcedure
  Procedure.s ckFullRequestString(obj.i, httpVerb.s, uriPath.s, bodyText.s) :  ProcedureReturn PeekS(RestFullRequestString(obj, httpVerb, uriPath, bodyText)) :  EndProcedure
  Procedure.i ckFullRequestStringAsync(obj.i, httpVerb.s, uriPath.s, bodyText.s) :  ProcedureReturn RestFullRequestStringAsync(obj, httpVerb, uriPath, bodyText) :  EndProcedure
  Procedure.l ckGetLastDebugRequest(obj.i, bd.i) :  ProcedureReturn RestGetLastDebugRequest(obj, bd) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn RestLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn RestLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckReadRespBd(obj.i, responseBody.i) :  ProcedureReturn RestReadRespBd(obj, responseBody) :  EndProcedure
  Procedure.i ckReadRespBdAsync(obj.i, responseBody.i) :  ProcedureReturn RestReadRespBdAsync(obj, responseBody) :  EndProcedure
  Procedure.l ckReadRespBodyStream(obj.i, stream.i, autoSetStreamCharset.l) :  ProcedureReturn RestReadRespBodyStream(obj, stream, autoSetStreamCharset) :  EndProcedure
  Procedure.i ckReadRespBodyStreamAsync(obj.i, stream.i, autoSetStreamCharset.l) :  ProcedureReturn RestReadRespBodyStreamAsync(obj, stream, autoSetStreamCharset) :  EndProcedure
  Procedure.s ckReadRespBodyString(obj.i) :  ProcedureReturn PeekS(RestReadRespBodyString(obj)) :  EndProcedure
  Procedure.i ckReadRespBodyStringAsync(obj.i) :  ProcedureReturn RestReadRespBodyStringAsync(obj) :  EndProcedure
  Procedure.l ckReadResponseHeader(obj.i) :  ProcedureReturn RestReadResponseHeader(obj) :  EndProcedure
  Procedure.i ckReadResponseHeaderAsync(obj.i) :  ProcedureReturn RestReadResponseHeaderAsync(obj) :  EndProcedure
  Procedure.l ckReadRespSb(obj.i, responseBody.i) :  ProcedureReturn RestReadRespSb(obj, responseBody) :  EndProcedure
  Procedure.i ckReadRespSbAsync(obj.i, responseBody.i) :  ProcedureReturn RestReadRespSbAsync(obj, responseBody) :  EndProcedure
  Procedure.i ckRedirectUrl(obj.i) :  ProcedureReturn RestRedirectUrl(obj) :  EndProcedure
  Procedure.l ckRemoveHeader(obj.i, name.s) :  ProcedureReturn RestRemoveHeader(obj, name) :  EndProcedure
  Procedure.l ckRemoveQueryParam(obj.i, name.s) :  ProcedureReturn RestRemoveQueryParam(obj, name) :  EndProcedure
  Procedure.s ckResponseHdrByName(obj.i, name.s) :  ProcedureReturn PeekS(RestResponseHdrByName(obj, name)) :  EndProcedure
  Procedure.s ckResponseHdrName(obj.i, index.l) :  ProcedureReturn PeekS(RestResponseHdrName(obj, index)) :  EndProcedure
  Procedure.s ckResponseHdrValue(obj.i, index.l) :  ProcedureReturn PeekS(RestResponseHdrValue(obj, index)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn RestSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSendReqBd(obj.i, httpVerb.s, uriPath.s, body.i) :  ProcedureReturn RestSendReqBd(obj, httpVerb, uriPath, body) :  EndProcedure
  Procedure.i ckSendReqBdAsync(obj.i, httpVerb.s, uriPath.s, body.i) :  ProcedureReturn RestSendReqBdAsync(obj, httpVerb, uriPath, body) :  EndProcedure
  Procedure.l ckSendReqFormUrlEncoded(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqFormUrlEncoded(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.i ckSendReqFormUrlEncodedAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqFormUrlEncodedAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.l ckSendReqMultipart(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqMultipart(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.i ckSendReqMultipartAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqMultipartAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.l ckSendReqNoBody(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqNoBody(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.i ckSendReqNoBodyAsync(obj.i, httpVerb.s, uriPath.s) :  ProcedureReturn RestSendReqNoBodyAsync(obj, httpVerb, uriPath) :  EndProcedure
  Procedure.l ckSendReqSb(obj.i, httpVerb.s, uriPath.s, bodySb.i) :  ProcedureReturn RestSendReqSb(obj, httpVerb, uriPath, bodySb) :  EndProcedure
  Procedure.i ckSendReqSbAsync(obj.i, httpVerb.s, uriPath.s, bodySb.i) :  ProcedureReturn RestSendReqSbAsync(obj, httpVerb, uriPath, bodySb) :  EndProcedure
  Procedure.l ckSendReqStreamBody(obj.i, httpVerb.s, uriPath.s, stream.i) :  ProcedureReturn RestSendReqStreamBody(obj, httpVerb, uriPath, stream) :  EndProcedure
  Procedure.i ckSendReqStreamBodyAsync(obj.i, httpVerb.s, uriPath.s, stream.i) :  ProcedureReturn RestSendReqStreamBodyAsync(obj, httpVerb, uriPath, stream) :  EndProcedure
  Procedure.l ckSendReqStringBody(obj.i, httpVerb.s, uriPath.s, bodyText.s) :  ProcedureReturn RestSendReqStringBody(obj, httpVerb, uriPath, bodyText) :  EndProcedure
  Procedure.i ckSendReqStringBodyAsync(obj.i, httpVerb.s, uriPath.s, bodyText.s) :  ProcedureReturn RestSendReqStringBodyAsync(obj, httpVerb, uriPath, bodyText) :  EndProcedure
  Procedure.l ckSetAuthAws(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthAws(obj, authProvider) :  EndProcedure
  Procedure.l ckSetAuthAzureAD(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthAzureAD(obj, authProvider) :  EndProcedure
  Procedure.l ckSetAuthAzureSas(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthAzureSas(obj, authProvider) :  EndProcedure
  Procedure.l ckSetAuthAzureStorage(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthAzureStorage(obj, authProvider) :  EndProcedure
  Procedure.l ckSetAuthBasic(obj.i, username.s, password.s) :  ProcedureReturn RestSetAuthBasic(obj, username, password) :  EndProcedure
  Procedure.l ckSetAuthBasicSecure(obj.i, username.i, password.i) :  ProcedureReturn RestSetAuthBasicSecure(obj, username, password) :  EndProcedure
  Procedure.l ckSetAuthGoogle(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthGoogle(obj, authProvider) :  EndProcedure
  Procedure.l ckSetAuthOAuth1(obj.i, authProvider.i, useQueryParams.l) :  ProcedureReturn RestSetAuthOAuth1(obj, authProvider, useQueryParams) :  EndProcedure
  Procedure.l ckSetAuthOAuth2(obj.i, authProvider.i) :  ProcedureReturn RestSetAuthOAuth2(obj, authProvider) :  EndProcedure
  Procedure.l ckSetMultipartBodyBd(obj.i, bodyData.i) :  ProcedureReturn RestSetMultipartBodyBd(obj, bodyData) :  EndProcedure
  Procedure.l ckSetMultipartBodySb(obj.i, bodySb.i) :  ProcedureReturn RestSetMultipartBodySb(obj, bodySb) :  EndProcedure
  Procedure.l ckSetMultipartBodyStream(obj.i, stream.i) :  ProcedureReturn RestSetMultipartBodyStream(obj, stream) :  EndProcedure
  Procedure.l ckSetMultipartBodyString(obj.i, bodyText.s) :  ProcedureReturn RestSetMultipartBodyString(obj, bodyText) :  EndProcedure
  Procedure.l ckSetResponseBodyStream(obj.i, expectedStatus.l, autoSetStreamCharset.l, responseStream.i) :  ProcedureReturn RestSetResponseBodyStream(obj, expectedStatus, autoSetStreamCharset, responseStream) :  EndProcedure
  Procedure.l ckUseConnection(obj.i, connection.i, autoReconnect.l) :  ProcedureReturn RestUseConnection(obj, connection, autoReconnect) :  EndProcedure
EndModule

