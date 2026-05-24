DeclareModule CkScp
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.s ckSendEnv(obj.i)
  Declare setCkSendEnv(obj.i, value.s)
  Declare.s ckSyncedFiles(obj.i)
  Declare setCkSyncedFiles(obj.i, value.s)
  Declare.s ckSyncMustMatch(obj.i)
  Declare setCkSyncMustMatch(obj.i, value.s)
  Declare.s ckSyncMustMatchDir(obj.i)
  Declare setCkSyncMustMatchDir(obj.i, value.s)
  Declare.s ckSyncMustNotMatch(obj.i)
  Declare setCkSyncMustNotMatch(obj.i, value.s)
  Declare.s ckSyncMustNotMatchDir(obj.i)
  Declare setCkSyncMustNotMatchDir(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.s ckUnixPermOverride(obj.i)
  Declare setCkUnixPermOverride(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckDownloadBd(obj.i, remotePath.s, bd.i)
  Declare.i ckDownloadBdAsync(obj.i, remotePath.s, bd.i)
  Declare.s ckDownloadBinaryEncoded(obj.i, remotePath.s, encoding.s)
  Declare.i ckDownloadBinaryEncodedAsync(obj.i, remotePath.s, encoding.s)
  Declare.l ckDownloadFile(obj.i, remotePath.s, localPath.s)
  Declare.i ckDownloadFileAsync(obj.i, remotePath.s, localPath.s)
  Declare.s ckDownloadString(obj.i, remotePath.s, charset.s)
  Declare.i ckDownloadStringAsync(obj.i, remotePath.s, charset.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSyncTreeDownload(obj.i, remoteRoot.s, localRoot.s, mode.l, bRecurse.l)
  Declare.i ckSyncTreeDownloadAsync(obj.i, remoteRoot.s, localRoot.s, mode.l, bRecurse.l)
  Declare.l ckSyncTreeUpload(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l)
  Declare.i ckSyncTreeUploadAsync(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l)
  Declare.l ckUploadBd(obj.i, remotePath.s, bd.i)
  Declare.i ckUploadBdAsync(obj.i, remotePath.s, bd.i)
  Declare.l ckUploadBinaryEncoded(obj.i, remotePath.s, encodedData.s, encoding.s)
  Declare.i ckUploadBinaryEncodedAsync(obj.i, remotePath.s, encodedData.s, encoding.s)
  Declare.l ckUploadFile(obj.i, localPath.s, remotePath.s)
  Declare.i ckUploadFileAsync(obj.i, localPath.s, remotePath.s)
  Declare.l ckUploadString(obj.i, remotePath.s, textData.s, charset.s)
  Declare.i ckUploadStringAsync(obj.i, remotePath.s, textData.s, charset.s)
  Declare.l ckUseSsh(obj.i, sshConnection.i)
EndDeclareModule

Module CkScp
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.i CkScpCreate()
  PrototypeC CkScpDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkScpLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkScpLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkScpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkScpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkScpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ScpCreate.CkScpCreate = GetFunction(CkScpLibId,"CkScpU_CreateW")
  Global ScpDispose.CkScpDispose = GetFunction(CkScpLibId,"CkScpU_DisposeW")
  Global ScpAbortCurrent.cklPropGet = GetFunction(CkScpLibId,"CkScpU_getAbortCurrentW")
  Global ScpPSetAbortCurrent.cklPropSet = GetFunction(CkScpLibId,"CkScpU_putAbortCurrentW")
  Global ScpDebugLogFilePath.cksPropGet = GetFunction(CkScpLibId,"CkScpU_debugLogFilePathW")
  Global ScpPSetDebugLogFilePath.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putDebugLogFilePathW")
  Global ScpHeartbeatMs.cklPropGet = GetFunction(CkScpLibId,"CkScpU_getHeartbeatMsW")
  Global ScpPSetHeartbeatMs.cklPropSet = GetFunction(CkScpLibId,"CkScpU_putHeartbeatMsW")
  Global ScpLastErrorHtml.cksPropGet = GetFunction(CkScpLibId,"CkScpU_lastErrorHtmlW")
  Global ScpLastErrorText.cksPropGet = GetFunction(CkScpLibId,"CkScpU_lastErrorTextW")
  Global ScpLastErrorXml.cksPropGet = GetFunction(CkScpLibId,"CkScpU_lastErrorXmlW")
  Global ScpLastMethodSuccess.cklPropGet = GetFunction(CkScpLibId,"CkScpU_getLastMethodSuccessW")
  Global ScpPSetLastMethodSuccess.cklPropSet = GetFunction(CkScpLibId,"CkScpU_putLastMethodSuccessW")
  Global ScpPercentDoneScale.cklPropGet = GetFunction(CkScpLibId,"CkScpU_getPercentDoneScaleW")
  Global ScpPSetPercentDoneScale.cklPropSet = GetFunction(CkScpLibId,"CkScpU_putPercentDoneScaleW")
  Global ScpSendEnv.cksPropGet = GetFunction(CkScpLibId,"CkScpU_sendEnvW")
  Global ScpPSetSendEnv.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSendEnvW")
  Global ScpSyncedFiles.cksPropGet = GetFunction(CkScpLibId,"CkScpU_syncedFilesW")
  Global ScpPSetSyncedFiles.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSyncedFilesW")
  Global ScpSyncMustMatch.cksPropGet = GetFunction(CkScpLibId,"CkScpU_syncMustMatchW")
  Global ScpPSetSyncMustMatch.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSyncMustMatchW")
  Global ScpSyncMustMatchDir.cksPropGet = GetFunction(CkScpLibId,"CkScpU_syncMustMatchDirW")
  Global ScpPSetSyncMustMatchDir.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSyncMustMatchDirW")
  Global ScpSyncMustNotMatch.cksPropGet = GetFunction(CkScpLibId,"CkScpU_syncMustNotMatchW")
  Global ScpPSetSyncMustNotMatch.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSyncMustNotMatchW")
  Global ScpSyncMustNotMatchDir.cksPropGet = GetFunction(CkScpLibId,"CkScpU_syncMustNotMatchDirW")
  Global ScpPSetSyncMustNotMatchDir.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putSyncMustNotMatchDirW")
  Global ScpUncommonOptions.cksPropGet = GetFunction(CkScpLibId,"CkScpU_uncommonOptionsW")
  Global ScpPSetUncommonOptions.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putUncommonOptionsW")
  Global ScpUnixPermOverride.cksPropGet = GetFunction(CkScpLibId,"CkScpU_unixPermOverrideW")
  Global ScpPSetUnixPermOverride.cksPropSet = GetFunction(CkScpLibId,"CkScpU_putUnixPermOverrideW")
  Global ScpVerboseLogging.cklPropGet = GetFunction(CkScpLibId,"CkScpU_getVerboseLoggingW")
  Global ScpPSetVerboseLogging.cklPropSet = GetFunction(CkScpLibId,"CkScpU_putVerboseLoggingW")
  Global ScpVersion.cksPropGet = GetFunction(CkScpLibId,"CkScpU_versionW")
  Global ScpDownloadBd.cklMsi = GetFunction(CkScpLibId,"CkScpU_DownloadBdW")
  Global ScpDownloadBdAsync.ckiMsi = GetFunction(CkScpLibId,"CkScpU_DownloadBdAsyncW")
  Global ScpDownloadBinaryEncoded.cklMss = GetFunction(CkScpLibId,"CkScpU_downloadBinaryEncodedW")
  Global ScpDownloadBinaryEncodedAsync.ckiMss = GetFunction(CkScpLibId,"CkScpU_DownloadBinaryEncodedAsyncW")
  Global ScpDownloadFile.cklMss = GetFunction(CkScpLibId,"CkScpU_DownloadFileW")
  Global ScpDownloadFileAsync.ckiMss = GetFunction(CkScpLibId,"CkScpU_DownloadFileAsyncW")
  Global ScpDownloadString.cklMss = GetFunction(CkScpLibId,"CkScpU_downloadStringW")
  Global ScpDownloadStringAsync.ckiMss = GetFunction(CkScpLibId,"CkScpU_DownloadStringAsyncW")
  Global ScpLoadTaskCaller.cklMi = GetFunction(CkScpLibId,"CkScpU_LoadTaskCallerW")
  Global ScpSaveLastError.cklMs = GetFunction(CkScpLibId,"CkScpU_SaveLastErrorW")
  Global ScpSyncTreeDownload.cklMssll = GetFunction(CkScpLibId,"CkScpU_SyncTreeDownloadW")
  Global ScpSyncTreeDownloadAsync.ckiMssll = GetFunction(CkScpLibId,"CkScpU_SyncTreeDownloadAsyncW")
  Global ScpSyncTreeUpload.cklMssll = GetFunction(CkScpLibId,"CkScpU_SyncTreeUploadW")
  Global ScpSyncTreeUploadAsync.ckiMssll = GetFunction(CkScpLibId,"CkScpU_SyncTreeUploadAsyncW")
  Global ScpUploadBd.cklMsi = GetFunction(CkScpLibId,"CkScpU_UploadBdW")
  Global ScpUploadBdAsync.ckiMsi = GetFunction(CkScpLibId,"CkScpU_UploadBdAsyncW")
  Global ScpUploadBinaryEncoded.cklMsss = GetFunction(CkScpLibId,"CkScpU_UploadBinaryEncodedW")
  Global ScpUploadBinaryEncodedAsync.ckiMsss = GetFunction(CkScpLibId,"CkScpU_UploadBinaryEncodedAsyncW")
  Global ScpUploadFile.cklMss = GetFunction(CkScpLibId,"CkScpU_UploadFileW")
  Global ScpUploadFileAsync.ckiMss = GetFunction(CkScpLibId,"CkScpU_UploadFileAsyncW")
  Global ScpUploadString.cklMsss = GetFunction(CkScpLibId,"CkScpU_UploadStringW")
  Global ScpUploadStringAsync.ckiMsss = GetFunction(CkScpLibId,"CkScpU_UploadStringAsyncW")
  Global ScpUseSsh.cklMi = GetFunction(CkScpLibId,"CkScpU_UseSshW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ScpCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ScpDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn ScpAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn ScpPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(ScpDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn ScpPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn ScpHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn ScpPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(ScpLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(ScpLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(ScpLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ScpLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ScpPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn ScpPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn ScpPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.s ckSendEnv(obj.i) : ProcedureReturn PeekS(ScpSendEnv(obj)) : EndProcedure
  Procedure setCkSendEnv(obj.i, value.s) : ProcedureReturn ScpPSetSendEnv(obj,value) : EndProcedure
  Procedure.s ckSyncedFiles(obj.i) : ProcedureReturn PeekS(ScpSyncedFiles(obj)) : EndProcedure
  Procedure setCkSyncedFiles(obj.i, value.s) : ProcedureReturn ScpPSetSyncedFiles(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatch(obj.i) : ProcedureReturn PeekS(ScpSyncMustMatch(obj)) : EndProcedure
  Procedure setCkSyncMustMatch(obj.i, value.s) : ProcedureReturn ScpPSetSyncMustMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatchDir(obj.i) : ProcedureReturn PeekS(ScpSyncMustMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustMatchDir(obj.i, value.s) : ProcedureReturn ScpPSetSyncMustMatchDir(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatch(obj.i) : ProcedureReturn PeekS(ScpSyncMustNotMatch(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatch(obj.i, value.s) : ProcedureReturn ScpPSetSyncMustNotMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatchDir(obj.i) : ProcedureReturn PeekS(ScpSyncMustNotMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatchDir(obj.i, value.s) : ProcedureReturn ScpPSetSyncMustNotMatchDir(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(ScpUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn ScpPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.s ckUnixPermOverride(obj.i) : ProcedureReturn PeekS(ScpUnixPermOverride(obj)) : EndProcedure
  Procedure setCkUnixPermOverride(obj.i, value.s) : ProcedureReturn ScpPSetUnixPermOverride(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn ScpVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn ScpPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(ScpVersion(obj)) : EndProcedure
  Procedure.l ckDownloadBd(obj.i, remotePath.s, bd.i) :  ProcedureReturn ScpDownloadBd(obj, remotePath, bd) :  EndProcedure
  Procedure.i ckDownloadBdAsync(obj.i, remotePath.s, bd.i) :  ProcedureReturn ScpDownloadBdAsync(obj, remotePath, bd) :  EndProcedure
  Procedure.s ckDownloadBinaryEncoded(obj.i, remotePath.s, encoding.s) :  ProcedureReturn PeekS(ScpDownloadBinaryEncoded(obj, remotePath, encoding)) :  EndProcedure
  Procedure.i ckDownloadBinaryEncodedAsync(obj.i, remotePath.s, encoding.s) :  ProcedureReturn ScpDownloadBinaryEncodedAsync(obj, remotePath, encoding) :  EndProcedure
  Procedure.l ckDownloadFile(obj.i, remotePath.s, localPath.s) :  ProcedureReturn ScpDownloadFile(obj, remotePath, localPath) :  EndProcedure
  Procedure.i ckDownloadFileAsync(obj.i, remotePath.s, localPath.s) :  ProcedureReturn ScpDownloadFileAsync(obj, remotePath, localPath) :  EndProcedure
  Procedure.s ckDownloadString(obj.i, remotePath.s, charset.s) :  ProcedureReturn PeekS(ScpDownloadString(obj, remotePath, charset)) :  EndProcedure
  Procedure.i ckDownloadStringAsync(obj.i, remotePath.s, charset.s) :  ProcedureReturn ScpDownloadStringAsync(obj, remotePath, charset) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn ScpLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn ScpSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSyncTreeDownload(obj.i, remoteRoot.s, localRoot.s, mode.l, bRecurse.l) :  ProcedureReturn ScpSyncTreeDownload(obj, remoteRoot, localRoot, mode, bRecurse) :  EndProcedure
  Procedure.i ckSyncTreeDownloadAsync(obj.i, remoteRoot.s, localRoot.s, mode.l, bRecurse.l) :  ProcedureReturn ScpSyncTreeDownloadAsync(obj, remoteRoot, localRoot, mode, bRecurse) :  EndProcedure
  Procedure.l ckSyncTreeUpload(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l) :  ProcedureReturn ScpSyncTreeUpload(obj, localBaseDir, remoteBaseDir, mode, bRecurse) :  EndProcedure
  Procedure.i ckSyncTreeUploadAsync(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l) :  ProcedureReturn ScpSyncTreeUploadAsync(obj, localBaseDir, remoteBaseDir, mode, bRecurse) :  EndProcedure
  Procedure.l ckUploadBd(obj.i, remotePath.s, bd.i) :  ProcedureReturn ScpUploadBd(obj, remotePath, bd) :  EndProcedure
  Procedure.i ckUploadBdAsync(obj.i, remotePath.s, bd.i) :  ProcedureReturn ScpUploadBdAsync(obj, remotePath, bd) :  EndProcedure
  Procedure.l ckUploadBinaryEncoded(obj.i, remotePath.s, encodedData.s, encoding.s) :  ProcedureReturn ScpUploadBinaryEncoded(obj, remotePath, encodedData, encoding) :  EndProcedure
  Procedure.i ckUploadBinaryEncodedAsync(obj.i, remotePath.s, encodedData.s, encoding.s) :  ProcedureReturn ScpUploadBinaryEncodedAsync(obj, remotePath, encodedData, encoding) :  EndProcedure
  Procedure.l ckUploadFile(obj.i, localPath.s, remotePath.s) :  ProcedureReturn ScpUploadFile(obj, localPath, remotePath) :  EndProcedure
  Procedure.i ckUploadFileAsync(obj.i, localPath.s, remotePath.s) :  ProcedureReturn ScpUploadFileAsync(obj, localPath, remotePath) :  EndProcedure
  Procedure.l ckUploadString(obj.i, remotePath.s, textData.s, charset.s) :  ProcedureReturn ScpUploadString(obj, remotePath, textData, charset) :  EndProcedure
  Procedure.i ckUploadStringAsync(obj.i, remotePath.s, textData.s, charset.s) :  ProcedureReturn ScpUploadStringAsync(obj, remotePath, textData, charset) :  EndProcedure
  Procedure.l ckUseSsh(obj.i, sshConnection.i) :  ProcedureReturn ScpUseSsh(obj, sshConnection) :  EndProcedure
EndModule

