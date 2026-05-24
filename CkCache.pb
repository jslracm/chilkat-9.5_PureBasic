DeclareModule CkCache
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.s ckLastEtagFetched(obj.i)
  Declare.s ckLastExpirationFetchedStr(obj.i)
  Declare.l ckLastHitExpired(obj.i)
  Declare.s ckLastKeyFetched(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLevel(obj.i)
  Declare setCkLevel(obj.i, value.l)
  Declare.l ckNumRoots(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckAddRoot(obj.i, path.s)
  Declare.l ckDeleteAll(obj.i)
  Declare.l ckDeleteAllExpired(obj.i)
  Declare.l ckDeleteFromCache(obj.i, key.s)
  Declare.l ckDeleteOlderDt(obj.i, dateTime.i)
  Declare.l ckDeleteOlderStr(obj.i, dateTimeStr.s)
  Declare.s ckFetchText(obj.i, key.s)
  Declare.s ckGetEtag(obj.i, key.s)
  Declare.i ckGetExpirationDt(obj.i, key.s)
  Declare.s ckGetExpirationStr(obj.i, url.s)
  Declare.s ckGetFilename(obj.i, key.s)
  Declare.s ckGetRoot(obj.i, index.l)
  Declare.l ckIsCached(obj.i, key.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveTextDt(obj.i, key.s, expireDateTime.i, eTag.s, itemTextData.s)
  Declare.l ckSaveTextNoExpire(obj.i, key.s, eTag.s, itemTextData.s)
  Declare.l ckSaveTextStr(obj.i, key.s, expireDateTime.s, eTag.s, itemTextData.s)
  Declare.l ckUpdateExpirationDt(obj.i, key.s, expireDateTime.i)
  Declare.l ckUpdateExpirationStr(obj.i, key.s, expireDateTime.s)
EndDeclareModule

Module CkCache
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMsiss(obj.i, arg1.s, arg2.i, arg3.s, arg4.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkCacheCreate()
  PrototypeC CkCacheDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCacheLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCacheLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCacheLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCacheLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCacheLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CacheCreate.CkCacheCreate = GetFunction(CkCacheLibId,"CkCacheU_CreateW")
  Global CacheDispose.CkCacheDispose = GetFunction(CkCacheLibId,"CkCacheU_DisposeW")
  Global CacheDebugLogFilePath.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_debugLogFilePathW")
  Global CachePSetDebugLogFilePath.cksPropSet = GetFunction(CkCacheLibId,"CkCacheU_putDebugLogFilePathW")
  Global CacheLastErrorHtml.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastErrorHtmlW")
  Global CacheLastErrorText.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastErrorTextW")
  Global CacheLastErrorXml.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastErrorXmlW")
  Global CacheLastEtagFetched.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastEtagFetchedW")
  Global CacheLastExpirationFetchedStr.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastExpirationFetchedStrW")
  Global CacheLastHitExpired.cklPropGet = GetFunction(CkCacheLibId,"CkCacheU_getLastHitExpiredW")
  Global CacheLastKeyFetched.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_lastKeyFetchedW")
  Global CacheLastMethodSuccess.cklPropGet = GetFunction(CkCacheLibId,"CkCacheU_getLastMethodSuccessW")
  Global CachePSetLastMethodSuccess.cklPropSet = GetFunction(CkCacheLibId,"CkCacheU_putLastMethodSuccessW")
  Global CacheLevel.cklPropGet = GetFunction(CkCacheLibId,"CkCacheU_getLevelW")
  Global CachePSetLevel.cklPropSet = GetFunction(CkCacheLibId,"CkCacheU_putLevelW")
  Global CacheNumRoots.cklPropGet = GetFunction(CkCacheLibId,"CkCacheU_getNumRootsW")
  Global CacheVerboseLogging.cklPropGet = GetFunction(CkCacheLibId,"CkCacheU_getVerboseLoggingW")
  Global CachePSetVerboseLogging.cklPropSet = GetFunction(CkCacheLibId,"CkCacheU_putVerboseLoggingW")
  Global CacheVersion.cksPropGet = GetFunction(CkCacheLibId,"CkCacheU_versionW")
  Global CacheAddRoot.ckvMs = GetFunction(CkCacheLibId,"CkCacheU_AddRootW")
  Global CacheDeleteAll.cklM = GetFunction(CkCacheLibId,"CkCacheU_DeleteAllW")
  Global CacheDeleteAllExpired.cklM = GetFunction(CkCacheLibId,"CkCacheU_DeleteAllExpiredW")
  Global CacheDeleteFromCache.cklMs = GetFunction(CkCacheLibId,"CkCacheU_DeleteFromCacheW")
  Global CacheDeleteOlderDt.cklMi = GetFunction(CkCacheLibId,"CkCacheU_DeleteOlderDtW")
  Global CacheDeleteOlderStr.cklMs = GetFunction(CkCacheLibId,"CkCacheU_DeleteOlderStrW")
  Global CacheFetchText.cklMs = GetFunction(CkCacheLibId,"CkCacheU_fetchTextW")
  Global CacheGetEtag.cklMs = GetFunction(CkCacheLibId,"CkCacheU_getEtagW")
  Global CacheGetExpirationDt.ckiMs = GetFunction(CkCacheLibId,"CkCacheU_GetExpirationDtW")
  Global CacheGetExpirationStr.cklMs = GetFunction(CkCacheLibId,"CkCacheU_getExpirationStrW")
  Global CacheGetFilename.cklMs = GetFunction(CkCacheLibId,"CkCacheU_getFilenameW")
  Global CacheGetRoot.cklMl = GetFunction(CkCacheLibId,"CkCacheU_getRootW")
  Global CacheIsCached.cklMs = GetFunction(CkCacheLibId,"CkCacheU_IsCachedW")
  Global CacheSaveLastError.cklMs = GetFunction(CkCacheLibId,"CkCacheU_SaveLastErrorW")
  Global CacheSaveTextDt.cklMsiss = GetFunction(CkCacheLibId,"CkCacheU_SaveTextDtW")
  Global CacheSaveTextNoExpire.cklMsss = GetFunction(CkCacheLibId,"CkCacheU_SaveTextNoExpireW")
  Global CacheSaveTextStr.cklMssss = GetFunction(CkCacheLibId,"CkCacheU_SaveTextStrW")
  Global CacheUpdateExpirationDt.cklMsi = GetFunction(CkCacheLibId,"CkCacheU_UpdateExpirationDtW")
  Global CacheUpdateExpirationStr.cklMss = GetFunction(CkCacheLibId,"CkCacheU_UpdateExpirationStrW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CacheCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CacheDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CacheDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CachePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CacheLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CacheLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CacheLastErrorXml(obj)) : EndProcedure
  Procedure.s ckLastEtagFetched(obj.i) : ProcedureReturn PeekS(CacheLastEtagFetched(obj)) : EndProcedure
  Procedure.s ckLastExpirationFetchedStr(obj.i) : ProcedureReturn PeekS(CacheLastExpirationFetchedStr(obj)) : EndProcedure
  Procedure.l ckLastHitExpired(obj.i) : ProcedureReturn CacheLastHitExpired(obj) : EndProcedure
  Procedure.s ckLastKeyFetched(obj.i) : ProcedureReturn PeekS(CacheLastKeyFetched(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CacheLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CachePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLevel(obj.i) : ProcedureReturn CacheLevel(obj) : EndProcedure
  Procedure setCkLevel(obj.i, value.l) : ProcedureReturn CachePSetLevel(obj,value) : EndProcedure
  Procedure.l ckNumRoots(obj.i) : ProcedureReturn CacheNumRoots(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CacheVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CachePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CacheVersion(obj)) : EndProcedure
  Procedure ckAddRoot(obj.i, path.s) :  ProcedureReturn CacheAddRoot(obj, path) :  EndProcedure
  Procedure.l ckDeleteAll(obj.i) :  ProcedureReturn CacheDeleteAll(obj) :  EndProcedure
  Procedure.l ckDeleteAllExpired(obj.i) :  ProcedureReturn CacheDeleteAllExpired(obj) :  EndProcedure
  Procedure.l ckDeleteFromCache(obj.i, key.s) :  ProcedureReturn CacheDeleteFromCache(obj, key) :  EndProcedure
  Procedure.l ckDeleteOlderDt(obj.i, dateTime.i) :  ProcedureReturn CacheDeleteOlderDt(obj, dateTime) :  EndProcedure
  Procedure.l ckDeleteOlderStr(obj.i, dateTimeStr.s) :  ProcedureReturn CacheDeleteOlderStr(obj, dateTimeStr) :  EndProcedure
  Procedure.s ckFetchText(obj.i, key.s) :  ProcedureReturn PeekS(CacheFetchText(obj, key)) :  EndProcedure
  Procedure.s ckGetEtag(obj.i, key.s) :  ProcedureReturn PeekS(CacheGetEtag(obj, key)) :  EndProcedure
  Procedure.i ckGetExpirationDt(obj.i, key.s) :  ProcedureReturn CacheGetExpirationDt(obj, key) :  EndProcedure
  Procedure.s ckGetExpirationStr(obj.i, url.s) :  ProcedureReturn PeekS(CacheGetExpirationStr(obj, url)) :  EndProcedure
  Procedure.s ckGetFilename(obj.i, key.s) :  ProcedureReturn PeekS(CacheGetFilename(obj, key)) :  EndProcedure
  Procedure.s ckGetRoot(obj.i, index.l) :  ProcedureReturn PeekS(CacheGetRoot(obj, index)) :  EndProcedure
  Procedure.l ckIsCached(obj.i, key.s) :  ProcedureReturn CacheIsCached(obj, key) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CacheSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveTextDt(obj.i, key.s, expireDateTime.i, eTag.s, itemTextData.s) :  ProcedureReturn CacheSaveTextDt(obj, key, expireDateTime, eTag, itemTextData) :  EndProcedure
  Procedure.l ckSaveTextNoExpire(obj.i, key.s, eTag.s, itemTextData.s) :  ProcedureReturn CacheSaveTextNoExpire(obj, key, eTag, itemTextData) :  EndProcedure
  Procedure.l ckSaveTextStr(obj.i, key.s, expireDateTime.s, eTag.s, itemTextData.s) :  ProcedureReturn CacheSaveTextStr(obj, key, expireDateTime, eTag, itemTextData) :  EndProcedure
  Procedure.l ckUpdateExpirationDt(obj.i, key.s, expireDateTime.i) :  ProcedureReturn CacheUpdateExpirationDt(obj, key, expireDateTime) :  EndProcedure
  Procedure.l ckUpdateExpirationStr(obj.i, key.s, expireDateTime.s) :  ProcedureReturn CacheUpdateExpirationStr(obj, key, expireDateTime) :  EndProcedure
EndModule

