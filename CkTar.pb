DeclareModule CkTar
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCaptureXmlListing(obj.i)
  Declare setCkCaptureXmlListing(obj.i, value.l)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDirMode(obj.i)
  Declare setCkDirMode(obj.i, value.l)
  Declare.s ckDirPrefix(obj.i)
  Declare setCkDirPrefix(obj.i, value.s)
  Declare.l ckFileMode(obj.i)
  Declare setCkFileMode(obj.i, value.l)
  Declare.l ckGroupId(obj.i)
  Declare setCkGroupId(obj.i, value.l)
  Declare.s ckGroupName(obj.i)
  Declare setCkGroupName(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckMatchCaseSensitive(obj.i)
  Declare setCkMatchCaseSensitive(obj.i, value.l)
  Declare.s ckMustMatch(obj.i)
  Declare setCkMustMatch(obj.i, value.s)
  Declare.s ckMustNotMatch(obj.i)
  Declare setCkMustNotMatch(obj.i, value.s)
  Declare.l ckNoAbsolutePaths(obj.i)
  Declare setCkNoAbsolutePaths(obj.i, value.l)
  Declare.l ckNumDirRoots(obj.i)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckScriptFileMode(obj.i)
  Declare setCkScriptFileMode(obj.i, value.l)
  Declare.l ckSuppressOutput(obj.i)
  Declare setCkSuppressOutput(obj.i, value.l)
  Declare.l ckUntarCaseSensitive(obj.i)
  Declare setCkUntarCaseSensitive(obj.i, value.l)
  Declare.l ckUntarDebugLog(obj.i)
  Declare setCkUntarDebugLog(obj.i, value.l)
  Declare.l ckUntarDiscardPaths(obj.i)
  Declare setCkUntarDiscardPaths(obj.i, value.l)
  Declare.s ckUntarFromDir(obj.i)
  Declare setCkUntarFromDir(obj.i, value.s)
  Declare.s ckUntarMatchPattern(obj.i)
  Declare setCkUntarMatchPattern(obj.i, value.s)
  Declare.l ckUntarMaxCount(obj.i)
  Declare setCkUntarMaxCount(obj.i, value.l)
  Declare.l ckUserId(obj.i)
  Declare setCkUserId(obj.i, value.l)
  Declare.s ckUserName(obj.i)
  Declare setCkUserName(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckWriteFormat(obj.i)
  Declare setCkWriteFormat(obj.i, value.s)
  Declare.s ckXmlListing(obj.i)
  Declare setCkXmlListing(obj.i, value.s)
  Declare.l ckAddDirRoot(obj.i, dirPath.s)
  Declare.l ckAddDirRoot2(obj.i, rootPrefix.s, rootPath.s)
  Declare.l ckAddFile(obj.i, path.s)
  Declare.l ckAddFile2(obj.i, filePath.s, pathWithinTar.s)
  Declare.l ckClearDirRootsAndFiles(obj.i)
  Declare.l ckCreateDeb(obj.i, controlPath.s, dataPath.s, debPath.s)
  Declare.s ckGetDirRoot(obj.i, index.l)
  Declare.s ckListXml(obj.i, tarPath.s)
  Declare.i ckListXmlAsync(obj.i, tarPath.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUntar(obj.i, tarPath.s)
  Declare.i ckUntarAsync(obj.i, tarPath.s)
  Declare.l ckUntarBz2(obj.i, tarPath.s)
  Declare.i ckUntarBz2Async(obj.i, tarPath.s)
  Declare.l ckUntarFirstMatchingToBd(obj.i, tarPath.s, matchPattern.s, bd.i)
  Declare.l ckUntarGz(obj.i, tarPath.s)
  Declare.i ckUntarGzAsync(obj.i, tarPath.s)
  Declare.l ckUntarZ(obj.i, tarPath.s)
  Declare.i ckUntarZAsync(obj.i, tarPath.s)
  Declare.l ckVerifyTar(obj.i, tarPath.s)
  Declare.i ckVerifyTarAsync(obj.i, tarPath.s)
  Declare.l ckWriteTar(obj.i, tarPath.s)
  Declare.i ckWriteTarAsync(obj.i, tarPath.s)
  Declare.l ckWriteTarBz2(obj.i, bz2Path.s)
  Declare.i ckWriteTarBz2Async(obj.i, bz2Path.s)
  Declare.l ckWriteTarGz(obj.i, gzPath.s)
  Declare.i ckWriteTarGzAsync(obj.i, gzPath.s)
EndDeclareModule

Module CkTar
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkTarCreate()
  PrototypeC CkTarDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTarLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkTarLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkTarLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTarLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkTarLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global TarCreate.CkTarCreate = GetFunction(CkTarLibId,"CkTarU_CreateW")
  Global TarDispose.CkTarDispose = GetFunction(CkTarLibId,"CkTarU_DisposeW")
  Global TarCaptureXmlListing.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getCaptureXmlListingW")
  Global TarPSetCaptureXmlListing.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putCaptureXmlListingW")
  Global TarCharset.cksPropGet = GetFunction(CkTarLibId,"CkTarU_charsetW")
  Global TarPSetCharset.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putCharsetW")
  Global TarDebugLogFilePath.cksPropGet = GetFunction(CkTarLibId,"CkTarU_debugLogFilePathW")
  Global TarPSetDebugLogFilePath.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putDebugLogFilePathW")
  Global TarDirMode.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getDirModeW")
  Global TarPSetDirMode.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putDirModeW")
  Global TarDirPrefix.cksPropGet = GetFunction(CkTarLibId,"CkTarU_dirPrefixW")
  Global TarPSetDirPrefix.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putDirPrefixW")
  Global TarFileMode.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getFileModeW")
  Global TarPSetFileMode.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putFileModeW")
  Global TarGroupId.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getGroupIdW")
  Global TarPSetGroupId.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putGroupIdW")
  Global TarGroupName.cksPropGet = GetFunction(CkTarLibId,"CkTarU_groupNameW")
  Global TarPSetGroupName.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putGroupNameW")
  Global TarHeartbeatMs.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getHeartbeatMsW")
  Global TarPSetHeartbeatMs.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putHeartbeatMsW")
  Global TarLastErrorHtml.cksPropGet = GetFunction(CkTarLibId,"CkTarU_lastErrorHtmlW")
  Global TarLastErrorText.cksPropGet = GetFunction(CkTarLibId,"CkTarU_lastErrorTextW")
  Global TarLastErrorXml.cksPropGet = GetFunction(CkTarLibId,"CkTarU_lastErrorXmlW")
  Global TarLastMethodSuccess.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getLastMethodSuccessW")
  Global TarPSetLastMethodSuccess.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putLastMethodSuccessW")
  Global TarMatchCaseSensitive.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getMatchCaseSensitiveW")
  Global TarPSetMatchCaseSensitive.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putMatchCaseSensitiveW")
  Global TarMustMatch.cksPropGet = GetFunction(CkTarLibId,"CkTarU_mustMatchW")
  Global TarPSetMustMatch.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putMustMatchW")
  Global TarMustNotMatch.cksPropGet = GetFunction(CkTarLibId,"CkTarU_mustNotMatchW")
  Global TarPSetMustNotMatch.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putMustNotMatchW")
  Global TarNoAbsolutePaths.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getNoAbsolutePathsW")
  Global TarPSetNoAbsolutePaths.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putNoAbsolutePathsW")
  Global TarNumDirRoots.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getNumDirRootsW")
  Global TarPercentDoneScale.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getPercentDoneScaleW")
  Global TarPSetPercentDoneScale.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putPercentDoneScaleW")
  Global TarScriptFileMode.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getScriptFileModeW")
  Global TarPSetScriptFileMode.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putScriptFileModeW")
  Global TarSuppressOutput.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getSuppressOutputW")
  Global TarPSetSuppressOutput.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putSuppressOutputW")
  Global TarUntarCaseSensitive.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getUntarCaseSensitiveW")
  Global TarPSetUntarCaseSensitive.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarCaseSensitiveW")
  Global TarUntarDebugLog.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getUntarDebugLogW")
  Global TarPSetUntarDebugLog.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarDebugLogW")
  Global TarUntarDiscardPaths.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getUntarDiscardPathsW")
  Global TarPSetUntarDiscardPaths.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarDiscardPathsW")
  Global TarUntarFromDir.cksPropGet = GetFunction(CkTarLibId,"CkTarU_untarFromDirW")
  Global TarPSetUntarFromDir.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarFromDirW")
  Global TarUntarMatchPattern.cksPropGet = GetFunction(CkTarLibId,"CkTarU_untarMatchPatternW")
  Global TarPSetUntarMatchPattern.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarMatchPatternW")
  Global TarUntarMaxCount.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getUntarMaxCountW")
  Global TarPSetUntarMaxCount.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putUntarMaxCountW")
  Global TarUserId.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getUserIdW")
  Global TarPSetUserId.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putUserIdW")
  Global TarUserName.cksPropGet = GetFunction(CkTarLibId,"CkTarU_userNameW")
  Global TarPSetUserName.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putUserNameW")
  Global TarVerboseLogging.cklPropGet = GetFunction(CkTarLibId,"CkTarU_getVerboseLoggingW")
  Global TarPSetVerboseLogging.cklPropSet = GetFunction(CkTarLibId,"CkTarU_putVerboseLoggingW")
  Global TarVersion.cksPropGet = GetFunction(CkTarLibId,"CkTarU_versionW")
  Global TarWriteFormat.cksPropGet = GetFunction(CkTarLibId,"CkTarU_writeFormatW")
  Global TarPSetWriteFormat.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putWriteFormatW")
  Global TarXmlListing.cksPropGet = GetFunction(CkTarLibId,"CkTarU_xmlListingW")
  Global TarPSetXmlListing.cksPropSet = GetFunction(CkTarLibId,"CkTarU_putXmlListingW")
  Global TarAddDirRoot.cklMs = GetFunction(CkTarLibId,"CkTarU_AddDirRootW")
  Global TarAddDirRoot2.cklMss = GetFunction(CkTarLibId,"CkTarU_AddDirRoot2W")
  Global TarAddFile.cklMs = GetFunction(CkTarLibId,"CkTarU_AddFileW")
  Global TarAddFile2.cklMss = GetFunction(CkTarLibId,"CkTarU_AddFile2W")
  Global TarClearDirRootsAndFiles.cklM = GetFunction(CkTarLibId,"CkTarU_ClearDirRootsAndFilesW")
  Global TarCreateDeb.cklMsss = GetFunction(CkTarLibId,"CkTarU_CreateDebW")
  Global TarGetDirRoot.cklMl = GetFunction(CkTarLibId,"CkTarU_getDirRootW")
  Global TarListXml.cklMs = GetFunction(CkTarLibId,"CkTarU_listXmlW")
  Global TarListXmlAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_ListXmlAsyncW")
  Global TarLoadTaskCaller.cklMi = GetFunction(CkTarLibId,"CkTarU_LoadTaskCallerW")
  Global TarSaveLastError.cklMs = GetFunction(CkTarLibId,"CkTarU_SaveLastErrorW")
  Global TarUnlockComponent.cklMs = GetFunction(CkTarLibId,"CkTarU_UnlockComponentW")
  Global TarUntar.cklMs = GetFunction(CkTarLibId,"CkTarU_UntarW")
  Global TarUntarAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_UntarAsyncW")
  Global TarUntarBz2.cklMs = GetFunction(CkTarLibId,"CkTarU_UntarBz2W")
  Global TarUntarBz2Async.ckiMs = GetFunction(CkTarLibId,"CkTarU_UntarBz2AsyncW")
  Global TarUntarFirstMatchingToBd.cklMssi = GetFunction(CkTarLibId,"CkTarU_UntarFirstMatchingToBdW")
  Global TarUntarGz.cklMs = GetFunction(CkTarLibId,"CkTarU_UntarGzW")
  Global TarUntarGzAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_UntarGzAsyncW")
  Global TarUntarZ.cklMs = GetFunction(CkTarLibId,"CkTarU_UntarZW")
  Global TarUntarZAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_UntarZAsyncW")
  Global TarVerifyTar.cklMs = GetFunction(CkTarLibId,"CkTarU_VerifyTarW")
  Global TarVerifyTarAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_VerifyTarAsyncW")
  Global TarWriteTar.cklMs = GetFunction(CkTarLibId,"CkTarU_WriteTarW")
  Global TarWriteTarAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_WriteTarAsyncW")
  Global TarWriteTarBz2.cklMs = GetFunction(CkTarLibId,"CkTarU_WriteTarBz2W")
  Global TarWriteTarBz2Async.ckiMs = GetFunction(CkTarLibId,"CkTarU_WriteTarBz2AsyncW")
  Global TarWriteTarGz.cklMs = GetFunction(CkTarLibId,"CkTarU_WriteTarGzW")
  Global TarWriteTarGzAsync.ckiMs = GetFunction(CkTarLibId,"CkTarU_WriteTarGzAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn TarCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn TarDispose(obj) : EndProcedure
  Procedure.l ckCaptureXmlListing(obj.i) : ProcedureReturn TarCaptureXmlListing(obj) : EndProcedure
  Procedure setCkCaptureXmlListing(obj.i, value.l) : ProcedureReturn TarPSetCaptureXmlListing(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(TarCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn TarPSetCharset(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(TarDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn TarPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDirMode(obj.i) : ProcedureReturn TarDirMode(obj) : EndProcedure
  Procedure setCkDirMode(obj.i, value.l) : ProcedureReturn TarPSetDirMode(obj,value) : EndProcedure
  Procedure.s ckDirPrefix(obj.i) : ProcedureReturn PeekS(TarDirPrefix(obj)) : EndProcedure
  Procedure setCkDirPrefix(obj.i, value.s) : ProcedureReturn TarPSetDirPrefix(obj,value) : EndProcedure
  Procedure.l ckFileMode(obj.i) : ProcedureReturn TarFileMode(obj) : EndProcedure
  Procedure setCkFileMode(obj.i, value.l) : ProcedureReturn TarPSetFileMode(obj,value) : EndProcedure
  Procedure.l ckGroupId(obj.i) : ProcedureReturn TarGroupId(obj) : EndProcedure
  Procedure setCkGroupId(obj.i, value.l) : ProcedureReturn TarPSetGroupId(obj,value) : EndProcedure
  Procedure.s ckGroupName(obj.i) : ProcedureReturn PeekS(TarGroupName(obj)) : EndProcedure
  Procedure setCkGroupName(obj.i, value.s) : ProcedureReturn TarPSetGroupName(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn TarHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn TarPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(TarLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(TarLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(TarLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn TarLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn TarPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMatchCaseSensitive(obj.i) : ProcedureReturn TarMatchCaseSensitive(obj) : EndProcedure
  Procedure setCkMatchCaseSensitive(obj.i, value.l) : ProcedureReturn TarPSetMatchCaseSensitive(obj,value) : EndProcedure
  Procedure.s ckMustMatch(obj.i) : ProcedureReturn PeekS(TarMustMatch(obj)) : EndProcedure
  Procedure setCkMustMatch(obj.i, value.s) : ProcedureReturn TarPSetMustMatch(obj,value) : EndProcedure
  Procedure.s ckMustNotMatch(obj.i) : ProcedureReturn PeekS(TarMustNotMatch(obj)) : EndProcedure
  Procedure setCkMustNotMatch(obj.i, value.s) : ProcedureReturn TarPSetMustNotMatch(obj,value) : EndProcedure
  Procedure.l ckNoAbsolutePaths(obj.i) : ProcedureReturn TarNoAbsolutePaths(obj) : EndProcedure
  Procedure setCkNoAbsolutePaths(obj.i, value.l) : ProcedureReturn TarPSetNoAbsolutePaths(obj,value) : EndProcedure
  Procedure.l ckNumDirRoots(obj.i) : ProcedureReturn TarNumDirRoots(obj) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn TarPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn TarPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckScriptFileMode(obj.i) : ProcedureReturn TarScriptFileMode(obj) : EndProcedure
  Procedure setCkScriptFileMode(obj.i, value.l) : ProcedureReturn TarPSetScriptFileMode(obj,value) : EndProcedure
  Procedure.l ckSuppressOutput(obj.i) : ProcedureReturn TarSuppressOutput(obj) : EndProcedure
  Procedure setCkSuppressOutput(obj.i, value.l) : ProcedureReturn TarPSetSuppressOutput(obj,value) : EndProcedure
  Procedure.l ckUntarCaseSensitive(obj.i) : ProcedureReturn TarUntarCaseSensitive(obj) : EndProcedure
  Procedure setCkUntarCaseSensitive(obj.i, value.l) : ProcedureReturn TarPSetUntarCaseSensitive(obj,value) : EndProcedure
  Procedure.l ckUntarDebugLog(obj.i) : ProcedureReturn TarUntarDebugLog(obj) : EndProcedure
  Procedure setCkUntarDebugLog(obj.i, value.l) : ProcedureReturn TarPSetUntarDebugLog(obj,value) : EndProcedure
  Procedure.l ckUntarDiscardPaths(obj.i) : ProcedureReturn TarUntarDiscardPaths(obj) : EndProcedure
  Procedure setCkUntarDiscardPaths(obj.i, value.l) : ProcedureReturn TarPSetUntarDiscardPaths(obj,value) : EndProcedure
  Procedure.s ckUntarFromDir(obj.i) : ProcedureReturn PeekS(TarUntarFromDir(obj)) : EndProcedure
  Procedure setCkUntarFromDir(obj.i, value.s) : ProcedureReturn TarPSetUntarFromDir(obj,value) : EndProcedure
  Procedure.s ckUntarMatchPattern(obj.i) : ProcedureReturn PeekS(TarUntarMatchPattern(obj)) : EndProcedure
  Procedure setCkUntarMatchPattern(obj.i, value.s) : ProcedureReturn TarPSetUntarMatchPattern(obj,value) : EndProcedure
  Procedure.l ckUntarMaxCount(obj.i) : ProcedureReturn TarUntarMaxCount(obj) : EndProcedure
  Procedure setCkUntarMaxCount(obj.i, value.l) : ProcedureReturn TarPSetUntarMaxCount(obj,value) : EndProcedure
  Procedure.l ckUserId(obj.i) : ProcedureReturn TarUserId(obj) : EndProcedure
  Procedure setCkUserId(obj.i, value.l) : ProcedureReturn TarPSetUserId(obj,value) : EndProcedure
  Procedure.s ckUserName(obj.i) : ProcedureReturn PeekS(TarUserName(obj)) : EndProcedure
  Procedure setCkUserName(obj.i, value.s) : ProcedureReturn TarPSetUserName(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn TarVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn TarPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(TarVersion(obj)) : EndProcedure
  Procedure.s ckWriteFormat(obj.i) : ProcedureReturn PeekS(TarWriteFormat(obj)) : EndProcedure
  Procedure setCkWriteFormat(obj.i, value.s) : ProcedureReturn TarPSetWriteFormat(obj,value) : EndProcedure
  Procedure.s ckXmlListing(obj.i) : ProcedureReturn PeekS(TarXmlListing(obj)) : EndProcedure
  Procedure setCkXmlListing(obj.i, value.s) : ProcedureReturn TarPSetXmlListing(obj,value) : EndProcedure
  Procedure.l ckAddDirRoot(obj.i, dirPath.s) :  ProcedureReturn TarAddDirRoot(obj, dirPath) :  EndProcedure
  Procedure.l ckAddDirRoot2(obj.i, rootPrefix.s, rootPath.s) :  ProcedureReturn TarAddDirRoot2(obj, rootPrefix, rootPath) :  EndProcedure
  Procedure.l ckAddFile(obj.i, path.s) :  ProcedureReturn TarAddFile(obj, path) :  EndProcedure
  Procedure.l ckAddFile2(obj.i, filePath.s, pathWithinTar.s) :  ProcedureReturn TarAddFile2(obj, filePath, pathWithinTar) :  EndProcedure
  Procedure.l ckClearDirRootsAndFiles(obj.i) :  ProcedureReturn TarClearDirRootsAndFiles(obj) :  EndProcedure
  Procedure.l ckCreateDeb(obj.i, controlPath.s, dataPath.s, debPath.s) :  ProcedureReturn TarCreateDeb(obj, controlPath, dataPath, debPath) :  EndProcedure
  Procedure.s ckGetDirRoot(obj.i, index.l) :  ProcedureReturn PeekS(TarGetDirRoot(obj, index)) :  EndProcedure
  Procedure.s ckListXml(obj.i, tarPath.s) :  ProcedureReturn PeekS(TarListXml(obj, tarPath)) :  EndProcedure
  Procedure.i ckListXmlAsync(obj.i, tarPath.s) :  ProcedureReturn TarListXmlAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn TarLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn TarSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn TarUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUntar(obj.i, tarPath.s) :  ProcedureReturn TarUntar(obj, tarPath) :  EndProcedure
  Procedure.i ckUntarAsync(obj.i, tarPath.s) :  ProcedureReturn TarUntarAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckUntarBz2(obj.i, tarPath.s) :  ProcedureReturn TarUntarBz2(obj, tarPath) :  EndProcedure
  Procedure.i ckUntarBz2Async(obj.i, tarPath.s) :  ProcedureReturn TarUntarBz2Async(obj, tarPath) :  EndProcedure
  Procedure.l ckUntarFirstMatchingToBd(obj.i, tarPath.s, matchPattern.s, bd.i) :  ProcedureReturn TarUntarFirstMatchingToBd(obj, tarPath, matchPattern, bd) :  EndProcedure
  Procedure.l ckUntarGz(obj.i, tarPath.s) :  ProcedureReturn TarUntarGz(obj, tarPath) :  EndProcedure
  Procedure.i ckUntarGzAsync(obj.i, tarPath.s) :  ProcedureReturn TarUntarGzAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckUntarZ(obj.i, tarPath.s) :  ProcedureReturn TarUntarZ(obj, tarPath) :  EndProcedure
  Procedure.i ckUntarZAsync(obj.i, tarPath.s) :  ProcedureReturn TarUntarZAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckVerifyTar(obj.i, tarPath.s) :  ProcedureReturn TarVerifyTar(obj, tarPath) :  EndProcedure
  Procedure.i ckVerifyTarAsync(obj.i, tarPath.s) :  ProcedureReturn TarVerifyTarAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckWriteTar(obj.i, tarPath.s) :  ProcedureReturn TarWriteTar(obj, tarPath) :  EndProcedure
  Procedure.i ckWriteTarAsync(obj.i, tarPath.s) :  ProcedureReturn TarWriteTarAsync(obj, tarPath) :  EndProcedure
  Procedure.l ckWriteTarBz2(obj.i, bz2Path.s) :  ProcedureReturn TarWriteTarBz2(obj, bz2Path) :  EndProcedure
  Procedure.i ckWriteTarBz2Async(obj.i, bz2Path.s) :  ProcedureReturn TarWriteTarBz2Async(obj, bz2Path) :  EndProcedure
  Procedure.l ckWriteTarGz(obj.i, gzPath.s) :  ProcedureReturn TarWriteTarGz(obj, gzPath) :  EndProcedure
  Procedure.i ckWriteTarGzAsync(obj.i, gzPath.s) :  ProcedureReturn TarWriteTarGzAsync(obj, gzPath) :  EndProcedure
EndModule

