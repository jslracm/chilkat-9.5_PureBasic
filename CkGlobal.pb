DeclareModule CkGlobal
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAnsiCodePage(obj.i)
  Declare setCkAnsiCodePage(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDefaultNtlmVersion(obj.i)
  Declare setCkDefaultNtlmVersion(obj.i, value.l)
  Declare.l ckDefaultUtf8(obj.i)
  Declare setCkDefaultUtf8(obj.i, value.l)
  Declare.l ckDnsTimeToLive(obj.i)
  Declare setCkDnsTimeToLive(obj.i, value.l)
  Declare.l ckEnableDnsCaching(obj.i)
  Declare setCkEnableDnsCaching(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckMaxThreads(obj.i)
  Declare setCkMaxThreads(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.s ckThreadPoolLogPath(obj.i)
  Declare setCkThreadPoolLogPath(obj.i, value.s)
  Declare.l ckUnlockStatus(obj.i)
  Declare.l ckUsePkcsConstructedEncoding(obj.i)
  Declare setCkUsePkcsConstructedEncoding(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.l ckVerboseTls(obj.i)
  Declare setCkVerboseTls(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckDnsClearCache(obj.i)
  Declare.l ckFinalizeThreadPool(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckThreadPoolLogLine(obj.i, str.s)
  Declare.l ckUnlockBundle(obj.i, bundleUnlockCode.s)
EndDeclareModule

Module CkGlobal
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkGlobalCreate()
  PrototypeC CkGlobalDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkGlobalLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkGlobalLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkGlobalLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkGlobalLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkGlobalLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global GlobalCreate.CkGlobalCreate = GetFunction(CkGlobalLibId,"CkGlobalU_CreateW")
  Global GlobalDispose.CkGlobalDispose = GetFunction(CkGlobalLibId,"CkGlobalU_DisposeW")
  Global GlobalAnsiCodePage.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getAnsiCodePageW")
  Global GlobalPSetAnsiCodePage.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putAnsiCodePageW")
  Global GlobalDebugLogFilePath.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_debugLogFilePathW")
  Global GlobalPSetDebugLogFilePath.cksPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putDebugLogFilePathW")
  Global GlobalDefaultNtlmVersion.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getDefaultNtlmVersionW")
  Global GlobalPSetDefaultNtlmVersion.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putDefaultNtlmVersionW")
  Global GlobalDefaultUtf8.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getDefaultUtf8W")
  Global GlobalPSetDefaultUtf8.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putDefaultUtf8W")
  Global GlobalDnsTimeToLive.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getDnsTimeToLiveW")
  Global GlobalPSetDnsTimeToLive.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putDnsTimeToLiveW")
  Global GlobalEnableDnsCaching.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getEnableDnsCachingW")
  Global GlobalPSetEnableDnsCaching.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putEnableDnsCachingW")
  Global GlobalLastErrorHtml.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_lastErrorHtmlW")
  Global GlobalLastErrorText.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_lastErrorTextW")
  Global GlobalLastErrorXml.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_lastErrorXmlW")
  Global GlobalLastMethodSuccess.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getLastMethodSuccessW")
  Global GlobalPSetLastMethodSuccess.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putLastMethodSuccessW")
  Global GlobalMaxThreads.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getMaxThreadsW")
  Global GlobalPSetMaxThreads.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putMaxThreadsW")
  Global GlobalPreferIpv6.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getPreferIpv6W")
  Global GlobalPSetPreferIpv6.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putPreferIpv6W")
  Global GlobalThreadPoolLogPath.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_threadPoolLogPathW")
  Global GlobalPSetThreadPoolLogPath.cksPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putThreadPoolLogPathW")
  Global GlobalUnlockStatus.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getUnlockStatusW")
  Global GlobalUsePkcsConstructedEncoding.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getUsePkcsConstructedEncodingW")
  Global GlobalPSetUsePkcsConstructedEncoding.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putUsePkcsConstructedEncodingW")
  Global GlobalVerboseLogging.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getVerboseLoggingW")
  Global GlobalPSetVerboseLogging.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putVerboseLoggingW")
  Global GlobalVerboseTls.cklPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_getVerboseTlsW")
  Global GlobalPSetVerboseTls.cklPropSet = GetFunction(CkGlobalLibId,"CkGlobalU_putVerboseTlsW")
  Global GlobalVersion.cksPropGet = GetFunction(CkGlobalLibId,"CkGlobalU_versionW")
  Global GlobalDnsClearCache.cklM = GetFunction(CkGlobalLibId,"CkGlobalU_DnsClearCacheW")
  Global GlobalFinalizeThreadPool.cklM = GetFunction(CkGlobalLibId,"CkGlobalU_FinalizeThreadPoolW")
  Global GlobalSaveLastError.cklMs = GetFunction(CkGlobalLibId,"CkGlobalU_SaveLastErrorW")
  Global GlobalThreadPoolLogLine.cklMs = GetFunction(CkGlobalLibId,"CkGlobalU_ThreadPoolLogLineW")
  Global GlobalUnlockBundle.cklMs = GetFunction(CkGlobalLibId,"CkGlobalU_UnlockBundleW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn GlobalCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn GlobalDispose(obj) : EndProcedure
  Procedure.l ckAnsiCodePage(obj.i) : ProcedureReturn GlobalAnsiCodePage(obj) : EndProcedure
  Procedure setCkAnsiCodePage(obj.i, value.l) : ProcedureReturn GlobalPSetAnsiCodePage(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(GlobalDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn GlobalPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDefaultNtlmVersion(obj.i) : ProcedureReturn GlobalDefaultNtlmVersion(obj) : EndProcedure
  Procedure setCkDefaultNtlmVersion(obj.i, value.l) : ProcedureReturn GlobalPSetDefaultNtlmVersion(obj,value) : EndProcedure
  Procedure.l ckDefaultUtf8(obj.i) : ProcedureReturn GlobalDefaultUtf8(obj) : EndProcedure
  Procedure setCkDefaultUtf8(obj.i, value.l) : ProcedureReturn GlobalPSetDefaultUtf8(obj,value) : EndProcedure
  Procedure.l ckDnsTimeToLive(obj.i) : ProcedureReturn GlobalDnsTimeToLive(obj) : EndProcedure
  Procedure setCkDnsTimeToLive(obj.i, value.l) : ProcedureReturn GlobalPSetDnsTimeToLive(obj,value) : EndProcedure
  Procedure.l ckEnableDnsCaching(obj.i) : ProcedureReturn GlobalEnableDnsCaching(obj) : EndProcedure
  Procedure setCkEnableDnsCaching(obj.i, value.l) : ProcedureReturn GlobalPSetEnableDnsCaching(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(GlobalLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(GlobalLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(GlobalLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn GlobalLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn GlobalPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMaxThreads(obj.i) : ProcedureReturn GlobalMaxThreads(obj) : EndProcedure
  Procedure setCkMaxThreads(obj.i, value.l) : ProcedureReturn GlobalPSetMaxThreads(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn GlobalPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn GlobalPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.s ckThreadPoolLogPath(obj.i) : ProcedureReturn PeekS(GlobalThreadPoolLogPath(obj)) : EndProcedure
  Procedure setCkThreadPoolLogPath(obj.i, value.s) : ProcedureReturn GlobalPSetThreadPoolLogPath(obj,value) : EndProcedure
  Procedure.l ckUnlockStatus(obj.i) : ProcedureReturn GlobalUnlockStatus(obj) : EndProcedure
  Procedure.l ckUsePkcsConstructedEncoding(obj.i) : ProcedureReturn GlobalUsePkcsConstructedEncoding(obj) : EndProcedure
  Procedure setCkUsePkcsConstructedEncoding(obj.i, value.l) : ProcedureReturn GlobalPSetUsePkcsConstructedEncoding(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn GlobalVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn GlobalPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.l ckVerboseTls(obj.i) : ProcedureReturn GlobalVerboseTls(obj) : EndProcedure
  Procedure setCkVerboseTls(obj.i, value.l) : ProcedureReturn GlobalPSetVerboseTls(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(GlobalVersion(obj)) : EndProcedure
  Procedure.l ckDnsClearCache(obj.i) :  ProcedureReturn GlobalDnsClearCache(obj) :  EndProcedure
  Procedure.l ckFinalizeThreadPool(obj.i) :  ProcedureReturn GlobalFinalizeThreadPool(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn GlobalSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckThreadPoolLogLine(obj.i, str.s) :  ProcedureReturn GlobalThreadPoolLogLine(obj, str) :  EndProcedure
  Procedure.l ckUnlockBundle(obj.i, bundleUnlockCode.s) :  ProcedureReturn GlobalUnlockBundle(obj, bundleUnlockCode) :  EndProcedure
EndModule

