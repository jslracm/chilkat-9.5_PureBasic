DeclareModule CkMht
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckBaseUrl(obj.i)
  Declare setCkBaseUrl(obj.i, value.s)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.s ckDebugHtmlAfter(obj.i)
  Declare setCkDebugHtmlAfter(obj.i, value.s)
  Declare.s ckDebugHtmlBefore(obj.i)
  Declare setCkDebugHtmlBefore(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDebugTagCleaning(obj.i)
  Declare setCkDebugTagCleaning(obj.i, value.l)
  Declare.l ckEmbedImages(obj.i)
  Declare setCkEmbedImages(obj.i, value.l)
  Declare.l ckEmbedLocalOnly(obj.i)
  Declare setCkEmbedLocalOnly(obj.i, value.l)
  Declare.l ckFetchFromCache(obj.i)
  Declare setCkFetchFromCache(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckIgnoreMustRevalidate(obj.i)
  Declare setCkIgnoreMustRevalidate(obj.i, value.l)
  Declare.l ckIgnoreNoCache(obj.i)
  Declare setCkIgnoreNoCache(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNoScripts(obj.i)
  Declare setCkNoScripts(obj.i, value.l)
  Declare.l ckNtlmAuth(obj.i)
  Declare setCkNtlmAuth(obj.i, value.l)
  Declare.l ckNumCacheLevels(obj.i)
  Declare setCkNumCacheLevels(obj.i, value.l)
  Declare.l ckNumCacheRoots(obj.i)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckPreferMHTScripts(obj.i)
  Declare setCkPreferMHTScripts(obj.i, value.l)
  Declare.s ckProxy(obj.i)
  Declare setCkProxy(obj.i, value.s)
  Declare.s ckProxyLogin(obj.i)
  Declare setCkProxyLogin(obj.i, value.s)
  Declare.s ckProxyPassword(obj.i)
  Declare setCkProxyPassword(obj.i, value.s)
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
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
  Declare.l ckUnpackDirect(obj.i)
  Declare setCkUnpackDirect(obj.i, value.l)
  Declare.l ckUnpackUseRelPaths(obj.i)
  Declare setCkUnpackUseRelPaths(obj.i, value.l)
  Declare.l ckUpdateCache(obj.i)
  Declare setCkUpdateCache(obj.i, value.l)
  Declare.l ckUseCids(obj.i)
  Declare setCkUseCids(obj.i, value.l)
  Declare.l ckUseFilename(obj.i)
  Declare setCkUseFilename(obj.i, value.l)
  Declare.l ckUseIEProxy(obj.i)
  Declare setCkUseIEProxy(obj.i, value.l)
  Declare.l ckUseInline(obj.i)
  Declare setCkUseInline(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckWebSiteLogin(obj.i)
  Declare setCkWebSiteLogin(obj.i, value.s)
  Declare.s ckWebSiteLoginDomain(obj.i)
  Declare setCkWebSiteLoginDomain(obj.i, value.s)
  Declare.s ckWebSitePassword(obj.i)
  Declare setCkWebSitePassword(obj.i, value.s)
  Declare ckAddCacheRoot(obj.i, dir.s)
  Declare ckAddCustomHeader(obj.i, name.s, value.s)
  Declare ckAddExternalStyleSheet(obj.i, url.s)
  Declare ckClearCustomHeaders(obj.i)
  Declare ckExcludeImagesMatching(obj.i, pattern.s)
  Declare.l ckGetAndSaveEML(obj.i, url_or_htmlFilepath.s, emlPath.s)
  Declare.i ckGetAndSaveEMLAsync(obj.i, url_or_htmlFilepath.s, emlPath.s)
  Declare.l ckGetAndSaveMHT(obj.i, url_or_htmlFilepath.s, mhtPath.s)
  Declare.i ckGetAndSaveMHTAsync(obj.i, url_or_htmlFilepath.s, mhtPath.s)
  Declare.l ckGetAndZipEML(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s)
  Declare.i ckGetAndZipEMLAsync(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s)
  Declare.l ckGetAndZipMHT(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s)
  Declare.i ckGetAndZipMHTAsync(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s)
  Declare.s ckGetCacheRoot(obj.i, index.l)
  Declare.s ckGetEML(obj.i, url_or_htmlFilepath.s)
  Declare.i ckGetEMLAsync(obj.i, url_or_htmlFilepath.s)
  Declare.s ckGetMHT(obj.i, url_or_htmlFilepath.s)
  Declare.i ckGetMHTAsync(obj.i, url_or_htmlFilepath.s)
  Declare.s ckHtmlToEML(obj.i, htmlText.s)
  Declare.i ckHtmlToEMLAsync(obj.i, htmlText.s)
  Declare.l ckHtmlToEMLFile(obj.i, html.s, emlFilename.s)
  Declare.i ckHtmlToEMLFileAsync(obj.i, html.s, emlFilename.s)
  Declare.s ckHtmlToMHT(obj.i, htmlText.s)
  Declare.i ckHtmlToMHTAsync(obj.i, htmlText.s)
  Declare.l ckHtmlToMHTFile(obj.i, html.s, mhtFilename.s)
  Declare.i ckHtmlToMHTFileAsync(obj.i, html.s, mhtFilename.s)
  Declare.l ckIsUnlocked(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare ckRemoveCustomHeader(obj.i, name.s)
  Declare ckRestoreDefaults(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUnpackMHT(obj.i, mhtFilename.s, unpackDir.s, htmlFilename.s, partsSubDir.s)
  Declare.l ckUnpackMHTString(obj.i, mhtString.s, unpackDir.s, htmlFilename.s, partsSubDir.s)
EndDeclareModule

Module CkMht
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkMhtCreate()
  PrototypeC CkMhtDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMhtLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkMhtLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkMhtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMhtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkMhtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global MhtCreate.CkMhtCreate = GetFunction(CkMhtLibId,"CkMhtU_CreateW")
  Global MhtDispose.CkMhtDispose = GetFunction(CkMhtLibId,"CkMhtU_DisposeW")
  Global MhtAbortCurrent.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getAbortCurrentW")
  Global MhtPSetAbortCurrent.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putAbortCurrentW")
  Global MhtBaseUrl.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_baseUrlW")
  Global MhtPSetBaseUrl.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putBaseUrlW")
  Global MhtConnectTimeout.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getConnectTimeoutW")
  Global MhtPSetConnectTimeout.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putConnectTimeoutW")
  Global MhtDebugHtmlAfter.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_debugHtmlAfterW")
  Global MhtPSetDebugHtmlAfter.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putDebugHtmlAfterW")
  Global MhtDebugHtmlBefore.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_debugHtmlBeforeW")
  Global MhtPSetDebugHtmlBefore.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putDebugHtmlBeforeW")
  Global MhtDebugLogFilePath.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_debugLogFilePathW")
  Global MhtPSetDebugLogFilePath.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putDebugLogFilePathW")
  Global MhtDebugTagCleaning.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getDebugTagCleaningW")
  Global MhtPSetDebugTagCleaning.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putDebugTagCleaningW")
  Global MhtEmbedImages.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getEmbedImagesW")
  Global MhtPSetEmbedImages.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putEmbedImagesW")
  Global MhtEmbedLocalOnly.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getEmbedLocalOnlyW")
  Global MhtPSetEmbedLocalOnly.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putEmbedLocalOnlyW")
  Global MhtFetchFromCache.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getFetchFromCacheW")
  Global MhtPSetFetchFromCache.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putFetchFromCacheW")
  Global MhtHeartbeatMs.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getHeartbeatMsW")
  Global MhtPSetHeartbeatMs.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putHeartbeatMsW")
  Global MhtIgnoreMustRevalidate.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getIgnoreMustRevalidateW")
  Global MhtPSetIgnoreMustRevalidate.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putIgnoreMustRevalidateW")
  Global MhtIgnoreNoCache.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getIgnoreNoCacheW")
  Global MhtPSetIgnoreNoCache.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putIgnoreNoCacheW")
  Global MhtLastErrorHtml.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_lastErrorHtmlW")
  Global MhtLastErrorText.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_lastErrorTextW")
  Global MhtLastErrorXml.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_lastErrorXmlW")
  Global MhtLastMethodSuccess.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getLastMethodSuccessW")
  Global MhtPSetLastMethodSuccess.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putLastMethodSuccessW")
  Global MhtNoScripts.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getNoScriptsW")
  Global MhtPSetNoScripts.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putNoScriptsW")
  Global MhtNtlmAuth.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getNtlmAuthW")
  Global MhtPSetNtlmAuth.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putNtlmAuthW")
  Global MhtNumCacheLevels.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getNumCacheLevelsW")
  Global MhtPSetNumCacheLevels.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putNumCacheLevelsW")
  Global MhtNumCacheRoots.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getNumCacheRootsW")
  Global MhtPreferIpv6.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getPreferIpv6W")
  Global MhtPSetPreferIpv6.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putPreferIpv6W")
  Global MhtPreferMHTScripts.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getPreferMHTScriptsW")
  Global MhtPSetPreferMHTScripts.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putPreferMHTScriptsW")
  Global MhtProxy.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_proxyW")
  Global MhtPSetProxy.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putProxyW")
  Global MhtProxyLogin.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_proxyLoginW")
  Global MhtPSetProxyLogin.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putProxyLoginW")
  Global MhtProxyPassword.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_proxyPasswordW")
  Global MhtPSetProxyPassword.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putProxyPasswordW")
  Global MhtReadTimeout.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getReadTimeoutW")
  Global MhtPSetReadTimeout.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putReadTimeoutW")
  Global MhtRequireSslCertVerify.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getRequireSslCertVerifyW")
  Global MhtPSetRequireSslCertVerify.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putRequireSslCertVerifyW")
  Global MhtSocksHostname.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_socksHostnameW")
  Global MhtPSetSocksHostname.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putSocksHostnameW")
  Global MhtSocksPassword.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_socksPasswordW")
  Global MhtPSetSocksPassword.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putSocksPasswordW")
  Global MhtSocksPort.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getSocksPortW")
  Global MhtPSetSocksPort.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putSocksPortW")
  Global MhtSocksUsername.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_socksUsernameW")
  Global MhtPSetSocksUsername.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putSocksUsernameW")
  Global MhtSocksVersion.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getSocksVersionW")
  Global MhtPSetSocksVersion.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putSocksVersionW")
  Global MhtUnpackDirect.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUnpackDirectW")
  Global MhtPSetUnpackDirect.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUnpackDirectW")
  Global MhtUnpackUseRelPaths.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUnpackUseRelPathsW")
  Global MhtPSetUnpackUseRelPaths.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUnpackUseRelPathsW")
  Global MhtUpdateCache.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUpdateCacheW")
  Global MhtPSetUpdateCache.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUpdateCacheW")
  Global MhtUseCids.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUseCidsW")
  Global MhtPSetUseCids.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUseCidsW")
  Global MhtUseFilename.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUseFilenameW")
  Global MhtPSetUseFilename.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUseFilenameW")
  Global MhtUseIEProxy.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUseIEProxyW")
  Global MhtPSetUseIEProxy.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUseIEProxyW")
  Global MhtUseInline.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getUseInlineW")
  Global MhtPSetUseInline.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putUseInlineW")
  Global MhtVerboseLogging.cklPropGet = GetFunction(CkMhtLibId,"CkMhtU_getVerboseLoggingW")
  Global MhtPSetVerboseLogging.cklPropSet = GetFunction(CkMhtLibId,"CkMhtU_putVerboseLoggingW")
  Global MhtVersion.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_versionW")
  Global MhtWebSiteLogin.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_webSiteLoginW")
  Global MhtPSetWebSiteLogin.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putWebSiteLoginW")
  Global MhtWebSiteLoginDomain.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_webSiteLoginDomainW")
  Global MhtPSetWebSiteLoginDomain.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putWebSiteLoginDomainW")
  Global MhtWebSitePassword.cksPropGet = GetFunction(CkMhtLibId,"CkMhtU_webSitePasswordW")
  Global MhtPSetWebSitePassword.cksPropSet = GetFunction(CkMhtLibId,"CkMhtU_putWebSitePasswordW")
  Global MhtAddCacheRoot.ckvMs = GetFunction(CkMhtLibId,"CkMhtU_AddCacheRootW")
  Global MhtAddCustomHeader.ckvMss = GetFunction(CkMhtLibId,"CkMhtU_AddCustomHeaderW")
  Global MhtAddExternalStyleSheet.ckvMs = GetFunction(CkMhtLibId,"CkMhtU_AddExternalStyleSheetW")
  Global MhtClearCustomHeaders.ckvM = GetFunction(CkMhtLibId,"CkMhtU_ClearCustomHeadersW")
  Global MhtExcludeImagesMatching.ckvMs = GetFunction(CkMhtLibId,"CkMhtU_ExcludeImagesMatchingW")
  Global MhtGetAndSaveEML.cklMss = GetFunction(CkMhtLibId,"CkMhtU_GetAndSaveEMLW")
  Global MhtGetAndSaveEMLAsync.ckiMss = GetFunction(CkMhtLibId,"CkMhtU_GetAndSaveEMLAsyncW")
  Global MhtGetAndSaveMHT.cklMss = GetFunction(CkMhtLibId,"CkMhtU_GetAndSaveMHTW")
  Global MhtGetAndSaveMHTAsync.ckiMss = GetFunction(CkMhtLibId,"CkMhtU_GetAndSaveMHTAsyncW")
  Global MhtGetAndZipEML.cklMsss = GetFunction(CkMhtLibId,"CkMhtU_GetAndZipEMLW")
  Global MhtGetAndZipEMLAsync.ckiMsss = GetFunction(CkMhtLibId,"CkMhtU_GetAndZipEMLAsyncW")
  Global MhtGetAndZipMHT.cklMsss = GetFunction(CkMhtLibId,"CkMhtU_GetAndZipMHTW")
  Global MhtGetAndZipMHTAsync.ckiMsss = GetFunction(CkMhtLibId,"CkMhtU_GetAndZipMHTAsyncW")
  Global MhtGetCacheRoot.cklMl = GetFunction(CkMhtLibId,"CkMhtU_getCacheRootW")
  Global MhtGetEML.cklMs = GetFunction(CkMhtLibId,"CkMhtU_getEMLW")
  Global MhtGetEMLAsync.ckiMs = GetFunction(CkMhtLibId,"CkMhtU_GetEMLAsyncW")
  Global MhtGetMHT.cklMs = GetFunction(CkMhtLibId,"CkMhtU_getMHTW")
  Global MhtGetMHTAsync.ckiMs = GetFunction(CkMhtLibId,"CkMhtU_GetMHTAsyncW")
  Global MhtHtmlToEML.cklMs = GetFunction(CkMhtLibId,"CkMhtU_htmlToEMLW")
  Global MhtHtmlToEMLAsync.ckiMs = GetFunction(CkMhtLibId,"CkMhtU_HtmlToEMLAsyncW")
  Global MhtHtmlToEMLFile.cklMss = GetFunction(CkMhtLibId,"CkMhtU_HtmlToEMLFileW")
  Global MhtHtmlToEMLFileAsync.ckiMss = GetFunction(CkMhtLibId,"CkMhtU_HtmlToEMLFileAsyncW")
  Global MhtHtmlToMHT.cklMs = GetFunction(CkMhtLibId,"CkMhtU_htmlToMHTW")
  Global MhtHtmlToMHTAsync.ckiMs = GetFunction(CkMhtLibId,"CkMhtU_HtmlToMHTAsyncW")
  Global MhtHtmlToMHTFile.cklMss = GetFunction(CkMhtLibId,"CkMhtU_HtmlToMHTFileW")
  Global MhtHtmlToMHTFileAsync.ckiMss = GetFunction(CkMhtLibId,"CkMhtU_HtmlToMHTFileAsyncW")
  Global MhtIsUnlocked.cklM = GetFunction(CkMhtLibId,"CkMhtU_IsUnlockedW")
  Global MhtLoadTaskCaller.cklMi = GetFunction(CkMhtLibId,"CkMhtU_LoadTaskCallerW")
  Global MhtRemoveCustomHeader.ckvMs = GetFunction(CkMhtLibId,"CkMhtU_RemoveCustomHeaderW")
  Global MhtRestoreDefaults.ckvM = GetFunction(CkMhtLibId,"CkMhtU_RestoreDefaultsW")
  Global MhtSaveLastError.cklMs = GetFunction(CkMhtLibId,"CkMhtU_SaveLastErrorW")
  Global MhtUnlockComponent.cklMs = GetFunction(CkMhtLibId,"CkMhtU_UnlockComponentW")
  Global MhtUnpackMHT.cklMssss = GetFunction(CkMhtLibId,"CkMhtU_UnpackMHTW")
  Global MhtUnpackMHTString.cklMssss = GetFunction(CkMhtLibId,"CkMhtU_UnpackMHTStringW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn MhtCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn MhtDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn MhtAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn MhtPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckBaseUrl(obj.i) : ProcedureReturn PeekS(MhtBaseUrl(obj)) : EndProcedure
  Procedure setCkBaseUrl(obj.i, value.s) : ProcedureReturn MhtPSetBaseUrl(obj,value) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn MhtConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn MhtPSetConnectTimeout(obj,value) : EndProcedure
  Procedure.s ckDebugHtmlAfter(obj.i) : ProcedureReturn PeekS(MhtDebugHtmlAfter(obj)) : EndProcedure
  Procedure setCkDebugHtmlAfter(obj.i, value.s) : ProcedureReturn MhtPSetDebugHtmlAfter(obj,value) : EndProcedure
  Procedure.s ckDebugHtmlBefore(obj.i) : ProcedureReturn PeekS(MhtDebugHtmlBefore(obj)) : EndProcedure
  Procedure setCkDebugHtmlBefore(obj.i, value.s) : ProcedureReturn MhtPSetDebugHtmlBefore(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(MhtDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn MhtPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDebugTagCleaning(obj.i) : ProcedureReturn MhtDebugTagCleaning(obj) : EndProcedure
  Procedure setCkDebugTagCleaning(obj.i, value.l) : ProcedureReturn MhtPSetDebugTagCleaning(obj,value) : EndProcedure
  Procedure.l ckEmbedImages(obj.i) : ProcedureReturn MhtEmbedImages(obj) : EndProcedure
  Procedure setCkEmbedImages(obj.i, value.l) : ProcedureReturn MhtPSetEmbedImages(obj,value) : EndProcedure
  Procedure.l ckEmbedLocalOnly(obj.i) : ProcedureReturn MhtEmbedLocalOnly(obj) : EndProcedure
  Procedure setCkEmbedLocalOnly(obj.i, value.l) : ProcedureReturn MhtPSetEmbedLocalOnly(obj,value) : EndProcedure
  Procedure.l ckFetchFromCache(obj.i) : ProcedureReturn MhtFetchFromCache(obj) : EndProcedure
  Procedure setCkFetchFromCache(obj.i, value.l) : ProcedureReturn MhtPSetFetchFromCache(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn MhtHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn MhtPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckIgnoreMustRevalidate(obj.i) : ProcedureReturn MhtIgnoreMustRevalidate(obj) : EndProcedure
  Procedure setCkIgnoreMustRevalidate(obj.i, value.l) : ProcedureReturn MhtPSetIgnoreMustRevalidate(obj,value) : EndProcedure
  Procedure.l ckIgnoreNoCache(obj.i) : ProcedureReturn MhtIgnoreNoCache(obj) : EndProcedure
  Procedure setCkIgnoreNoCache(obj.i, value.l) : ProcedureReturn MhtPSetIgnoreNoCache(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(MhtLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(MhtLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(MhtLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn MhtLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn MhtPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNoScripts(obj.i) : ProcedureReturn MhtNoScripts(obj) : EndProcedure
  Procedure setCkNoScripts(obj.i, value.l) : ProcedureReturn MhtPSetNoScripts(obj,value) : EndProcedure
  Procedure.l ckNtlmAuth(obj.i) : ProcedureReturn MhtNtlmAuth(obj) : EndProcedure
  Procedure setCkNtlmAuth(obj.i, value.l) : ProcedureReturn MhtPSetNtlmAuth(obj,value) : EndProcedure
  Procedure.l ckNumCacheLevels(obj.i) : ProcedureReturn MhtNumCacheLevels(obj) : EndProcedure
  Procedure setCkNumCacheLevels(obj.i, value.l) : ProcedureReturn MhtPSetNumCacheLevels(obj,value) : EndProcedure
  Procedure.l ckNumCacheRoots(obj.i) : ProcedureReturn MhtNumCacheRoots(obj) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn MhtPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn MhtPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckPreferMHTScripts(obj.i) : ProcedureReturn MhtPreferMHTScripts(obj) : EndProcedure
  Procedure setCkPreferMHTScripts(obj.i, value.l) : ProcedureReturn MhtPSetPreferMHTScripts(obj,value) : EndProcedure
  Procedure.s ckProxy(obj.i) : ProcedureReturn PeekS(MhtProxy(obj)) : EndProcedure
  Procedure setCkProxy(obj.i, value.s) : ProcedureReturn MhtPSetProxy(obj,value) : EndProcedure
  Procedure.s ckProxyLogin(obj.i) : ProcedureReturn PeekS(MhtProxyLogin(obj)) : EndProcedure
  Procedure setCkProxyLogin(obj.i, value.s) : ProcedureReturn MhtPSetProxyLogin(obj,value) : EndProcedure
  Procedure.s ckProxyPassword(obj.i) : ProcedureReturn PeekS(MhtProxyPassword(obj)) : EndProcedure
  Procedure setCkProxyPassword(obj.i, value.s) : ProcedureReturn MhtPSetProxyPassword(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn MhtReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn MhtPSetReadTimeout(obj,value) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn MhtRequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn MhtPSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(MhtSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn MhtPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(MhtSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn MhtPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn MhtSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn MhtPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(MhtSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn MhtPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn MhtSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn MhtPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckUnpackDirect(obj.i) : ProcedureReturn MhtUnpackDirect(obj) : EndProcedure
  Procedure setCkUnpackDirect(obj.i, value.l) : ProcedureReturn MhtPSetUnpackDirect(obj,value) : EndProcedure
  Procedure.l ckUnpackUseRelPaths(obj.i) : ProcedureReturn MhtUnpackUseRelPaths(obj) : EndProcedure
  Procedure setCkUnpackUseRelPaths(obj.i, value.l) : ProcedureReturn MhtPSetUnpackUseRelPaths(obj,value) : EndProcedure
  Procedure.l ckUpdateCache(obj.i) : ProcedureReturn MhtUpdateCache(obj) : EndProcedure
  Procedure setCkUpdateCache(obj.i, value.l) : ProcedureReturn MhtPSetUpdateCache(obj,value) : EndProcedure
  Procedure.l ckUseCids(obj.i) : ProcedureReturn MhtUseCids(obj) : EndProcedure
  Procedure setCkUseCids(obj.i, value.l) : ProcedureReturn MhtPSetUseCids(obj,value) : EndProcedure
  Procedure.l ckUseFilename(obj.i) : ProcedureReturn MhtUseFilename(obj) : EndProcedure
  Procedure setCkUseFilename(obj.i, value.l) : ProcedureReturn MhtPSetUseFilename(obj,value) : EndProcedure
  Procedure.l ckUseIEProxy(obj.i) : ProcedureReturn MhtUseIEProxy(obj) : EndProcedure
  Procedure setCkUseIEProxy(obj.i, value.l) : ProcedureReturn MhtPSetUseIEProxy(obj,value) : EndProcedure
  Procedure.l ckUseInline(obj.i) : ProcedureReturn MhtUseInline(obj) : EndProcedure
  Procedure setCkUseInline(obj.i, value.l) : ProcedureReturn MhtPSetUseInline(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn MhtVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn MhtPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(MhtVersion(obj)) : EndProcedure
  Procedure.s ckWebSiteLogin(obj.i) : ProcedureReturn PeekS(MhtWebSiteLogin(obj)) : EndProcedure
  Procedure setCkWebSiteLogin(obj.i, value.s) : ProcedureReturn MhtPSetWebSiteLogin(obj,value) : EndProcedure
  Procedure.s ckWebSiteLoginDomain(obj.i) : ProcedureReturn PeekS(MhtWebSiteLoginDomain(obj)) : EndProcedure
  Procedure setCkWebSiteLoginDomain(obj.i, value.s) : ProcedureReturn MhtPSetWebSiteLoginDomain(obj,value) : EndProcedure
  Procedure.s ckWebSitePassword(obj.i) : ProcedureReturn PeekS(MhtWebSitePassword(obj)) : EndProcedure
  Procedure setCkWebSitePassword(obj.i, value.s) : ProcedureReturn MhtPSetWebSitePassword(obj,value) : EndProcedure
  Procedure ckAddCacheRoot(obj.i, dir.s) :  ProcedureReturn MhtAddCacheRoot(obj, dir) :  EndProcedure
  Procedure ckAddCustomHeader(obj.i, name.s, value.s) :  ProcedureReturn MhtAddCustomHeader(obj, name, value) :  EndProcedure
  Procedure ckAddExternalStyleSheet(obj.i, url.s) :  ProcedureReturn MhtAddExternalStyleSheet(obj, url) :  EndProcedure
  Procedure ckClearCustomHeaders(obj.i) :  ProcedureReturn MhtClearCustomHeaders(obj) :  EndProcedure
  Procedure ckExcludeImagesMatching(obj.i, pattern.s) :  ProcedureReturn MhtExcludeImagesMatching(obj, pattern) :  EndProcedure
  Procedure.l ckGetAndSaveEML(obj.i, url_or_htmlFilepath.s, emlPath.s) :  ProcedureReturn MhtGetAndSaveEML(obj, url_or_htmlFilepath, emlPath) :  EndProcedure
  Procedure.i ckGetAndSaveEMLAsync(obj.i, url_or_htmlFilepath.s, emlPath.s) :  ProcedureReturn MhtGetAndSaveEMLAsync(obj, url_or_htmlFilepath, emlPath) :  EndProcedure
  Procedure.l ckGetAndSaveMHT(obj.i, url_or_htmlFilepath.s, mhtPath.s) :  ProcedureReturn MhtGetAndSaveMHT(obj, url_or_htmlFilepath, mhtPath) :  EndProcedure
  Procedure.i ckGetAndSaveMHTAsync(obj.i, url_or_htmlFilepath.s, mhtPath.s) :  ProcedureReturn MhtGetAndSaveMHTAsync(obj, url_or_htmlFilepath, mhtPath) :  EndProcedure
  Procedure.l ckGetAndZipEML(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s) :  ProcedureReturn MhtGetAndZipEML(obj, url_or_htmlFilepath, zipEntryFilename, zipFilename) :  EndProcedure
  Procedure.i ckGetAndZipEMLAsync(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s) :  ProcedureReturn MhtGetAndZipEMLAsync(obj, url_or_htmlFilepath, zipEntryFilename, zipFilename) :  EndProcedure
  Procedure.l ckGetAndZipMHT(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s) :  ProcedureReturn MhtGetAndZipMHT(obj, url_or_htmlFilepath, zipEntryFilename, zipFilename) :  EndProcedure
  Procedure.i ckGetAndZipMHTAsync(obj.i, url_or_htmlFilepath.s, zipEntryFilename.s, zipFilename.s) :  ProcedureReturn MhtGetAndZipMHTAsync(obj, url_or_htmlFilepath, zipEntryFilename, zipFilename) :  EndProcedure
  Procedure.s ckGetCacheRoot(obj.i, index.l) :  ProcedureReturn PeekS(MhtGetCacheRoot(obj, index)) :  EndProcedure
  Procedure.s ckGetEML(obj.i, url_or_htmlFilepath.s) :  ProcedureReturn PeekS(MhtGetEML(obj, url_or_htmlFilepath)) :  EndProcedure
  Procedure.i ckGetEMLAsync(obj.i, url_or_htmlFilepath.s) :  ProcedureReturn MhtGetEMLAsync(obj, url_or_htmlFilepath) :  EndProcedure
  Procedure.s ckGetMHT(obj.i, url_or_htmlFilepath.s) :  ProcedureReturn PeekS(MhtGetMHT(obj, url_or_htmlFilepath)) :  EndProcedure
  Procedure.i ckGetMHTAsync(obj.i, url_or_htmlFilepath.s) :  ProcedureReturn MhtGetMHTAsync(obj, url_or_htmlFilepath) :  EndProcedure
  Procedure.s ckHtmlToEML(obj.i, htmlText.s) :  ProcedureReturn PeekS(MhtHtmlToEML(obj, htmlText)) :  EndProcedure
  Procedure.i ckHtmlToEMLAsync(obj.i, htmlText.s) :  ProcedureReturn MhtHtmlToEMLAsync(obj, htmlText) :  EndProcedure
  Procedure.l ckHtmlToEMLFile(obj.i, html.s, emlFilename.s) :  ProcedureReturn MhtHtmlToEMLFile(obj, html, emlFilename) :  EndProcedure
  Procedure.i ckHtmlToEMLFileAsync(obj.i, html.s, emlFilename.s) :  ProcedureReturn MhtHtmlToEMLFileAsync(obj, html, emlFilename) :  EndProcedure
  Procedure.s ckHtmlToMHT(obj.i, htmlText.s) :  ProcedureReturn PeekS(MhtHtmlToMHT(obj, htmlText)) :  EndProcedure
  Procedure.i ckHtmlToMHTAsync(obj.i, htmlText.s) :  ProcedureReturn MhtHtmlToMHTAsync(obj, htmlText) :  EndProcedure
  Procedure.l ckHtmlToMHTFile(obj.i, html.s, mhtFilename.s) :  ProcedureReturn MhtHtmlToMHTFile(obj, html, mhtFilename) :  EndProcedure
  Procedure.i ckHtmlToMHTFileAsync(obj.i, html.s, mhtFilename.s) :  ProcedureReturn MhtHtmlToMHTFileAsync(obj, html, mhtFilename) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn MhtIsUnlocked(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn MhtLoadTaskCaller(obj, task) :  EndProcedure
  Procedure ckRemoveCustomHeader(obj.i, name.s) :  ProcedureReturn MhtRemoveCustomHeader(obj, name) :  EndProcedure
  Procedure ckRestoreDefaults(obj.i) :  ProcedureReturn MhtRestoreDefaults(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn MhtSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn MhtUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUnpackMHT(obj.i, mhtFilename.s, unpackDir.s, htmlFilename.s, partsSubDir.s) :  ProcedureReturn MhtUnpackMHT(obj, mhtFilename, unpackDir, htmlFilename, partsSubDir) :  EndProcedure
  Procedure.l ckUnpackMHTString(obj.i, mhtString.s, unpackDir.s, htmlFilename.s, partsSubDir.s) :  ProcedureReturn MhtUnpackMHTString(obj, mhtString, unpackDir, htmlFilename, partsSubDir) :  EndProcedure
EndModule

