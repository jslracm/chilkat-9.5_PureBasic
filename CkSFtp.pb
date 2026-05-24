DeclareModule CkSFtp
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAuthFailReason(obj.i)
  Declare.l ckBandwidthThrottleDown(obj.i)
  Declare setCkBandwidthThrottleDown(obj.i, value.l)
  Declare.l ckBandwidthThrottleUp(obj.i)
  Declare setCkBandwidthThrottleUp(obj.i, value.l)
  Declare.s ckClientIdentifier(obj.i)
  Declare setCkClientIdentifier(obj.i, value.s)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.l ckConnectTimeoutMs(obj.i)
  Declare setCkConnectTimeoutMs(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDisconnectCode(obj.i)
  Declare.s ckDisconnectReason(obj.i)
  Declare.l ckEnableCache(obj.i)
  Declare setCkEnableCache(obj.i, value.l)
  Declare.l ckEnableCompression(obj.i)
  Declare setCkEnableCompression(obj.i, value.l)
  Declare.s ckFilenameCharset(obj.i)
  Declare setCkFilenameCharset(obj.i, value.s)
  Declare.s ckForceCipher(obj.i)
  Declare setCkForceCipher(obj.i, value.s)
  Declare.l ckForceV3(obj.i)
  Declare setCkForceV3(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHostKeyAlg(obj.i)
  Declare setCkHostKeyAlg(obj.i, value.s)
  Declare.s ckHostKeyFingerprint(obj.i)
  Declare.s ckHttpProxyAuthMethod(obj.i)
  Declare setCkHttpProxyAuthMethod(obj.i, value.s)
  Declare.s ckHttpProxyDomain(obj.i)
  Declare setCkHttpProxyDomain(obj.i, value.s)
  Declare.s ckHttpProxyHostname(obj.i)
  Declare setCkHttpProxyHostname(obj.i, value.s)
  Declare.s ckHttpProxyPassword(obj.i)
  Declare setCkHttpProxyPassword(obj.i, value.s)
  Declare.l ckHttpProxyPort(obj.i)
  Declare setCkHttpProxyPort(obj.i, value.l)
  Declare.s ckHttpProxyUsername(obj.i)
  Declare setCkHttpProxyUsername(obj.i, value.s)
  Declare.l ckIdleTimeoutMs(obj.i)
  Declare setCkIdleTimeoutMs(obj.i, value.l)
  Declare.l ckIncludeDotDirs(obj.i)
  Declare setCkIncludeDotDirs(obj.i, value.l)
  Declare.l ckInitializeFailCode(obj.i)
  Declare.s ckInitializeFailReason(obj.i)
  Declare.l ckIsConnected(obj.i)
  Declare.l ckKeepSessionLog(obj.i)
  Declare setCkKeepSessionLog(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLastStatusCode(obj.i)
  Declare.s ckLastStatusMessage(obj.i)
  Declare.l ckMaxPacketSize(obj.i)
  Declare setCkMaxPacketSize(obj.i, value.l)
  Declare.l ckPasswordChangeRequested(obj.i)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckPreserveDate(obj.i)
  Declare setCkPreserveDate(obj.i, value.l)
  Declare.l ckProtocolVersion(obj.i)
  Declare.s ckReadDirMustMatch(obj.i)
  Declare setCkReadDirMustMatch(obj.i, value.s)
  Declare.s ckReadDirMustNotMatch(obj.i)
  Declare setCkReadDirMustNotMatch(obj.i, value.s)
  Declare.s ckServerIdentifier(obj.i)
  Declare.s ckSessionLog(obj.i)
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
  Declare.l ckSyncCreateAllLocalDirs(obj.i)
  Declare setCkSyncCreateAllLocalDirs(obj.i, value.l)
  Declare.s ckSyncDirectives(obj.i)
  Declare setCkSyncDirectives(obj.i, value.s)
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
  Declare.l ckTcpNoDelay(obj.i)
  Declare setCkTcpNoDelay(obj.i, value.l)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUploadChunkSize(obj.i)
  Declare setCkUploadChunkSize(obj.i, value.l)
  Declare.l ckUtcMode(obj.i)
  Declare setCkUtcMode(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckXferByteCount(obj.i)
  Declare.q ckXferByteCount64(obj.i)
  Declare.l ckAccumulateBytes(obj.i, handle.s, maxBytes.l)
  Declare.i ckAccumulateBytesAsync(obj.i, handle.s, maxBytes.l)
  Declare.s ckAdd64(obj.i, n1.s, n2.s)
  Declare.l ckAuthenticatePk(obj.i, username.s, privateKey.i)
  Declare.i ckAuthenticatePkAsync(obj.i, username.s, privateKey.i)
  Declare.l ckAuthenticatePw(obj.i, login.s, password.s)
  Declare.i ckAuthenticatePwAsync(obj.i, login.s, password.s)
  Declare.l ckAuthenticatePwPk(obj.i, username.s, password.s, privateKey.i)
  Declare.i ckAuthenticatePwPkAsync(obj.i, username.s, password.s, privateKey.i)
  Declare.l ckAuthenticateSecPw(obj.i, login.i, password.i)
  Declare.i ckAuthenticateSecPwAsync(obj.i, login.i, password.i)
  Declare.l ckAuthenticateSecPwPk(obj.i, username.i, password.i, privateKey.i)
  Declare.i ckAuthenticateSecPwPkAsync(obj.i, username.i, password.i, privateKey.i)
  Declare ckClearAccumulateBuffer(obj.i)
  Declare ckClearCache(obj.i)
  Declare ckClearSessionLog(obj.i)
  Declare.l ckCloseHandle(obj.i, handle.s)
  Declare.i ckCloseHandleAsync(obj.i, handle.s)
  Declare.l ckConnect(obj.i, domainName.s, port.l)
  Declare.i ckConnectAsync(obj.i, domainName.s, port.l)
  Declare.l ckConnectThroughSsh(obj.i, sshConn.i, hostname.s, port.l)
  Declare.i ckConnectThroughSshAsync(obj.i, sshConn.i, hostname.s, port.l)
  Declare.l ckCopyFileAttr(obj.i, localFilename.s, remoteFilename.s, isHandle.l)
  Declare.i ckCopyFileAttrAsync(obj.i, localFilename.s, remoteFilename.s, isHandle.l)
  Declare.l ckCreateDir(obj.i, path.s)
  Declare.i ckCreateDirAsync(obj.i, path.s)
  Declare ckDisconnect(obj.i)
  Declare.l ckDownloadBd(obj.i, remoteFilePath.s, binData.i)
  Declare.i ckDownloadBdAsync(obj.i, remoteFilePath.s, binData.i)
  Declare.l ckDownloadFile(obj.i, handle.s, toFilename.s)
  Declare.i ckDownloadFileAsync(obj.i, handle.s, toFilename.s)
  Declare.l ckDownloadFileByName(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.i ckDownloadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.l ckDownloadSb(obj.i, remoteFilePath.s, charset.s, sb.i)
  Declare.i ckDownloadSbAsync(obj.i, remoteFilePath.s, charset.s, sb.i)
  Declare.l ckEof(obj.i, handle.s)
  Declare.l ckFileExists(obj.i, remotePath.s, followLinks.l)
  Declare.i ckFileExistsAsync(obj.i, remotePath.s, followLinks.l)
  Declare.l ckFsync(obj.i, handle.s)
  Declare.i ckFsyncAsync(obj.i, handle.s)
  Declare.i ckGetFileCreateDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileCreateDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileCreateTimeStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileCreateTimeStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileGroup(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileGroupAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastAccessDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastAccessDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileLastAccessStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastAccessStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastModifiedDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastModifiedDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileLastModifiedStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileLastModifiedStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileOwner(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFileOwnerAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.l ckGetFilePermissions(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.i ckGetFilePermissionsAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.l ckGetFileSize32(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.q ckGetFileSize64(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.s ckGetFileSizeStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l)
  Declare.l ckHardLink(obj.i, oldPath.s, newPath.s)
  Declare.i ckHardLinkAsync(obj.i, oldPath.s, newPath.s)
  Declare.l ckInitializeSftp(obj.i)
  Declare.i ckInitializeSftpAsync(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLastReadFailed(obj.i, handle.s)
  Declare.l ckLastReadNumBytes(obj.i, handle.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.s ckOpenDir(obj.i, path.s)
  Declare.i ckOpenDirAsync(obj.i, path.s)
  Declare.s ckOpenFile(obj.i, remotePath.s, access.s, createDisposition.s)
  Declare.i ckOpenFileAsync(obj.i, remotePath.s, access.s, createDisposition.s)
  Declare.i ckReadDir(obj.i, handle.s)
  Declare.i ckReadDirAsync(obj.i, handle.s)
  Declare.l ckReadFileBd(obj.i, handle.s, numBytes.l, bd.i)
  Declare.i ckReadFileBdAsync(obj.i, handle.s, numBytes.l, bd.i)
  Declare.s ckReadFileText(obj.i, handle.s, numBytes.l, charset.s)
  Declare.i ckReadFileTextAsync(obj.i, handle.s, numBytes.l, charset.s)
  Declare.s ckReadFileText32(obj.i, handle.s, offset.l, numBytes.l, charset.s)
  Declare.s ckReadFileText64(obj.i, handle.s, offset.q, numBytes.l, charset.s)
  Declare.s ckReadFileText64s(obj.i, handle.s, offset.s, numBytes.l, charset.s)
  Declare.s ckReadLink(obj.i, path.s)
  Declare.i ckReadLinkAsync(obj.i, path.s)
  Declare.s ckRealPath(obj.i, originalPath.s, composePath.s)
  Declare.i ckRealPathAsync(obj.i, originalPath.s, composePath.s)
  Declare.l ckRemoveDir(obj.i, path.s)
  Declare.i ckRemoveDirAsync(obj.i, path.s)
  Declare.l ckRemoveFile(obj.i, filename.s)
  Declare.i ckRemoveFileAsync(obj.i, filename.s)
  Declare.l ckRenameFileOrDir(obj.i, oldPath.s, newPath.s)
  Declare.i ckRenameFileOrDirAsync(obj.i, oldPath.s, newPath.s)
  Declare.l ckResumeDownloadFileByName(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.i ckResumeDownloadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.l ckResumeUploadFileByName(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.i ckResumeUploadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSendIgnore(obj.i)
  Declare.i ckSendIgnoreAsync(obj.i)
  Declare.l ckSetCreateDt(obj.i, pathOrHandle.s, isHandle.l, createDateTime.i)
  Declare.i ckSetCreateDtAsync(obj.i, pathOrHandle.s, isHandle.l, createDateTime.i)
  Declare.l ckSetCreateTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.i ckSetCreateTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.l ckSetLastAccessDt(obj.i, pathOrHandle.s, isHandle.l, accessDateTime.i)
  Declare.i ckSetLastAccessDtAsync(obj.i, pathOrHandle.s, isHandle.l, accessDateTime.i)
  Declare.l ckSetLastAccessTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.i ckSetLastAccessTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.l ckSetLastModifiedDt(obj.i, pathOrHandle.s, isHandle.l, modifiedDateTime.i)
  Declare.i ckSetLastModifiedDtAsync(obj.i, pathOrHandle.s, isHandle.l, modifiedDateTime.i)
  Declare.l ckSetLastModifiedTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.i ckSetLastModifiedTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s)
  Declare.l ckSetOwnerAndGroup(obj.i, pathOrHandle.s, isHandle.l, owner.s, group.s)
  Declare.i ckSetOwnerAndGroupAsync(obj.i, pathOrHandle.s, isHandle.l, owner.s, group.s)
  Declare.l ckSetPermissions(obj.i, pathOrHandle.s, isHandle.l, permissions.l)
  Declare.i ckSetPermissionsAsync(obj.i, pathOrHandle.s, isHandle.l, permissions.l)
  Declare.l ckSymLink(obj.i, oldPath.s, newPath.s)
  Declare.i ckSymLinkAsync(obj.i, oldPath.s, newPath.s)
  Declare.l ckSyncTreeDownload(obj.i, remoteRoot.s, localRoot.s, mode.l, recurse.l)
  Declare.i ckSyncTreeDownloadAsync(obj.i, remoteRoot.s, localRoot.s, mode.l, recurse.l)
  Declare.l ckSyncTreeUpload(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l)
  Declare.i ckSyncTreeUploadAsync(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUploadBd(obj.i, binData.i, remoteFilePath.s)
  Declare.i ckUploadBdAsync(obj.i, binData.i, remoteFilePath.s)
  Declare.l ckUploadFile(obj.i, handle.s, fromLocalFilePath.s)
  Declare.i ckUploadFileAsync(obj.i, handle.s, fromLocalFilePath.s)
  Declare.l ckUploadFileByName(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.i ckUploadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.l ckUploadSb(obj.i, sb.i, remoteFilePath.s, charset.s, includeBom.l)
  Declare.i ckUploadSbAsync(obj.i, sb.i, remoteFilePath.s, charset.s, includeBom.l)
  Declare.l ckWriteFileBd(obj.i, handle.s, bd.i)
  Declare.i ckWriteFileBdAsync(obj.i, handle.s, bd.i)
  Declare.l ckWriteFileText(obj.i, handle.s, charset.s, textData.s)
  Declare.i ckWriteFileTextAsync(obj.i, handle.s, charset.s, textData.s)
  Declare.l ckWriteFileText32(obj.i, handle.s, offset32.l, charset.s, textData.s)
  Declare.l ckWriteFileText64(obj.i, handle.s, offset64.q, charset.s, textData.s)
  Declare.l ckWriteFileText64s(obj.i, handle.s, offset64.s, charset.s, textData.s)
EndDeclareModule

Module CkSFtp
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsll(obj.i, arg1.s, arg2.l, arg3.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMsli(obj.i, arg1.s, arg2.l, arg3.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMsqss(obj.i, arg1.s, arg2.q, arg3.s, arg4.s)
  PrototypeC.l cklMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsll(obj.i, arg1.s, arg2.l, arg3.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMissl(obj.i, arg1.i, arg2.s, arg3.s, arg4.l)
  PrototypeC.l cklMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMsqls(obj.i, arg1.s, arg2.q, arg3.l, arg4.s)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC.i ckiMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.i ckiMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMslls(obj.i, arg1.s, arg2.l, arg3.l, arg4.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMssls(obj.i, arg1.s, arg2.s, arg3.l, arg4.s)
  PrototypeC.l cklMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.q ckqMsll(obj.i, arg1.s, arg2.l, arg3.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.i ckiMissl(obj.i, arg1.i, arg2.s, arg3.s, arg4.l)
  PrototypeC.i ckiMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsli(obj.i, arg1.s, arg2.l, arg3.i)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.i CkSFtpCreate()
  PrototypeC CkSFtpDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSFtpLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSFtpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSFtpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SFtpCreate.CkSFtpCreate = GetFunction(CkSFtpLibId,"CkSFtpU_CreateW")
  Global SFtpDispose.CkSFtpDispose = GetFunction(CkSFtpLibId,"CkSFtpU_DisposeW")
  Global SFtpAbortCurrent.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getAbortCurrentW")
  Global SFtpPSetAbortCurrent.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putAbortCurrentW")
  Global SFtpAuthFailReason.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getAuthFailReasonW")
  Global SFtpBandwidthThrottleDown.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getBandwidthThrottleDownW")
  Global SFtpPSetBandwidthThrottleDown.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putBandwidthThrottleDownW")
  Global SFtpBandwidthThrottleUp.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getBandwidthThrottleUpW")
  Global SFtpPSetBandwidthThrottleUp.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putBandwidthThrottleUpW")
  Global SFtpClientIdentifier.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_clientIdentifierW")
  Global SFtpPSetClientIdentifier.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putClientIdentifierW")
  Global SFtpClientIpAddress.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_clientIpAddressW")
  Global SFtpPSetClientIpAddress.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putClientIpAddressW")
  Global SFtpConnectTimeoutMs.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getConnectTimeoutMsW")
  Global SFtpPSetConnectTimeoutMs.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putConnectTimeoutMsW")
  Global SFtpDebugLogFilePath.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_debugLogFilePathW")
  Global SFtpPSetDebugLogFilePath.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putDebugLogFilePathW")
  Global SFtpDisconnectCode.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getDisconnectCodeW")
  Global SFtpDisconnectReason.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_disconnectReasonW")
  Global SFtpEnableCache.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getEnableCacheW")
  Global SFtpPSetEnableCache.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putEnableCacheW")
  Global SFtpEnableCompression.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getEnableCompressionW")
  Global SFtpPSetEnableCompression.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putEnableCompressionW")
  Global SFtpFilenameCharset.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_filenameCharsetW")
  Global SFtpPSetFilenameCharset.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putFilenameCharsetW")
  Global SFtpForceCipher.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_forceCipherW")
  Global SFtpPSetForceCipher.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putForceCipherW")
  Global SFtpForceV3.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getForceV3W")
  Global SFtpPSetForceV3.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putForceV3W")
  Global SFtpHeartbeatMs.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getHeartbeatMsW")
  Global SFtpPSetHeartbeatMs.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHeartbeatMsW")
  Global SFtpHostKeyAlg.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_hostKeyAlgW")
  Global SFtpPSetHostKeyAlg.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHostKeyAlgW")
  Global SFtpHostKeyFingerprint.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_hostKeyFingerprintW")
  Global SFtpHttpProxyAuthMethod.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_httpProxyAuthMethodW")
  Global SFtpPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyAuthMethodW")
  Global SFtpHttpProxyDomain.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_httpProxyDomainW")
  Global SFtpPSetHttpProxyDomain.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyDomainW")
  Global SFtpHttpProxyHostname.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_httpProxyHostnameW")
  Global SFtpPSetHttpProxyHostname.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyHostnameW")
  Global SFtpHttpProxyPassword.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_httpProxyPasswordW")
  Global SFtpPSetHttpProxyPassword.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyPasswordW")
  Global SFtpHttpProxyPort.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getHttpProxyPortW")
  Global SFtpPSetHttpProxyPort.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyPortW")
  Global SFtpHttpProxyUsername.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_httpProxyUsernameW")
  Global SFtpPSetHttpProxyUsername.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putHttpProxyUsernameW")
  Global SFtpIdleTimeoutMs.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getIdleTimeoutMsW")
  Global SFtpPSetIdleTimeoutMs.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putIdleTimeoutMsW")
  Global SFtpIncludeDotDirs.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getIncludeDotDirsW")
  Global SFtpPSetIncludeDotDirs.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putIncludeDotDirsW")
  Global SFtpInitializeFailCode.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getInitializeFailCodeW")
  Global SFtpInitializeFailReason.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_initializeFailReasonW")
  Global SFtpIsConnected.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getIsConnectedW")
  Global SFtpKeepSessionLog.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getKeepSessionLogW")
  Global SFtpPSetKeepSessionLog.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putKeepSessionLogW")
  Global SFtpLastErrorHtml.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_lastErrorHtmlW")
  Global SFtpLastErrorText.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_lastErrorTextW")
  Global SFtpLastErrorXml.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_lastErrorXmlW")
  Global SFtpLastMethodSuccess.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getLastMethodSuccessW")
  Global SFtpPSetLastMethodSuccess.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putLastMethodSuccessW")
  Global SFtpLastStatusCode.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getLastStatusCodeW")
  Global SFtpLastStatusMessage.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_lastStatusMessageW")
  Global SFtpMaxPacketSize.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getMaxPacketSizeW")
  Global SFtpPSetMaxPacketSize.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putMaxPacketSizeW")
  Global SFtpPasswordChangeRequested.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getPasswordChangeRequestedW")
  Global SFtpPercentDoneScale.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getPercentDoneScaleW")
  Global SFtpPSetPercentDoneScale.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putPercentDoneScaleW")
  Global SFtpPreferIpv6.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getPreferIpv6W")
  Global SFtpPSetPreferIpv6.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putPreferIpv6W")
  Global SFtpPreserveDate.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getPreserveDateW")
  Global SFtpPSetPreserveDate.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putPreserveDateW")
  Global SFtpProtocolVersion.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getProtocolVersionW")
  Global SFtpReadDirMustMatch.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_readDirMustMatchW")
  Global SFtpPSetReadDirMustMatch.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putReadDirMustMatchW")
  Global SFtpReadDirMustNotMatch.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_readDirMustNotMatchW")
  Global SFtpPSetReadDirMustNotMatch.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putReadDirMustNotMatchW")
  Global SFtpServerIdentifier.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_serverIdentifierW")
  Global SFtpSessionLog.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_sessionLogW")
  Global SFtpSocksHostname.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_socksHostnameW")
  Global SFtpPSetSocksHostname.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSocksHostnameW")
  Global SFtpSocksPassword.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_socksPasswordW")
  Global SFtpPSetSocksPassword.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSocksPasswordW")
  Global SFtpSocksPort.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getSocksPortW")
  Global SFtpPSetSocksPort.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSocksPortW")
  Global SFtpSocksUsername.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_socksUsernameW")
  Global SFtpPSetSocksUsername.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSocksUsernameW")
  Global SFtpSocksVersion.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getSocksVersionW")
  Global SFtpPSetSocksVersion.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSocksVersionW")
  Global SFtpSoRcvBuf.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getSoRcvBufW")
  Global SFtpPSetSoRcvBuf.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSoRcvBufW")
  Global SFtpSoSndBuf.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getSoSndBufW")
  Global SFtpPSetSoSndBuf.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSoSndBufW")
  Global SFtpSyncCreateAllLocalDirs.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getSyncCreateAllLocalDirsW")
  Global SFtpPSetSyncCreateAllLocalDirs.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncCreateAllLocalDirsW")
  Global SFtpSyncDirectives.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncDirectivesW")
  Global SFtpPSetSyncDirectives.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncDirectivesW")
  Global SFtpSyncedFiles.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncedFilesW")
  Global SFtpPSetSyncedFiles.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncedFilesW")
  Global SFtpSyncMustMatch.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncMustMatchW")
  Global SFtpPSetSyncMustMatch.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncMustMatchW")
  Global SFtpSyncMustMatchDir.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncMustMatchDirW")
  Global SFtpPSetSyncMustMatchDir.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncMustMatchDirW")
  Global SFtpSyncMustNotMatch.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncMustNotMatchW")
  Global SFtpPSetSyncMustNotMatch.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncMustNotMatchW")
  Global SFtpSyncMustNotMatchDir.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_syncMustNotMatchDirW")
  Global SFtpPSetSyncMustNotMatchDir.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putSyncMustNotMatchDirW")
  Global SFtpTcpNoDelay.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getTcpNoDelayW")
  Global SFtpPSetTcpNoDelay.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putTcpNoDelayW")
  Global SFtpUncommonOptions.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_uncommonOptionsW")
  Global SFtpPSetUncommonOptions.cksPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putUncommonOptionsW")
  Global SFtpUploadChunkSize.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getUploadChunkSizeW")
  Global SFtpPSetUploadChunkSize.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putUploadChunkSizeW")
  Global SFtpUtcMode.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getUtcModeW")
  Global SFtpPSetUtcMode.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putUtcModeW")
  Global SFtpVerboseLogging.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getVerboseLoggingW")
  Global SFtpPSetVerboseLogging.cklPropSet = GetFunction(CkSFtpLibId,"CkSFtpU_putVerboseLoggingW")
  Global SFtpVersion.cksPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_versionW")
  Global SFtpXferByteCount.cklPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getXferByteCountW")
  Global SFtpXferByteCount64.ckqPropGet = GetFunction(CkSFtpLibId,"CkSFtpU_getXferByteCount64W")
  Global SFtpAccumulateBytes.cklMsl = GetFunction(CkSFtpLibId,"CkSFtpU_AccumulateBytesW")
  Global SFtpAccumulateBytesAsync.ckiMsl = GetFunction(CkSFtpLibId,"CkSFtpU_AccumulateBytesAsyncW")
  Global SFtpAdd64.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_add64W")
  Global SFtpAuthenticatePk.cklMsi = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePkW")
  Global SFtpAuthenticatePkAsync.ckiMsi = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePkAsyncW")
  Global SFtpAuthenticatePw.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePwW")
  Global SFtpAuthenticatePwAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePwAsyncW")
  Global SFtpAuthenticatePwPk.cklMssi = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePwPkW")
  Global SFtpAuthenticatePwPkAsync.ckiMssi = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticatePwPkAsyncW")
  Global SFtpAuthenticateSecPw.cklMii = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticateSecPwW")
  Global SFtpAuthenticateSecPwAsync.ckiMii = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticateSecPwAsyncW")
  Global SFtpAuthenticateSecPwPk.cklMiii = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticateSecPwPkW")
  Global SFtpAuthenticateSecPwPkAsync.ckiMiii = GetFunction(CkSFtpLibId,"CkSFtpU_AuthenticateSecPwPkAsyncW")
  Global SFtpClearAccumulateBuffer.ckvM = GetFunction(CkSFtpLibId,"CkSFtpU_ClearAccumulateBufferW")
  Global SFtpClearCache.ckvM = GetFunction(CkSFtpLibId,"CkSFtpU_ClearCacheW")
  Global SFtpClearSessionLog.ckvM = GetFunction(CkSFtpLibId,"CkSFtpU_ClearSessionLogW")
  Global SFtpCloseHandle.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_CloseHandleW")
  Global SFtpCloseHandleAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_CloseHandleAsyncW")
  Global SFtpConnect.cklMsl = GetFunction(CkSFtpLibId,"CkSFtpU_ConnectW")
  Global SFtpConnectAsync.ckiMsl = GetFunction(CkSFtpLibId,"CkSFtpU_ConnectAsyncW")
  Global SFtpConnectThroughSsh.cklMisl = GetFunction(CkSFtpLibId,"CkSFtpU_ConnectThroughSshW")
  Global SFtpConnectThroughSshAsync.ckiMisl = GetFunction(CkSFtpLibId,"CkSFtpU_ConnectThroughSshAsyncW")
  Global SFtpCopyFileAttr.cklMssl = GetFunction(CkSFtpLibId,"CkSFtpU_CopyFileAttrW")
  Global SFtpCopyFileAttrAsync.ckiMssl = GetFunction(CkSFtpLibId,"CkSFtpU_CopyFileAttrAsyncW")
  Global SFtpCreateDir.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_CreateDirW")
  Global SFtpCreateDirAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_CreateDirAsyncW")
  Global SFtpDisconnect.ckvM = GetFunction(CkSFtpLibId,"CkSFtpU_DisconnectW")
  Global SFtpDownloadBd.cklMsi = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadBdW")
  Global SFtpDownloadBdAsync.ckiMsi = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadBdAsyncW")
  Global SFtpDownloadFile.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadFileW")
  Global SFtpDownloadFileAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadFileAsyncW")
  Global SFtpDownloadFileByName.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadFileByNameW")
  Global SFtpDownloadFileByNameAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadFileByNameAsyncW")
  Global SFtpDownloadSb.cklMssi = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadSbW")
  Global SFtpDownloadSbAsync.ckiMssi = GetFunction(CkSFtpLibId,"CkSFtpU_DownloadSbAsyncW")
  Global SFtpEof.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_EofW")
  Global SFtpFileExists.cklMsl = GetFunction(CkSFtpLibId,"CkSFtpU_FileExistsW")
  Global SFtpFileExistsAsync.ckiMsl = GetFunction(CkSFtpLibId,"CkSFtpU_FileExistsAsyncW")
  Global SFtpFsync.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_FsyncW")
  Global SFtpFsyncAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_FsyncAsyncW")
  Global SFtpGetFileCreateDt.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileCreateDtW")
  Global SFtpGetFileCreateDtAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileCreateDtAsyncW")
  Global SFtpGetFileCreateTimeStr.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileCreateTimeStrW")
  Global SFtpGetFileCreateTimeStrAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileCreateTimeStrAsyncW")
  Global SFtpGetFileGroup.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileGroupW")
  Global SFtpGetFileGroupAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileGroupAsyncW")
  Global SFtpGetFileLastAccessDt.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastAccessDtW")
  Global SFtpGetFileLastAccessDtAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastAccessDtAsyncW")
  Global SFtpGetFileLastAccessStr.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileLastAccessStrW")
  Global SFtpGetFileLastAccessStrAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastAccessStrAsyncW")
  Global SFtpGetFileLastModifiedDt.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastModifiedDtW")
  Global SFtpGetFileLastModifiedDtAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastModifiedDtAsyncW")
  Global SFtpGetFileLastModifiedStr.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileLastModifiedStrW")
  Global SFtpGetFileLastModifiedStrAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileLastModifiedStrAsyncW")
  Global SFtpGetFileOwner.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileOwnerW")
  Global SFtpGetFileOwnerAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileOwnerAsyncW")
  Global SFtpGetFilePermissions.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFilePermissionsW")
  Global SFtpGetFilePermissionsAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFilePermissionsAsyncW")
  Global SFtpGetFileSize32.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileSize32W")
  Global SFtpGetFileSize64.ckqMsll = GetFunction(CkSFtpLibId,"CkSFtpU_GetFileSize64W")
  Global SFtpGetFileSizeStr.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_getFileSizeStrW")
  Global SFtpHardLink.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_HardLinkW")
  Global SFtpHardLinkAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_HardLinkAsyncW")
  Global SFtpInitializeSftp.cklM = GetFunction(CkSFtpLibId,"CkSFtpU_InitializeSftpW")
  Global SFtpInitializeSftpAsync.ckiM = GetFunction(CkSFtpLibId,"CkSFtpU_InitializeSftpAsyncW")
  Global SFtpLastJsonData.ckiM = GetFunction(CkSFtpLibId,"CkSFtpU_LastJsonDataW")
  Global SFtpLastReadFailed.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_LastReadFailedW")
  Global SFtpLastReadNumBytes.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_LastReadNumBytesW")
  Global SFtpLoadTaskCaller.cklMi = GetFunction(CkSFtpLibId,"CkSFtpU_LoadTaskCallerW")
  Global SFtpOpenDir.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_openDirW")
  Global SFtpOpenDirAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_OpenDirAsyncW")
  Global SFtpOpenFile.cklMsss = GetFunction(CkSFtpLibId,"CkSFtpU_openFileW")
  Global SFtpOpenFileAsync.ckiMsss = GetFunction(CkSFtpLibId,"CkSFtpU_OpenFileAsyncW")
  Global SFtpReadDir.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_ReadDirW")
  Global SFtpReadDirAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_ReadDirAsyncW")
  Global SFtpReadFileBd.cklMsli = GetFunction(CkSFtpLibId,"CkSFtpU_ReadFileBdW")
  Global SFtpReadFileBdAsync.ckiMsli = GetFunction(CkSFtpLibId,"CkSFtpU_ReadFileBdAsyncW")
  Global SFtpReadFileText.cklMsls = GetFunction(CkSFtpLibId,"CkSFtpU_readFileTextW")
  Global SFtpReadFileTextAsync.ckiMsls = GetFunction(CkSFtpLibId,"CkSFtpU_ReadFileTextAsyncW")
  Global SFtpReadFileText32.cklMslls = GetFunction(CkSFtpLibId,"CkSFtpU_readFileText32W")
  Global SFtpReadFileText64.cklMsqls = GetFunction(CkSFtpLibId,"CkSFtpU_readFileText64W")
  Global SFtpReadFileText64s.cklMssls = GetFunction(CkSFtpLibId,"CkSFtpU_readFileText64sW")
  Global SFtpReadLink.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_readLinkW")
  Global SFtpReadLinkAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_ReadLinkAsyncW")
  Global SFtpRealPath.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_realPathW")
  Global SFtpRealPathAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_RealPathAsyncW")
  Global SFtpRemoveDir.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_RemoveDirW")
  Global SFtpRemoveDirAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_RemoveDirAsyncW")
  Global SFtpRemoveFile.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_RemoveFileW")
  Global SFtpRemoveFileAsync.ckiMs = GetFunction(CkSFtpLibId,"CkSFtpU_RemoveFileAsyncW")
  Global SFtpRenameFileOrDir.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_RenameFileOrDirW")
  Global SFtpRenameFileOrDirAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_RenameFileOrDirAsyncW")
  Global SFtpResumeDownloadFileByName.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_ResumeDownloadFileByNameW")
  Global SFtpResumeDownloadFileByNameAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_ResumeDownloadFileByNameAsyncW")
  Global SFtpResumeUploadFileByName.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_ResumeUploadFileByNameW")
  Global SFtpResumeUploadFileByNameAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_ResumeUploadFileByNameAsyncW")
  Global SFtpSaveLastError.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_SaveLastErrorW")
  Global SFtpSendIgnore.cklM = GetFunction(CkSFtpLibId,"CkSFtpU_SendIgnoreW")
  Global SFtpSendIgnoreAsync.ckiM = GetFunction(CkSFtpLibId,"CkSFtpU_SendIgnoreAsyncW")
  Global SFtpSetCreateDt.cklMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetCreateDtW")
  Global SFtpSetCreateDtAsync.ckiMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetCreateDtAsyncW")
  Global SFtpSetCreateTimeStr.cklMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetCreateTimeStrW")
  Global SFtpSetCreateTimeStrAsync.ckiMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetCreateTimeStrAsyncW")
  Global SFtpSetLastAccessDt.cklMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastAccessDtW")
  Global SFtpSetLastAccessDtAsync.ckiMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastAccessDtAsyncW")
  Global SFtpSetLastAccessTimeStr.cklMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastAccessTimeStrW")
  Global SFtpSetLastAccessTimeStrAsync.ckiMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastAccessTimeStrAsyncW")
  Global SFtpSetLastModifiedDt.cklMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastModifiedDtW")
  Global SFtpSetLastModifiedDtAsync.ckiMsli = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastModifiedDtAsyncW")
  Global SFtpSetLastModifiedTimeStr.cklMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastModifiedTimeStrW")
  Global SFtpSetLastModifiedTimeStrAsync.ckiMsls = GetFunction(CkSFtpLibId,"CkSFtpU_SetLastModifiedTimeStrAsyncW")
  Global SFtpSetOwnerAndGroup.cklMslss = GetFunction(CkSFtpLibId,"CkSFtpU_SetOwnerAndGroupW")
  Global SFtpSetOwnerAndGroupAsync.ckiMslss = GetFunction(CkSFtpLibId,"CkSFtpU_SetOwnerAndGroupAsyncW")
  Global SFtpSetPermissions.cklMsll = GetFunction(CkSFtpLibId,"CkSFtpU_SetPermissionsW")
  Global SFtpSetPermissionsAsync.ckiMsll = GetFunction(CkSFtpLibId,"CkSFtpU_SetPermissionsAsyncW")
  Global SFtpSymLink.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_SymLinkW")
  Global SFtpSymLinkAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_SymLinkAsyncW")
  Global SFtpSyncTreeDownload.cklMssll = GetFunction(CkSFtpLibId,"CkSFtpU_SyncTreeDownloadW")
  Global SFtpSyncTreeDownloadAsync.ckiMssll = GetFunction(CkSFtpLibId,"CkSFtpU_SyncTreeDownloadAsyncW")
  Global SFtpSyncTreeUpload.cklMssll = GetFunction(CkSFtpLibId,"CkSFtpU_SyncTreeUploadW")
  Global SFtpSyncTreeUploadAsync.ckiMssll = GetFunction(CkSFtpLibId,"CkSFtpU_SyncTreeUploadAsyncW")
  Global SFtpUnlockComponent.cklMs = GetFunction(CkSFtpLibId,"CkSFtpU_UnlockComponentW")
  Global SFtpUploadBd.cklMis = GetFunction(CkSFtpLibId,"CkSFtpU_UploadBdW")
  Global SFtpUploadBdAsync.ckiMis = GetFunction(CkSFtpLibId,"CkSFtpU_UploadBdAsyncW")
  Global SFtpUploadFile.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_UploadFileW")
  Global SFtpUploadFileAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_UploadFileAsyncW")
  Global SFtpUploadFileByName.cklMss = GetFunction(CkSFtpLibId,"CkSFtpU_UploadFileByNameW")
  Global SFtpUploadFileByNameAsync.ckiMss = GetFunction(CkSFtpLibId,"CkSFtpU_UploadFileByNameAsyncW")
  Global SFtpUploadSb.cklMissl = GetFunction(CkSFtpLibId,"CkSFtpU_UploadSbW")
  Global SFtpUploadSbAsync.ckiMissl = GetFunction(CkSFtpLibId,"CkSFtpU_UploadSbAsyncW")
  Global SFtpWriteFileBd.cklMsi = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileBdW")
  Global SFtpWriteFileBdAsync.ckiMsi = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileBdAsyncW")
  Global SFtpWriteFileText.cklMsss = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileTextW")
  Global SFtpWriteFileTextAsync.ckiMsss = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileTextAsyncW")
  Global SFtpWriteFileText32.cklMslss = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileText32W")
  Global SFtpWriteFileText64.cklMsqss = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileText64W")
  Global SFtpWriteFileText64s.cklMssss = GetFunction(CkSFtpLibId,"CkSFtpU_WriteFileText64sW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SFtpCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SFtpDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn SFtpAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn SFtpPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAuthFailReason(obj.i) : ProcedureReturn SFtpAuthFailReason(obj) : EndProcedure
  Procedure.l ckBandwidthThrottleDown(obj.i) : ProcedureReturn SFtpBandwidthThrottleDown(obj) : EndProcedure
  Procedure setCkBandwidthThrottleDown(obj.i, value.l) : ProcedureReturn SFtpPSetBandwidthThrottleDown(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleUp(obj.i) : ProcedureReturn SFtpBandwidthThrottleUp(obj) : EndProcedure
  Procedure setCkBandwidthThrottleUp(obj.i, value.l) : ProcedureReturn SFtpPSetBandwidthThrottleUp(obj,value) : EndProcedure
  Procedure.s ckClientIdentifier(obj.i) : ProcedureReturn PeekS(SFtpClientIdentifier(obj)) : EndProcedure
  Procedure setCkClientIdentifier(obj.i, value.s) : ProcedureReturn SFtpPSetClientIdentifier(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(SFtpClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn SFtpPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.l ckConnectTimeoutMs(obj.i) : ProcedureReturn SFtpConnectTimeoutMs(obj) : EndProcedure
  Procedure setCkConnectTimeoutMs(obj.i, value.l) : ProcedureReturn SFtpPSetConnectTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SFtpDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SFtpPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDisconnectCode(obj.i) : ProcedureReturn SFtpDisconnectCode(obj) : EndProcedure
  Procedure.s ckDisconnectReason(obj.i) : ProcedureReturn PeekS(SFtpDisconnectReason(obj)) : EndProcedure
  Procedure.l ckEnableCache(obj.i) : ProcedureReturn SFtpEnableCache(obj) : EndProcedure
  Procedure setCkEnableCache(obj.i, value.l) : ProcedureReturn SFtpPSetEnableCache(obj,value) : EndProcedure
  Procedure.l ckEnableCompression(obj.i) : ProcedureReturn SFtpEnableCompression(obj) : EndProcedure
  Procedure setCkEnableCompression(obj.i, value.l) : ProcedureReturn SFtpPSetEnableCompression(obj,value) : EndProcedure
  Procedure.s ckFilenameCharset(obj.i) : ProcedureReturn PeekS(SFtpFilenameCharset(obj)) : EndProcedure
  Procedure setCkFilenameCharset(obj.i, value.s) : ProcedureReturn SFtpPSetFilenameCharset(obj,value) : EndProcedure
  Procedure.s ckForceCipher(obj.i) : ProcedureReturn PeekS(SFtpForceCipher(obj)) : EndProcedure
  Procedure setCkForceCipher(obj.i, value.s) : ProcedureReturn SFtpPSetForceCipher(obj,value) : EndProcedure
  Procedure.l ckForceV3(obj.i) : ProcedureReturn SFtpForceV3(obj) : EndProcedure
  Procedure setCkForceV3(obj.i, value.l) : ProcedureReturn SFtpPSetForceV3(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn SFtpHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn SFtpPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHostKeyAlg(obj.i) : ProcedureReturn PeekS(SFtpHostKeyAlg(obj)) : EndProcedure
  Procedure setCkHostKeyAlg(obj.i, value.s) : ProcedureReturn SFtpPSetHostKeyAlg(obj,value) : EndProcedure
  Procedure.s ckHostKeyFingerprint(obj.i) : ProcedureReturn PeekS(SFtpHostKeyFingerprint(obj)) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(SFtpHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn SFtpPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(SFtpHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn SFtpPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(SFtpHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn SFtpPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(SFtpHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn SFtpPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn SFtpHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn SFtpPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(SFtpHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn SFtpPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn SFtpIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn SFtpPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.l ckIncludeDotDirs(obj.i) : ProcedureReturn SFtpIncludeDotDirs(obj) : EndProcedure
  Procedure setCkIncludeDotDirs(obj.i, value.l) : ProcedureReturn SFtpPSetIncludeDotDirs(obj,value) : EndProcedure
  Procedure.l ckInitializeFailCode(obj.i) : ProcedureReturn SFtpInitializeFailCode(obj) : EndProcedure
  Procedure.s ckInitializeFailReason(obj.i) : ProcedureReturn PeekS(SFtpInitializeFailReason(obj)) : EndProcedure
  Procedure.l ckIsConnected(obj.i) : ProcedureReturn SFtpIsConnected(obj) : EndProcedure
  Procedure.l ckKeepSessionLog(obj.i) : ProcedureReturn SFtpKeepSessionLog(obj) : EndProcedure
  Procedure setCkKeepSessionLog(obj.i, value.l) : ProcedureReturn SFtpPSetKeepSessionLog(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SFtpLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SFtpLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SFtpLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SFtpLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SFtpPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLastStatusCode(obj.i) : ProcedureReturn SFtpLastStatusCode(obj) : EndProcedure
  Procedure.s ckLastStatusMessage(obj.i) : ProcedureReturn PeekS(SFtpLastStatusMessage(obj)) : EndProcedure
  Procedure.l ckMaxPacketSize(obj.i) : ProcedureReturn SFtpMaxPacketSize(obj) : EndProcedure
  Procedure setCkMaxPacketSize(obj.i, value.l) : ProcedureReturn SFtpPSetMaxPacketSize(obj,value) : EndProcedure
  Procedure.l ckPasswordChangeRequested(obj.i) : ProcedureReturn SFtpPasswordChangeRequested(obj) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn SFtpPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn SFtpPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn SFtpPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn SFtpPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckPreserveDate(obj.i) : ProcedureReturn SFtpPreserveDate(obj) : EndProcedure
  Procedure setCkPreserveDate(obj.i, value.l) : ProcedureReturn SFtpPSetPreserveDate(obj,value) : EndProcedure
  Procedure.l ckProtocolVersion(obj.i) : ProcedureReturn SFtpProtocolVersion(obj) : EndProcedure
  Procedure.s ckReadDirMustMatch(obj.i) : ProcedureReturn PeekS(SFtpReadDirMustMatch(obj)) : EndProcedure
  Procedure setCkReadDirMustMatch(obj.i, value.s) : ProcedureReturn SFtpPSetReadDirMustMatch(obj,value) : EndProcedure
  Procedure.s ckReadDirMustNotMatch(obj.i) : ProcedureReturn PeekS(SFtpReadDirMustNotMatch(obj)) : EndProcedure
  Procedure setCkReadDirMustNotMatch(obj.i, value.s) : ProcedureReturn SFtpPSetReadDirMustNotMatch(obj,value) : EndProcedure
  Procedure.s ckServerIdentifier(obj.i) : ProcedureReturn PeekS(SFtpServerIdentifier(obj)) : EndProcedure
  Procedure.s ckSessionLog(obj.i) : ProcedureReturn PeekS(SFtpSessionLog(obj)) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(SFtpSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn SFtpPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(SFtpSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn SFtpPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn SFtpSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn SFtpPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(SFtpSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn SFtpPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn SFtpSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn SFtpPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn SFtpSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn SFtpPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn SFtpSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn SFtpPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckSyncCreateAllLocalDirs(obj.i) : ProcedureReturn SFtpSyncCreateAllLocalDirs(obj) : EndProcedure
  Procedure setCkSyncCreateAllLocalDirs(obj.i, value.l) : ProcedureReturn SFtpPSetSyncCreateAllLocalDirs(obj,value) : EndProcedure
  Procedure.s ckSyncDirectives(obj.i) : ProcedureReturn PeekS(SFtpSyncDirectives(obj)) : EndProcedure
  Procedure setCkSyncDirectives(obj.i, value.s) : ProcedureReturn SFtpPSetSyncDirectives(obj,value) : EndProcedure
  Procedure.s ckSyncedFiles(obj.i) : ProcedureReturn PeekS(SFtpSyncedFiles(obj)) : EndProcedure
  Procedure setCkSyncedFiles(obj.i, value.s) : ProcedureReturn SFtpPSetSyncedFiles(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatch(obj.i) : ProcedureReturn PeekS(SFtpSyncMustMatch(obj)) : EndProcedure
  Procedure setCkSyncMustMatch(obj.i, value.s) : ProcedureReturn SFtpPSetSyncMustMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatchDir(obj.i) : ProcedureReturn PeekS(SFtpSyncMustMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustMatchDir(obj.i, value.s) : ProcedureReturn SFtpPSetSyncMustMatchDir(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatch(obj.i) : ProcedureReturn PeekS(SFtpSyncMustNotMatch(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatch(obj.i, value.s) : ProcedureReturn SFtpPSetSyncMustNotMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatchDir(obj.i) : ProcedureReturn PeekS(SFtpSyncMustNotMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatchDir(obj.i, value.s) : ProcedureReturn SFtpPSetSyncMustNotMatchDir(obj,value) : EndProcedure
  Procedure.l ckTcpNoDelay(obj.i) : ProcedureReturn SFtpTcpNoDelay(obj) : EndProcedure
  Procedure setCkTcpNoDelay(obj.i, value.l) : ProcedureReturn SFtpPSetTcpNoDelay(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(SFtpUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn SFtpPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUploadChunkSize(obj.i) : ProcedureReturn SFtpUploadChunkSize(obj) : EndProcedure
  Procedure setCkUploadChunkSize(obj.i, value.l) : ProcedureReturn SFtpPSetUploadChunkSize(obj,value) : EndProcedure
  Procedure.l ckUtcMode(obj.i) : ProcedureReturn SFtpUtcMode(obj) : EndProcedure
  Procedure setCkUtcMode(obj.i, value.l) : ProcedureReturn SFtpPSetUtcMode(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SFtpVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SFtpPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SFtpVersion(obj)) : EndProcedure
  Procedure.l ckXferByteCount(obj.i) : ProcedureReturn SFtpXferByteCount(obj) : EndProcedure
  Procedure.q ckXferByteCount64(obj.i) : ProcedureReturn SFtpXferByteCount64(obj) : EndProcedure
  Procedure.l ckAccumulateBytes(obj.i, handle.s, maxBytes.l) :  ProcedureReturn SFtpAccumulateBytes(obj, handle, maxBytes) :  EndProcedure
  Procedure.i ckAccumulateBytesAsync(obj.i, handle.s, maxBytes.l) :  ProcedureReturn SFtpAccumulateBytesAsync(obj, handle, maxBytes) :  EndProcedure
  Procedure.s ckAdd64(obj.i, n1.s, n2.s) :  ProcedureReturn PeekS(SFtpAdd64(obj, n1, n2)) :  EndProcedure
  Procedure.l ckAuthenticatePk(obj.i, username.s, privateKey.i) :  ProcedureReturn SFtpAuthenticatePk(obj, username, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePkAsync(obj.i, username.s, privateKey.i) :  ProcedureReturn SFtpAuthenticatePkAsync(obj, username, privateKey) :  EndProcedure
  Procedure.l ckAuthenticatePw(obj.i, login.s, password.s) :  ProcedureReturn SFtpAuthenticatePw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticatePwAsync(obj.i, login.s, password.s) :  ProcedureReturn SFtpAuthenticatePwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticatePwPk(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SFtpAuthenticatePwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePwPkAsync(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SFtpAuthenticatePwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure.l ckAuthenticateSecPw(obj.i, login.i, password.i) :  ProcedureReturn SFtpAuthenticateSecPw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticateSecPwAsync(obj.i, login.i, password.i) :  ProcedureReturn SFtpAuthenticateSecPwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticateSecPwPk(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SFtpAuthenticateSecPwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticateSecPwPkAsync(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SFtpAuthenticateSecPwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure ckClearAccumulateBuffer(obj.i) :  ProcedureReturn SFtpClearAccumulateBuffer(obj) :  EndProcedure
  Procedure ckClearCache(obj.i) :  ProcedureReturn SFtpClearCache(obj) :  EndProcedure
  Procedure ckClearSessionLog(obj.i) :  ProcedureReturn SFtpClearSessionLog(obj) :  EndProcedure
  Procedure.l ckCloseHandle(obj.i, handle.s) :  ProcedureReturn SFtpCloseHandle(obj, handle) :  EndProcedure
  Procedure.i ckCloseHandleAsync(obj.i, handle.s) :  ProcedureReturn SFtpCloseHandleAsync(obj, handle) :  EndProcedure
  Procedure.l ckConnect(obj.i, domainName.s, port.l) :  ProcedureReturn SFtpConnect(obj, domainName, port) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, domainName.s, port.l) :  ProcedureReturn SFtpConnectAsync(obj, domainName, port) :  EndProcedure
  Procedure.l ckConnectThroughSsh(obj.i, sshConn.i, hostname.s, port.l) :  ProcedureReturn SFtpConnectThroughSsh(obj, sshConn, hostname, port) :  EndProcedure
  Procedure.i ckConnectThroughSshAsync(obj.i, sshConn.i, hostname.s, port.l) :  ProcedureReturn SFtpConnectThroughSshAsync(obj, sshConn, hostname, port) :  EndProcedure
  Procedure.l ckCopyFileAttr(obj.i, localFilename.s, remoteFilename.s, isHandle.l) :  ProcedureReturn SFtpCopyFileAttr(obj, localFilename, remoteFilename, isHandle) :  EndProcedure
  Procedure.i ckCopyFileAttrAsync(obj.i, localFilename.s, remoteFilename.s, isHandle.l) :  ProcedureReturn SFtpCopyFileAttrAsync(obj, localFilename, remoteFilename, isHandle) :  EndProcedure
  Procedure.l ckCreateDir(obj.i, path.s) :  ProcedureReturn SFtpCreateDir(obj, path) :  EndProcedure
  Procedure.i ckCreateDirAsync(obj.i, path.s) :  ProcedureReturn SFtpCreateDirAsync(obj, path) :  EndProcedure
  Procedure ckDisconnect(obj.i) :  ProcedureReturn SFtpDisconnect(obj) :  EndProcedure
  Procedure.l ckDownloadBd(obj.i, remoteFilePath.s, binData.i) :  ProcedureReturn SFtpDownloadBd(obj, remoteFilePath, binData) :  EndProcedure
  Procedure.i ckDownloadBdAsync(obj.i, remoteFilePath.s, binData.i) :  ProcedureReturn SFtpDownloadBdAsync(obj, remoteFilePath, binData) :  EndProcedure
  Procedure.l ckDownloadFile(obj.i, handle.s, toFilename.s) :  ProcedureReturn SFtpDownloadFile(obj, handle, toFilename) :  EndProcedure
  Procedure.i ckDownloadFileAsync(obj.i, handle.s, toFilename.s) :  ProcedureReturn SFtpDownloadFileAsync(obj, handle, toFilename) :  EndProcedure
  Procedure.l ckDownloadFileByName(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpDownloadFileByName(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.i ckDownloadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpDownloadFileByNameAsync(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.l ckDownloadSb(obj.i, remoteFilePath.s, charset.s, sb.i) :  ProcedureReturn SFtpDownloadSb(obj, remoteFilePath, charset, sb) :  EndProcedure
  Procedure.i ckDownloadSbAsync(obj.i, remoteFilePath.s, charset.s, sb.i) :  ProcedureReturn SFtpDownloadSbAsync(obj, remoteFilePath, charset, sb) :  EndProcedure
  Procedure.l ckEof(obj.i, handle.s) :  ProcedureReturn SFtpEof(obj, handle) :  EndProcedure
  Procedure.l ckFileExists(obj.i, remotePath.s, followLinks.l) :  ProcedureReturn SFtpFileExists(obj, remotePath, followLinks) :  EndProcedure
  Procedure.i ckFileExistsAsync(obj.i, remotePath.s, followLinks.l) :  ProcedureReturn SFtpFileExistsAsync(obj, remotePath, followLinks) :  EndProcedure
  Procedure.l ckFsync(obj.i, handle.s) :  ProcedureReturn SFtpFsync(obj, handle) :  EndProcedure
  Procedure.i ckFsyncAsync(obj.i, handle.s) :  ProcedureReturn SFtpFsyncAsync(obj, handle) :  EndProcedure
  Procedure.i ckGetFileCreateDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileCreateDt(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFileCreateDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileCreateDtAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileCreateTimeStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileCreateTimeStr(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.i ckGetFileCreateTimeStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileCreateTimeStrAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileGroup(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileGroup(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.i ckGetFileGroupAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileGroupAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFileLastAccessDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastAccessDt(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFileLastAccessDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastAccessDtAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileLastAccessStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileLastAccessStr(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.i ckGetFileLastAccessStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastAccessStrAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFileLastModifiedDt(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastModifiedDt(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFileLastModifiedDtAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastModifiedDtAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileLastModifiedStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileLastModifiedStr(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.i ckGetFileLastModifiedStrAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileLastModifiedStrAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileOwner(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileOwner(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.i ckGetFileOwnerAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileOwnerAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.l ckGetFilePermissions(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFilePermissions(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.i ckGetFilePermissionsAsync(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFilePermissionsAsync(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.l ckGetFileSize32(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileSize32(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.q ckGetFileSize64(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn SFtpGetFileSize64(obj, pathOrHandle, bFollowLinks, bIsHandle) :  EndProcedure
  Procedure.s ckGetFileSizeStr(obj.i, pathOrHandle.s, bFollowLinks.l, bIsHandle.l) :  ProcedureReturn PeekS(SFtpGetFileSizeStr(obj, pathOrHandle, bFollowLinks, bIsHandle)) :  EndProcedure
  Procedure.l ckHardLink(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpHardLink(obj, oldPath, newPath) :  EndProcedure
  Procedure.i ckHardLinkAsync(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpHardLinkAsync(obj, oldPath, newPath) :  EndProcedure
  Procedure.l ckInitializeSftp(obj.i) :  ProcedureReturn SFtpInitializeSftp(obj) :  EndProcedure
  Procedure.i ckInitializeSftpAsync(obj.i) :  ProcedureReturn SFtpInitializeSftpAsync(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn SFtpLastJsonData(obj) :  EndProcedure
  Procedure.l ckLastReadFailed(obj.i, handle.s) :  ProcedureReturn SFtpLastReadFailed(obj, handle) :  EndProcedure
  Procedure.l ckLastReadNumBytes(obj.i, handle.s) :  ProcedureReturn SFtpLastReadNumBytes(obj, handle) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn SFtpLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.s ckOpenDir(obj.i, path.s) :  ProcedureReturn PeekS(SFtpOpenDir(obj, path)) :  EndProcedure
  Procedure.i ckOpenDirAsync(obj.i, path.s) :  ProcedureReturn SFtpOpenDirAsync(obj, path) :  EndProcedure
  Procedure.s ckOpenFile(obj.i, remotePath.s, access.s, createDisposition.s) :  ProcedureReturn PeekS(SFtpOpenFile(obj, remotePath, access, createDisposition)) :  EndProcedure
  Procedure.i ckOpenFileAsync(obj.i, remotePath.s, access.s, createDisposition.s) :  ProcedureReturn SFtpOpenFileAsync(obj, remotePath, access, createDisposition) :  EndProcedure
  Procedure.i ckReadDir(obj.i, handle.s) :  ProcedureReturn SFtpReadDir(obj, handle) :  EndProcedure
  Procedure.i ckReadDirAsync(obj.i, handle.s) :  ProcedureReturn SFtpReadDirAsync(obj, handle) :  EndProcedure
  Procedure.l ckReadFileBd(obj.i, handle.s, numBytes.l, bd.i) :  ProcedureReturn SFtpReadFileBd(obj, handle, numBytes, bd) :  EndProcedure
  Procedure.i ckReadFileBdAsync(obj.i, handle.s, numBytes.l, bd.i) :  ProcedureReturn SFtpReadFileBdAsync(obj, handle, numBytes, bd) :  EndProcedure
  Procedure.s ckReadFileText(obj.i, handle.s, numBytes.l, charset.s) :  ProcedureReturn PeekS(SFtpReadFileText(obj, handle, numBytes, charset)) :  EndProcedure
  Procedure.i ckReadFileTextAsync(obj.i, handle.s, numBytes.l, charset.s) :  ProcedureReturn SFtpReadFileTextAsync(obj, handle, numBytes, charset) :  EndProcedure
  Procedure.s ckReadFileText32(obj.i, handle.s, offset.l, numBytes.l, charset.s) :  ProcedureReturn PeekS(SFtpReadFileText32(obj, handle, offset, numBytes, charset)) :  EndProcedure
  Procedure.s ckReadFileText64(obj.i, handle.s, offset.q, numBytes.l, charset.s) :  ProcedureReturn PeekS(SFtpReadFileText64(obj, handle, offset, numBytes, charset)) :  EndProcedure
  Procedure.s ckReadFileText64s(obj.i, handle.s, offset.s, numBytes.l, charset.s) :  ProcedureReturn PeekS(SFtpReadFileText64s(obj, handle, offset, numBytes, charset)) :  EndProcedure
  Procedure.s ckReadLink(obj.i, path.s) :  ProcedureReturn PeekS(SFtpReadLink(obj, path)) :  EndProcedure
  Procedure.i ckReadLinkAsync(obj.i, path.s) :  ProcedureReturn SFtpReadLinkAsync(obj, path) :  EndProcedure
  Procedure.s ckRealPath(obj.i, originalPath.s, composePath.s) :  ProcedureReturn PeekS(SFtpRealPath(obj, originalPath, composePath)) :  EndProcedure
  Procedure.i ckRealPathAsync(obj.i, originalPath.s, composePath.s) :  ProcedureReturn SFtpRealPathAsync(obj, originalPath, composePath) :  EndProcedure
  Procedure.l ckRemoveDir(obj.i, path.s) :  ProcedureReturn SFtpRemoveDir(obj, path) :  EndProcedure
  Procedure.i ckRemoveDirAsync(obj.i, path.s) :  ProcedureReturn SFtpRemoveDirAsync(obj, path) :  EndProcedure
  Procedure.l ckRemoveFile(obj.i, filename.s) :  ProcedureReturn SFtpRemoveFile(obj, filename) :  EndProcedure
  Procedure.i ckRemoveFileAsync(obj.i, filename.s) :  ProcedureReturn SFtpRemoveFileAsync(obj, filename) :  EndProcedure
  Procedure.l ckRenameFileOrDir(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpRenameFileOrDir(obj, oldPath, newPath) :  EndProcedure
  Procedure.i ckRenameFileOrDirAsync(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpRenameFileOrDirAsync(obj, oldPath, newPath) :  EndProcedure
  Procedure.l ckResumeDownloadFileByName(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpResumeDownloadFileByName(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.i ckResumeDownloadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpResumeDownloadFileByNameAsync(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.l ckResumeUploadFileByName(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpResumeUploadFileByName(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.i ckResumeUploadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpResumeUploadFileByNameAsync(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SFtpSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSendIgnore(obj.i) :  ProcedureReturn SFtpSendIgnore(obj) :  EndProcedure
  Procedure.i ckSendIgnoreAsync(obj.i) :  ProcedureReturn SFtpSendIgnoreAsync(obj) :  EndProcedure
  Procedure.l ckSetCreateDt(obj.i, pathOrHandle.s, isHandle.l, createDateTime.i) :  ProcedureReturn SFtpSetCreateDt(obj, pathOrHandle, isHandle, createDateTime) :  EndProcedure
  Procedure.i ckSetCreateDtAsync(obj.i, pathOrHandle.s, isHandle.l, createDateTime.i) :  ProcedureReturn SFtpSetCreateDtAsync(obj, pathOrHandle, isHandle, createDateTime) :  EndProcedure
  Procedure.l ckSetCreateTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetCreateTimeStr(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.i ckSetCreateTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetCreateTimeStrAsync(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.l ckSetLastAccessDt(obj.i, pathOrHandle.s, isHandle.l, accessDateTime.i) :  ProcedureReturn SFtpSetLastAccessDt(obj, pathOrHandle, isHandle, accessDateTime) :  EndProcedure
  Procedure.i ckSetLastAccessDtAsync(obj.i, pathOrHandle.s, isHandle.l, accessDateTime.i) :  ProcedureReturn SFtpSetLastAccessDtAsync(obj, pathOrHandle, isHandle, accessDateTime) :  EndProcedure
  Procedure.l ckSetLastAccessTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetLastAccessTimeStr(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.i ckSetLastAccessTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetLastAccessTimeStrAsync(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.l ckSetLastModifiedDt(obj.i, pathOrHandle.s, isHandle.l, modifiedDateTime.i) :  ProcedureReturn SFtpSetLastModifiedDt(obj, pathOrHandle, isHandle, modifiedDateTime) :  EndProcedure
  Procedure.i ckSetLastModifiedDtAsync(obj.i, pathOrHandle.s, isHandle.l, modifiedDateTime.i) :  ProcedureReturn SFtpSetLastModifiedDtAsync(obj, pathOrHandle, isHandle, modifiedDateTime) :  EndProcedure
  Procedure.l ckSetLastModifiedTimeStr(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetLastModifiedTimeStr(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.i ckSetLastModifiedTimeStrAsync(obj.i, pathOrHandle.s, bIsHandle.l, dateTimeStr.s) :  ProcedureReturn SFtpSetLastModifiedTimeStrAsync(obj, pathOrHandle, bIsHandle, dateTimeStr) :  EndProcedure
  Procedure.l ckSetOwnerAndGroup(obj.i, pathOrHandle.s, isHandle.l, owner.s, group.s) :  ProcedureReturn SFtpSetOwnerAndGroup(obj, pathOrHandle, isHandle, owner, group) :  EndProcedure
  Procedure.i ckSetOwnerAndGroupAsync(obj.i, pathOrHandle.s, isHandle.l, owner.s, group.s) :  ProcedureReturn SFtpSetOwnerAndGroupAsync(obj, pathOrHandle, isHandle, owner, group) :  EndProcedure
  Procedure.l ckSetPermissions(obj.i, pathOrHandle.s, isHandle.l, permissions.l) :  ProcedureReturn SFtpSetPermissions(obj, pathOrHandle, isHandle, permissions) :  EndProcedure
  Procedure.i ckSetPermissionsAsync(obj.i, pathOrHandle.s, isHandle.l, permissions.l) :  ProcedureReturn SFtpSetPermissionsAsync(obj, pathOrHandle, isHandle, permissions) :  EndProcedure
  Procedure.l ckSymLink(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpSymLink(obj, oldPath, newPath) :  EndProcedure
  Procedure.i ckSymLinkAsync(obj.i, oldPath.s, newPath.s) :  ProcedureReturn SFtpSymLinkAsync(obj, oldPath, newPath) :  EndProcedure
  Procedure.l ckSyncTreeDownload(obj.i, remoteRoot.s, localRoot.s, mode.l, recurse.l) :  ProcedureReturn SFtpSyncTreeDownload(obj, remoteRoot, localRoot, mode, recurse) :  EndProcedure
  Procedure.i ckSyncTreeDownloadAsync(obj.i, remoteRoot.s, localRoot.s, mode.l, recurse.l) :  ProcedureReturn SFtpSyncTreeDownloadAsync(obj, remoteRoot, localRoot, mode, recurse) :  EndProcedure
  Procedure.l ckSyncTreeUpload(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l) :  ProcedureReturn SFtpSyncTreeUpload(obj, localBaseDir, remoteBaseDir, mode, bRecurse) :  EndProcedure
  Procedure.i ckSyncTreeUploadAsync(obj.i, localBaseDir.s, remoteBaseDir.s, mode.l, bRecurse.l) :  ProcedureReturn SFtpSyncTreeUploadAsync(obj, localBaseDir, remoteBaseDir, mode, bRecurse) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn SFtpUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUploadBd(obj.i, binData.i, remoteFilePath.s) :  ProcedureReturn SFtpUploadBd(obj, binData, remoteFilePath) :  EndProcedure
  Procedure.i ckUploadBdAsync(obj.i, binData.i, remoteFilePath.s) :  ProcedureReturn SFtpUploadBdAsync(obj, binData, remoteFilePath) :  EndProcedure
  Procedure.l ckUploadFile(obj.i, handle.s, fromLocalFilePath.s) :  ProcedureReturn SFtpUploadFile(obj, handle, fromLocalFilePath) :  EndProcedure
  Procedure.i ckUploadFileAsync(obj.i, handle.s, fromLocalFilePath.s) :  ProcedureReturn SFtpUploadFileAsync(obj, handle, fromLocalFilePath) :  EndProcedure
  Procedure.l ckUploadFileByName(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpUploadFileByName(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.i ckUploadFileByNameAsync(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn SFtpUploadFileByNameAsync(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.l ckUploadSb(obj.i, sb.i, remoteFilePath.s, charset.s, includeBom.l) :  ProcedureReturn SFtpUploadSb(obj, sb, remoteFilePath, charset, includeBom) :  EndProcedure
  Procedure.i ckUploadSbAsync(obj.i, sb.i, remoteFilePath.s, charset.s, includeBom.l) :  ProcedureReturn SFtpUploadSbAsync(obj, sb, remoteFilePath, charset, includeBom) :  EndProcedure
  Procedure.l ckWriteFileBd(obj.i, handle.s, bd.i) :  ProcedureReturn SFtpWriteFileBd(obj, handle, bd) :  EndProcedure
  Procedure.i ckWriteFileBdAsync(obj.i, handle.s, bd.i) :  ProcedureReturn SFtpWriteFileBdAsync(obj, handle, bd) :  EndProcedure
  Procedure.l ckWriteFileText(obj.i, handle.s, charset.s, textData.s) :  ProcedureReturn SFtpWriteFileText(obj, handle, charset, textData) :  EndProcedure
  Procedure.i ckWriteFileTextAsync(obj.i, handle.s, charset.s, textData.s) :  ProcedureReturn SFtpWriteFileTextAsync(obj, handle, charset, textData) :  EndProcedure
  Procedure.l ckWriteFileText32(obj.i, handle.s, offset32.l, charset.s, textData.s) :  ProcedureReturn SFtpWriteFileText32(obj, handle, offset32, charset, textData) :  EndProcedure
  Procedure.l ckWriteFileText64(obj.i, handle.s, offset64.q, charset.s, textData.s) :  ProcedureReturn SFtpWriteFileText64(obj, handle, offset64, charset, textData) :  EndProcedure
  Procedure.l ckWriteFileText64s(obj.i, handle.s, offset64.s, charset.s, textData.s) :  ProcedureReturn SFtpWriteFileText64s(obj, handle, offset64, charset, textData) :  EndProcedure
EndModule

