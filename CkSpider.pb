DeclareModule CkSpider
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAvoidHttps(obj.i)
  Declare setCkAvoidHttps(obj.i, value.l)
  Declare.s ckCacheDir(obj.i)
  Declare setCkCacheDir(obj.i, value.s)
  Declare.l ckChopAtQuery(obj.i)
  Declare setCkChopAtQuery(obj.i, value.l)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDomain(obj.i)
  Declare.l ckFetchFromCache(obj.i)
  Declare setCkFetchFromCache(obj.i, value.l)
  Declare.s ckFinalRedirectUrl(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastFromCache(obj.i)
  Declare.s ckLastHtml(obj.i)
  Declare.s ckLastHtmlDescription(obj.i)
  Declare.s ckLastHtmlKeywords(obj.i)
  Declare.s ckLastHtmlTitle(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastModDateStr(obj.i)
  Declare.s ckLastUrl(obj.i)
  Declare.l ckMaxResponseSize(obj.i)
  Declare setCkMaxResponseSize(obj.i, value.l)
  Declare.l ckMaxUrlLen(obj.i)
  Declare setCkMaxUrlLen(obj.i, value.l)
  Declare.l ckNumAvoidPatterns(obj.i)
  Declare.l ckNumFailed(obj.i)
  Declare.l ckNumOutboundLinks(obj.i)
  Declare.l ckNumSpidered(obj.i)
  Declare.l ckNumUnspidered(obj.i)
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
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.l ckUpdateCache(obj.i)
  Declare setCkUpdateCache(obj.i, value.l)
  Declare.s ckUserAgent(obj.i)
  Declare setCkUserAgent(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckWasRedirected(obj.i)
  Declare.l ckWindDownCount(obj.i)
  Declare setCkWindDownCount(obj.i, value.l)
  Declare ckAddAvoidOutboundLinkPattern(obj.i, pattern.s)
  Declare ckAddAvoidPattern(obj.i, pattern.s)
  Declare ckAddMustMatchPattern(obj.i, pattern.s)
  Declare ckAddUnspidered(obj.i, url.s)
  Declare.s ckCanonicalizeUrl(obj.i, url.s)
  Declare ckClearFailedUrls(obj.i)
  Declare ckClearOutboundLinks(obj.i)
  Declare ckClearSpideredUrls(obj.i)
  Declare.l ckCrawlNext(obj.i)
  Declare.i ckCrawlNextAsync(obj.i)
  Declare.s ckFetchRobotsText(obj.i)
  Declare.i ckFetchRobotsTextAsync(obj.i)
  Declare.s ckGetAvoidPattern(obj.i, index.l)
  Declare.s ckGetBaseDomain(obj.i, domain.s)
  Declare.s ckGetFailedUrl(obj.i, index.l)
  Declare.s ckGetOutboundLink(obj.i, index.l)
  Declare.s ckGetSpideredUrl(obj.i, index.l)
  Declare.s ckGetUnspideredUrl(obj.i, index.l)
  Declare.s ckGetUrlDomain(obj.i, url.s)
  Declare ckInitialize(obj.i, domain.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckRecrawlLast(obj.i)
  Declare.i ckRecrawlLastAsync(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSkipUnspidered(obj.i, index.l)
  Declare ckSleepMs(obj.i, numMilliseconds.l)
EndDeclareModule

Module CkSpider
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkSpiderCreate()
  PrototypeC CkSpiderDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSpiderLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSpiderLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSpiderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSpiderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSpiderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SpiderCreate.CkSpiderCreate = GetFunction(CkSpiderLibId,"CkSpiderU_CreateW")
  Global SpiderDispose.CkSpiderDispose = GetFunction(CkSpiderLibId,"CkSpiderU_DisposeW")
  Global SpiderAbortCurrent.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getAbortCurrentW")
  Global SpiderPSetAbortCurrent.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putAbortCurrentW")
  Global SpiderAvoidHttps.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getAvoidHttpsW")
  Global SpiderPSetAvoidHttps.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putAvoidHttpsW")
  Global SpiderCacheDir.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_cacheDirW")
  Global SpiderPSetCacheDir.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putCacheDirW")
  Global SpiderChopAtQuery.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getChopAtQueryW")
  Global SpiderPSetChopAtQuery.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putChopAtQueryW")
  Global SpiderConnectTimeout.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getConnectTimeoutW")
  Global SpiderPSetConnectTimeout.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putConnectTimeoutW")
  Global SpiderDebugLogFilePath.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_debugLogFilePathW")
  Global SpiderPSetDebugLogFilePath.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putDebugLogFilePathW")
  Global SpiderDomain.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_domainW")
  Global SpiderFetchFromCache.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getFetchFromCacheW")
  Global SpiderPSetFetchFromCache.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putFetchFromCacheW")
  Global SpiderFinalRedirectUrl.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_finalRedirectUrlW")
  Global SpiderHeartbeatMs.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getHeartbeatMsW")
  Global SpiderPSetHeartbeatMs.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putHeartbeatMsW")
  Global SpiderLastErrorHtml.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastErrorHtmlW")
  Global SpiderLastErrorText.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastErrorTextW")
  Global SpiderLastErrorXml.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastErrorXmlW")
  Global SpiderLastFromCache.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getLastFromCacheW")
  Global SpiderLastHtml.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastHtmlW")
  Global SpiderLastHtmlDescription.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastHtmlDescriptionW")
  Global SpiderLastHtmlKeywords.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastHtmlKeywordsW")
  Global SpiderLastHtmlTitle.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastHtmlTitleW")
  Global SpiderLastMethodSuccess.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getLastMethodSuccessW")
  Global SpiderPSetLastMethodSuccess.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putLastMethodSuccessW")
  Global SpiderLastModDateStr.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastModDateStrW")
  Global SpiderLastUrl.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_lastUrlW")
  Global SpiderMaxResponseSize.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getMaxResponseSizeW")
  Global SpiderPSetMaxResponseSize.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putMaxResponseSizeW")
  Global SpiderMaxUrlLen.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getMaxUrlLenW")
  Global SpiderPSetMaxUrlLen.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putMaxUrlLenW")
  Global SpiderNumAvoidPatterns.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getNumAvoidPatternsW")
  Global SpiderNumFailed.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getNumFailedW")
  Global SpiderNumOutboundLinks.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getNumOutboundLinksW")
  Global SpiderNumSpidered.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getNumSpideredW")
  Global SpiderNumUnspidered.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getNumUnspideredW")
  Global SpiderPreferIpv6.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getPreferIpv6W")
  Global SpiderPSetPreferIpv6.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putPreferIpv6W")
  Global SpiderProxyDomain.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_proxyDomainW")
  Global SpiderPSetProxyDomain.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putProxyDomainW")
  Global SpiderProxyLogin.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_proxyLoginW")
  Global SpiderPSetProxyLogin.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putProxyLoginW")
  Global SpiderProxyPassword.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_proxyPasswordW")
  Global SpiderPSetProxyPassword.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putProxyPasswordW")
  Global SpiderProxyPort.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getProxyPortW")
  Global SpiderPSetProxyPort.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putProxyPortW")
  Global SpiderReadTimeout.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getReadTimeoutW")
  Global SpiderPSetReadTimeout.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putReadTimeoutW")
  Global SpiderUpdateCache.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getUpdateCacheW")
  Global SpiderPSetUpdateCache.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putUpdateCacheW")
  Global SpiderUserAgent.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_userAgentW")
  Global SpiderPSetUserAgent.cksPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putUserAgentW")
  Global SpiderVerboseLogging.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getVerboseLoggingW")
  Global SpiderPSetVerboseLogging.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putVerboseLoggingW")
  Global SpiderVersion.cksPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_versionW")
  Global SpiderWasRedirected.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getWasRedirectedW")
  Global SpiderWindDownCount.cklPropGet = GetFunction(CkSpiderLibId,"CkSpiderU_getWindDownCountW")
  Global SpiderPSetWindDownCount.cklPropSet = GetFunction(CkSpiderLibId,"CkSpiderU_putWindDownCountW")
  Global SpiderAddAvoidOutboundLinkPattern.ckvMs = GetFunction(CkSpiderLibId,"CkSpiderU_AddAvoidOutboundLinkPatternW")
  Global SpiderAddAvoidPattern.ckvMs = GetFunction(CkSpiderLibId,"CkSpiderU_AddAvoidPatternW")
  Global SpiderAddMustMatchPattern.ckvMs = GetFunction(CkSpiderLibId,"CkSpiderU_AddMustMatchPatternW")
  Global SpiderAddUnspidered.ckvMs = GetFunction(CkSpiderLibId,"CkSpiderU_AddUnspideredW")
  Global SpiderCanonicalizeUrl.cklMs = GetFunction(CkSpiderLibId,"CkSpiderU_canonicalizeUrlW")
  Global SpiderClearFailedUrls.ckvM = GetFunction(CkSpiderLibId,"CkSpiderU_ClearFailedUrlsW")
  Global SpiderClearOutboundLinks.ckvM = GetFunction(CkSpiderLibId,"CkSpiderU_ClearOutboundLinksW")
  Global SpiderClearSpideredUrls.ckvM = GetFunction(CkSpiderLibId,"CkSpiderU_ClearSpideredUrlsW")
  Global SpiderCrawlNext.cklM = GetFunction(CkSpiderLibId,"CkSpiderU_CrawlNextW")
  Global SpiderCrawlNextAsync.ckiM = GetFunction(CkSpiderLibId,"CkSpiderU_CrawlNextAsyncW")
  Global SpiderFetchRobotsText.cklM = GetFunction(CkSpiderLibId,"CkSpiderU_fetchRobotsTextW")
  Global SpiderFetchRobotsTextAsync.ckiM = GetFunction(CkSpiderLibId,"CkSpiderU_FetchRobotsTextAsyncW")
  Global SpiderGetAvoidPattern.cklMl = GetFunction(CkSpiderLibId,"CkSpiderU_getAvoidPatternW")
  Global SpiderGetBaseDomain.cklMs = GetFunction(CkSpiderLibId,"CkSpiderU_getBaseDomainW")
  Global SpiderGetFailedUrl.cklMl = GetFunction(CkSpiderLibId,"CkSpiderU_getFailedUrlW")
  Global SpiderGetOutboundLink.cklMl = GetFunction(CkSpiderLibId,"CkSpiderU_getOutboundLinkW")
  Global SpiderGetSpideredUrl.cklMl = GetFunction(CkSpiderLibId,"CkSpiderU_getSpideredUrlW")
  Global SpiderGetUnspideredUrl.cklMl = GetFunction(CkSpiderLibId,"CkSpiderU_getUnspideredUrlW")
  Global SpiderGetUrlDomain.cklMs = GetFunction(CkSpiderLibId,"CkSpiderU_getUrlDomainW")
  Global SpiderInitialize.ckvMs = GetFunction(CkSpiderLibId,"CkSpiderU_InitializeW")
  Global SpiderLoadTaskCaller.cklMi = GetFunction(CkSpiderLibId,"CkSpiderU_LoadTaskCallerW")
  Global SpiderRecrawlLast.cklM = GetFunction(CkSpiderLibId,"CkSpiderU_RecrawlLastW")
  Global SpiderRecrawlLastAsync.ckiM = GetFunction(CkSpiderLibId,"CkSpiderU_RecrawlLastAsyncW")
  Global SpiderSaveLastError.cklMs = GetFunction(CkSpiderLibId,"CkSpiderU_SaveLastErrorW")
  Global SpiderSkipUnspidered.ckvMl = GetFunction(CkSpiderLibId,"CkSpiderU_SkipUnspideredW")
  Global SpiderSleepMs.ckvMl = GetFunction(CkSpiderLibId,"CkSpiderU_SleepMsW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SpiderCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SpiderDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn SpiderAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn SpiderPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAvoidHttps(obj.i) : ProcedureReturn SpiderAvoidHttps(obj) : EndProcedure
  Procedure setCkAvoidHttps(obj.i, value.l) : ProcedureReturn SpiderPSetAvoidHttps(obj,value) : EndProcedure
  Procedure.s ckCacheDir(obj.i) : ProcedureReturn PeekS(SpiderCacheDir(obj)) : EndProcedure
  Procedure setCkCacheDir(obj.i, value.s) : ProcedureReturn SpiderPSetCacheDir(obj,value) : EndProcedure
  Procedure.l ckChopAtQuery(obj.i) : ProcedureReturn SpiderChopAtQuery(obj) : EndProcedure
  Procedure setCkChopAtQuery(obj.i, value.l) : ProcedureReturn SpiderPSetChopAtQuery(obj,value) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn SpiderConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn SpiderPSetConnectTimeout(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SpiderDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SpiderPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDomain(obj.i) : ProcedureReturn PeekS(SpiderDomain(obj)) : EndProcedure
  Procedure.l ckFetchFromCache(obj.i) : ProcedureReturn SpiderFetchFromCache(obj) : EndProcedure
  Procedure setCkFetchFromCache(obj.i, value.l) : ProcedureReturn SpiderPSetFetchFromCache(obj,value) : EndProcedure
  Procedure.s ckFinalRedirectUrl(obj.i) : ProcedureReturn PeekS(SpiderFinalRedirectUrl(obj)) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn SpiderHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn SpiderPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SpiderLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SpiderLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SpiderLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastFromCache(obj.i) : ProcedureReturn SpiderLastFromCache(obj) : EndProcedure
  Procedure.s ckLastHtml(obj.i) : ProcedureReturn PeekS(SpiderLastHtml(obj)) : EndProcedure
  Procedure.s ckLastHtmlDescription(obj.i) : ProcedureReturn PeekS(SpiderLastHtmlDescription(obj)) : EndProcedure
  Procedure.s ckLastHtmlKeywords(obj.i) : ProcedureReturn PeekS(SpiderLastHtmlKeywords(obj)) : EndProcedure
  Procedure.s ckLastHtmlTitle(obj.i) : ProcedureReturn PeekS(SpiderLastHtmlTitle(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SpiderLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SpiderPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastModDateStr(obj.i) : ProcedureReturn PeekS(SpiderLastModDateStr(obj)) : EndProcedure
  Procedure.s ckLastUrl(obj.i) : ProcedureReturn PeekS(SpiderLastUrl(obj)) : EndProcedure
  Procedure.l ckMaxResponseSize(obj.i) : ProcedureReturn SpiderMaxResponseSize(obj) : EndProcedure
  Procedure setCkMaxResponseSize(obj.i, value.l) : ProcedureReturn SpiderPSetMaxResponseSize(obj,value) : EndProcedure
  Procedure.l ckMaxUrlLen(obj.i) : ProcedureReturn SpiderMaxUrlLen(obj) : EndProcedure
  Procedure setCkMaxUrlLen(obj.i, value.l) : ProcedureReturn SpiderPSetMaxUrlLen(obj,value) : EndProcedure
  Procedure.l ckNumAvoidPatterns(obj.i) : ProcedureReturn SpiderNumAvoidPatterns(obj) : EndProcedure
  Procedure.l ckNumFailed(obj.i) : ProcedureReturn SpiderNumFailed(obj) : EndProcedure
  Procedure.l ckNumOutboundLinks(obj.i) : ProcedureReturn SpiderNumOutboundLinks(obj) : EndProcedure
  Procedure.l ckNumSpidered(obj.i) : ProcedureReturn SpiderNumSpidered(obj) : EndProcedure
  Procedure.l ckNumUnspidered(obj.i) : ProcedureReturn SpiderNumUnspidered(obj) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn SpiderPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn SpiderPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.s ckProxyDomain(obj.i) : ProcedureReturn PeekS(SpiderProxyDomain(obj)) : EndProcedure
  Procedure setCkProxyDomain(obj.i, value.s) : ProcedureReturn SpiderPSetProxyDomain(obj,value) : EndProcedure
  Procedure.s ckProxyLogin(obj.i) : ProcedureReturn PeekS(SpiderProxyLogin(obj)) : EndProcedure
  Procedure setCkProxyLogin(obj.i, value.s) : ProcedureReturn SpiderPSetProxyLogin(obj,value) : EndProcedure
  Procedure.s ckProxyPassword(obj.i) : ProcedureReturn PeekS(SpiderProxyPassword(obj)) : EndProcedure
  Procedure setCkProxyPassword(obj.i, value.s) : ProcedureReturn SpiderPSetProxyPassword(obj,value) : EndProcedure
  Procedure.l ckProxyPort(obj.i) : ProcedureReturn SpiderProxyPort(obj) : EndProcedure
  Procedure setCkProxyPort(obj.i, value.l) : ProcedureReturn SpiderPSetProxyPort(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn SpiderReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn SpiderPSetReadTimeout(obj,value) : EndProcedure
  Procedure.l ckUpdateCache(obj.i) : ProcedureReturn SpiderUpdateCache(obj) : EndProcedure
  Procedure setCkUpdateCache(obj.i, value.l) : ProcedureReturn SpiderPSetUpdateCache(obj,value) : EndProcedure
  Procedure.s ckUserAgent(obj.i) : ProcedureReturn PeekS(SpiderUserAgent(obj)) : EndProcedure
  Procedure setCkUserAgent(obj.i, value.s) : ProcedureReturn SpiderPSetUserAgent(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SpiderVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SpiderPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SpiderVersion(obj)) : EndProcedure
  Procedure.l ckWasRedirected(obj.i) : ProcedureReturn SpiderWasRedirected(obj) : EndProcedure
  Procedure.l ckWindDownCount(obj.i) : ProcedureReturn SpiderWindDownCount(obj) : EndProcedure
  Procedure setCkWindDownCount(obj.i, value.l) : ProcedureReturn SpiderPSetWindDownCount(obj,value) : EndProcedure
  Procedure ckAddAvoidOutboundLinkPattern(obj.i, pattern.s) :  ProcedureReturn SpiderAddAvoidOutboundLinkPattern(obj, pattern) :  EndProcedure
  Procedure ckAddAvoidPattern(obj.i, pattern.s) :  ProcedureReturn SpiderAddAvoidPattern(obj, pattern) :  EndProcedure
  Procedure ckAddMustMatchPattern(obj.i, pattern.s) :  ProcedureReturn SpiderAddMustMatchPattern(obj, pattern) :  EndProcedure
  Procedure ckAddUnspidered(obj.i, url.s) :  ProcedureReturn SpiderAddUnspidered(obj, url) :  EndProcedure
  Procedure.s ckCanonicalizeUrl(obj.i, url.s) :  ProcedureReturn PeekS(SpiderCanonicalizeUrl(obj, url)) :  EndProcedure
  Procedure ckClearFailedUrls(obj.i) :  ProcedureReturn SpiderClearFailedUrls(obj) :  EndProcedure
  Procedure ckClearOutboundLinks(obj.i) :  ProcedureReturn SpiderClearOutboundLinks(obj) :  EndProcedure
  Procedure ckClearSpideredUrls(obj.i) :  ProcedureReturn SpiderClearSpideredUrls(obj) :  EndProcedure
  Procedure.l ckCrawlNext(obj.i) :  ProcedureReturn SpiderCrawlNext(obj) :  EndProcedure
  Procedure.i ckCrawlNextAsync(obj.i) :  ProcedureReturn SpiderCrawlNextAsync(obj) :  EndProcedure
  Procedure.s ckFetchRobotsText(obj.i) :  ProcedureReturn PeekS(SpiderFetchRobotsText(obj)) :  EndProcedure
  Procedure.i ckFetchRobotsTextAsync(obj.i) :  ProcedureReturn SpiderFetchRobotsTextAsync(obj) :  EndProcedure
  Procedure.s ckGetAvoidPattern(obj.i, index.l) :  ProcedureReturn PeekS(SpiderGetAvoidPattern(obj, index)) :  EndProcedure
  Procedure.s ckGetBaseDomain(obj.i, domain.s) :  ProcedureReturn PeekS(SpiderGetBaseDomain(obj, domain)) :  EndProcedure
  Procedure.s ckGetFailedUrl(obj.i, index.l) :  ProcedureReturn PeekS(SpiderGetFailedUrl(obj, index)) :  EndProcedure
  Procedure.s ckGetOutboundLink(obj.i, index.l) :  ProcedureReturn PeekS(SpiderGetOutboundLink(obj, index)) :  EndProcedure
  Procedure.s ckGetSpideredUrl(obj.i, index.l) :  ProcedureReturn PeekS(SpiderGetSpideredUrl(obj, index)) :  EndProcedure
  Procedure.s ckGetUnspideredUrl(obj.i, index.l) :  ProcedureReturn PeekS(SpiderGetUnspideredUrl(obj, index)) :  EndProcedure
  Procedure.s ckGetUrlDomain(obj.i, url.s) :  ProcedureReturn PeekS(SpiderGetUrlDomain(obj, url)) :  EndProcedure
  Procedure ckInitialize(obj.i, domain.s) :  ProcedureReturn SpiderInitialize(obj, domain) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn SpiderLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckRecrawlLast(obj.i) :  ProcedureReturn SpiderRecrawlLast(obj) :  EndProcedure
  Procedure.i ckRecrawlLastAsync(obj.i) :  ProcedureReturn SpiderRecrawlLastAsync(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SpiderSaveLastError(obj, path) :  EndProcedure
  Procedure ckSkipUnspidered(obj.i, index.l) :  ProcedureReturn SpiderSkipUnspidered(obj, index) :  EndProcedure
  Procedure ckSleepMs(obj.i, numMilliseconds.l) :  ProcedureReturn SpiderSleepMs(obj, numMilliseconds) :  EndProcedure
EndModule

