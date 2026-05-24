DeclareModule CkHttp
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckAccept(obj.i)
  Declare setCkAccept(obj.i, value.s)
  Declare.s ckAcceptCharset(obj.i)
  Declare setCkAcceptCharset(obj.i, value.s)
  Declare.s ckAcceptLanguage(obj.i)
  Declare setCkAcceptLanguage(obj.i, value.s)
  Declare.l ckAllowGzip(obj.i)
  Declare setCkAllowGzip(obj.i, value.l)
  Declare.l ckAllowHeaderFolding(obj.i)
  Declare setCkAllowHeaderFolding(obj.i, value.l)
  Declare.s ckAuthToken(obj.i)
  Declare setCkAuthToken(obj.i, value.s)
  Declare.l ckAutoAddHostHeader(obj.i)
  Declare setCkAutoAddHostHeader(obj.i, value.l)
  Declare.s ckAwsAccessKey(obj.i)
  Declare setCkAwsAccessKey(obj.i, value.s)
  Declare.s ckAwsEndpoint(obj.i)
  Declare setCkAwsEndpoint(obj.i, value.s)
  Declare.s ckAwsRegion(obj.i)
  Declare setCkAwsRegion(obj.i, value.s)
  Declare.s ckAwsSecretKey(obj.i)
  Declare setCkAwsSecretKey(obj.i, value.s)
  Declare.l ckAwsSignatureVersion(obj.i)
  Declare setCkAwsSignatureVersion(obj.i, value.l)
  Declare.s ckAwsSubResources(obj.i)
  Declare setCkAwsSubResources(obj.i, value.s)
  Declare.l ckBandwidthThrottleDown(obj.i)
  Declare setCkBandwidthThrottleDown(obj.i, value.l)
  Declare.l ckBandwidthThrottleUp(obj.i)
  Declare setCkBandwidthThrottleUp(obj.i, value.l)
  Declare.l ckBasicAuth(obj.i)
  Declare setCkBasicAuth(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.l ckConnectFailReason(obj.i)
  Declare.s ckConnection(obj.i)
  Declare setCkConnection(obj.i, value.s)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.s ckCookieDir(obj.i)
  Declare setCkCookieDir(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDefaultFreshPeriod(obj.i)
  Declare setCkDefaultFreshPeriod(obj.i, value.l)
  Declare.l ckDigestAuth(obj.i)
  Declare setCkDigestAuth(obj.i, value.l)
  Declare.l ckFetchFromCache(obj.i)
  Declare setCkFetchFromCache(obj.i, value.l)
  Declare.s ckFinalRedirectUrl(obj.i)
  Declare.l ckFollowRedirects(obj.i)
  Declare setCkFollowRedirects(obj.i, value.l)
  Declare.l ckFreshnessAlgorithm(obj.i)
  Declare setCkFreshnessAlgorithm(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckIgnoreMustRevalidate(obj.i)
  Declare setCkIgnoreMustRevalidate(obj.i, value.l)
  Declare.l ckIgnoreNoCache(obj.i)
  Declare setCkIgnoreNoCache(obj.i, value.l)
  Declare.l ckKeepResponseBody(obj.i)
  Declare setCkKeepResponseBody(obj.i, value.l)
  Declare.s ckLastContentType(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.s ckLastHeader(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastModDate(obj.i)
  Declare.s ckLastResponseBody(obj.i)
  Declare.s ckLastResponseHeader(obj.i)
  Declare.l ckLastStatus(obj.i)
  Declare.s ckLastStatusText(obj.i)
  Declare.l ckLMFactor(obj.i)
  Declare setCkLMFactor(obj.i, value.l)
  Declare.s ckLogin(obj.i)
  Declare setCkLogin(obj.i, value.s)
  Declare.s ckLoginDomain(obj.i)
  Declare setCkLoginDomain(obj.i, value.s)
  Declare.l ckMaxConnections(obj.i)
  Declare setCkMaxConnections(obj.i, value.l)
  Declare.l ckMaxFreshPeriod(obj.i)
  Declare setCkMaxFreshPeriod(obj.i, value.l)
  Declare.l ckMaxResponseSize(obj.i)
  Declare setCkMaxResponseSize(obj.i, value.l)
  Declare.l ckMaxUrlLen(obj.i)
  Declare setCkMaxUrlLen(obj.i, value.l)
  Declare.l ckMimicFireFox(obj.i)
  Declare setCkMimicFireFox(obj.i, value.l)
  Declare.l ckMimicIE(obj.i)
  Declare setCkMimicIE(obj.i, value.l)
  Declare.l ckMinFreshPeriod(obj.i)
  Declare setCkMinFreshPeriod(obj.i, value.l)
  Declare.l ckNegotiateAuth(obj.i)
  Declare setCkNegotiateAuth(obj.i, value.l)
  Declare.l ckNtlmAuth(obj.i)
  Declare setCkNtlmAuth(obj.i, value.l)
  Declare.l ckNumCacheLevels(obj.i)
  Declare setCkNumCacheLevels(obj.i, value.l)
  Declare.l ckNumCacheRoots(obj.i)
  Declare.l ckOAuth1(obj.i)
  Declare setCkOAuth1(obj.i, value.l)
  Declare.s ckOAuthCallback(obj.i)
  Declare setCkOAuthCallback(obj.i, value.s)
  Declare.s ckOAuthConsumerKey(obj.i)
  Declare setCkOAuthConsumerKey(obj.i, value.s)
  Declare.s ckOAuthConsumerSecret(obj.i)
  Declare setCkOAuthConsumerSecret(obj.i, value.s)
  Declare.s ckOAuthRealm(obj.i)
  Declare setCkOAuthRealm(obj.i, value.s)
  Declare.s ckOAuthSigMethod(obj.i)
  Declare setCkOAuthSigMethod(obj.i, value.s)
  Declare.s ckOAuthToken(obj.i)
  Declare setCkOAuthToken(obj.i, value.s)
  Declare.s ckOAuthTokenSecret(obj.i)
  Declare setCkOAuthTokenSecret(obj.i, value.s)
  Declare.s ckOAuthVerifier(obj.i)
  Declare setCkOAuthVerifier(obj.i, value.s)
  Declare.s ckPassword(obj.i)
  Declare setCkPassword(obj.i, value.s)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.s ckProxyAuthMethod(obj.i)
  Declare setCkProxyAuthMethod(obj.i, value.s)
  Declare.l ckProxyDirectTls(obj.i)
  Declare setCkProxyDirectTls(obj.i, value.l)
  Declare.s ckProxyDomain(obj.i)
  Declare setCkProxyDomain(obj.i, value.s)
  Declare.s ckProxyLogin(obj.i)
  Declare setCkProxyLogin(obj.i, value.s)
  Declare.s ckProxyLoginDomain(obj.i)
  Declare setCkProxyLoginDomain(obj.i, value.s)
  Declare.s ckProxyPassword(obj.i)
  Declare setCkProxyPassword(obj.i, value.s)
  Declare.l ckProxyPort(obj.i)
  Declare setCkProxyPort(obj.i, value.l)
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.s ckRedirectVerb(obj.i)
  Declare setCkRedirectVerb(obj.i, value.s)
  Declare.s ckReferer(obj.i)
  Declare setCkReferer(obj.i, value.s)
  Declare.s ckRequiredContentType(obj.i)
  Declare setCkRequiredContentType(obj.i, value.s)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
  Declare.l ckS3Ssl(obj.i)
  Declare setCkS3Ssl(obj.i, value.l)
  Declare.l ckSaveCookies(obj.i)
  Declare setCkSaveCookies(obj.i, value.l)
  Declare.l ckSendBufferSize(obj.i)
  Declare setCkSendBufferSize(obj.i, value.l)
  Declare.l ckSendCookies(obj.i)
  Declare setCkSendCookies(obj.i, value.l)
  Declare.s ckSessionLogFilename(obj.i)
  Declare setCkSessionLogFilename(obj.i, value.s)
  Declare.s ckSniHostname(obj.i)
  Declare setCkSniHostname(obj.i, value.s)
  Declare.s ckSocksHostname(obj.i)
  Declare setCkSocksHostname(obj.i, value.s)
  Declare.s ckSocksPassword(obj.i)
  Declare setCkSocksPassword(obj.i, value.s)
  Declare.l ckSocksPort(obj.i)
  Declare setCkSocksPort(obj.i, value.l)
  Declare.s ckSocksUsername(obj.i)
  Declare setCkSocksUsername(obj.i, value.s)
  Declare.l ckSocksVersion(obj.i)
  Declare setCkSocksVersion(obj.i, value.l)
  Declare.l ckSoRcvBuf(obj.i)
  Declare setCkSoRcvBuf(obj.i, value.l)
  Declare.l ckSoSndBuf(obj.i)
  Declare setCkSoSndBuf(obj.i, value.l)
  Declare.s ckSslAllowedCiphers(obj.i)
  Declare setCkSslAllowedCiphers(obj.i, value.s)
  Declare.s ckSslProtocol(obj.i)
  Declare setCkSslProtocol(obj.i, value.s)
  Declare.s ckStreamResponseBodyPath(obj.i)
  Declare setCkStreamResponseBodyPath(obj.i, value.s)
  Declare.s ckTlsCipherSuite(obj.i)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.s ckTlsVersion(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUpdateCache(obj.i)
  Declare setCkUpdateCache(obj.i, value.l)
  Declare.l ckUseIEProxy(obj.i)
  Declare setCkUseIEProxy(obj.i, value.l)
  Declare.s ckUserAgent(obj.i)
  Declare setCkUserAgent(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckWasRedirected(obj.i)
  Declare ckAddCacheRoot(obj.i, dir.s)
  Declare ckClearHeaders(obj.i)
  Declare ckClearInMemoryCookies(obj.i)
  Declare ckClearUrlVars(obj.i)
  Declare.l ckCloseAllConnections(obj.i)
  Declare.i ckCloseAllConnectionsAsync(obj.i)
  Declare.l ckCreateOcspRequest(obj.i, requestDetails.i, ocspRequest.i)
  Declare.l ckCreateTimestampRequest(obj.i, hashAlg.s, hashVal.s, reqPolicyOid.s, addNonce.l, reqTsaCert.l, timestampToken.i)
  Declare ckDnsCacheClear(obj.i)
  Declare.l ckDownload(obj.i, url.s, localFilePath.s)
  Declare.i ckDownloadAsync(obj.i, url.s, localFilePath.s)
  Declare.l ckDownloadAppend(obj.i, url.s, filename.s)
  Declare.i ckDownloadAppendAsync(obj.i, url.s, filename.s)
  Declare.l ckDownloadBd(obj.i, url.s, binData.i)
  Declare.i ckDownloadBdAsync(obj.i, url.s, binData.i)
  Declare.s ckDownloadHash(obj.i, url.s, hashAlgorithm.s, encoding.s)
  Declare.i ckDownloadHashAsync(obj.i, url.s, hashAlgorithm.s, encoding.s)
  Declare.l ckDownloadSb(obj.i, url.s, charset.s, sb.i)
  Declare.i ckDownloadSbAsync(obj.i, url.s, charset.s, sb.i)
  Declare.s ckExtractMetaRefreshUrl(obj.i, htmlContent.s)
  Declare.s ckG_SvcOauthAccessToken(obj.i, iss.s, scope.s, subEmail.s, numSec.l, cert.i)
  Declare.i ckG_SvcOauthAccessTokenAsync(obj.i, iss.s, scope.s, subEmail.s, numSec.l, cert.i)
  Declare.s ckG_SvcOauthAccessToken2(obj.i, claimParams.i, numSec.l, cert.i)
  Declare.i ckG_SvcOauthAccessToken2Async(obj.i, claimParams.i, numSec.l, cert.i)
  Declare.s ckGenTimeStamp(obj.i)
  Declare.s ckGetCacheRoot(obj.i, index.l)
  Declare.s ckGetCookieXml(obj.i, domain.s)
  Declare.s ckGetDomain(obj.i, url.s)
  Declare.i ckGetHead(obj.i, url.s)
  Declare.i ckGetHeadAsync(obj.i, url.s)
  Declare.s ckGetRequestHeader(obj.i, name.s)
  Declare.i ckGetServerSslCert(obj.i, domain.s, port.l)
  Declare.i ckGetServerSslCertAsync(obj.i, domain.s, port.l)
  Declare.s ckGetUrlPath(obj.i, url.s)
  Declare.l ckHasRequestHeader(obj.i, name.s)
  Declare.l ckIsUnlocked(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckOcspCheck(obj.i, domain.s, port.l)
  Declare.i ckOcspCheckAsync(obj.i, domain.s, port.l)
  Declare.l ckParseOcspReply(obj.i, ocspReply.i, replyData.i)
  Declare.i ckPBinaryBd(obj.i, verb.s, url.s, argData.i, contentType.s, md5.l, gzip.l)
  Declare.i ckPBinaryBdAsync(obj.i, verb.s, url.s, argData.i, contentType.s, md5.l, gzip.l)
  Declare.i ckPFile(obj.i, verb.s, url.s, localFilePath.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPFileAsync(obj.i, verb.s, url.s, localFilePath.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPostJson(obj.i, url.s, jsonText.s)
  Declare.i ckPostJsonAsync(obj.i, url.s, jsonText.s)
  Declare.i ckPostJson2(obj.i, url.s, contentType.s, jsonText.s)
  Declare.i ckPostJson2Async(obj.i, url.s, contentType.s, jsonText.s)
  Declare.i ckPostJson3(obj.i, url.s, contentType.s, json.i)
  Declare.i ckPostJson3Async(obj.i, url.s, contentType.s, json.i)
  Declare.i ckPostUrlEncoded(obj.i, url.s, req.i)
  Declare.i ckPostUrlEncodedAsync(obj.i, url.s, req.i)
  Declare.i ckPostXml(obj.i, endpointUrl.s, xmlContent.s, xmlCharset.s)
  Declare.i ckPostXmlAsync(obj.i, endpointUrl.s, xmlContent.s, xmlCharset.s)
  Declare.i ckPText(obj.i, verb.s, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPTextAsync(obj.i, verb.s, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPTextSb(obj.i, verb.s, url.s, textData.i, charset.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPTextSbAsync(obj.i, verb.s, url.s, textData.i, charset.s, contentType.s, md5.l, gzip.l)
  Declare.s ckPutText(obj.i, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l)
  Declare.i ckPutTextAsync(obj.i, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l)
  Declare.s ckQuickDeleteStr(obj.i, url.s)
  Declare.i ckQuickDeleteStrAsync(obj.i, url.s)
  Declare.l ckQuickGetBd(obj.i, url.s, binData.i)
  Declare.i ckQuickGetBdAsync(obj.i, url.s, binData.i)
  Declare.i ckQuickGetObj(obj.i, url.s)
  Declare.i ckQuickGetObjAsync(obj.i, url.s)
  Declare.l ckQuickGetSb(obj.i, url.s, sbContent.i)
  Declare.i ckQuickGetSbAsync(obj.i, url.s, sbContent.i)
  Declare.s ckQuickGetStr(obj.i, url.s)
  Declare.i ckQuickGetStrAsync(obj.i, url.s)
  Declare.s ckQuickPutStr(obj.i, url.s)
  Declare.i ckQuickPutStrAsync(obj.i, url.s)
  Declare.i ckQuickRequest(obj.i, verb.s, url.s)
  Declare.i ckQuickRequestAsync(obj.i, verb.s, url.s)
  Declare ckRemoveRequestHeader(obj.i, name.s)
  Declare.s ckRenderGet(obj.i, url.s)
  Declare.l ckResumeDownload(obj.i, url.s, targetFilename.s)
  Declare.i ckResumeDownloadAsync(obj.i, url.s, targetFilename.s)
  Declare.l ckResumeDownloadBd(obj.i, url.s, binData.i)
  Declare.i ckResumeDownloadBdAsync(obj.i, url.s, binData.i)
  Declare.l ckS3_CreateBucket(obj.i, bucketPath.s)
  Declare.i ckS3_CreateBucketAsync(obj.i, bucketPath.s)
  Declare.l ckS3_DeleteBucket(obj.i, bucketPath.s)
  Declare.i ckS3_DeleteBucketAsync(obj.i, bucketPath.s)
  Declare.i ckS3_DeleteMultipleObjects(obj.i, bucketName.s, objectNames.i)
  Declare.i ckS3_DeleteMultipleObjectsAsync(obj.i, bucketName.s, objectNames.i)
  Declare.l ckS3_DeleteObject(obj.i, bucketPath.s, objectName.s)
  Declare.i ckS3_DeleteObjectAsync(obj.i, bucketPath.s, objectName.s)
  Declare.l ckS3_DownloadBd(obj.i, bucketPath.s, objectName.s, bd.i)
  Declare.i ckS3_DownloadBdAsync(obj.i, bucketPath.s, objectName.s, bd.i)
  Declare.l ckS3_DownloadFile(obj.i, bucketPath.s, objectName.s, localFilePath.s)
  Declare.i ckS3_DownloadFileAsync(obj.i, bucketPath.s, objectName.s, localFilePath.s)
  Declare.s ckS3_DownloadString(obj.i, bucketPath.s, objectName.s, charset.s)
  Declare.i ckS3_DownloadStringAsync(obj.i, bucketPath.s, objectName.s, charset.s)
  Declare.l ckS3_FileExists(obj.i, bucketPath.s, objectName.s)
  Declare.i ckS3_FileExistsAsync(obj.i, bucketPath.s, objectName.s)
  Declare.s ckS3_GenerateUrl(obj.i, bucket.s, path.s, expire.i)
  Declare.s ckS3_GenerateUrlV4(obj.i, useHttps.l, bucketName.s, path.s, numSecondsValid.l, awsService.s)
  Declare.s ckS3_GenPresignedUrl(obj.i, httpVerb.s, useHttps.l, bucketName.s, path.s, numSecondsValid.l, awsService.s)
  Declare.s ckS3_ListBucketObjects(obj.i, bucketPath.s)
  Declare.i ckS3_ListBucketObjectsAsync(obj.i, bucketPath.s)
  Declare.s ckS3_ListBuckets(obj.i)
  Declare.i ckS3_ListBucketsAsync(obj.i)
  Declare.l ckS3_UploadBd(obj.i, bd.i, contentType.s, bucketPath.s, objectName.s)
  Declare.i ckS3_UploadBdAsync(obj.i, bd.i, contentType.s, bucketPath.s, objectName.s)
  Declare.l ckS3_UploadFile(obj.i, localFilePath.s, contentType.s, bucketPath.s, objectName.s)
  Declare.i ckS3_UploadFileAsync(obj.i, localFilePath.s, contentType.s, bucketPath.s, objectName.s)
  Declare.l ckS3_UploadString(obj.i, objectContent.s, charset.s, contentType.s, bucketPath.s, objectName.s)
  Declare.i ckS3_UploadStringAsync(obj.i, objectContent.s, charset.s, contentType.s, bucketPath.s, objectName.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetCookieXml(obj.i, domain.s, cookieXml.s)
  Declare.l ckSetOAuthRsaKey(obj.i, privKey.i)
  Declare.l ckSetPassword(obj.i, password.i)
  Declare ckSetRequestHeader(obj.i, headerFieldName.s, headerFieldValue.s)
  Declare.l ckSetSecurePassword(obj.i, password.i)
  Declare ckSetSslCertRequirement(obj.i, reqName.s, reqValue.s)
  Declare.l ckSetSslClientCert(obj.i, cert.i)
  Declare.l ckSetSslClientCertPem(obj.i, pemDataOrPath.s, pemPassword.s)
  Declare.l ckSetSslClientCertPfx(obj.i, pfxPath.s, pfxPassword.s)
  Declare.l ckSetUrlVar(obj.i, name.s, value.s)
  Declare.l ckSharePointOnlineAuth(obj.i, siteUrl.s, username.s, password.i, extraInfo.i)
  Declare.i ckSharePointOnlineAuthAsync(obj.i, siteUrl.s, username.s, password.i, extraInfo.i)
  Declare ckSleepMs(obj.i, millisec.l)
  Declare.i ckSynchronousRequest(obj.i, domain.s, port.l, ssl.l, req.i)
  Declare.i ckSynchronousRequestAsync(obj.i, domain.s, port.l, ssl.l, req.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.s ckUrlDecode(obj.i, str.s)
  Declare.s ckUrlEncode(obj.i, str.s)
  Declare.l ckVerifyTimestampReply(obj.i, timestampReply.i, tsaCert.i)
  Declare.s ckXmlRpc(obj.i, urlEndpoint.s, xmlIn.s)
  Declare.i ckXmlRpcAsync(obj.i, urlEndpoint.s, xmlIn.s)
  Declare.s ckXmlRpcPut(obj.i, urlEndpoint.s, xmlIn.s)
  Declare.i ckXmlRpcPutAsync(obj.i, urlEndpoint.s, xmlIn.s)
EndDeclareModule

Module CkHttp
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMssisll(obj.i, arg1.s, arg2.s, arg3.i, arg4.s, arg5.l, arg6.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMssii(obj.i, arg1.s, arg2.s, arg3.i, arg4.i)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMisss(obj.i, arg1.i, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMsssli(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.i)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMlssls(obj.i, arg1.l, arg2.s, arg3.s, arg4.l, arg5.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMsssli(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.i)
  PrototypeC.l cklMili(obj.i, arg1.i, arg2.l, arg3.i)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMssssll(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.l, arg6.l)
  PrototypeC.i ckiMsssssll(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s, arg6.l, arg7.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMslssls(obj.i, arg1.s, arg2.l, arg3.s, arg4.s, arg5.l, arg6.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMili(obj.i, arg1.i, arg2.l, arg3.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMssii(obj.i, arg1.s, arg2.s, arg3.i, arg4.i)
  PrototypeC.i ckiMslli(obj.i, arg1.s, arg2.l, arg3.l, arg4.i)
  PrototypeC.l cklMssssll(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.l, arg6.l)
  PrototypeC.l cklMssslli(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.l, arg6.i)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.i ckiMssissll(obj.i, arg1.s, arg2.s, arg3.i, arg4.s, arg5.s, arg6.l, arg7.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMisss(obj.i, arg1.i, arg2.s, arg3.s, arg4.s)
  PrototypeC.i CkHttpCreate()
  PrototypeC CkHttpDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHttpLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHttpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHttpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HttpCreate.CkHttpCreate = GetFunction(CkHttpLibId,"CkHttpU_CreateW")
  Global HttpDispose.CkHttpDispose = GetFunction(CkHttpLibId,"CkHttpU_DisposeW")
  Global HttpAbortCurrent.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getAbortCurrentW")
  Global HttpPSetAbortCurrent.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAbortCurrentW")
  Global HttpAccept.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_acceptW")
  Global HttpPSetAccept.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAcceptW")
  Global HttpAcceptCharset.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_acceptCharsetW")
  Global HttpPSetAcceptCharset.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAcceptCharsetW")
  Global HttpAcceptLanguage.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_acceptLanguageW")
  Global HttpPSetAcceptLanguage.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAcceptLanguageW")
  Global HttpAllowGzip.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getAllowGzipW")
  Global HttpPSetAllowGzip.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAllowGzipW")
  Global HttpAllowHeaderFolding.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getAllowHeaderFoldingW")
  Global HttpPSetAllowHeaderFolding.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAllowHeaderFoldingW")
  Global HttpAuthToken.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_authTokenW")
  Global HttpPSetAuthToken.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAuthTokenW")
  Global HttpAutoAddHostHeader.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getAutoAddHostHeaderW")
  Global HttpPSetAutoAddHostHeader.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAutoAddHostHeaderW")
  Global HttpAwsAccessKey.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_awsAccessKeyW")
  Global HttpPSetAwsAccessKey.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsAccessKeyW")
  Global HttpAwsEndpoint.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_awsEndpointW")
  Global HttpPSetAwsEndpoint.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsEndpointW")
  Global HttpAwsRegion.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_awsRegionW")
  Global HttpPSetAwsRegion.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsRegionW")
  Global HttpAwsSecretKey.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_awsSecretKeyW")
  Global HttpPSetAwsSecretKey.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsSecretKeyW")
  Global HttpAwsSignatureVersion.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getAwsSignatureVersionW")
  Global HttpPSetAwsSignatureVersion.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsSignatureVersionW")
  Global HttpAwsSubResources.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_awsSubResourcesW")
  Global HttpPSetAwsSubResources.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putAwsSubResourcesW")
  Global HttpBandwidthThrottleDown.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getBandwidthThrottleDownW")
  Global HttpPSetBandwidthThrottleDown.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putBandwidthThrottleDownW")
  Global HttpBandwidthThrottleUp.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getBandwidthThrottleUpW")
  Global HttpPSetBandwidthThrottleUp.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putBandwidthThrottleUpW")
  Global HttpBasicAuth.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getBasicAuthW")
  Global HttpPSetBasicAuth.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putBasicAuthW")
  Global HttpClientIpAddress.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_clientIpAddressW")
  Global HttpPSetClientIpAddress.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putClientIpAddressW")
  Global HttpConnectFailReason.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getConnectFailReasonW")
  Global HttpConnection.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_connectionW")
  Global HttpPSetConnection.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putConnectionW")
  Global HttpConnectTimeout.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getConnectTimeoutW")
  Global HttpPSetConnectTimeout.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putConnectTimeoutW")
  Global HttpCookieDir.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_cookieDirW")
  Global HttpPSetCookieDir.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putCookieDirW")
  Global HttpDebugLogFilePath.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_debugLogFilePathW")
  Global HttpPSetDebugLogFilePath.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putDebugLogFilePathW")
  Global HttpDefaultFreshPeriod.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getDefaultFreshPeriodW")
  Global HttpPSetDefaultFreshPeriod.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putDefaultFreshPeriodW")
  Global HttpDigestAuth.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getDigestAuthW")
  Global HttpPSetDigestAuth.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putDigestAuthW")
  Global HttpFetchFromCache.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getFetchFromCacheW")
  Global HttpPSetFetchFromCache.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putFetchFromCacheW")
  Global HttpFinalRedirectUrl.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_finalRedirectUrlW")
  Global HttpFollowRedirects.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getFollowRedirectsW")
  Global HttpPSetFollowRedirects.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putFollowRedirectsW")
  Global HttpFreshnessAlgorithm.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getFreshnessAlgorithmW")
  Global HttpPSetFreshnessAlgorithm.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putFreshnessAlgorithmW")
  Global HttpHeartbeatMs.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getHeartbeatMsW")
  Global HttpPSetHeartbeatMs.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putHeartbeatMsW")
  Global HttpIgnoreMustRevalidate.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getIgnoreMustRevalidateW")
  Global HttpPSetIgnoreMustRevalidate.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putIgnoreMustRevalidateW")
  Global HttpIgnoreNoCache.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getIgnoreNoCacheW")
  Global HttpPSetIgnoreNoCache.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putIgnoreNoCacheW")
  Global HttpKeepResponseBody.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getKeepResponseBodyW")
  Global HttpPSetKeepResponseBody.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putKeepResponseBodyW")
  Global HttpLastContentType.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastContentTypeW")
  Global HttpLastErrorHtml.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastErrorHtmlW")
  Global HttpLastErrorText.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastErrorTextW")
  Global HttpLastErrorXml.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastErrorXmlW")
  Global HttpLastHeader.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastHeaderW")
  Global HttpLastMethodSuccess.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getLastMethodSuccessW")
  Global HttpPSetLastMethodSuccess.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putLastMethodSuccessW")
  Global HttpLastModDate.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastModDateW")
  Global HttpLastResponseBody.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastResponseBodyW")
  Global HttpLastResponseHeader.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastResponseHeaderW")
  Global HttpLastStatus.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getLastStatusW")
  Global HttpLastStatusText.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_lastStatusTextW")
  Global HttpLMFactor.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getLMFactorW")
  Global HttpPSetLMFactor.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putLMFactorW")
  Global HttpLogin.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_loginW")
  Global HttpPSetLogin.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putLoginW")
  Global HttpLoginDomain.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_loginDomainW")
  Global HttpPSetLoginDomain.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putLoginDomainW")
  Global HttpMaxConnections.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMaxConnectionsW")
  Global HttpPSetMaxConnections.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMaxConnectionsW")
  Global HttpMaxFreshPeriod.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMaxFreshPeriodW")
  Global HttpPSetMaxFreshPeriod.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMaxFreshPeriodW")
  Global HttpMaxResponseSize.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMaxResponseSizeW")
  Global HttpPSetMaxResponseSize.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMaxResponseSizeW")
  Global HttpMaxUrlLen.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMaxUrlLenW")
  Global HttpPSetMaxUrlLen.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMaxUrlLenW")
  Global HttpMimicFireFox.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMimicFireFoxW")
  Global HttpPSetMimicFireFox.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMimicFireFoxW")
  Global HttpMimicIE.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMimicIEW")
  Global HttpPSetMimicIE.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMimicIEW")
  Global HttpMinFreshPeriod.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getMinFreshPeriodW")
  Global HttpPSetMinFreshPeriod.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putMinFreshPeriodW")
  Global HttpNegotiateAuth.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getNegotiateAuthW")
  Global HttpPSetNegotiateAuth.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putNegotiateAuthW")
  Global HttpNtlmAuth.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getNtlmAuthW")
  Global HttpPSetNtlmAuth.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putNtlmAuthW")
  Global HttpNumCacheLevels.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getNumCacheLevelsW")
  Global HttpPSetNumCacheLevels.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putNumCacheLevelsW")
  Global HttpNumCacheRoots.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getNumCacheRootsW")
  Global HttpOAuth1.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getOAuth1W")
  Global HttpPSetOAuth1.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuth1W")
  Global HttpOAuthCallback.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthCallbackW")
  Global HttpPSetOAuthCallback.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthCallbackW")
  Global HttpOAuthConsumerKey.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthConsumerKeyW")
  Global HttpPSetOAuthConsumerKey.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthConsumerKeyW")
  Global HttpOAuthConsumerSecret.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthConsumerSecretW")
  Global HttpPSetOAuthConsumerSecret.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthConsumerSecretW")
  Global HttpOAuthRealm.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthRealmW")
  Global HttpPSetOAuthRealm.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthRealmW")
  Global HttpOAuthSigMethod.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthSigMethodW")
  Global HttpPSetOAuthSigMethod.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthSigMethodW")
  Global HttpOAuthToken.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthTokenW")
  Global HttpPSetOAuthToken.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthTokenW")
  Global HttpOAuthTokenSecret.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthTokenSecretW")
  Global HttpPSetOAuthTokenSecret.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthTokenSecretW")
  Global HttpOAuthVerifier.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_oAuthVerifierW")
  Global HttpPSetOAuthVerifier.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putOAuthVerifierW")
  Global HttpPassword.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_passwordW")
  Global HttpPSetPassword.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putPasswordW")
  Global HttpPercentDoneScale.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getPercentDoneScaleW")
  Global HttpPSetPercentDoneScale.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putPercentDoneScaleW")
  Global HttpPreferIpv6.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getPreferIpv6W")
  Global HttpPSetPreferIpv6.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putPreferIpv6W")
  Global HttpProxyAuthMethod.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_proxyAuthMethodW")
  Global HttpPSetProxyAuthMethod.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyAuthMethodW")
  Global HttpProxyDirectTls.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getProxyDirectTlsW")
  Global HttpPSetProxyDirectTls.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyDirectTlsW")
  Global HttpProxyDomain.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_proxyDomainW")
  Global HttpPSetProxyDomain.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyDomainW")
  Global HttpProxyLogin.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_proxyLoginW")
  Global HttpPSetProxyLogin.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyLoginW")
  Global HttpProxyLoginDomain.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_proxyLoginDomainW")
  Global HttpPSetProxyLoginDomain.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyLoginDomainW")
  Global HttpProxyPassword.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_proxyPasswordW")
  Global HttpPSetProxyPassword.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyPasswordW")
  Global HttpProxyPort.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getProxyPortW")
  Global HttpPSetProxyPort.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putProxyPortW")
  Global HttpReadTimeout.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getReadTimeoutW")
  Global HttpPSetReadTimeout.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putReadTimeoutW")
  Global HttpRedirectVerb.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_redirectVerbW")
  Global HttpPSetRedirectVerb.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putRedirectVerbW")
  Global HttpReferer.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_refererW")
  Global HttpPSetReferer.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putRefererW")
  Global HttpRequiredContentType.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_requiredContentTypeW")
  Global HttpPSetRequiredContentType.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putRequiredContentTypeW")
  Global HttpRequireSslCertVerify.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getRequireSslCertVerifyW")
  Global HttpPSetRequireSslCertVerify.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putRequireSslCertVerifyW")
  Global HttpS3Ssl.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getS3SslW")
  Global HttpPSetS3Ssl.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putS3SslW")
  Global HttpSaveCookies.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSaveCookiesW")
  Global HttpPSetSaveCookies.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSaveCookiesW")
  Global HttpSendBufferSize.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSendBufferSizeW")
  Global HttpPSetSendBufferSize.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSendBufferSizeW")
  Global HttpSendCookies.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSendCookiesW")
  Global HttpPSetSendCookies.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSendCookiesW")
  Global HttpSessionLogFilename.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_sessionLogFilenameW")
  Global HttpPSetSessionLogFilename.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSessionLogFilenameW")
  Global HttpSniHostname.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_sniHostnameW")
  Global HttpPSetSniHostname.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSniHostnameW")
  Global HttpSocksHostname.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_socksHostnameW")
  Global HttpPSetSocksHostname.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSocksHostnameW")
  Global HttpSocksPassword.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_socksPasswordW")
  Global HttpPSetSocksPassword.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSocksPasswordW")
  Global HttpSocksPort.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSocksPortW")
  Global HttpPSetSocksPort.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSocksPortW")
  Global HttpSocksUsername.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_socksUsernameW")
  Global HttpPSetSocksUsername.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSocksUsernameW")
  Global HttpSocksVersion.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSocksVersionW")
  Global HttpPSetSocksVersion.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSocksVersionW")
  Global HttpSoRcvBuf.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSoRcvBufW")
  Global HttpPSetSoRcvBuf.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSoRcvBufW")
  Global HttpSoSndBuf.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getSoSndBufW")
  Global HttpPSetSoSndBuf.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSoSndBufW")
  Global HttpSslAllowedCiphers.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_sslAllowedCiphersW")
  Global HttpPSetSslAllowedCiphers.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSslAllowedCiphersW")
  Global HttpSslProtocol.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_sslProtocolW")
  Global HttpPSetSslProtocol.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putSslProtocolW")
  Global HttpStreamResponseBodyPath.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_streamResponseBodyPathW")
  Global HttpPSetStreamResponseBodyPath.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putStreamResponseBodyPathW")
  Global HttpTlsCipherSuite.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_tlsCipherSuiteW")
  Global HttpTlsPinSet.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_tlsPinSetW")
  Global HttpPSetTlsPinSet.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putTlsPinSetW")
  Global HttpTlsVersion.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_tlsVersionW")
  Global HttpUncommonOptions.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_uncommonOptionsW")
  Global HttpPSetUncommonOptions.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putUncommonOptionsW")
  Global HttpUpdateCache.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getUpdateCacheW")
  Global HttpPSetUpdateCache.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putUpdateCacheW")
  Global HttpUseIEProxy.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getUseIEProxyW")
  Global HttpPSetUseIEProxy.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putUseIEProxyW")
  Global HttpUserAgent.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_userAgentW")
  Global HttpPSetUserAgent.cksPropSet = GetFunction(CkHttpLibId,"CkHttpU_putUserAgentW")
  Global HttpVerboseLogging.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getVerboseLoggingW")
  Global HttpPSetVerboseLogging.cklPropSet = GetFunction(CkHttpLibId,"CkHttpU_putVerboseLoggingW")
  Global HttpVersion.cksPropGet = GetFunction(CkHttpLibId,"CkHttpU_versionW")
  Global HttpWasRedirected.cklPropGet = GetFunction(CkHttpLibId,"CkHttpU_getWasRedirectedW")
  Global HttpAddCacheRoot.ckvMs = GetFunction(CkHttpLibId,"CkHttpU_AddCacheRootW")
  Global HttpClearHeaders.ckvM = GetFunction(CkHttpLibId,"CkHttpU_ClearHeadersW")
  Global HttpClearInMemoryCookies.ckvM = GetFunction(CkHttpLibId,"CkHttpU_ClearInMemoryCookiesW")
  Global HttpClearUrlVars.ckvM = GetFunction(CkHttpLibId,"CkHttpU_ClearUrlVarsW")
  Global HttpCloseAllConnections.cklM = GetFunction(CkHttpLibId,"CkHttpU_CloseAllConnectionsW")
  Global HttpCloseAllConnectionsAsync.ckiM = GetFunction(CkHttpLibId,"CkHttpU_CloseAllConnectionsAsyncW")
  Global HttpCreateOcspRequest.cklMii = GetFunction(CkHttpLibId,"CkHttpU_CreateOcspRequestW")
  Global HttpCreateTimestampRequest.cklMssslli = GetFunction(CkHttpLibId,"CkHttpU_CreateTimestampRequestW")
  Global HttpDnsCacheClear.ckvM = GetFunction(CkHttpLibId,"CkHttpU_DnsCacheClearW")
  Global HttpDownload.cklMss = GetFunction(CkHttpLibId,"CkHttpU_DownloadW")
  Global HttpDownloadAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_DownloadAsyncW")
  Global HttpDownloadAppend.cklMss = GetFunction(CkHttpLibId,"CkHttpU_DownloadAppendW")
  Global HttpDownloadAppendAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_DownloadAppendAsyncW")
  Global HttpDownloadBd.cklMsi = GetFunction(CkHttpLibId,"CkHttpU_DownloadBdW")
  Global HttpDownloadBdAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_DownloadBdAsyncW")
  Global HttpDownloadHash.cklMsss = GetFunction(CkHttpLibId,"CkHttpU_downloadHashW")
  Global HttpDownloadHashAsync.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_DownloadHashAsyncW")
  Global HttpDownloadSb.cklMssi = GetFunction(CkHttpLibId,"CkHttpU_DownloadSbW")
  Global HttpDownloadSbAsync.ckiMssi = GetFunction(CkHttpLibId,"CkHttpU_DownloadSbAsyncW")
  Global HttpExtractMetaRefreshUrl.cklMs = GetFunction(CkHttpLibId,"CkHttpU_extractMetaRefreshUrlW")
  Global HttpG_SvcOauthAccessToken.cklMsssli = GetFunction(CkHttpLibId,"CkHttpU_g_SvcOauthAccessTokenW")
  Global HttpG_SvcOauthAccessTokenAsync.ckiMsssli = GetFunction(CkHttpLibId,"CkHttpU_G_SvcOauthAccessTokenAsyncW")
  Global HttpG_SvcOauthAccessToken2.cklMili = GetFunction(CkHttpLibId,"CkHttpU_g_SvcOauthAccessToken2W")
  Global HttpG_SvcOauthAccessToken2Async.ckiMili = GetFunction(CkHttpLibId,"CkHttpU_G_SvcOauthAccessToken2AsyncW")
  Global HttpGenTimeStamp.cklM = GetFunction(CkHttpLibId,"CkHttpU_genTimeStampW")
  Global HttpGetCacheRoot.cklMl = GetFunction(CkHttpLibId,"CkHttpU_getCacheRootW")
  Global HttpGetCookieXml.cklMs = GetFunction(CkHttpLibId,"CkHttpU_getCookieXmlW")
  Global HttpGetDomain.cklMs = GetFunction(CkHttpLibId,"CkHttpU_getDomainW")
  Global HttpGetHead.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_GetHeadW")
  Global HttpGetHeadAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_GetHeadAsyncW")
  Global HttpGetRequestHeader.cklMs = GetFunction(CkHttpLibId,"CkHttpU_getRequestHeaderW")
  Global HttpGetServerSslCert.ckiMsl = GetFunction(CkHttpLibId,"CkHttpU_GetServerSslCertW")
  Global HttpGetServerSslCertAsync.ckiMsl = GetFunction(CkHttpLibId,"CkHttpU_GetServerSslCertAsyncW")
  Global HttpGetUrlPath.cklMs = GetFunction(CkHttpLibId,"CkHttpU_getUrlPathW")
  Global HttpHasRequestHeader.cklMs = GetFunction(CkHttpLibId,"CkHttpU_HasRequestHeaderW")
  Global HttpIsUnlocked.cklM = GetFunction(CkHttpLibId,"CkHttpU_IsUnlockedW")
  Global HttpLastJsonData.ckiM = GetFunction(CkHttpLibId,"CkHttpU_LastJsonDataW")
  Global HttpLoadTaskCaller.cklMi = GetFunction(CkHttpLibId,"CkHttpU_LoadTaskCallerW")
  Global HttpOcspCheck.cklMsl = GetFunction(CkHttpLibId,"CkHttpU_OcspCheckW")
  Global HttpOcspCheckAsync.ckiMsl = GetFunction(CkHttpLibId,"CkHttpU_OcspCheckAsyncW")
  Global HttpParseOcspReply.cklMii = GetFunction(CkHttpLibId,"CkHttpU_ParseOcspReplyW")
  Global HttpPBinaryBd.ckiMssisll = GetFunction(CkHttpLibId,"CkHttpU_PBinaryBdW")
  Global HttpPBinaryBdAsync.ckiMssisll = GetFunction(CkHttpLibId,"CkHttpU_PBinaryBdAsyncW")
  Global HttpPFile.ckiMssssll = GetFunction(CkHttpLibId,"CkHttpU_PFileW")
  Global HttpPFileAsync.ckiMssssll = GetFunction(CkHttpLibId,"CkHttpU_PFileAsyncW")
  Global HttpPostJson.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_PostJsonW")
  Global HttpPostJsonAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_PostJsonAsyncW")
  Global HttpPostJson2.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_PostJson2W")
  Global HttpPostJson2Async.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_PostJson2AsyncW")
  Global HttpPostJson3.ckiMssi = GetFunction(CkHttpLibId,"CkHttpU_PostJson3W")
  Global HttpPostJson3Async.ckiMssi = GetFunction(CkHttpLibId,"CkHttpU_PostJson3AsyncW")
  Global HttpPostUrlEncoded.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_PostUrlEncodedW")
  Global HttpPostUrlEncodedAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_PostUrlEncodedAsyncW")
  Global HttpPostXml.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_PostXmlW")
  Global HttpPostXmlAsync.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_PostXmlAsyncW")
  Global HttpPText.ckiMsssssll = GetFunction(CkHttpLibId,"CkHttpU_PTextW")
  Global HttpPTextAsync.ckiMsssssll = GetFunction(CkHttpLibId,"CkHttpU_PTextAsyncW")
  Global HttpPTextSb.ckiMssissll = GetFunction(CkHttpLibId,"CkHttpU_PTextSbW")
  Global HttpPTextSbAsync.ckiMssissll = GetFunction(CkHttpLibId,"CkHttpU_PTextSbAsyncW")
  Global HttpPutText.cklMssssll = GetFunction(CkHttpLibId,"CkHttpU_putTextW")
  Global HttpPutTextAsync.ckiMssssll = GetFunction(CkHttpLibId,"CkHttpU_PutTextAsyncW")
  Global HttpQuickDeleteStr.cklMs = GetFunction(CkHttpLibId,"CkHttpU_quickDeleteStrW")
  Global HttpQuickDeleteStrAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_QuickDeleteStrAsyncW")
  Global HttpQuickGetBd.cklMsi = GetFunction(CkHttpLibId,"CkHttpU_QuickGetBdW")
  Global HttpQuickGetBdAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_QuickGetBdAsyncW")
  Global HttpQuickGetObj.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_QuickGetObjW")
  Global HttpQuickGetObjAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_QuickGetObjAsyncW")
  Global HttpQuickGetSb.cklMsi = GetFunction(CkHttpLibId,"CkHttpU_QuickGetSbW")
  Global HttpQuickGetSbAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_QuickGetSbAsyncW")
  Global HttpQuickGetStr.cklMs = GetFunction(CkHttpLibId,"CkHttpU_quickGetStrW")
  Global HttpQuickGetStrAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_QuickGetStrAsyncW")
  Global HttpQuickPutStr.cklMs = GetFunction(CkHttpLibId,"CkHttpU_quickPutStrW")
  Global HttpQuickPutStrAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_QuickPutStrAsyncW")
  Global HttpQuickRequest.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_QuickRequestW")
  Global HttpQuickRequestAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_QuickRequestAsyncW")
  Global HttpRemoveRequestHeader.ckvMs = GetFunction(CkHttpLibId,"CkHttpU_RemoveRequestHeaderW")
  Global HttpRenderGet.cklMs = GetFunction(CkHttpLibId,"CkHttpU_renderGetW")
  Global HttpResumeDownload.cklMss = GetFunction(CkHttpLibId,"CkHttpU_ResumeDownloadW")
  Global HttpResumeDownloadAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_ResumeDownloadAsyncW")
  Global HttpResumeDownloadBd.cklMsi = GetFunction(CkHttpLibId,"CkHttpU_ResumeDownloadBdW")
  Global HttpResumeDownloadBdAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_ResumeDownloadBdAsyncW")
  Global HttpS3_CreateBucket.cklMs = GetFunction(CkHttpLibId,"CkHttpU_S3_CreateBucketW")
  Global HttpS3_CreateBucketAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_S3_CreateBucketAsyncW")
  Global HttpS3_DeleteBucket.cklMs = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteBucketW")
  Global HttpS3_DeleteBucketAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteBucketAsyncW")
  Global HttpS3_DeleteMultipleObjects.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteMultipleObjectsW")
  Global HttpS3_DeleteMultipleObjectsAsync.ckiMsi = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteMultipleObjectsAsyncW")
  Global HttpS3_DeleteObject.cklMss = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteObjectW")
  Global HttpS3_DeleteObjectAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_S3_DeleteObjectAsyncW")
  Global HttpS3_DownloadBd.cklMssi = GetFunction(CkHttpLibId,"CkHttpU_S3_DownloadBdW")
  Global HttpS3_DownloadBdAsync.ckiMssi = GetFunction(CkHttpLibId,"CkHttpU_S3_DownloadBdAsyncW")
  Global HttpS3_DownloadFile.cklMsss = GetFunction(CkHttpLibId,"CkHttpU_S3_DownloadFileW")
  Global HttpS3_DownloadFileAsync.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_S3_DownloadFileAsyncW")
  Global HttpS3_DownloadString.cklMsss = GetFunction(CkHttpLibId,"CkHttpU_s3_DownloadStringW")
  Global HttpS3_DownloadStringAsync.ckiMsss = GetFunction(CkHttpLibId,"CkHttpU_S3_DownloadStringAsyncW")
  Global HttpS3_FileExists.cklMss = GetFunction(CkHttpLibId,"CkHttpU_S3_FileExistsW")
  Global HttpS3_FileExistsAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_S3_FileExistsAsyncW")
  Global HttpS3_GenerateUrl.cklMssi = GetFunction(CkHttpLibId,"CkHttpU_s3_GenerateUrlW")
  Global HttpS3_GenerateUrlV4.cklMlssls = GetFunction(CkHttpLibId,"CkHttpU_s3_GenerateUrlV4W")
  Global HttpS3_GenPresignedUrl.cklMslssls = GetFunction(CkHttpLibId,"CkHttpU_s3_GenPresignedUrlW")
  Global HttpS3_ListBucketObjects.cklMs = GetFunction(CkHttpLibId,"CkHttpU_s3_ListBucketObjectsW")
  Global HttpS3_ListBucketObjectsAsync.ckiMs = GetFunction(CkHttpLibId,"CkHttpU_S3_ListBucketObjectsAsyncW")
  Global HttpS3_ListBuckets.cklM = GetFunction(CkHttpLibId,"CkHttpU_s3_ListBucketsW")
  Global HttpS3_ListBucketsAsync.ckiM = GetFunction(CkHttpLibId,"CkHttpU_S3_ListBucketsAsyncW")
  Global HttpS3_UploadBd.cklMisss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadBdW")
  Global HttpS3_UploadBdAsync.ckiMisss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadBdAsyncW")
  Global HttpS3_UploadFile.cklMssss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadFileW")
  Global HttpS3_UploadFileAsync.ckiMssss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadFileAsyncW")
  Global HttpS3_UploadString.cklMsssss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadStringW")
  Global HttpS3_UploadStringAsync.ckiMsssss = GetFunction(CkHttpLibId,"CkHttpU_S3_UploadStringAsyncW")
  Global HttpSaveLastError.cklMs = GetFunction(CkHttpLibId,"CkHttpU_SaveLastErrorW")
  Global HttpSetCookieXml.cklMss = GetFunction(CkHttpLibId,"CkHttpU_SetCookieXmlW")
  Global HttpSetOAuthRsaKey.cklMi = GetFunction(CkHttpLibId,"CkHttpU_SetOAuthRsaKeyW")
  Global HttpSetPassword.cklMi = GetFunction(CkHttpLibId,"CkHttpU_SetPasswordW")
  Global HttpSetRequestHeader.ckvMss = GetFunction(CkHttpLibId,"CkHttpU_SetRequestHeaderW")
  Global HttpSetSecurePassword.cklMi = GetFunction(CkHttpLibId,"CkHttpU_SetSecurePasswordW")
  Global HttpSetSslCertRequirement.ckvMss = GetFunction(CkHttpLibId,"CkHttpU_SetSslCertRequirementW")
  Global HttpSetSslClientCert.cklMi = GetFunction(CkHttpLibId,"CkHttpU_SetSslClientCertW")
  Global HttpSetSslClientCertPem.cklMss = GetFunction(CkHttpLibId,"CkHttpU_SetSslClientCertPemW")
  Global HttpSetSslClientCertPfx.cklMss = GetFunction(CkHttpLibId,"CkHttpU_SetSslClientCertPfxW")
  Global HttpSetUrlVar.cklMss = GetFunction(CkHttpLibId,"CkHttpU_SetUrlVarW")
  Global HttpSharePointOnlineAuth.cklMssii = GetFunction(CkHttpLibId,"CkHttpU_SharePointOnlineAuthW")
  Global HttpSharePointOnlineAuthAsync.ckiMssii = GetFunction(CkHttpLibId,"CkHttpU_SharePointOnlineAuthAsyncW")
  Global HttpSleepMs.ckvMl = GetFunction(CkHttpLibId,"CkHttpU_SleepMsW")
  Global HttpSynchronousRequest.ckiMslli = GetFunction(CkHttpLibId,"CkHttpU_SynchronousRequestW")
  Global HttpSynchronousRequestAsync.ckiMslli = GetFunction(CkHttpLibId,"CkHttpU_SynchronousRequestAsyncW")
  Global HttpUnlockComponent.cklMs = GetFunction(CkHttpLibId,"CkHttpU_UnlockComponentW")
  Global HttpUrlDecode.cklMs = GetFunction(CkHttpLibId,"CkHttpU_urlDecodeW")
  Global HttpUrlEncode.cklMs = GetFunction(CkHttpLibId,"CkHttpU_urlEncodeW")
  Global HttpVerifyTimestampReply.cklMii = GetFunction(CkHttpLibId,"CkHttpU_VerifyTimestampReplyW")
  Global HttpXmlRpc.cklMss = GetFunction(CkHttpLibId,"CkHttpU_xmlRpcW")
  Global HttpXmlRpcAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_XmlRpcAsyncW")
  Global HttpXmlRpcPut.cklMss = GetFunction(CkHttpLibId,"CkHttpU_xmlRpcPutW")
  Global HttpXmlRpcPutAsync.ckiMss = GetFunction(CkHttpLibId,"CkHttpU_XmlRpcPutAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HttpCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HttpDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn HttpAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn HttpPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckAccept(obj.i) : ProcedureReturn PeekS(HttpAccept(obj)) : EndProcedure
  Procedure setCkAccept(obj.i, value.s) : ProcedureReturn HttpPSetAccept(obj,value) : EndProcedure
  Procedure.s ckAcceptCharset(obj.i) : ProcedureReturn PeekS(HttpAcceptCharset(obj)) : EndProcedure
  Procedure setCkAcceptCharset(obj.i, value.s) : ProcedureReturn HttpPSetAcceptCharset(obj,value) : EndProcedure
  Procedure.s ckAcceptLanguage(obj.i) : ProcedureReturn PeekS(HttpAcceptLanguage(obj)) : EndProcedure
  Procedure setCkAcceptLanguage(obj.i, value.s) : ProcedureReturn HttpPSetAcceptLanguage(obj,value) : EndProcedure
  Procedure.l ckAllowGzip(obj.i) : ProcedureReturn HttpAllowGzip(obj) : EndProcedure
  Procedure setCkAllowGzip(obj.i, value.l) : ProcedureReturn HttpPSetAllowGzip(obj,value) : EndProcedure
  Procedure.l ckAllowHeaderFolding(obj.i) : ProcedureReturn HttpAllowHeaderFolding(obj) : EndProcedure
  Procedure setCkAllowHeaderFolding(obj.i, value.l) : ProcedureReturn HttpPSetAllowHeaderFolding(obj,value) : EndProcedure
  Procedure.s ckAuthToken(obj.i) : ProcedureReturn PeekS(HttpAuthToken(obj)) : EndProcedure
  Procedure setCkAuthToken(obj.i, value.s) : ProcedureReturn HttpPSetAuthToken(obj,value) : EndProcedure
  Procedure.l ckAutoAddHostHeader(obj.i) : ProcedureReturn HttpAutoAddHostHeader(obj) : EndProcedure
  Procedure setCkAutoAddHostHeader(obj.i, value.l) : ProcedureReturn HttpPSetAutoAddHostHeader(obj,value) : EndProcedure
  Procedure.s ckAwsAccessKey(obj.i) : ProcedureReturn PeekS(HttpAwsAccessKey(obj)) : EndProcedure
  Procedure setCkAwsAccessKey(obj.i, value.s) : ProcedureReturn HttpPSetAwsAccessKey(obj,value) : EndProcedure
  Procedure.s ckAwsEndpoint(obj.i) : ProcedureReturn PeekS(HttpAwsEndpoint(obj)) : EndProcedure
  Procedure setCkAwsEndpoint(obj.i, value.s) : ProcedureReturn HttpPSetAwsEndpoint(obj,value) : EndProcedure
  Procedure.s ckAwsRegion(obj.i) : ProcedureReturn PeekS(HttpAwsRegion(obj)) : EndProcedure
  Procedure setCkAwsRegion(obj.i, value.s) : ProcedureReturn HttpPSetAwsRegion(obj,value) : EndProcedure
  Procedure.s ckAwsSecretKey(obj.i) : ProcedureReturn PeekS(HttpAwsSecretKey(obj)) : EndProcedure
  Procedure setCkAwsSecretKey(obj.i, value.s) : ProcedureReturn HttpPSetAwsSecretKey(obj,value) : EndProcedure
  Procedure.l ckAwsSignatureVersion(obj.i) : ProcedureReturn HttpAwsSignatureVersion(obj) : EndProcedure
  Procedure setCkAwsSignatureVersion(obj.i, value.l) : ProcedureReturn HttpPSetAwsSignatureVersion(obj,value) : EndProcedure
  Procedure.s ckAwsSubResources(obj.i) : ProcedureReturn PeekS(HttpAwsSubResources(obj)) : EndProcedure
  Procedure setCkAwsSubResources(obj.i, value.s) : ProcedureReturn HttpPSetAwsSubResources(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleDown(obj.i) : ProcedureReturn HttpBandwidthThrottleDown(obj) : EndProcedure
  Procedure setCkBandwidthThrottleDown(obj.i, value.l) : ProcedureReturn HttpPSetBandwidthThrottleDown(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleUp(obj.i) : ProcedureReturn HttpBandwidthThrottleUp(obj) : EndProcedure
  Procedure setCkBandwidthThrottleUp(obj.i, value.l) : ProcedureReturn HttpPSetBandwidthThrottleUp(obj,value) : EndProcedure
  Procedure.l ckBasicAuth(obj.i) : ProcedureReturn HttpBasicAuth(obj) : EndProcedure
  Procedure setCkBasicAuth(obj.i, value.l) : ProcedureReturn HttpPSetBasicAuth(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(HttpClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn HttpPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.l ckConnectFailReason(obj.i) : ProcedureReturn HttpConnectFailReason(obj) : EndProcedure
  Procedure.s ckConnection(obj.i) : ProcedureReturn PeekS(HttpConnection(obj)) : EndProcedure
  Procedure setCkConnection(obj.i, value.s) : ProcedureReturn HttpPSetConnection(obj,value) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn HttpConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn HttpPSetConnectTimeout(obj,value) : EndProcedure
  Procedure.s ckCookieDir(obj.i) : ProcedureReturn PeekS(HttpCookieDir(obj)) : EndProcedure
  Procedure setCkCookieDir(obj.i, value.s) : ProcedureReturn HttpPSetCookieDir(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(HttpDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn HttpPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDefaultFreshPeriod(obj.i) : ProcedureReturn HttpDefaultFreshPeriod(obj) : EndProcedure
  Procedure setCkDefaultFreshPeriod(obj.i, value.l) : ProcedureReturn HttpPSetDefaultFreshPeriod(obj,value) : EndProcedure
  Procedure.l ckDigestAuth(obj.i) : ProcedureReturn HttpDigestAuth(obj) : EndProcedure
  Procedure setCkDigestAuth(obj.i, value.l) : ProcedureReturn HttpPSetDigestAuth(obj,value) : EndProcedure
  Procedure.l ckFetchFromCache(obj.i) : ProcedureReturn HttpFetchFromCache(obj) : EndProcedure
  Procedure setCkFetchFromCache(obj.i, value.l) : ProcedureReturn HttpPSetFetchFromCache(obj,value) : EndProcedure
  Procedure.s ckFinalRedirectUrl(obj.i) : ProcedureReturn PeekS(HttpFinalRedirectUrl(obj)) : EndProcedure
  Procedure.l ckFollowRedirects(obj.i) : ProcedureReturn HttpFollowRedirects(obj) : EndProcedure
  Procedure setCkFollowRedirects(obj.i, value.l) : ProcedureReturn HttpPSetFollowRedirects(obj,value) : EndProcedure
  Procedure.l ckFreshnessAlgorithm(obj.i) : ProcedureReturn HttpFreshnessAlgorithm(obj) : EndProcedure
  Procedure setCkFreshnessAlgorithm(obj.i, value.l) : ProcedureReturn HttpPSetFreshnessAlgorithm(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn HttpHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn HttpPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckIgnoreMustRevalidate(obj.i) : ProcedureReturn HttpIgnoreMustRevalidate(obj) : EndProcedure
  Procedure setCkIgnoreMustRevalidate(obj.i, value.l) : ProcedureReturn HttpPSetIgnoreMustRevalidate(obj,value) : EndProcedure
  Procedure.l ckIgnoreNoCache(obj.i) : ProcedureReturn HttpIgnoreNoCache(obj) : EndProcedure
  Procedure setCkIgnoreNoCache(obj.i, value.l) : ProcedureReturn HttpPSetIgnoreNoCache(obj,value) : EndProcedure
  Procedure.l ckKeepResponseBody(obj.i) : ProcedureReturn HttpKeepResponseBody(obj) : EndProcedure
  Procedure setCkKeepResponseBody(obj.i, value.l) : ProcedureReturn HttpPSetKeepResponseBody(obj,value) : EndProcedure
  Procedure.s ckLastContentType(obj.i) : ProcedureReturn PeekS(HttpLastContentType(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(HttpLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(HttpLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(HttpLastErrorXml(obj)) : EndProcedure
  Procedure.s ckLastHeader(obj.i) : ProcedureReturn PeekS(HttpLastHeader(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HttpLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HttpPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastModDate(obj.i) : ProcedureReturn PeekS(HttpLastModDate(obj)) : EndProcedure
  Procedure.s ckLastResponseBody(obj.i) : ProcedureReturn PeekS(HttpLastResponseBody(obj)) : EndProcedure
  Procedure.s ckLastResponseHeader(obj.i) : ProcedureReturn PeekS(HttpLastResponseHeader(obj)) : EndProcedure
  Procedure.l ckLastStatus(obj.i) : ProcedureReturn HttpLastStatus(obj) : EndProcedure
  Procedure.s ckLastStatusText(obj.i) : ProcedureReturn PeekS(HttpLastStatusText(obj)) : EndProcedure
  Procedure.l ckLMFactor(obj.i) : ProcedureReturn HttpLMFactor(obj) : EndProcedure
  Procedure setCkLMFactor(obj.i, value.l) : ProcedureReturn HttpPSetLMFactor(obj,value) : EndProcedure
  Procedure.s ckLogin(obj.i) : ProcedureReturn PeekS(HttpLogin(obj)) : EndProcedure
  Procedure setCkLogin(obj.i, value.s) : ProcedureReturn HttpPSetLogin(obj,value) : EndProcedure
  Procedure.s ckLoginDomain(obj.i) : ProcedureReturn PeekS(HttpLoginDomain(obj)) : EndProcedure
  Procedure setCkLoginDomain(obj.i, value.s) : ProcedureReturn HttpPSetLoginDomain(obj,value) : EndProcedure
  Procedure.l ckMaxConnections(obj.i) : ProcedureReturn HttpMaxConnections(obj) : EndProcedure
  Procedure setCkMaxConnections(obj.i, value.l) : ProcedureReturn HttpPSetMaxConnections(obj,value) : EndProcedure
  Procedure.l ckMaxFreshPeriod(obj.i) : ProcedureReturn HttpMaxFreshPeriod(obj) : EndProcedure
  Procedure setCkMaxFreshPeriod(obj.i, value.l) : ProcedureReturn HttpPSetMaxFreshPeriod(obj,value) : EndProcedure
  Procedure.l ckMaxResponseSize(obj.i) : ProcedureReturn HttpMaxResponseSize(obj) : EndProcedure
  Procedure setCkMaxResponseSize(obj.i, value.l) : ProcedureReturn HttpPSetMaxResponseSize(obj,value) : EndProcedure
  Procedure.l ckMaxUrlLen(obj.i) : ProcedureReturn HttpMaxUrlLen(obj) : EndProcedure
  Procedure setCkMaxUrlLen(obj.i, value.l) : ProcedureReturn HttpPSetMaxUrlLen(obj,value) : EndProcedure
  Procedure.l ckMimicFireFox(obj.i) : ProcedureReturn HttpMimicFireFox(obj) : EndProcedure
  Procedure setCkMimicFireFox(obj.i, value.l) : ProcedureReturn HttpPSetMimicFireFox(obj,value) : EndProcedure
  Procedure.l ckMimicIE(obj.i) : ProcedureReturn HttpMimicIE(obj) : EndProcedure
  Procedure setCkMimicIE(obj.i, value.l) : ProcedureReturn HttpPSetMimicIE(obj,value) : EndProcedure
  Procedure.l ckMinFreshPeriod(obj.i) : ProcedureReturn HttpMinFreshPeriod(obj) : EndProcedure
  Procedure setCkMinFreshPeriod(obj.i, value.l) : ProcedureReturn HttpPSetMinFreshPeriod(obj,value) : EndProcedure
  Procedure.l ckNegotiateAuth(obj.i) : ProcedureReturn HttpNegotiateAuth(obj) : EndProcedure
  Procedure setCkNegotiateAuth(obj.i, value.l) : ProcedureReturn HttpPSetNegotiateAuth(obj,value) : EndProcedure
  Procedure.l ckNtlmAuth(obj.i) : ProcedureReturn HttpNtlmAuth(obj) : EndProcedure
  Procedure setCkNtlmAuth(obj.i, value.l) : ProcedureReturn HttpPSetNtlmAuth(obj,value) : EndProcedure
  Procedure.l ckNumCacheLevels(obj.i) : ProcedureReturn HttpNumCacheLevels(obj) : EndProcedure
  Procedure setCkNumCacheLevels(obj.i, value.l) : ProcedureReturn HttpPSetNumCacheLevels(obj,value) : EndProcedure
  Procedure.l ckNumCacheRoots(obj.i) : ProcedureReturn HttpNumCacheRoots(obj) : EndProcedure
  Procedure.l ckOAuth1(obj.i) : ProcedureReturn HttpOAuth1(obj) : EndProcedure
  Procedure setCkOAuth1(obj.i, value.l) : ProcedureReturn HttpPSetOAuth1(obj,value) : EndProcedure
  Procedure.s ckOAuthCallback(obj.i) : ProcedureReturn PeekS(HttpOAuthCallback(obj)) : EndProcedure
  Procedure setCkOAuthCallback(obj.i, value.s) : ProcedureReturn HttpPSetOAuthCallback(obj,value) : EndProcedure
  Procedure.s ckOAuthConsumerKey(obj.i) : ProcedureReturn PeekS(HttpOAuthConsumerKey(obj)) : EndProcedure
  Procedure setCkOAuthConsumerKey(obj.i, value.s) : ProcedureReturn HttpPSetOAuthConsumerKey(obj,value) : EndProcedure
  Procedure.s ckOAuthConsumerSecret(obj.i) : ProcedureReturn PeekS(HttpOAuthConsumerSecret(obj)) : EndProcedure
  Procedure setCkOAuthConsumerSecret(obj.i, value.s) : ProcedureReturn HttpPSetOAuthConsumerSecret(obj,value) : EndProcedure
  Procedure.s ckOAuthRealm(obj.i) : ProcedureReturn PeekS(HttpOAuthRealm(obj)) : EndProcedure
  Procedure setCkOAuthRealm(obj.i, value.s) : ProcedureReturn HttpPSetOAuthRealm(obj,value) : EndProcedure
  Procedure.s ckOAuthSigMethod(obj.i) : ProcedureReturn PeekS(HttpOAuthSigMethod(obj)) : EndProcedure
  Procedure setCkOAuthSigMethod(obj.i, value.s) : ProcedureReturn HttpPSetOAuthSigMethod(obj,value) : EndProcedure
  Procedure.s ckOAuthToken(obj.i) : ProcedureReturn PeekS(HttpOAuthToken(obj)) : EndProcedure
  Procedure setCkOAuthToken(obj.i, value.s) : ProcedureReturn HttpPSetOAuthToken(obj,value) : EndProcedure
  Procedure.s ckOAuthTokenSecret(obj.i) : ProcedureReturn PeekS(HttpOAuthTokenSecret(obj)) : EndProcedure
  Procedure setCkOAuthTokenSecret(obj.i, value.s) : ProcedureReturn HttpPSetOAuthTokenSecret(obj,value) : EndProcedure
  Procedure.s ckOAuthVerifier(obj.i) : ProcedureReturn PeekS(HttpOAuthVerifier(obj)) : EndProcedure
  Procedure setCkOAuthVerifier(obj.i, value.s) : ProcedureReturn HttpPSetOAuthVerifier(obj,value) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(HttpPassword(obj)) : EndProcedure
  Procedure setCkPassword(obj.i, value.s) : ProcedureReturn HttpPSetPassword(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn HttpPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn HttpPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn HttpPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn HttpPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.s ckProxyAuthMethod(obj.i) : ProcedureReturn PeekS(HttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkProxyAuthMethod(obj.i, value.s) : ProcedureReturn HttpPSetProxyAuthMethod(obj,value) : EndProcedure
  Procedure.l ckProxyDirectTls(obj.i) : ProcedureReturn HttpProxyDirectTls(obj) : EndProcedure
  Procedure setCkProxyDirectTls(obj.i, value.l) : ProcedureReturn HttpPSetProxyDirectTls(obj,value) : EndProcedure
  Procedure.s ckProxyDomain(obj.i) : ProcedureReturn PeekS(HttpProxyDomain(obj)) : EndProcedure
  Procedure setCkProxyDomain(obj.i, value.s) : ProcedureReturn HttpPSetProxyDomain(obj,value) : EndProcedure
  Procedure.s ckProxyLogin(obj.i) : ProcedureReturn PeekS(HttpProxyLogin(obj)) : EndProcedure
  Procedure setCkProxyLogin(obj.i, value.s) : ProcedureReturn HttpPSetProxyLogin(obj,value) : EndProcedure
  Procedure.s ckProxyLoginDomain(obj.i) : ProcedureReturn PeekS(HttpProxyLoginDomain(obj)) : EndProcedure
  Procedure setCkProxyLoginDomain(obj.i, value.s) : ProcedureReturn HttpPSetProxyLoginDomain(obj,value) : EndProcedure
  Procedure.s ckProxyPassword(obj.i) : ProcedureReturn PeekS(HttpProxyPassword(obj)) : EndProcedure
  Procedure setCkProxyPassword(obj.i, value.s) : ProcedureReturn HttpPSetProxyPassword(obj,value) : EndProcedure
  Procedure.l ckProxyPort(obj.i) : ProcedureReturn HttpProxyPort(obj) : EndProcedure
  Procedure setCkProxyPort(obj.i, value.l) : ProcedureReturn HttpPSetProxyPort(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn HttpReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn HttpPSetReadTimeout(obj,value) : EndProcedure
  Procedure.s ckRedirectVerb(obj.i) : ProcedureReturn PeekS(HttpRedirectVerb(obj)) : EndProcedure
  Procedure setCkRedirectVerb(obj.i, value.s) : ProcedureReturn HttpPSetRedirectVerb(obj,value) : EndProcedure
  Procedure.s ckReferer(obj.i) : ProcedureReturn PeekS(HttpReferer(obj)) : EndProcedure
  Procedure setCkReferer(obj.i, value.s) : ProcedureReturn HttpPSetReferer(obj,value) : EndProcedure
  Procedure.s ckRequiredContentType(obj.i) : ProcedureReturn PeekS(HttpRequiredContentType(obj)) : EndProcedure
  Procedure setCkRequiredContentType(obj.i, value.s) : ProcedureReturn HttpPSetRequiredContentType(obj,value) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn HttpRequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn HttpPSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.l ckS3Ssl(obj.i) : ProcedureReturn HttpS3Ssl(obj) : EndProcedure
  Procedure setCkS3Ssl(obj.i, value.l) : ProcedureReturn HttpPSetS3Ssl(obj,value) : EndProcedure
  Procedure.l ckSaveCookies(obj.i) : ProcedureReturn HttpSaveCookies(obj) : EndProcedure
  Procedure setCkSaveCookies(obj.i, value.l) : ProcedureReturn HttpPSetSaveCookies(obj,value) : EndProcedure
  Procedure.l ckSendBufferSize(obj.i) : ProcedureReturn HttpSendBufferSize(obj) : EndProcedure
  Procedure setCkSendBufferSize(obj.i, value.l) : ProcedureReturn HttpPSetSendBufferSize(obj,value) : EndProcedure
  Procedure.l ckSendCookies(obj.i) : ProcedureReturn HttpSendCookies(obj) : EndProcedure
  Procedure setCkSendCookies(obj.i, value.l) : ProcedureReturn HttpPSetSendCookies(obj,value) : EndProcedure
  Procedure.s ckSessionLogFilename(obj.i) : ProcedureReturn PeekS(HttpSessionLogFilename(obj)) : EndProcedure
  Procedure setCkSessionLogFilename(obj.i, value.s) : ProcedureReturn HttpPSetSessionLogFilename(obj,value) : EndProcedure
  Procedure.s ckSniHostname(obj.i) : ProcedureReturn PeekS(HttpSniHostname(obj)) : EndProcedure
  Procedure setCkSniHostname(obj.i, value.s) : ProcedureReturn HttpPSetSniHostname(obj,value) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(HttpSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn HttpPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(HttpSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn HttpPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn HttpSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn HttpPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(HttpSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn HttpPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn HttpSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn HttpPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn HttpSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn HttpPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn HttpSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn HttpPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(HttpSslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn HttpPSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(HttpSslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn HttpPSetSslProtocol(obj,value) : EndProcedure
  Procedure.s ckStreamResponseBodyPath(obj.i) : ProcedureReturn PeekS(HttpStreamResponseBodyPath(obj)) : EndProcedure
  Procedure setCkStreamResponseBodyPath(obj.i, value.s) : ProcedureReturn HttpPSetStreamResponseBodyPath(obj,value) : EndProcedure
  Procedure.s ckTlsCipherSuite(obj.i) : ProcedureReturn PeekS(HttpTlsCipherSuite(obj)) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(HttpTlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn HttpPSetTlsPinSet(obj,value) : EndProcedure
  Procedure.s ckTlsVersion(obj.i) : ProcedureReturn PeekS(HttpTlsVersion(obj)) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(HttpUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn HttpPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUpdateCache(obj.i) : ProcedureReturn HttpUpdateCache(obj) : EndProcedure
  Procedure setCkUpdateCache(obj.i, value.l) : ProcedureReturn HttpPSetUpdateCache(obj,value) : EndProcedure
  Procedure.l ckUseIEProxy(obj.i) : ProcedureReturn HttpUseIEProxy(obj) : EndProcedure
  Procedure setCkUseIEProxy(obj.i, value.l) : ProcedureReturn HttpPSetUseIEProxy(obj,value) : EndProcedure
  Procedure.s ckUserAgent(obj.i) : ProcedureReturn PeekS(HttpUserAgent(obj)) : EndProcedure
  Procedure setCkUserAgent(obj.i, value.s) : ProcedureReturn HttpPSetUserAgent(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn HttpVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn HttpPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(HttpVersion(obj)) : EndProcedure
  Procedure.l ckWasRedirected(obj.i) : ProcedureReturn HttpWasRedirected(obj) : EndProcedure
  Procedure ckAddCacheRoot(obj.i, dir.s) :  ProcedureReturn HttpAddCacheRoot(obj, dir) :  EndProcedure
  Procedure ckClearHeaders(obj.i) :  ProcedureReturn HttpClearHeaders(obj) :  EndProcedure
  Procedure ckClearInMemoryCookies(obj.i) :  ProcedureReturn HttpClearInMemoryCookies(obj) :  EndProcedure
  Procedure ckClearUrlVars(obj.i) :  ProcedureReturn HttpClearUrlVars(obj) :  EndProcedure
  Procedure.l ckCloseAllConnections(obj.i) :  ProcedureReturn HttpCloseAllConnections(obj) :  EndProcedure
  Procedure.i ckCloseAllConnectionsAsync(obj.i) :  ProcedureReturn HttpCloseAllConnectionsAsync(obj) :  EndProcedure
  Procedure.l ckCreateOcspRequest(obj.i, requestDetails.i, ocspRequest.i) :  ProcedureReturn HttpCreateOcspRequest(obj, requestDetails, ocspRequest) :  EndProcedure
  Procedure.l ckCreateTimestampRequest(obj.i, hashAlg.s, hashVal.s, reqPolicyOid.s, addNonce.l, reqTsaCert.l, timestampToken.i) :  ProcedureReturn HttpCreateTimestampRequest(obj, hashAlg, hashVal, reqPolicyOid, addNonce, reqTsaCert, timestampToken) :  EndProcedure
  Procedure ckDnsCacheClear(obj.i) :  ProcedureReturn HttpDnsCacheClear(obj) :  EndProcedure
  Procedure.l ckDownload(obj.i, url.s, localFilePath.s) :  ProcedureReturn HttpDownload(obj, url, localFilePath) :  EndProcedure
  Procedure.i ckDownloadAsync(obj.i, url.s, localFilePath.s) :  ProcedureReturn HttpDownloadAsync(obj, url, localFilePath) :  EndProcedure
  Procedure.l ckDownloadAppend(obj.i, url.s, filename.s) :  ProcedureReturn HttpDownloadAppend(obj, url, filename) :  EndProcedure
  Procedure.i ckDownloadAppendAsync(obj.i, url.s, filename.s) :  ProcedureReturn HttpDownloadAppendAsync(obj, url, filename) :  EndProcedure
  Procedure.l ckDownloadBd(obj.i, url.s, binData.i) :  ProcedureReturn HttpDownloadBd(obj, url, binData) :  EndProcedure
  Procedure.i ckDownloadBdAsync(obj.i, url.s, binData.i) :  ProcedureReturn HttpDownloadBdAsync(obj, url, binData) :  EndProcedure
  Procedure.s ckDownloadHash(obj.i, url.s, hashAlgorithm.s, encoding.s) :  ProcedureReturn PeekS(HttpDownloadHash(obj, url, hashAlgorithm, encoding)) :  EndProcedure
  Procedure.i ckDownloadHashAsync(obj.i, url.s, hashAlgorithm.s, encoding.s) :  ProcedureReturn HttpDownloadHashAsync(obj, url, hashAlgorithm, encoding) :  EndProcedure
  Procedure.l ckDownloadSb(obj.i, url.s, charset.s, sb.i) :  ProcedureReturn HttpDownloadSb(obj, url, charset, sb) :  EndProcedure
  Procedure.i ckDownloadSbAsync(obj.i, url.s, charset.s, sb.i) :  ProcedureReturn HttpDownloadSbAsync(obj, url, charset, sb) :  EndProcedure
  Procedure.s ckExtractMetaRefreshUrl(obj.i, htmlContent.s) :  ProcedureReturn PeekS(HttpExtractMetaRefreshUrl(obj, htmlContent)) :  EndProcedure
  Procedure.s ckG_SvcOauthAccessToken(obj.i, iss.s, scope.s, subEmail.s, numSec.l, cert.i) :  ProcedureReturn PeekS(HttpG_SvcOauthAccessToken(obj, iss, scope, subEmail, numSec, cert)) :  EndProcedure
  Procedure.i ckG_SvcOauthAccessTokenAsync(obj.i, iss.s, scope.s, subEmail.s, numSec.l, cert.i) :  ProcedureReturn HttpG_SvcOauthAccessTokenAsync(obj, iss, scope, subEmail, numSec, cert) :  EndProcedure
  Procedure.s ckG_SvcOauthAccessToken2(obj.i, claimParams.i, numSec.l, cert.i) :  ProcedureReturn PeekS(HttpG_SvcOauthAccessToken2(obj, claimParams, numSec, cert)) :  EndProcedure
  Procedure.i ckG_SvcOauthAccessToken2Async(obj.i, claimParams.i, numSec.l, cert.i) :  ProcedureReturn HttpG_SvcOauthAccessToken2Async(obj, claimParams, numSec, cert) :  EndProcedure
  Procedure.s ckGenTimeStamp(obj.i) :  ProcedureReturn PeekS(HttpGenTimeStamp(obj)) :  EndProcedure
  Procedure.s ckGetCacheRoot(obj.i, index.l) :  ProcedureReturn PeekS(HttpGetCacheRoot(obj, index)) :  EndProcedure
  Procedure.s ckGetCookieXml(obj.i, domain.s) :  ProcedureReturn PeekS(HttpGetCookieXml(obj, domain)) :  EndProcedure
  Procedure.s ckGetDomain(obj.i, url.s) :  ProcedureReturn PeekS(HttpGetDomain(obj, url)) :  EndProcedure
  Procedure.i ckGetHead(obj.i, url.s) :  ProcedureReturn HttpGetHead(obj, url) :  EndProcedure
  Procedure.i ckGetHeadAsync(obj.i, url.s) :  ProcedureReturn HttpGetHeadAsync(obj, url) :  EndProcedure
  Procedure.s ckGetRequestHeader(obj.i, name.s) :  ProcedureReturn PeekS(HttpGetRequestHeader(obj, name)) :  EndProcedure
  Procedure.i ckGetServerSslCert(obj.i, domain.s, port.l) :  ProcedureReturn HttpGetServerSslCert(obj, domain, port) :  EndProcedure
  Procedure.i ckGetServerSslCertAsync(obj.i, domain.s, port.l) :  ProcedureReturn HttpGetServerSslCertAsync(obj, domain, port) :  EndProcedure
  Procedure.s ckGetUrlPath(obj.i, url.s) :  ProcedureReturn PeekS(HttpGetUrlPath(obj, url)) :  EndProcedure
  Procedure.l ckHasRequestHeader(obj.i, name.s) :  ProcedureReturn HttpHasRequestHeader(obj, name) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn HttpIsUnlocked(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn HttpLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn HttpLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckOcspCheck(obj.i, domain.s, port.l) :  ProcedureReturn HttpOcspCheck(obj, domain, port) :  EndProcedure
  Procedure.i ckOcspCheckAsync(obj.i, domain.s, port.l) :  ProcedureReturn HttpOcspCheckAsync(obj, domain, port) :  EndProcedure
  Procedure.l ckParseOcspReply(obj.i, ocspReply.i, replyData.i) :  ProcedureReturn HttpParseOcspReply(obj, ocspReply, replyData) :  EndProcedure
  Procedure.i ckPBinaryBd(obj.i, verb.s, url.s, argData.i, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPBinaryBd(obj, verb, url, argData, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPBinaryBdAsync(obj.i, verb.s, url.s, argData.i, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPBinaryBdAsync(obj, verb, url, argData, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPFile(obj.i, verb.s, url.s, localFilePath.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPFile(obj, verb, url, localFilePath, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPFileAsync(obj.i, verb.s, url.s, localFilePath.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPFileAsync(obj, verb, url, localFilePath, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPostJson(obj.i, url.s, jsonText.s) :  ProcedureReturn HttpPostJson(obj, url, jsonText) :  EndProcedure
  Procedure.i ckPostJsonAsync(obj.i, url.s, jsonText.s) :  ProcedureReturn HttpPostJsonAsync(obj, url, jsonText) :  EndProcedure
  Procedure.i ckPostJson2(obj.i, url.s, contentType.s, jsonText.s) :  ProcedureReturn HttpPostJson2(obj, url, contentType, jsonText) :  EndProcedure
  Procedure.i ckPostJson2Async(obj.i, url.s, contentType.s, jsonText.s) :  ProcedureReturn HttpPostJson2Async(obj, url, contentType, jsonText) :  EndProcedure
  Procedure.i ckPostJson3(obj.i, url.s, contentType.s, json.i) :  ProcedureReturn HttpPostJson3(obj, url, contentType, json) :  EndProcedure
  Procedure.i ckPostJson3Async(obj.i, url.s, contentType.s, json.i) :  ProcedureReturn HttpPostJson3Async(obj, url, contentType, json) :  EndProcedure
  Procedure.i ckPostUrlEncoded(obj.i, url.s, req.i) :  ProcedureReturn HttpPostUrlEncoded(obj, url, req) :  EndProcedure
  Procedure.i ckPostUrlEncodedAsync(obj.i, url.s, req.i) :  ProcedureReturn HttpPostUrlEncodedAsync(obj, url, req) :  EndProcedure
  Procedure.i ckPostXml(obj.i, endpointUrl.s, xmlContent.s, xmlCharset.s) :  ProcedureReturn HttpPostXml(obj, endpointUrl, xmlContent, xmlCharset) :  EndProcedure
  Procedure.i ckPostXmlAsync(obj.i, endpointUrl.s, xmlContent.s, xmlCharset.s) :  ProcedureReturn HttpPostXmlAsync(obj, endpointUrl, xmlContent, xmlCharset) :  EndProcedure
  Procedure.i ckPText(obj.i, verb.s, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPText(obj, verb, url, textData, charset, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPTextAsync(obj.i, verb.s, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPTextAsync(obj, verb, url, textData, charset, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPTextSb(obj.i, verb.s, url.s, textData.i, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPTextSb(obj, verb, url, textData, charset, contentType, md5, gzip) :  EndProcedure
  Procedure.i ckPTextSbAsync(obj.i, verb.s, url.s, textData.i, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPTextSbAsync(obj, verb, url, textData, charset, contentType, md5, gzip) :  EndProcedure
  Procedure.s ckPutText(obj.i, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn PeekS(HttpPutText(obj, url, textData, charset, contentType, md5, gzip)) :  EndProcedure
  Procedure.i ckPutTextAsync(obj.i, url.s, textData.s, charset.s, contentType.s, md5.l, gzip.l) :  ProcedureReturn HttpPutTextAsync(obj, url, textData, charset, contentType, md5, gzip) :  EndProcedure
  Procedure.s ckQuickDeleteStr(obj.i, url.s) :  ProcedureReturn PeekS(HttpQuickDeleteStr(obj, url)) :  EndProcedure
  Procedure.i ckQuickDeleteStrAsync(obj.i, url.s) :  ProcedureReturn HttpQuickDeleteStrAsync(obj, url) :  EndProcedure
  Procedure.l ckQuickGetBd(obj.i, url.s, binData.i) :  ProcedureReturn HttpQuickGetBd(obj, url, binData) :  EndProcedure
  Procedure.i ckQuickGetBdAsync(obj.i, url.s, binData.i) :  ProcedureReturn HttpQuickGetBdAsync(obj, url, binData) :  EndProcedure
  Procedure.i ckQuickGetObj(obj.i, url.s) :  ProcedureReturn HttpQuickGetObj(obj, url) :  EndProcedure
  Procedure.i ckQuickGetObjAsync(obj.i, url.s) :  ProcedureReturn HttpQuickGetObjAsync(obj, url) :  EndProcedure
  Procedure.l ckQuickGetSb(obj.i, url.s, sbContent.i) :  ProcedureReturn HttpQuickGetSb(obj, url, sbContent) :  EndProcedure
  Procedure.i ckQuickGetSbAsync(obj.i, url.s, sbContent.i) :  ProcedureReturn HttpQuickGetSbAsync(obj, url, sbContent) :  EndProcedure
  Procedure.s ckQuickGetStr(obj.i, url.s) :  ProcedureReturn PeekS(HttpQuickGetStr(obj, url)) :  EndProcedure
  Procedure.i ckQuickGetStrAsync(obj.i, url.s) :  ProcedureReturn HttpQuickGetStrAsync(obj, url) :  EndProcedure
  Procedure.s ckQuickPutStr(obj.i, url.s) :  ProcedureReturn PeekS(HttpQuickPutStr(obj, url)) :  EndProcedure
  Procedure.i ckQuickPutStrAsync(obj.i, url.s) :  ProcedureReturn HttpQuickPutStrAsync(obj, url) :  EndProcedure
  Procedure.i ckQuickRequest(obj.i, verb.s, url.s) :  ProcedureReturn HttpQuickRequest(obj, verb, url) :  EndProcedure
  Procedure.i ckQuickRequestAsync(obj.i, verb.s, url.s) :  ProcedureReturn HttpQuickRequestAsync(obj, verb, url) :  EndProcedure
  Procedure ckRemoveRequestHeader(obj.i, name.s) :  ProcedureReturn HttpRemoveRequestHeader(obj, name) :  EndProcedure
  Procedure.s ckRenderGet(obj.i, url.s) :  ProcedureReturn PeekS(HttpRenderGet(obj, url)) :  EndProcedure
  Procedure.l ckResumeDownload(obj.i, url.s, targetFilename.s) :  ProcedureReturn HttpResumeDownload(obj, url, targetFilename) :  EndProcedure
  Procedure.i ckResumeDownloadAsync(obj.i, url.s, targetFilename.s) :  ProcedureReturn HttpResumeDownloadAsync(obj, url, targetFilename) :  EndProcedure
  Procedure.l ckResumeDownloadBd(obj.i, url.s, binData.i) :  ProcedureReturn HttpResumeDownloadBd(obj, url, binData) :  EndProcedure
  Procedure.i ckResumeDownloadBdAsync(obj.i, url.s, binData.i) :  ProcedureReturn HttpResumeDownloadBdAsync(obj, url, binData) :  EndProcedure
  Procedure.l ckS3_CreateBucket(obj.i, bucketPath.s) :  ProcedureReturn HttpS3_CreateBucket(obj, bucketPath) :  EndProcedure
  Procedure.i ckS3_CreateBucketAsync(obj.i, bucketPath.s) :  ProcedureReturn HttpS3_CreateBucketAsync(obj, bucketPath) :  EndProcedure
  Procedure.l ckS3_DeleteBucket(obj.i, bucketPath.s) :  ProcedureReturn HttpS3_DeleteBucket(obj, bucketPath) :  EndProcedure
  Procedure.i ckS3_DeleteBucketAsync(obj.i, bucketPath.s) :  ProcedureReturn HttpS3_DeleteBucketAsync(obj, bucketPath) :  EndProcedure
  Procedure.i ckS3_DeleteMultipleObjects(obj.i, bucketName.s, objectNames.i) :  ProcedureReturn HttpS3_DeleteMultipleObjects(obj, bucketName, objectNames) :  EndProcedure
  Procedure.i ckS3_DeleteMultipleObjectsAsync(obj.i, bucketName.s, objectNames.i) :  ProcedureReturn HttpS3_DeleteMultipleObjectsAsync(obj, bucketName, objectNames) :  EndProcedure
  Procedure.l ckS3_DeleteObject(obj.i, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_DeleteObject(obj, bucketPath, objectName) :  EndProcedure
  Procedure.i ckS3_DeleteObjectAsync(obj.i, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_DeleteObjectAsync(obj, bucketPath, objectName) :  EndProcedure
  Procedure.l ckS3_DownloadBd(obj.i, bucketPath.s, objectName.s, bd.i) :  ProcedureReturn HttpS3_DownloadBd(obj, bucketPath, objectName, bd) :  EndProcedure
  Procedure.i ckS3_DownloadBdAsync(obj.i, bucketPath.s, objectName.s, bd.i) :  ProcedureReturn HttpS3_DownloadBdAsync(obj, bucketPath, objectName, bd) :  EndProcedure
  Procedure.l ckS3_DownloadFile(obj.i, bucketPath.s, objectName.s, localFilePath.s) :  ProcedureReturn HttpS3_DownloadFile(obj, bucketPath, objectName, localFilePath) :  EndProcedure
  Procedure.i ckS3_DownloadFileAsync(obj.i, bucketPath.s, objectName.s, localFilePath.s) :  ProcedureReturn HttpS3_DownloadFileAsync(obj, bucketPath, objectName, localFilePath) :  EndProcedure
  Procedure.s ckS3_DownloadString(obj.i, bucketPath.s, objectName.s, charset.s) :  ProcedureReturn PeekS(HttpS3_DownloadString(obj, bucketPath, objectName, charset)) :  EndProcedure
  Procedure.i ckS3_DownloadStringAsync(obj.i, bucketPath.s, objectName.s, charset.s) :  ProcedureReturn HttpS3_DownloadStringAsync(obj, bucketPath, objectName, charset) :  EndProcedure
  Procedure.l ckS3_FileExists(obj.i, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_FileExists(obj, bucketPath, objectName) :  EndProcedure
  Procedure.i ckS3_FileExistsAsync(obj.i, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_FileExistsAsync(obj, bucketPath, objectName) :  EndProcedure
  Procedure.s ckS3_GenerateUrl(obj.i, bucket.s, path.s, expire.i) :  ProcedureReturn PeekS(HttpS3_GenerateUrl(obj, bucket, path, expire)) :  EndProcedure
  Procedure.s ckS3_GenerateUrlV4(obj.i, useHttps.l, bucketName.s, path.s, numSecondsValid.l, awsService.s) :  ProcedureReturn PeekS(HttpS3_GenerateUrlV4(obj, useHttps, bucketName, path, numSecondsValid, awsService)) :  EndProcedure
  Procedure.s ckS3_GenPresignedUrl(obj.i, httpVerb.s, useHttps.l, bucketName.s, path.s, numSecondsValid.l, awsService.s) :  ProcedureReturn PeekS(HttpS3_GenPresignedUrl(obj, httpVerb, useHttps, bucketName, path, numSecondsValid, awsService)) :  EndProcedure
  Procedure.s ckS3_ListBucketObjects(obj.i, bucketPath.s) :  ProcedureReturn PeekS(HttpS3_ListBucketObjects(obj, bucketPath)) :  EndProcedure
  Procedure.i ckS3_ListBucketObjectsAsync(obj.i, bucketPath.s) :  ProcedureReturn HttpS3_ListBucketObjectsAsync(obj, bucketPath) :  EndProcedure
  Procedure.s ckS3_ListBuckets(obj.i) :  ProcedureReturn PeekS(HttpS3_ListBuckets(obj)) :  EndProcedure
  Procedure.i ckS3_ListBucketsAsync(obj.i) :  ProcedureReturn HttpS3_ListBucketsAsync(obj) :  EndProcedure
  Procedure.l ckS3_UploadBd(obj.i, bd.i, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadBd(obj, bd, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.i ckS3_UploadBdAsync(obj.i, bd.i, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadBdAsync(obj, bd, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.l ckS3_UploadFile(obj.i, localFilePath.s, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadFile(obj, localFilePath, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.i ckS3_UploadFileAsync(obj.i, localFilePath.s, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadFileAsync(obj, localFilePath, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.l ckS3_UploadString(obj.i, objectContent.s, charset.s, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadString(obj, objectContent, charset, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.i ckS3_UploadStringAsync(obj.i, objectContent.s, charset.s, contentType.s, bucketPath.s, objectName.s) :  ProcedureReturn HttpS3_UploadStringAsync(obj, objectContent, charset, contentType, bucketPath, objectName) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn HttpSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetCookieXml(obj.i, domain.s, cookieXml.s) :  ProcedureReturn HttpSetCookieXml(obj, domain, cookieXml) :  EndProcedure
  Procedure.l ckSetOAuthRsaKey(obj.i, privKey.i) :  ProcedureReturn HttpSetOAuthRsaKey(obj, privKey) :  EndProcedure
  Procedure.l ckSetPassword(obj.i, password.i) :  ProcedureReturn HttpSetPassword(obj, password) :  EndProcedure
  Procedure ckSetRequestHeader(obj.i, headerFieldName.s, headerFieldValue.s) :  ProcedureReturn HttpSetRequestHeader(obj, headerFieldName, headerFieldValue) :  EndProcedure
  Procedure.l ckSetSecurePassword(obj.i, password.i) :  ProcedureReturn HttpSetSecurePassword(obj, password) :  EndProcedure
  Procedure ckSetSslCertRequirement(obj.i, reqName.s, reqValue.s) :  ProcedureReturn HttpSetSslCertRequirement(obj, reqName, reqValue) :  EndProcedure
  Procedure.l ckSetSslClientCert(obj.i, cert.i) :  ProcedureReturn HttpSetSslClientCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSslClientCertPem(obj.i, pemDataOrPath.s, pemPassword.s) :  ProcedureReturn HttpSetSslClientCertPem(obj, pemDataOrPath, pemPassword) :  EndProcedure
  Procedure.l ckSetSslClientCertPfx(obj.i, pfxPath.s, pfxPassword.s) :  ProcedureReturn HttpSetSslClientCertPfx(obj, pfxPath, pfxPassword) :  EndProcedure
  Procedure.l ckSetUrlVar(obj.i, name.s, value.s) :  ProcedureReturn HttpSetUrlVar(obj, name, value) :  EndProcedure
  Procedure.l ckSharePointOnlineAuth(obj.i, siteUrl.s, username.s, password.i, extraInfo.i) :  ProcedureReturn HttpSharePointOnlineAuth(obj, siteUrl, username, password, extraInfo) :  EndProcedure
  Procedure.i ckSharePointOnlineAuthAsync(obj.i, siteUrl.s, username.s, password.i, extraInfo.i) :  ProcedureReturn HttpSharePointOnlineAuthAsync(obj, siteUrl, username, password, extraInfo) :  EndProcedure
  Procedure ckSleepMs(obj.i, millisec.l) :  ProcedureReturn HttpSleepMs(obj, millisec) :  EndProcedure
  Procedure.i ckSynchronousRequest(obj.i, domain.s, port.l, ssl.l, req.i) :  ProcedureReturn HttpSynchronousRequest(obj, domain, port, ssl, req) :  EndProcedure
  Procedure.i ckSynchronousRequestAsync(obj.i, domain.s, port.l, ssl.l, req.i) :  ProcedureReturn HttpSynchronousRequestAsync(obj, domain, port, ssl, req) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn HttpUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.s ckUrlDecode(obj.i, str.s) :  ProcedureReturn PeekS(HttpUrlDecode(obj, str)) :  EndProcedure
  Procedure.s ckUrlEncode(obj.i, str.s) :  ProcedureReturn PeekS(HttpUrlEncode(obj, str)) :  EndProcedure
  Procedure.l ckVerifyTimestampReply(obj.i, timestampReply.i, tsaCert.i) :  ProcedureReturn HttpVerifyTimestampReply(obj, timestampReply, tsaCert) :  EndProcedure
  Procedure.s ckXmlRpc(obj.i, urlEndpoint.s, xmlIn.s) :  ProcedureReturn PeekS(HttpXmlRpc(obj, urlEndpoint, xmlIn)) :  EndProcedure
  Procedure.i ckXmlRpcAsync(obj.i, urlEndpoint.s, xmlIn.s) :  ProcedureReturn HttpXmlRpcAsync(obj, urlEndpoint, xmlIn) :  EndProcedure
  Procedure.s ckXmlRpcPut(obj.i, urlEndpoint.s, xmlIn.s) :  ProcedureReturn PeekS(HttpXmlRpcPut(obj, urlEndpoint, xmlIn)) :  EndProcedure
  Procedure.i ckXmlRpcPutAsync(obj.i, urlEndpoint.s, xmlIn.s) :  ProcedureReturn HttpXmlRpcPutAsync(obj, urlEndpoint, xmlIn) :  EndProcedure
EndModule

