DeclareModule CkFtp2
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckAccount(obj.i)
  Declare setCkAccount(obj.i, value.s)
  Declare.l ckActivePortRangeEnd(obj.i)
  Declare setCkActivePortRangeEnd(obj.i, value.l)
  Declare.l ckActivePortRangeStart(obj.i)
  Declare setCkActivePortRangeStart(obj.i, value.l)
  Declare.l ckAllocateSize(obj.i)
  Declare setCkAllocateSize(obj.i, value.l)
  Declare.l ckAllowMlsd(obj.i)
  Declare setCkAllowMlsd(obj.i, value.l)
  Declare.l ckAsyncBytesReceived(obj.i)
  Declare.q ckAsyncBytesReceived64(obj.i)
  Declare.l ckAsyncBytesSent(obj.i)
  Declare.q ckAsyncBytesSent64(obj.i)
  Declare.l ckAuthSsl(obj.i)
  Declare setCkAuthSsl(obj.i, value.l)
  Declare.l ckAuthTls(obj.i)
  Declare setCkAuthTls(obj.i, value.l)
  Declare.l ckAutoFeat(obj.i)
  Declare setCkAutoFeat(obj.i, value.l)
  Declare.l ckAutoFix(obj.i)
  Declare setCkAutoFix(obj.i, value.l)
  Declare.l ckAutoGetSizeForProgress(obj.i)
  Declare setCkAutoGetSizeForProgress(obj.i, value.l)
  Declare.l ckAutoOptsUtf8(obj.i)
  Declare setCkAutoOptsUtf8(obj.i, value.l)
  Declare.l ckAutoSetUseEpsv(obj.i)
  Declare setCkAutoSetUseEpsv(obj.i, value.l)
  Declare.l ckAutoSyst(obj.i)
  Declare setCkAutoSyst(obj.i, value.l)
  Declare.l ckAutoXcrc(obj.i)
  Declare setCkAutoXcrc(obj.i, value.l)
  Declare.l ckBandwidthThrottleDown(obj.i)
  Declare setCkBandwidthThrottleDown(obj.i, value.l)
  Declare.l ckBandwidthThrottleUp(obj.i)
  Declare setCkBandwidthThrottleUp(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.s ckCommandCharset(obj.i)
  Declare setCkCommandCharset(obj.i, value.s)
  Declare.l ckConnectFailReason(obj.i)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.l ckConnectVerified(obj.i)
  Declare.l ckCrlfMode(obj.i)
  Declare setCkCrlfMode(obj.i, value.l)
  Declare.s ckDataProtection(obj.i)
  Declare setCkDataProtection(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDirListingCharset(obj.i)
  Declare setCkDirListingCharset(obj.i, value.s)
  Declare.l ckDownloadTransferRate(obj.i)
  Declare.s ckForcePortIpAddress(obj.i)
  Declare setCkForcePortIpAddress(obj.i, value.s)
  Declare.s ckGreeting(obj.i)
  Declare.l ckHasModeZ(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHostname(obj.i)
  Declare setCkHostname(obj.i, value.s)
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
  Declare.l ckIsConnected(obj.i)
  Declare.l ckKeepSessionLog(obj.i)
  Declare setCkKeepSessionLog(obj.i, value.l)
  Declare.l ckLargeFileMeasures(obj.i)
  Declare setCkLargeFileMeasures(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastReply(obj.i)
  Declare.s ckListPattern(obj.i)
  Declare setCkListPattern(obj.i, value.s)
  Declare.l ckLoginVerified(obj.i)
  Declare.l ckNumFilesAndDirs(obj.i)
  Declare.l ckPartialTransfer(obj.i)
  Declare.l ckPassive(obj.i)
  Declare setCkPassive(obj.i, value.l)
  Declare.l ckPassiveUseHostAddr(obj.i)
  Declare setCkPassiveUseHostAddr(obj.i, value.l)
  Declare.s ckPassword(obj.i)
  Declare setCkPassword(obj.i, value.s)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPort(obj.i)
  Declare setCkPort(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckPreferNlst(obj.i)
  Declare setCkPreferNlst(obj.i, value.l)
  Declare.l ckProgressMonSize(obj.i)
  Declare setCkProgressMonSize(obj.i, value.l)
  Declare.q ckProgressMonSize64(obj.i)
  Declare setCkProgressMonSize64(obj.i, value.q)
  Declare.s ckProxyHostname(obj.i)
  Declare setCkProxyHostname(obj.i, value.s)
  Declare.l ckProxyMethod(obj.i)
  Declare setCkProxyMethod(obj.i, value.l)
  Declare.s ckProxyPassword(obj.i)
  Declare setCkProxyPassword(obj.i, value.s)
  Declare.l ckProxyPort(obj.i)
  Declare setCkProxyPort(obj.i, value.l)
  Declare.s ckProxyUsername(obj.i)
  Declare setCkProxyUsername(obj.i, value.s)
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
  Declare.l ckRestartNext(obj.i)
  Declare setCkRestartNext(obj.i, value.l)
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
  Declare.l ckSsl(obj.i)
  Declare setCkSsl(obj.i, value.l)
  Declare.s ckSslAllowedCiphers(obj.i)
  Declare setCkSslAllowedCiphers(obj.i, value.s)
  Declare.s ckSslProtocol(obj.i)
  Declare setCkSslProtocol(obj.i, value.s)
  Declare.l ckSslServerCertVerified(obj.i)
  Declare.l ckSyncCreateAllLocalDirs(obj.i)
  Declare setCkSyncCreateAllLocalDirs(obj.i, value.l)
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
  Declare.s ckSyncPreview(obj.i)
  Declare.s ckTlsCipherSuite(obj.i)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.s ckTlsVersion(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUploadTransferRate(obj.i)
  Declare.l ckUseEpsv(obj.i)
  Declare setCkUseEpsv(obj.i, value.l)
  Declare.s ckUsername(obj.i)
  Declare setCkUsername(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppendFile(obj.i, localFilePath.s, remoteFilePath.s)
  Declare.i ckAppendFileAsync(obj.i, localFilePath.s, remoteFilePath.s)
  Declare.l ckAppendFileFromTextData(obj.i, remoteFilename.s, textData.s, charset.s)
  Declare.i ckAppendFileFromTextDataAsync(obj.i, remoteFilename.s, textData.s, charset.s)
  Declare.l ckChangeRemoteDir(obj.i, remoteDirPath.s)
  Declare.i ckChangeRemoteDirAsync(obj.i, remoteDirPath.s)
  Declare.l ckCheckConnection(obj.i)
  Declare.i ckCheckConnectionAsync(obj.i)
  Declare.l ckClearControlChannel(obj.i)
  Declare.i ckClearControlChannelAsync(obj.i)
  Declare ckClearDirCache(obj.i)
  Declare ckClearSessionLog(obj.i)
  Declare.l ckConnect(obj.i)
  Declare.i ckConnectAsync(obj.i)
  Declare.l ckConnectOnly(obj.i)
  Declare.i ckConnectOnlyAsync(obj.i)
  Declare.l ckConvertToTls(obj.i)
  Declare.i ckConvertToTlsAsync(obj.i)
  Declare.s ckCreatePlan(obj.i, localDir.s)
  Declare.i ckCreatePlanAsync(obj.i, localDir.s)
  Declare.l ckCreateRemoteDir(obj.i, remoteDirPath.s)
  Declare.i ckCreateRemoteDirAsync(obj.i, remoteDirPath.s)
  Declare.l ckDeleteMatching(obj.i, remotePattern.s)
  Declare.i ckDeleteMatchingAsync(obj.i, remotePattern.s)
  Declare.l ckDeleteRemoteFile(obj.i, remoteFilePath.s)
  Declare.i ckDeleteRemoteFileAsync(obj.i, remoteFilePath.s)
  Declare.l ckDeleteTree(obj.i)
  Declare.i ckDeleteTreeAsync(obj.i)
  Declare.l ckDetermineProxyMethod(obj.i)
  Declare.i ckDetermineProxyMethodAsync(obj.i)
  Declare.s ckDetermineSettings(obj.i)
  Declare.i ckDetermineSettingsAsync(obj.i)
  Declare.s ckDirTreeXml(obj.i)
  Declare.i ckDirTreeXmlAsync(obj.i)
  Declare.l ckDisconnect(obj.i)
  Declare.i ckDisconnectAsync(obj.i)
  Declare.l ckDownloadTree(obj.i, localRoot.s)
  Declare.i ckDownloadTreeAsync(obj.i, localRoot.s)
  Declare.s ckFeat(obj.i)
  Declare.i ckFeatAsync(obj.i)
  Declare.i ckGetCreateDt(obj.i, index.l)
  Declare.i ckGetCreateDtAsync(obj.i, index.l)
  Declare.i ckGetCreateDtByName(obj.i, filename.s)
  Declare.i ckGetCreateDtByNameAsync(obj.i, filename.s)
  Declare.s ckGetCreateTimeByNameStr(obj.i, filename.s)
  Declare.i ckGetCreateTimeByNameStrAsync(obj.i, filename.s)
  Declare.s ckGetCreateTimeStr(obj.i, index.l)
  Declare.i ckGetCreateTimeStrAsync(obj.i, index.l)
  Declare.s ckGetCurrentRemoteDir(obj.i)
  Declare.i ckGetCurrentRemoteDirAsync(obj.i)
  Declare.l ckGetDirCount(obj.i)
  Declare.i ckGetDirCountAsync(obj.i)
  Declare.l ckGetFile(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.i ckGetFileAsync(obj.i, remoteFilePath.s, localFilePath.s)
  Declare.l ckGetFileBd(obj.i, remoteFilePath.s, binData.i)
  Declare.i ckGetFileBdAsync(obj.i, remoteFilePath.s, binData.i)
  Declare.s ckGetFilename(obj.i, index.l)
  Declare.i ckGetFilenameAsync(obj.i, index.l)
  Declare.l ckGetFileSb(obj.i, remoteFilePath.s, charset.s, sb.i)
  Declare.i ckGetFileSbAsync(obj.i, remoteFilePath.s, charset.s, sb.i)
  Declare.l ckGetFileToStream(obj.i, remoteFilePath.s, toStream.i)
  Declare.i ckGetFileToStreamAsync(obj.i, remoteFilePath.s, toStream.i)
  Declare.s ckGetGroup(obj.i, index.l)
  Declare.i ckGetGroupAsync(obj.i, index.l)
  Declare.l ckGetIsDirectory(obj.i, index.l)
  Declare.i ckGetIsDirectoryAsync(obj.i, index.l)
  Declare.l ckGetIsSymbolicLink(obj.i, index.l)
  Declare.i ckGetIsSymbolicLinkAsync(obj.i, index.l)
  Declare.i ckGetLastModDt(obj.i, index.l)
  Declare.i ckGetLastModDtAsync(obj.i, index.l)
  Declare.i ckGetLastModDtByName(obj.i, filename.s)
  Declare.i ckGetLastModDtByNameAsync(obj.i, filename.s)
  Declare.s ckGetLastModifiedTimeByNameStr(obj.i, filename.s)
  Declare.i ckGetLastModifiedTimeByNameStrAsync(obj.i, filename.s)
  Declare.s ckGetLastModifiedTimeStr(obj.i, index.l)
  Declare.i ckGetLastModifiedTimeStrAsync(obj.i, index.l)
  Declare.s ckGetOwner(obj.i, index.l)
  Declare.i ckGetOwnerAsync(obj.i, index.l)
  Declare.s ckGetPermissions(obj.i, index.l)
  Declare.i ckGetPermissionsAsync(obj.i, index.l)
  Declare.s ckGetPermType(obj.i, index.l)
  Declare.i ckGetPermTypeAsync(obj.i, index.l)
  Declare.s ckGetRemoteFileTextC(obj.i, remoteFilename.s, charset.s)
  Declare.i ckGetRemoteFileTextCAsync(obj.i, remoteFilename.s, charset.s)
  Declare.s ckGetRemoteFileTextData(obj.i, remoteFilename.s)
  Declare.i ckGetRemoteFileTextDataAsync(obj.i, remoteFilename.s)
  Declare.l ckGetSize(obj.i, index.l)
  Declare.i ckGetSizeAsync(obj.i, index.l)
  Declare.q ckGetSize64(obj.i, index.l)
  Declare.l ckGetSizeByName(obj.i, filename.s)
  Declare.i ckGetSizeByNameAsync(obj.i, filename.s)
  Declare.q ckGetSizeByName64(obj.i, filename.s)
  Declare.s ckGetSizeStr(obj.i, index.l)
  Declare.i ckGetSizeStrAsync(obj.i, index.l)
  Declare.s ckGetSizeStrByName(obj.i, filename.s)
  Declare.i ckGetSizeStrByNameAsync(obj.i, filename.s)
  Declare.i ckGetSslServerCert(obj.i)
  Declare.s ckGetTextDirListing(obj.i, pattern.s)
  Declare.i ckGetTextDirListingAsync(obj.i, pattern.s)
  Declare.s ckGetXmlDirListing(obj.i, pattern.s)
  Declare.i ckGetXmlDirListingAsync(obj.i, pattern.s)
  Declare.l ckIsUnlocked(obj.i)
  Declare.l ckLargeFileUpload(obj.i, localPath.s, remotePath.s, chunkSize.l)
  Declare.i ckLargeFileUploadAsync(obj.i, localPath.s, remotePath.s, chunkSize.l)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckLoginAfterConnectOnly(obj.i)
  Declare.i ckLoginAfterConnectOnlyAsync(obj.i)
  Declare.l ckMGetFiles(obj.i, remotePattern.s, localDir.s)
  Declare.i ckMGetFilesAsync(obj.i, remotePattern.s, localDir.s)
  Declare.l ckMPutFiles(obj.i, pattern.s)
  Declare.i ckMPutFilesAsync(obj.i, pattern.s)
  Declare.s ckNlstXml(obj.i, remoteDirPattern.s)
  Declare.i ckNlstXmlAsync(obj.i, remoteDirPattern.s)
  Declare.l ckNoop(obj.i)
  Declare.i ckNoopAsync(obj.i)
  Declare.l ckPutFile(obj.i, localFilePath.s, remoteFilePath.s)
  Declare.i ckPutFileAsync(obj.i, localFilePath.s, remoteFilePath.s)
  Declare.l ckPutFileBd(obj.i, binData.i, remoteFilePath.s)
  Declare.i ckPutFileBdAsync(obj.i, binData.i, remoteFilePath.s)
  Declare.l ckPutFileFromTextData(obj.i, remoteFilename.s, textData.s, charset.s)
  Declare.i ckPutFileFromTextDataAsync(obj.i, remoteFilename.s, textData.s, charset.s)
  Declare.l ckPutFileSb(obj.i, sb.i, charset.s, includeBom.l, remoteFilePath.s)
  Declare.i ckPutFileSbAsync(obj.i, sb.i, charset.s, includeBom.l, remoteFilePath.s)
  Declare.l ckPutPlan(obj.i, plan.s, alreadyDoneFilename.s)
  Declare.i ckPutPlanAsync(obj.i, plan.s, alreadyDoneFilename.s)
  Declare.l ckPutTree(obj.i, localDir.s)
  Declare.i ckPutTreeAsync(obj.i, localDir.s)
  Declare.l ckQuote(obj.i, cmd.s)
  Declare.i ckQuoteAsync(obj.i, cmd.s)
  Declare.l ckRemoveRemoteDir(obj.i, remoteDirPath.s)
  Declare.i ckRemoveRemoteDirAsync(obj.i, remoteDirPath.s)
  Declare.l ckRenameRemoteFile(obj.i, existingRemoteFilePath.s, newRemoteFilePath.s)
  Declare.i ckRenameRemoteFileAsync(obj.i, existingRemoteFilePath.s, newRemoteFilePath.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSendCommand(obj.i, cmd.s)
  Declare.i ckSendCommandAsync(obj.i, cmd.s)
  Declare.l ckSetModeZ(obj.i)
  Declare.i ckSetModeZAsync(obj.i)
  Declare ckSetOldestDateStr(obj.i, oldestDateTimeStr.s)
  Declare.l ckSetOption(obj.i, option.s)
  Declare.l ckSetPassword(obj.i, password.i)
  Declare.l ckSetRemoteFileDateTimeStr(obj.i, dateTimeStr.s, remoteFilename.s)
  Declare.i ckSetRemoteFileDateTimeStrAsync(obj.i, dateTimeStr.s, remoteFilename.s)
  Declare.l ckSetRemoteFileDt(obj.i, dt.i, remoteFilename.s)
  Declare.i ckSetRemoteFileDtAsync(obj.i, dt.i, remoteFilename.s)
  Declare.l ckSetSecurePassword(obj.i, password.i)
  Declare ckSetSslCertRequirement(obj.i, reqName.s, reqValue.s)
  Declare.l ckSetSslClientCert(obj.i, cert.i)
  Declare.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s)
  Declare.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s)
  Declare.l ckSetTypeAscii(obj.i)
  Declare.i ckSetTypeAsciiAsync(obj.i)
  Declare.l ckSetTypeBinary(obj.i)
  Declare.i ckSetTypeBinaryAsync(obj.i)
  Declare.l ckSite(obj.i, siteCommand.s)
  Declare.i ckSiteAsync(obj.i, siteCommand.s)
  Declare ckSleepMs(obj.i, millisec.l)
  Declare.s ckStat(obj.i)
  Declare.i ckStatAsync(obj.i)
  Declare.l ckSyncDeleteRemote(obj.i, localRoot.s)
  Declare.i ckSyncDeleteRemoteAsync(obj.i, localRoot.s)
  Declare.l ckSyncLocalDir(obj.i, localRoot.s, mode.l)
  Declare.i ckSyncLocalDirAsync(obj.i, localRoot.s, mode.l)
  Declare.l ckSyncLocalTree(obj.i, localRoot.s, mode.l)
  Declare.i ckSyncLocalTreeAsync(obj.i, localRoot.s, mode.l)
  Declare.l ckSyncRemoteTree(obj.i, localRoot.s, mode.l)
  Declare.i ckSyncRemoteTreeAsync(obj.i, localRoot.s, mode.l)
  Declare.l ckSyncRemoteTree2(obj.i, localDirPath.s, mode.l, bDescend.l, bPreviewOnly.l)
  Declare.i ckSyncRemoteTree2Async(obj.i, localDirPath.s, mode.l, bDescend.l, bPreviewOnly.l)
  Declare.s ckSyst(obj.i)
  Declare.i ckSystAsync(obj.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkFtp2
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMisls(obj.i, arg1.i, arg2.s, arg3.l, arg4.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMisls(obj.i, arg1.i, arg2.s, arg3.l, arg4.s)
  PrototypeC.l cklMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.q ckqMl(obj.i, arg1.l)
  PrototypeC.q ckqMs(obj.i, arg1.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.i CkFtp2Create()
  PrototypeC CkFtp2Dispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkFtp2LibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkFtp2LibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkFtp2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkFtp2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkFtp2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global Ftp2Create.CkFtp2Create = GetFunction(CkFtp2LibId,"CkFtp2U_CreateW")
  Global Ftp2Dispose.CkFtp2Dispose = GetFunction(CkFtp2LibId,"CkFtp2U_DisposeW")
  Global Ftp2AbortCurrent.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAbortCurrentW")
  Global Ftp2PSetAbortCurrent.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAbortCurrentW")
  Global Ftp2Account.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_accountW")
  Global Ftp2PSetAccount.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAccountW")
  Global Ftp2ActivePortRangeEnd.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getActivePortRangeEndW")
  Global Ftp2PSetActivePortRangeEnd.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putActivePortRangeEndW")
  Global Ftp2ActivePortRangeStart.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getActivePortRangeStartW")
  Global Ftp2PSetActivePortRangeStart.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putActivePortRangeStartW")
  Global Ftp2AllocateSize.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAllocateSizeW")
  Global Ftp2PSetAllocateSize.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAllocateSizeW")
  Global Ftp2AllowMlsd.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAllowMlsdW")
  Global Ftp2PSetAllowMlsd.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAllowMlsdW")
  Global Ftp2AsyncBytesReceived.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAsyncBytesReceivedW")
  Global Ftp2AsyncBytesReceived64.ckqPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAsyncBytesReceived64W")
  Global Ftp2AsyncBytesSent.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAsyncBytesSentW")
  Global Ftp2AsyncBytesSent64.ckqPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAsyncBytesSent64W")
  Global Ftp2AuthSsl.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAuthSslW")
  Global Ftp2PSetAuthSsl.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAuthSslW")
  Global Ftp2AuthTls.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAuthTlsW")
  Global Ftp2PSetAuthTls.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAuthTlsW")
  Global Ftp2AutoFeat.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoFeatW")
  Global Ftp2PSetAutoFeat.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoFeatW")
  Global Ftp2AutoFix.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoFixW")
  Global Ftp2PSetAutoFix.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoFixW")
  Global Ftp2AutoGetSizeForProgress.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoGetSizeForProgressW")
  Global Ftp2PSetAutoGetSizeForProgress.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoGetSizeForProgressW")
  Global Ftp2AutoOptsUtf8.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoOptsUtf8W")
  Global Ftp2PSetAutoOptsUtf8.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoOptsUtf8W")
  Global Ftp2AutoSetUseEpsv.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoSetUseEpsvW")
  Global Ftp2PSetAutoSetUseEpsv.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoSetUseEpsvW")
  Global Ftp2AutoSyst.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoSystW")
  Global Ftp2PSetAutoSyst.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoSystW")
  Global Ftp2AutoXcrc.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getAutoXcrcW")
  Global Ftp2PSetAutoXcrc.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putAutoXcrcW")
  Global Ftp2BandwidthThrottleDown.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getBandwidthThrottleDownW")
  Global Ftp2PSetBandwidthThrottleDown.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putBandwidthThrottleDownW")
  Global Ftp2BandwidthThrottleUp.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getBandwidthThrottleUpW")
  Global Ftp2PSetBandwidthThrottleUp.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putBandwidthThrottleUpW")
  Global Ftp2ClientIpAddress.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_clientIpAddressW")
  Global Ftp2PSetClientIpAddress.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putClientIpAddressW")
  Global Ftp2CommandCharset.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_commandCharsetW")
  Global Ftp2PSetCommandCharset.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putCommandCharsetW")
  Global Ftp2ConnectFailReason.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getConnectFailReasonW")
  Global Ftp2ConnectTimeout.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getConnectTimeoutW")
  Global Ftp2PSetConnectTimeout.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putConnectTimeoutW")
  Global Ftp2ConnectVerified.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getConnectVerifiedW")
  Global Ftp2CrlfMode.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getCrlfModeW")
  Global Ftp2PSetCrlfMode.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putCrlfModeW")
  Global Ftp2DataProtection.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_dataProtectionW")
  Global Ftp2PSetDataProtection.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putDataProtectionW")
  Global Ftp2DebugLogFilePath.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_debugLogFilePathW")
  Global Ftp2PSetDebugLogFilePath.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putDebugLogFilePathW")
  Global Ftp2DirListingCharset.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_dirListingCharsetW")
  Global Ftp2PSetDirListingCharset.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putDirListingCharsetW")
  Global Ftp2DownloadTransferRate.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getDownloadTransferRateW")
  Global Ftp2ForcePortIpAddress.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_forcePortIpAddressW")
  Global Ftp2PSetForcePortIpAddress.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putForcePortIpAddressW")
  Global Ftp2Greeting.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_greetingW")
  Global Ftp2HasModeZ.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getHasModeZW")
  Global Ftp2HeartbeatMs.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getHeartbeatMsW")
  Global Ftp2PSetHeartbeatMs.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHeartbeatMsW")
  Global Ftp2Hostname.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_hostnameW")
  Global Ftp2PSetHostname.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHostnameW")
  Global Ftp2HttpProxyAuthMethod.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_httpProxyAuthMethodW")
  Global Ftp2PSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyAuthMethodW")
  Global Ftp2HttpProxyDomain.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_httpProxyDomainW")
  Global Ftp2PSetHttpProxyDomain.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyDomainW")
  Global Ftp2HttpProxyHostname.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_httpProxyHostnameW")
  Global Ftp2PSetHttpProxyHostname.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyHostnameW")
  Global Ftp2HttpProxyPassword.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_httpProxyPasswordW")
  Global Ftp2PSetHttpProxyPassword.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyPasswordW")
  Global Ftp2HttpProxyPort.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getHttpProxyPortW")
  Global Ftp2PSetHttpProxyPort.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyPortW")
  Global Ftp2HttpProxyUsername.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_httpProxyUsernameW")
  Global Ftp2PSetHttpProxyUsername.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putHttpProxyUsernameW")
  Global Ftp2IdleTimeoutMs.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getIdleTimeoutMsW")
  Global Ftp2PSetIdleTimeoutMs.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putIdleTimeoutMsW")
  Global Ftp2IsConnected.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getIsConnectedW")
  Global Ftp2KeepSessionLog.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getKeepSessionLogW")
  Global Ftp2PSetKeepSessionLog.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putKeepSessionLogW")
  Global Ftp2LargeFileMeasures.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getLargeFileMeasuresW")
  Global Ftp2PSetLargeFileMeasures.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putLargeFileMeasuresW")
  Global Ftp2LastErrorHtml.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_lastErrorHtmlW")
  Global Ftp2LastErrorText.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_lastErrorTextW")
  Global Ftp2LastErrorXml.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_lastErrorXmlW")
  Global Ftp2LastMethodSuccess.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getLastMethodSuccessW")
  Global Ftp2PSetLastMethodSuccess.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putLastMethodSuccessW")
  Global Ftp2LastReply.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_lastReplyW")
  Global Ftp2ListPattern.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_listPatternW")
  Global Ftp2PSetListPattern.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putListPatternW")
  Global Ftp2LoginVerified.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getLoginVerifiedW")
  Global Ftp2NumFilesAndDirs.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getNumFilesAndDirsW")
  Global Ftp2PartialTransfer.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPartialTransferW")
  Global Ftp2Passive.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPassiveW")
  Global Ftp2PSetPassive.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPassiveW")
  Global Ftp2PassiveUseHostAddr.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPassiveUseHostAddrW")
  Global Ftp2PSetPassiveUseHostAddr.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPassiveUseHostAddrW")
  Global Ftp2Password.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_passwordW")
  Global Ftp2PSetPassword.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPasswordW")
  Global Ftp2PercentDoneScale.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPercentDoneScaleW")
  Global Ftp2PSetPercentDoneScale.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPercentDoneScaleW")
  Global Ftp2Port.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPortW")
  Global Ftp2PSetPort.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPortW")
  Global Ftp2PreferIpv6.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPreferIpv6W")
  Global Ftp2PSetPreferIpv6.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPreferIpv6W")
  Global Ftp2PreferNlst.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getPreferNlstW")
  Global Ftp2PSetPreferNlst.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putPreferNlstW")
  Global Ftp2ProgressMonSize.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getProgressMonSizeW")
  Global Ftp2PSetProgressMonSize.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProgressMonSizeW")
  Global Ftp2ProgressMonSize64.ckqPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getProgressMonSize64W")
  Global Ftp2PSetProgressMonSize64.ckqPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProgressMonSize64W")
  Global Ftp2ProxyHostname.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_proxyHostnameW")
  Global Ftp2PSetProxyHostname.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProxyHostnameW")
  Global Ftp2ProxyMethod.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getProxyMethodW")
  Global Ftp2PSetProxyMethod.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProxyMethodW")
  Global Ftp2ProxyPassword.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_proxyPasswordW")
  Global Ftp2PSetProxyPassword.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProxyPasswordW")
  Global Ftp2ProxyPort.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getProxyPortW")
  Global Ftp2PSetProxyPort.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProxyPortW")
  Global Ftp2ProxyUsername.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_proxyUsernameW")
  Global Ftp2PSetProxyUsername.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putProxyUsernameW")
  Global Ftp2ReadTimeout.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getReadTimeoutW")
  Global Ftp2PSetReadTimeout.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putReadTimeoutW")
  Global Ftp2RequireSslCertVerify.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getRequireSslCertVerifyW")
  Global Ftp2PSetRequireSslCertVerify.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putRequireSslCertVerifyW")
  Global Ftp2RestartNext.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getRestartNextW")
  Global Ftp2PSetRestartNext.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putRestartNextW")
  Global Ftp2SessionLog.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_sessionLogW")
  Global Ftp2SocksHostname.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_socksHostnameW")
  Global Ftp2PSetSocksHostname.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSocksHostnameW")
  Global Ftp2SocksPassword.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_socksPasswordW")
  Global Ftp2PSetSocksPassword.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSocksPasswordW")
  Global Ftp2SocksPort.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSocksPortW")
  Global Ftp2PSetSocksPort.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSocksPortW")
  Global Ftp2SocksUsername.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_socksUsernameW")
  Global Ftp2PSetSocksUsername.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSocksUsernameW")
  Global Ftp2SocksVersion.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSocksVersionW")
  Global Ftp2PSetSocksVersion.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSocksVersionW")
  Global Ftp2SoRcvBuf.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSoRcvBufW")
  Global Ftp2PSetSoRcvBuf.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSoRcvBufW")
  Global Ftp2SoSndBuf.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSoSndBufW")
  Global Ftp2PSetSoSndBuf.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSoSndBufW")
  Global Ftp2Ssl.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSslW")
  Global Ftp2PSetSsl.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSslW")
  Global Ftp2SslAllowedCiphers.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_sslAllowedCiphersW")
  Global Ftp2PSetSslAllowedCiphers.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSslAllowedCiphersW")
  Global Ftp2SslProtocol.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_sslProtocolW")
  Global Ftp2PSetSslProtocol.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSslProtocolW")
  Global Ftp2SslServerCertVerified.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSslServerCertVerifiedW")
  Global Ftp2SyncCreateAllLocalDirs.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getSyncCreateAllLocalDirsW")
  Global Ftp2PSetSyncCreateAllLocalDirs.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncCreateAllLocalDirsW")
  Global Ftp2SyncedFiles.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncedFilesW")
  Global Ftp2PSetSyncedFiles.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncedFilesW")
  Global Ftp2SyncMustMatch.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncMustMatchW")
  Global Ftp2PSetSyncMustMatch.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncMustMatchW")
  Global Ftp2SyncMustMatchDir.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncMustMatchDirW")
  Global Ftp2PSetSyncMustMatchDir.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncMustMatchDirW")
  Global Ftp2SyncMustNotMatch.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncMustNotMatchW")
  Global Ftp2PSetSyncMustNotMatch.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncMustNotMatchW")
  Global Ftp2SyncMustNotMatchDir.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncMustNotMatchDirW")
  Global Ftp2PSetSyncMustNotMatchDir.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putSyncMustNotMatchDirW")
  Global Ftp2SyncPreview.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_syncPreviewW")
  Global Ftp2TlsCipherSuite.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_tlsCipherSuiteW")
  Global Ftp2TlsPinSet.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_tlsPinSetW")
  Global Ftp2PSetTlsPinSet.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putTlsPinSetW")
  Global Ftp2TlsVersion.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_tlsVersionW")
  Global Ftp2UncommonOptions.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_uncommonOptionsW")
  Global Ftp2PSetUncommonOptions.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putUncommonOptionsW")
  Global Ftp2UploadTransferRate.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getUploadTransferRateW")
  Global Ftp2UseEpsv.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getUseEpsvW")
  Global Ftp2PSetUseEpsv.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putUseEpsvW")
  Global Ftp2Username.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_usernameW")
  Global Ftp2PSetUsername.cksPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putUsernameW")
  Global Ftp2VerboseLogging.cklPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_getVerboseLoggingW")
  Global Ftp2PSetVerboseLogging.cklPropSet = GetFunction(CkFtp2LibId,"CkFtp2U_putVerboseLoggingW")
  Global Ftp2Version.cksPropGet = GetFunction(CkFtp2LibId,"CkFtp2U_versionW")
  Global Ftp2AppendFile.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_AppendFileW")
  Global Ftp2AppendFileAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_AppendFileAsyncW")
  Global Ftp2AppendFileFromTextData.cklMsss = GetFunction(CkFtp2LibId,"CkFtp2U_AppendFileFromTextDataW")
  Global Ftp2AppendFileFromTextDataAsync.ckiMsss = GetFunction(CkFtp2LibId,"CkFtp2U_AppendFileFromTextDataAsyncW")
  Global Ftp2ChangeRemoteDir.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_ChangeRemoteDirW")
  Global Ftp2ChangeRemoteDirAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_ChangeRemoteDirAsyncW")
  Global Ftp2CheckConnection.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_CheckConnectionW")
  Global Ftp2CheckConnectionAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_CheckConnectionAsyncW")
  Global Ftp2ClearControlChannel.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_ClearControlChannelW")
  Global Ftp2ClearControlChannelAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_ClearControlChannelAsyncW")
  Global Ftp2ClearDirCache.ckvM = GetFunction(CkFtp2LibId,"CkFtp2U_ClearDirCacheW")
  Global Ftp2ClearSessionLog.ckvM = GetFunction(CkFtp2LibId,"CkFtp2U_ClearSessionLogW")
  Global Ftp2Connect.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_ConnectW")
  Global Ftp2ConnectAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_ConnectAsyncW")
  Global Ftp2ConnectOnly.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_ConnectOnlyW")
  Global Ftp2ConnectOnlyAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_ConnectOnlyAsyncW")
  Global Ftp2ConvertToTls.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_ConvertToTlsW")
  Global Ftp2ConvertToTlsAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_ConvertToTlsAsyncW")
  Global Ftp2CreatePlan.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_createPlanW")
  Global Ftp2CreatePlanAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_CreatePlanAsyncW")
  Global Ftp2CreateRemoteDir.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_CreateRemoteDirW")
  Global Ftp2CreateRemoteDirAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_CreateRemoteDirAsyncW")
  Global Ftp2DeleteMatching.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteMatchingW")
  Global Ftp2DeleteMatchingAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteMatchingAsyncW")
  Global Ftp2DeleteRemoteFile.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteRemoteFileW")
  Global Ftp2DeleteRemoteFileAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteRemoteFileAsyncW")
  Global Ftp2DeleteTree.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteTreeW")
  Global Ftp2DeleteTreeAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_DeleteTreeAsyncW")
  Global Ftp2DetermineProxyMethod.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_DetermineProxyMethodW")
  Global Ftp2DetermineProxyMethodAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_DetermineProxyMethodAsyncW")
  Global Ftp2DetermineSettings.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_determineSettingsW")
  Global Ftp2DetermineSettingsAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_DetermineSettingsAsyncW")
  Global Ftp2DirTreeXml.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_dirTreeXmlW")
  Global Ftp2DirTreeXmlAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_DirTreeXmlAsyncW")
  Global Ftp2Disconnect.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_DisconnectW")
  Global Ftp2DisconnectAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_DisconnectAsyncW")
  Global Ftp2DownloadTree.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_DownloadTreeW")
  Global Ftp2DownloadTreeAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_DownloadTreeAsyncW")
  Global Ftp2Feat.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_featW")
  Global Ftp2FeatAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_FeatAsyncW")
  Global Ftp2GetCreateDt.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateDtW")
  Global Ftp2GetCreateDtAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateDtAsyncW")
  Global Ftp2GetCreateDtByName.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateDtByNameW")
  Global Ftp2GetCreateDtByNameAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateDtByNameAsyncW")
  Global Ftp2GetCreateTimeByNameStr.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getCreateTimeByNameStrW")
  Global Ftp2GetCreateTimeByNameStrAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateTimeByNameStrAsyncW")
  Global Ftp2GetCreateTimeStr.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getCreateTimeStrW")
  Global Ftp2GetCreateTimeStrAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetCreateTimeStrAsyncW")
  Global Ftp2GetCurrentRemoteDir.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_getCurrentRemoteDirW")
  Global Ftp2GetCurrentRemoteDirAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_GetCurrentRemoteDirAsyncW")
  Global Ftp2GetDirCount.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_GetDirCountW")
  Global Ftp2GetDirCountAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_GetDirCountAsyncW")
  Global Ftp2GetFile.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileW")
  Global Ftp2GetFileAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileAsyncW")
  Global Ftp2GetFileBd.cklMsi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileBdW")
  Global Ftp2GetFileBdAsync.ckiMsi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileBdAsyncW")
  Global Ftp2GetFilename.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getFilenameW")
  Global Ftp2GetFilenameAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetFilenameAsyncW")
  Global Ftp2GetFileSb.cklMssi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileSbW")
  Global Ftp2GetFileSbAsync.ckiMssi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileSbAsyncW")
  Global Ftp2GetFileToStream.cklMsi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileToStreamW")
  Global Ftp2GetFileToStreamAsync.ckiMsi = GetFunction(CkFtp2LibId,"CkFtp2U_GetFileToStreamAsyncW")
  Global Ftp2GetGroup.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getGroupW")
  Global Ftp2GetGroupAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetGroupAsyncW")
  Global Ftp2GetIsDirectory.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetIsDirectoryW")
  Global Ftp2GetIsDirectoryAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetIsDirectoryAsyncW")
  Global Ftp2GetIsSymbolicLink.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetIsSymbolicLinkW")
  Global Ftp2GetIsSymbolicLinkAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetIsSymbolicLinkAsyncW")
  Global Ftp2GetLastModDt.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModDtW")
  Global Ftp2GetLastModDtAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModDtAsyncW")
  Global Ftp2GetLastModDtByName.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModDtByNameW")
  Global Ftp2GetLastModDtByNameAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModDtByNameAsyncW")
  Global Ftp2GetLastModifiedTimeByNameStr.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getLastModifiedTimeByNameStrW")
  Global Ftp2GetLastModifiedTimeByNameStrAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModifiedTimeByNameStrAsyncW")
  Global Ftp2GetLastModifiedTimeStr.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getLastModifiedTimeStrW")
  Global Ftp2GetLastModifiedTimeStrAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetLastModifiedTimeStrAsyncW")
  Global Ftp2GetOwner.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getOwnerW")
  Global Ftp2GetOwnerAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetOwnerAsyncW")
  Global Ftp2GetPermissions.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getPermissionsW")
  Global Ftp2GetPermissionsAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetPermissionsAsyncW")
  Global Ftp2GetPermType.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getPermTypeW")
  Global Ftp2GetPermTypeAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetPermTypeAsyncW")
  Global Ftp2GetRemoteFileTextC.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_getRemoteFileTextCW")
  Global Ftp2GetRemoteFileTextCAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_GetRemoteFileTextCAsyncW")
  Global Ftp2GetRemoteFileTextData.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getRemoteFileTextDataW")
  Global Ftp2GetRemoteFileTextDataAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetRemoteFileTextDataAsyncW")
  Global Ftp2GetSize.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeW")
  Global Ftp2GetSizeAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeAsyncW")
  Global Ftp2GetSize64.ckqMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetSize64W")
  Global Ftp2GetSizeByName.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeByNameW")
  Global Ftp2GetSizeByNameAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeByNameAsyncW")
  Global Ftp2GetSizeByName64.ckqMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeByName64W")
  Global Ftp2GetSizeStr.cklMl = GetFunction(CkFtp2LibId,"CkFtp2U_getSizeStrW")
  Global Ftp2GetSizeStrAsync.ckiMl = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeStrAsyncW")
  Global Ftp2GetSizeStrByName.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getSizeStrByNameW")
  Global Ftp2GetSizeStrByNameAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetSizeStrByNameAsyncW")
  Global Ftp2GetSslServerCert.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_GetSslServerCertW")
  Global Ftp2GetTextDirListing.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getTextDirListingW")
  Global Ftp2GetTextDirListingAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetTextDirListingAsyncW")
  Global Ftp2GetXmlDirListing.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_getXmlDirListingW")
  Global Ftp2GetXmlDirListingAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_GetXmlDirListingAsyncW")
  Global Ftp2IsUnlocked.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_IsUnlockedW")
  Global Ftp2LargeFileUpload.cklMssl = GetFunction(CkFtp2LibId,"CkFtp2U_LargeFileUploadW")
  Global Ftp2LargeFileUploadAsync.ckiMssl = GetFunction(CkFtp2LibId,"CkFtp2U_LargeFileUploadAsyncW")
  Global Ftp2LoadTaskCaller.cklMi = GetFunction(CkFtp2LibId,"CkFtp2U_LoadTaskCallerW")
  Global Ftp2LoginAfterConnectOnly.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_LoginAfterConnectOnlyW")
  Global Ftp2LoginAfterConnectOnlyAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_LoginAfterConnectOnlyAsyncW")
  Global Ftp2MGetFiles.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_MGetFilesW")
  Global Ftp2MGetFilesAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_MGetFilesAsyncW")
  Global Ftp2MPutFiles.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_MPutFilesW")
  Global Ftp2MPutFilesAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_MPutFilesAsyncW")
  Global Ftp2NlstXml.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_nlstXmlW")
  Global Ftp2NlstXmlAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_NlstXmlAsyncW")
  Global Ftp2Noop.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_NoopW")
  Global Ftp2NoopAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_NoopAsyncW")
  Global Ftp2PutFile.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileW")
  Global Ftp2PutFileAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileAsyncW")
  Global Ftp2PutFileBd.cklMis = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileBdW")
  Global Ftp2PutFileBdAsync.ckiMis = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileBdAsyncW")
  Global Ftp2PutFileFromTextData.cklMsss = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileFromTextDataW")
  Global Ftp2PutFileFromTextDataAsync.ckiMsss = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileFromTextDataAsyncW")
  Global Ftp2PutFileSb.cklMisls = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileSbW")
  Global Ftp2PutFileSbAsync.ckiMisls = GetFunction(CkFtp2LibId,"CkFtp2U_PutFileSbAsyncW")
  Global Ftp2PutPlan.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_PutPlanW")
  Global Ftp2PutPlanAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_PutPlanAsyncW")
  Global Ftp2PutTree.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_PutTreeW")
  Global Ftp2PutTreeAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_PutTreeAsyncW")
  Global Ftp2Quote.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_QuoteW")
  Global Ftp2QuoteAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_QuoteAsyncW")
  Global Ftp2RemoveRemoteDir.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_RemoveRemoteDirW")
  Global Ftp2RemoveRemoteDirAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_RemoveRemoteDirAsyncW")
  Global Ftp2RenameRemoteFile.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_RenameRemoteFileW")
  Global Ftp2RenameRemoteFileAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_RenameRemoteFileAsyncW")
  Global Ftp2SaveLastError.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_SaveLastErrorW")
  Global Ftp2SendCommand.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_sendCommandW")
  Global Ftp2SendCommandAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_SendCommandAsyncW")
  Global Ftp2SetModeZ.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_SetModeZW")
  Global Ftp2SetModeZAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_SetModeZAsyncW")
  Global Ftp2SetOldestDateStr.ckvMs = GetFunction(CkFtp2LibId,"CkFtp2U_SetOldestDateStrW")
  Global Ftp2SetOption.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_SetOptionW")
  Global Ftp2SetPassword.cklMi = GetFunction(CkFtp2LibId,"CkFtp2U_SetPasswordW")
  Global Ftp2SetRemoteFileDateTimeStr.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_SetRemoteFileDateTimeStrW")
  Global Ftp2SetRemoteFileDateTimeStrAsync.ckiMss = GetFunction(CkFtp2LibId,"CkFtp2U_SetRemoteFileDateTimeStrAsyncW")
  Global Ftp2SetRemoteFileDt.cklMis = GetFunction(CkFtp2LibId,"CkFtp2U_SetRemoteFileDtW")
  Global Ftp2SetRemoteFileDtAsync.ckiMis = GetFunction(CkFtp2LibId,"CkFtp2U_SetRemoteFileDtAsyncW")
  Global Ftp2SetSecurePassword.cklMi = GetFunction(CkFtp2LibId,"CkFtp2U_SetSecurePasswordW")
  Global Ftp2SetSslCertRequirement.ckvMss = GetFunction(CkFtp2LibId,"CkFtp2U_SetSslCertRequirementW")
  Global Ftp2SetSslClientCert.cklMi = GetFunction(CkFtp2LibId,"CkFtp2U_SetSslClientCertW")
  Global Ftp2SetSslClientCertPem.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_SetSslClientCertPemW")
  Global Ftp2SetSslClientCertPfx.cklMss = GetFunction(CkFtp2LibId,"CkFtp2U_SetSslClientCertPfxW")
  Global Ftp2SetTypeAscii.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_SetTypeAsciiW")
  Global Ftp2SetTypeAsciiAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_SetTypeAsciiAsyncW")
  Global Ftp2SetTypeBinary.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_SetTypeBinaryW")
  Global Ftp2SetTypeBinaryAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_SetTypeBinaryAsyncW")
  Global Ftp2Site.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_SiteW")
  Global Ftp2SiteAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_SiteAsyncW")
  Global Ftp2SleepMs.ckvMl = GetFunction(CkFtp2LibId,"CkFtp2U_SleepMsW")
  Global Ftp2Stat.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_statW")
  Global Ftp2StatAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_StatAsyncW")
  Global Ftp2SyncDeleteRemote.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_SyncDeleteRemoteW")
  Global Ftp2SyncDeleteRemoteAsync.ckiMs = GetFunction(CkFtp2LibId,"CkFtp2U_SyncDeleteRemoteAsyncW")
  Global Ftp2SyncLocalDir.cklMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncLocalDirW")
  Global Ftp2SyncLocalDirAsync.ckiMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncLocalDirAsyncW")
  Global Ftp2SyncLocalTree.cklMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncLocalTreeW")
  Global Ftp2SyncLocalTreeAsync.ckiMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncLocalTreeAsyncW")
  Global Ftp2SyncRemoteTree.cklMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncRemoteTreeW")
  Global Ftp2SyncRemoteTreeAsync.ckiMsl = GetFunction(CkFtp2LibId,"CkFtp2U_SyncRemoteTreeAsyncW")
  Global Ftp2SyncRemoteTree2.cklMslll = GetFunction(CkFtp2LibId,"CkFtp2U_SyncRemoteTree2W")
  Global Ftp2SyncRemoteTree2Async.ckiMslll = GetFunction(CkFtp2LibId,"CkFtp2U_SyncRemoteTree2AsyncW")
  Global Ftp2Syst.cklM = GetFunction(CkFtp2LibId,"CkFtp2U_systW")
  Global Ftp2SystAsync.ckiM = GetFunction(CkFtp2LibId,"CkFtp2U_SystAsyncW")
  Global Ftp2UnlockComponent.cklMs = GetFunction(CkFtp2LibId,"CkFtp2U_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn Ftp2Create() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn Ftp2Dispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn Ftp2AbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn Ftp2PSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckAccount(obj.i) : ProcedureReturn PeekS(Ftp2Account(obj)) : EndProcedure
  Procedure setCkAccount(obj.i, value.s) : ProcedureReturn Ftp2PSetAccount(obj,value) : EndProcedure
  Procedure.l ckActivePortRangeEnd(obj.i) : ProcedureReturn Ftp2ActivePortRangeEnd(obj) : EndProcedure
  Procedure setCkActivePortRangeEnd(obj.i, value.l) : ProcedureReturn Ftp2PSetActivePortRangeEnd(obj,value) : EndProcedure
  Procedure.l ckActivePortRangeStart(obj.i) : ProcedureReturn Ftp2ActivePortRangeStart(obj) : EndProcedure
  Procedure setCkActivePortRangeStart(obj.i, value.l) : ProcedureReturn Ftp2PSetActivePortRangeStart(obj,value) : EndProcedure
  Procedure.l ckAllocateSize(obj.i) : ProcedureReturn Ftp2AllocateSize(obj) : EndProcedure
  Procedure setCkAllocateSize(obj.i, value.l) : ProcedureReturn Ftp2PSetAllocateSize(obj,value) : EndProcedure
  Procedure.l ckAllowMlsd(obj.i) : ProcedureReturn Ftp2AllowMlsd(obj) : EndProcedure
  Procedure setCkAllowMlsd(obj.i, value.l) : ProcedureReturn Ftp2PSetAllowMlsd(obj,value) : EndProcedure
  Procedure.l ckAsyncBytesReceived(obj.i) : ProcedureReturn Ftp2AsyncBytesReceived(obj) : EndProcedure
  Procedure.q ckAsyncBytesReceived64(obj.i) : ProcedureReturn Ftp2AsyncBytesReceived64(obj) : EndProcedure
  Procedure.l ckAsyncBytesSent(obj.i) : ProcedureReturn Ftp2AsyncBytesSent(obj) : EndProcedure
  Procedure.q ckAsyncBytesSent64(obj.i) : ProcedureReturn Ftp2AsyncBytesSent64(obj) : EndProcedure
  Procedure.l ckAuthSsl(obj.i) : ProcedureReturn Ftp2AuthSsl(obj) : EndProcedure
  Procedure setCkAuthSsl(obj.i, value.l) : ProcedureReturn Ftp2PSetAuthSsl(obj,value) : EndProcedure
  Procedure.l ckAuthTls(obj.i) : ProcedureReturn Ftp2AuthTls(obj) : EndProcedure
  Procedure setCkAuthTls(obj.i, value.l) : ProcedureReturn Ftp2PSetAuthTls(obj,value) : EndProcedure
  Procedure.l ckAutoFeat(obj.i) : ProcedureReturn Ftp2AutoFeat(obj) : EndProcedure
  Procedure setCkAutoFeat(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoFeat(obj,value) : EndProcedure
  Procedure.l ckAutoFix(obj.i) : ProcedureReturn Ftp2AutoFix(obj) : EndProcedure
  Procedure setCkAutoFix(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoFix(obj,value) : EndProcedure
  Procedure.l ckAutoGetSizeForProgress(obj.i) : ProcedureReturn Ftp2AutoGetSizeForProgress(obj) : EndProcedure
  Procedure setCkAutoGetSizeForProgress(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoGetSizeForProgress(obj,value) : EndProcedure
  Procedure.l ckAutoOptsUtf8(obj.i) : ProcedureReturn Ftp2AutoOptsUtf8(obj) : EndProcedure
  Procedure setCkAutoOptsUtf8(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoOptsUtf8(obj,value) : EndProcedure
  Procedure.l ckAutoSetUseEpsv(obj.i) : ProcedureReturn Ftp2AutoSetUseEpsv(obj) : EndProcedure
  Procedure setCkAutoSetUseEpsv(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoSetUseEpsv(obj,value) : EndProcedure
  Procedure.l ckAutoSyst(obj.i) : ProcedureReturn Ftp2AutoSyst(obj) : EndProcedure
  Procedure setCkAutoSyst(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoSyst(obj,value) : EndProcedure
  Procedure.l ckAutoXcrc(obj.i) : ProcedureReturn Ftp2AutoXcrc(obj) : EndProcedure
  Procedure setCkAutoXcrc(obj.i, value.l) : ProcedureReturn Ftp2PSetAutoXcrc(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleDown(obj.i) : ProcedureReturn Ftp2BandwidthThrottleDown(obj) : EndProcedure
  Procedure setCkBandwidthThrottleDown(obj.i, value.l) : ProcedureReturn Ftp2PSetBandwidthThrottleDown(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleUp(obj.i) : ProcedureReturn Ftp2BandwidthThrottleUp(obj) : EndProcedure
  Procedure setCkBandwidthThrottleUp(obj.i, value.l) : ProcedureReturn Ftp2PSetBandwidthThrottleUp(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(Ftp2ClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn Ftp2PSetClientIpAddress(obj,value) : EndProcedure
  Procedure.s ckCommandCharset(obj.i) : ProcedureReturn PeekS(Ftp2CommandCharset(obj)) : EndProcedure
  Procedure setCkCommandCharset(obj.i, value.s) : ProcedureReturn Ftp2PSetCommandCharset(obj,value) : EndProcedure
  Procedure.l ckConnectFailReason(obj.i) : ProcedureReturn Ftp2ConnectFailReason(obj) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn Ftp2ConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn Ftp2PSetConnectTimeout(obj,value) : EndProcedure
  Procedure.l ckConnectVerified(obj.i) : ProcedureReturn Ftp2ConnectVerified(obj) : EndProcedure
  Procedure.l ckCrlfMode(obj.i) : ProcedureReturn Ftp2CrlfMode(obj) : EndProcedure
  Procedure setCkCrlfMode(obj.i, value.l) : ProcedureReturn Ftp2PSetCrlfMode(obj,value) : EndProcedure
  Procedure.s ckDataProtection(obj.i) : ProcedureReturn PeekS(Ftp2DataProtection(obj)) : EndProcedure
  Procedure setCkDataProtection(obj.i, value.s) : ProcedureReturn Ftp2PSetDataProtection(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(Ftp2DebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn Ftp2PSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDirListingCharset(obj.i) : ProcedureReturn PeekS(Ftp2DirListingCharset(obj)) : EndProcedure
  Procedure setCkDirListingCharset(obj.i, value.s) : ProcedureReturn Ftp2PSetDirListingCharset(obj,value) : EndProcedure
  Procedure.l ckDownloadTransferRate(obj.i) : ProcedureReturn Ftp2DownloadTransferRate(obj) : EndProcedure
  Procedure.s ckForcePortIpAddress(obj.i) : ProcedureReturn PeekS(Ftp2ForcePortIpAddress(obj)) : EndProcedure
  Procedure setCkForcePortIpAddress(obj.i, value.s) : ProcedureReturn Ftp2PSetForcePortIpAddress(obj,value) : EndProcedure
  Procedure.s ckGreeting(obj.i) : ProcedureReturn PeekS(Ftp2Greeting(obj)) : EndProcedure
  Procedure.l ckHasModeZ(obj.i) : ProcedureReturn Ftp2HasModeZ(obj) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn Ftp2HeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn Ftp2PSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHostname(obj.i) : ProcedureReturn PeekS(Ftp2Hostname(obj)) : EndProcedure
  Procedure setCkHostname(obj.i, value.s) : ProcedureReturn Ftp2PSetHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(Ftp2HttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn Ftp2PSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(Ftp2HttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn Ftp2PSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(Ftp2HttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn Ftp2PSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(Ftp2HttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn Ftp2PSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn Ftp2HttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn Ftp2PSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(Ftp2HttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn Ftp2PSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn Ftp2IdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn Ftp2PSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.l ckIsConnected(obj.i) : ProcedureReturn Ftp2IsConnected(obj) : EndProcedure
  Procedure.l ckKeepSessionLog(obj.i) : ProcedureReturn Ftp2KeepSessionLog(obj) : EndProcedure
  Procedure setCkKeepSessionLog(obj.i, value.l) : ProcedureReturn Ftp2PSetKeepSessionLog(obj,value) : EndProcedure
  Procedure.l ckLargeFileMeasures(obj.i) : ProcedureReturn Ftp2LargeFileMeasures(obj) : EndProcedure
  Procedure setCkLargeFileMeasures(obj.i, value.l) : ProcedureReturn Ftp2PSetLargeFileMeasures(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(Ftp2LastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(Ftp2LastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(Ftp2LastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn Ftp2LastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn Ftp2PSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastReply(obj.i) : ProcedureReturn PeekS(Ftp2LastReply(obj)) : EndProcedure
  Procedure.s ckListPattern(obj.i) : ProcedureReturn PeekS(Ftp2ListPattern(obj)) : EndProcedure
  Procedure setCkListPattern(obj.i, value.s) : ProcedureReturn Ftp2PSetListPattern(obj,value) : EndProcedure
  Procedure.l ckLoginVerified(obj.i) : ProcedureReturn Ftp2LoginVerified(obj) : EndProcedure
  Procedure.l ckNumFilesAndDirs(obj.i) : ProcedureReturn Ftp2NumFilesAndDirs(obj) : EndProcedure
  Procedure.l ckPartialTransfer(obj.i) : ProcedureReturn Ftp2PartialTransfer(obj) : EndProcedure
  Procedure.l ckPassive(obj.i) : ProcedureReturn Ftp2Passive(obj) : EndProcedure
  Procedure setCkPassive(obj.i, value.l) : ProcedureReturn Ftp2PSetPassive(obj,value) : EndProcedure
  Procedure.l ckPassiveUseHostAddr(obj.i) : ProcedureReturn Ftp2PassiveUseHostAddr(obj) : EndProcedure
  Procedure setCkPassiveUseHostAddr(obj.i, value.l) : ProcedureReturn Ftp2PSetPassiveUseHostAddr(obj,value) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(Ftp2Password(obj)) : EndProcedure
  Procedure setCkPassword(obj.i, value.s) : ProcedureReturn Ftp2PSetPassword(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn Ftp2PercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn Ftp2PSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPort(obj.i) : ProcedureReturn Ftp2Port(obj) : EndProcedure
  Procedure setCkPort(obj.i, value.l) : ProcedureReturn Ftp2PSetPort(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn Ftp2PreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn Ftp2PSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckPreferNlst(obj.i) : ProcedureReturn Ftp2PreferNlst(obj) : EndProcedure
  Procedure setCkPreferNlst(obj.i, value.l) : ProcedureReturn Ftp2PSetPreferNlst(obj,value) : EndProcedure
  Procedure.l ckProgressMonSize(obj.i) : ProcedureReturn Ftp2ProgressMonSize(obj) : EndProcedure
  Procedure setCkProgressMonSize(obj.i, value.l) : ProcedureReturn Ftp2PSetProgressMonSize(obj,value) : EndProcedure
  Procedure.q ckProgressMonSize64(obj.i) : ProcedureReturn Ftp2ProgressMonSize64(obj) : EndProcedure
  Procedure setCkProgressMonSize64(obj.i, value.q) :    ProcedureReturn Ftp2PSetProgressMonSize64(obj,value) :   EndProcedure
  Procedure.s ckProxyHostname(obj.i) : ProcedureReturn PeekS(Ftp2ProxyHostname(obj)) : EndProcedure
  Procedure setCkProxyHostname(obj.i, value.s) : ProcedureReturn Ftp2PSetProxyHostname(obj,value) : EndProcedure
  Procedure.l ckProxyMethod(obj.i) : ProcedureReturn Ftp2ProxyMethod(obj) : EndProcedure
  Procedure setCkProxyMethod(obj.i, value.l) : ProcedureReturn Ftp2PSetProxyMethod(obj,value) : EndProcedure
  Procedure.s ckProxyPassword(obj.i) : ProcedureReturn PeekS(Ftp2ProxyPassword(obj)) : EndProcedure
  Procedure setCkProxyPassword(obj.i, value.s) : ProcedureReturn Ftp2PSetProxyPassword(obj,value) : EndProcedure
  Procedure.l ckProxyPort(obj.i) : ProcedureReturn Ftp2ProxyPort(obj) : EndProcedure
  Procedure setCkProxyPort(obj.i, value.l) : ProcedureReturn Ftp2PSetProxyPort(obj,value) : EndProcedure
  Procedure.s ckProxyUsername(obj.i) : ProcedureReturn PeekS(Ftp2ProxyUsername(obj)) : EndProcedure
  Procedure setCkProxyUsername(obj.i, value.s) : ProcedureReturn Ftp2PSetProxyUsername(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn Ftp2ReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn Ftp2PSetReadTimeout(obj,value) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn Ftp2RequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn Ftp2PSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.l ckRestartNext(obj.i) : ProcedureReturn Ftp2RestartNext(obj) : EndProcedure
  Procedure setCkRestartNext(obj.i, value.l) : ProcedureReturn Ftp2PSetRestartNext(obj,value) : EndProcedure
  Procedure.s ckSessionLog(obj.i) : ProcedureReturn PeekS(Ftp2SessionLog(obj)) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(Ftp2SocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn Ftp2PSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(Ftp2SocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn Ftp2PSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn Ftp2SocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn Ftp2PSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(Ftp2SocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn Ftp2PSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn Ftp2SocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn Ftp2PSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn Ftp2SoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn Ftp2PSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn Ftp2SoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn Ftp2PSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckSsl(obj.i) : ProcedureReturn Ftp2Ssl(obj) : EndProcedure
  Procedure setCkSsl(obj.i, value.l) : ProcedureReturn Ftp2PSetSsl(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(Ftp2SslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn Ftp2PSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(Ftp2SslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn Ftp2PSetSslProtocol(obj,value) : EndProcedure
  Procedure.l ckSslServerCertVerified(obj.i) : ProcedureReturn Ftp2SslServerCertVerified(obj) : EndProcedure
  Procedure.l ckSyncCreateAllLocalDirs(obj.i) : ProcedureReturn Ftp2SyncCreateAllLocalDirs(obj) : EndProcedure
  Procedure setCkSyncCreateAllLocalDirs(obj.i, value.l) : ProcedureReturn Ftp2PSetSyncCreateAllLocalDirs(obj,value) : EndProcedure
  Procedure.s ckSyncedFiles(obj.i) : ProcedureReturn PeekS(Ftp2SyncedFiles(obj)) : EndProcedure
  Procedure setCkSyncedFiles(obj.i, value.s) : ProcedureReturn Ftp2PSetSyncedFiles(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatch(obj.i) : ProcedureReturn PeekS(Ftp2SyncMustMatch(obj)) : EndProcedure
  Procedure setCkSyncMustMatch(obj.i, value.s) : ProcedureReturn Ftp2PSetSyncMustMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustMatchDir(obj.i) : ProcedureReturn PeekS(Ftp2SyncMustMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustMatchDir(obj.i, value.s) : ProcedureReturn Ftp2PSetSyncMustMatchDir(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatch(obj.i) : ProcedureReturn PeekS(Ftp2SyncMustNotMatch(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatch(obj.i, value.s) : ProcedureReturn Ftp2PSetSyncMustNotMatch(obj,value) : EndProcedure
  Procedure.s ckSyncMustNotMatchDir(obj.i) : ProcedureReturn PeekS(Ftp2SyncMustNotMatchDir(obj)) : EndProcedure
  Procedure setCkSyncMustNotMatchDir(obj.i, value.s) : ProcedureReturn Ftp2PSetSyncMustNotMatchDir(obj,value) : EndProcedure
  Procedure.s ckSyncPreview(obj.i) : ProcedureReturn PeekS(Ftp2SyncPreview(obj)) : EndProcedure
  Procedure.s ckTlsCipherSuite(obj.i) : ProcedureReturn PeekS(Ftp2TlsCipherSuite(obj)) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(Ftp2TlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn Ftp2PSetTlsPinSet(obj,value) : EndProcedure
  Procedure.s ckTlsVersion(obj.i) : ProcedureReturn PeekS(Ftp2TlsVersion(obj)) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(Ftp2UncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn Ftp2PSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUploadTransferRate(obj.i) : ProcedureReturn Ftp2UploadTransferRate(obj) : EndProcedure
  Procedure.l ckUseEpsv(obj.i) : ProcedureReturn Ftp2UseEpsv(obj) : EndProcedure
  Procedure setCkUseEpsv(obj.i, value.l) : ProcedureReturn Ftp2PSetUseEpsv(obj,value) : EndProcedure
  Procedure.s ckUsername(obj.i) : ProcedureReturn PeekS(Ftp2Username(obj)) : EndProcedure
  Procedure setCkUsername(obj.i, value.s) : ProcedureReturn Ftp2PSetUsername(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn Ftp2VerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn Ftp2PSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(Ftp2Version(obj)) : EndProcedure
  Procedure.l ckAppendFile(obj.i, localFilePath.s, remoteFilePath.s) :  ProcedureReturn Ftp2AppendFile(obj, localFilePath, remoteFilePath) :  EndProcedure
  Procedure.i ckAppendFileAsync(obj.i, localFilePath.s, remoteFilePath.s) :  ProcedureReturn Ftp2AppendFileAsync(obj, localFilePath, remoteFilePath) :  EndProcedure
  Procedure.l ckAppendFileFromTextData(obj.i, remoteFilename.s, textData.s, charset.s) :  ProcedureReturn Ftp2AppendFileFromTextData(obj, remoteFilename, textData, charset) :  EndProcedure
  Procedure.i ckAppendFileFromTextDataAsync(obj.i, remoteFilename.s, textData.s, charset.s) :  ProcedureReturn Ftp2AppendFileFromTextDataAsync(obj, remoteFilename, textData, charset) :  EndProcedure
  Procedure.l ckChangeRemoteDir(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2ChangeRemoteDir(obj, remoteDirPath) :  EndProcedure
  Procedure.i ckChangeRemoteDirAsync(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2ChangeRemoteDirAsync(obj, remoteDirPath) :  EndProcedure
  Procedure.l ckCheckConnection(obj.i) :  ProcedureReturn Ftp2CheckConnection(obj) :  EndProcedure
  Procedure.i ckCheckConnectionAsync(obj.i) :  ProcedureReturn Ftp2CheckConnectionAsync(obj) :  EndProcedure
  Procedure.l ckClearControlChannel(obj.i) :  ProcedureReturn Ftp2ClearControlChannel(obj) :  EndProcedure
  Procedure.i ckClearControlChannelAsync(obj.i) :  ProcedureReturn Ftp2ClearControlChannelAsync(obj) :  EndProcedure
  Procedure ckClearDirCache(obj.i) :  ProcedureReturn Ftp2ClearDirCache(obj) :  EndProcedure
  Procedure ckClearSessionLog(obj.i) :  ProcedureReturn Ftp2ClearSessionLog(obj) :  EndProcedure
  Procedure.l ckConnect(obj.i) :  ProcedureReturn Ftp2Connect(obj) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i) :  ProcedureReturn Ftp2ConnectAsync(obj) :  EndProcedure
  Procedure.l ckConnectOnly(obj.i) :  ProcedureReturn Ftp2ConnectOnly(obj) :  EndProcedure
  Procedure.i ckConnectOnlyAsync(obj.i) :  ProcedureReturn Ftp2ConnectOnlyAsync(obj) :  EndProcedure
  Procedure.l ckConvertToTls(obj.i) :  ProcedureReturn Ftp2ConvertToTls(obj) :  EndProcedure
  Procedure.i ckConvertToTlsAsync(obj.i) :  ProcedureReturn Ftp2ConvertToTlsAsync(obj) :  EndProcedure
  Procedure.s ckCreatePlan(obj.i, localDir.s) :  ProcedureReturn PeekS(Ftp2CreatePlan(obj, localDir)) :  EndProcedure
  Procedure.i ckCreatePlanAsync(obj.i, localDir.s) :  ProcedureReturn Ftp2CreatePlanAsync(obj, localDir) :  EndProcedure
  Procedure.l ckCreateRemoteDir(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2CreateRemoteDir(obj, remoteDirPath) :  EndProcedure
  Procedure.i ckCreateRemoteDirAsync(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2CreateRemoteDirAsync(obj, remoteDirPath) :  EndProcedure
  Procedure.l ckDeleteMatching(obj.i, remotePattern.s) :  ProcedureReturn Ftp2DeleteMatching(obj, remotePattern) :  EndProcedure
  Procedure.i ckDeleteMatchingAsync(obj.i, remotePattern.s) :  ProcedureReturn Ftp2DeleteMatchingAsync(obj, remotePattern) :  EndProcedure
  Procedure.l ckDeleteRemoteFile(obj.i, remoteFilePath.s) :  ProcedureReturn Ftp2DeleteRemoteFile(obj, remoteFilePath) :  EndProcedure
  Procedure.i ckDeleteRemoteFileAsync(obj.i, remoteFilePath.s) :  ProcedureReturn Ftp2DeleteRemoteFileAsync(obj, remoteFilePath) :  EndProcedure
  Procedure.l ckDeleteTree(obj.i) :  ProcedureReturn Ftp2DeleteTree(obj) :  EndProcedure
  Procedure.i ckDeleteTreeAsync(obj.i) :  ProcedureReturn Ftp2DeleteTreeAsync(obj) :  EndProcedure
  Procedure.l ckDetermineProxyMethod(obj.i) :  ProcedureReturn Ftp2DetermineProxyMethod(obj) :  EndProcedure
  Procedure.i ckDetermineProxyMethodAsync(obj.i) :  ProcedureReturn Ftp2DetermineProxyMethodAsync(obj) :  EndProcedure
  Procedure.s ckDetermineSettings(obj.i) :  ProcedureReturn PeekS(Ftp2DetermineSettings(obj)) :  EndProcedure
  Procedure.i ckDetermineSettingsAsync(obj.i) :  ProcedureReturn Ftp2DetermineSettingsAsync(obj) :  EndProcedure
  Procedure.s ckDirTreeXml(obj.i) :  ProcedureReturn PeekS(Ftp2DirTreeXml(obj)) :  EndProcedure
  Procedure.i ckDirTreeXmlAsync(obj.i) :  ProcedureReturn Ftp2DirTreeXmlAsync(obj) :  EndProcedure
  Procedure.l ckDisconnect(obj.i) :  ProcedureReturn Ftp2Disconnect(obj) :  EndProcedure
  Procedure.i ckDisconnectAsync(obj.i) :  ProcedureReturn Ftp2DisconnectAsync(obj) :  EndProcedure
  Procedure.l ckDownloadTree(obj.i, localRoot.s) :  ProcedureReturn Ftp2DownloadTree(obj, localRoot) :  EndProcedure
  Procedure.i ckDownloadTreeAsync(obj.i, localRoot.s) :  ProcedureReturn Ftp2DownloadTreeAsync(obj, localRoot) :  EndProcedure
  Procedure.s ckFeat(obj.i) :  ProcedureReturn PeekS(Ftp2Feat(obj)) :  EndProcedure
  Procedure.i ckFeatAsync(obj.i) :  ProcedureReturn Ftp2FeatAsync(obj) :  EndProcedure
  Procedure.i ckGetCreateDt(obj.i, index.l) :  ProcedureReturn Ftp2GetCreateDt(obj, index) :  EndProcedure
  Procedure.i ckGetCreateDtAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetCreateDtAsync(obj, index) :  EndProcedure
  Procedure.i ckGetCreateDtByName(obj.i, filename.s) :  ProcedureReturn Ftp2GetCreateDtByName(obj, filename) :  EndProcedure
  Procedure.i ckGetCreateDtByNameAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetCreateDtByNameAsync(obj, filename) :  EndProcedure
  Procedure.s ckGetCreateTimeByNameStr(obj.i, filename.s) :  ProcedureReturn PeekS(Ftp2GetCreateTimeByNameStr(obj, filename)) :  EndProcedure
  Procedure.i ckGetCreateTimeByNameStrAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetCreateTimeByNameStrAsync(obj, filename) :  EndProcedure
  Procedure.s ckGetCreateTimeStr(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetCreateTimeStr(obj, index)) :  EndProcedure
  Procedure.i ckGetCreateTimeStrAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetCreateTimeStrAsync(obj, index) :  EndProcedure
  Procedure.s ckGetCurrentRemoteDir(obj.i) :  ProcedureReturn PeekS(Ftp2GetCurrentRemoteDir(obj)) :  EndProcedure
  Procedure.i ckGetCurrentRemoteDirAsync(obj.i) :  ProcedureReturn Ftp2GetCurrentRemoteDirAsync(obj) :  EndProcedure
  Procedure.l ckGetDirCount(obj.i) :  ProcedureReturn Ftp2GetDirCount(obj) :  EndProcedure
  Procedure.i ckGetDirCountAsync(obj.i) :  ProcedureReturn Ftp2GetDirCountAsync(obj) :  EndProcedure
  Procedure.l ckGetFile(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn Ftp2GetFile(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.i ckGetFileAsync(obj.i, remoteFilePath.s, localFilePath.s) :  ProcedureReturn Ftp2GetFileAsync(obj, remoteFilePath, localFilePath) :  EndProcedure
  Procedure.l ckGetFileBd(obj.i, remoteFilePath.s, binData.i) :  ProcedureReturn Ftp2GetFileBd(obj, remoteFilePath, binData) :  EndProcedure
  Procedure.i ckGetFileBdAsync(obj.i, remoteFilePath.s, binData.i) :  ProcedureReturn Ftp2GetFileBdAsync(obj, remoteFilePath, binData) :  EndProcedure
  Procedure.s ckGetFilename(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetFilename(obj, index)) :  EndProcedure
  Procedure.i ckGetFilenameAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetFilenameAsync(obj, index) :  EndProcedure
  Procedure.l ckGetFileSb(obj.i, remoteFilePath.s, charset.s, sb.i) :  ProcedureReturn Ftp2GetFileSb(obj, remoteFilePath, charset, sb) :  EndProcedure
  Procedure.i ckGetFileSbAsync(obj.i, remoteFilePath.s, charset.s, sb.i) :  ProcedureReturn Ftp2GetFileSbAsync(obj, remoteFilePath, charset, sb) :  EndProcedure
  Procedure.l ckGetFileToStream(obj.i, remoteFilePath.s, toStream.i) :  ProcedureReturn Ftp2GetFileToStream(obj, remoteFilePath, toStream) :  EndProcedure
  Procedure.i ckGetFileToStreamAsync(obj.i, remoteFilePath.s, toStream.i) :  ProcedureReturn Ftp2GetFileToStreamAsync(obj, remoteFilePath, toStream) :  EndProcedure
  Procedure.s ckGetGroup(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetGroup(obj, index)) :  EndProcedure
  Procedure.i ckGetGroupAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetGroupAsync(obj, index) :  EndProcedure
  Procedure.l ckGetIsDirectory(obj.i, index.l) :  ProcedureReturn Ftp2GetIsDirectory(obj, index) :  EndProcedure
  Procedure.i ckGetIsDirectoryAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetIsDirectoryAsync(obj, index) :  EndProcedure
  Procedure.l ckGetIsSymbolicLink(obj.i, index.l) :  ProcedureReturn Ftp2GetIsSymbolicLink(obj, index) :  EndProcedure
  Procedure.i ckGetIsSymbolicLinkAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetIsSymbolicLinkAsync(obj, index) :  EndProcedure
  Procedure.i ckGetLastModDt(obj.i, index.l) :  ProcedureReturn Ftp2GetLastModDt(obj, index) :  EndProcedure
  Procedure.i ckGetLastModDtAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetLastModDtAsync(obj, index) :  EndProcedure
  Procedure.i ckGetLastModDtByName(obj.i, filename.s) :  ProcedureReturn Ftp2GetLastModDtByName(obj, filename) :  EndProcedure
  Procedure.i ckGetLastModDtByNameAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetLastModDtByNameAsync(obj, filename) :  EndProcedure
  Procedure.s ckGetLastModifiedTimeByNameStr(obj.i, filename.s) :  ProcedureReturn PeekS(Ftp2GetLastModifiedTimeByNameStr(obj, filename)) :  EndProcedure
  Procedure.i ckGetLastModifiedTimeByNameStrAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetLastModifiedTimeByNameStrAsync(obj, filename) :  EndProcedure
  Procedure.s ckGetLastModifiedTimeStr(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetLastModifiedTimeStr(obj, index)) :  EndProcedure
  Procedure.i ckGetLastModifiedTimeStrAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetLastModifiedTimeStrAsync(obj, index) :  EndProcedure
  Procedure.s ckGetOwner(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetOwner(obj, index)) :  EndProcedure
  Procedure.i ckGetOwnerAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetOwnerAsync(obj, index) :  EndProcedure
  Procedure.s ckGetPermissions(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetPermissions(obj, index)) :  EndProcedure
  Procedure.i ckGetPermissionsAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetPermissionsAsync(obj, index) :  EndProcedure
  Procedure.s ckGetPermType(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetPermType(obj, index)) :  EndProcedure
  Procedure.i ckGetPermTypeAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetPermTypeAsync(obj, index) :  EndProcedure
  Procedure.s ckGetRemoteFileTextC(obj.i, remoteFilename.s, charset.s) :  ProcedureReturn PeekS(Ftp2GetRemoteFileTextC(obj, remoteFilename, charset)) :  EndProcedure
  Procedure.i ckGetRemoteFileTextCAsync(obj.i, remoteFilename.s, charset.s) :  ProcedureReturn Ftp2GetRemoteFileTextCAsync(obj, remoteFilename, charset) :  EndProcedure
  Procedure.s ckGetRemoteFileTextData(obj.i, remoteFilename.s) :  ProcedureReturn PeekS(Ftp2GetRemoteFileTextData(obj, remoteFilename)) :  EndProcedure
  Procedure.i ckGetRemoteFileTextDataAsync(obj.i, remoteFilename.s) :  ProcedureReturn Ftp2GetRemoteFileTextDataAsync(obj, remoteFilename) :  EndProcedure
  Procedure.l ckGetSize(obj.i, index.l) :  ProcedureReturn Ftp2GetSize(obj, index) :  EndProcedure
  Procedure.i ckGetSizeAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetSizeAsync(obj, index) :  EndProcedure
  Procedure.q ckGetSize64(obj.i, index.l) :  ProcedureReturn Ftp2GetSize64(obj, index) :  EndProcedure
  Procedure.l ckGetSizeByName(obj.i, filename.s) :  ProcedureReturn Ftp2GetSizeByName(obj, filename) :  EndProcedure
  Procedure.i ckGetSizeByNameAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetSizeByNameAsync(obj, filename) :  EndProcedure
  Procedure.q ckGetSizeByName64(obj.i, filename.s) :  ProcedureReturn Ftp2GetSizeByName64(obj, filename) :  EndProcedure
  Procedure.s ckGetSizeStr(obj.i, index.l) :  ProcedureReturn PeekS(Ftp2GetSizeStr(obj, index)) :  EndProcedure
  Procedure.i ckGetSizeStrAsync(obj.i, index.l) :  ProcedureReturn Ftp2GetSizeStrAsync(obj, index) :  EndProcedure
  Procedure.s ckGetSizeStrByName(obj.i, filename.s) :  ProcedureReturn PeekS(Ftp2GetSizeStrByName(obj, filename)) :  EndProcedure
  Procedure.i ckGetSizeStrByNameAsync(obj.i, filename.s) :  ProcedureReturn Ftp2GetSizeStrByNameAsync(obj, filename) :  EndProcedure
  Procedure.i ckGetSslServerCert(obj.i) :  ProcedureReturn Ftp2GetSslServerCert(obj) :  EndProcedure
  Procedure.s ckGetTextDirListing(obj.i, pattern.s) :  ProcedureReturn PeekS(Ftp2GetTextDirListing(obj, pattern)) :  EndProcedure
  Procedure.i ckGetTextDirListingAsync(obj.i, pattern.s) :  ProcedureReturn Ftp2GetTextDirListingAsync(obj, pattern) :  EndProcedure
  Procedure.s ckGetXmlDirListing(obj.i, pattern.s) :  ProcedureReturn PeekS(Ftp2GetXmlDirListing(obj, pattern)) :  EndProcedure
  Procedure.i ckGetXmlDirListingAsync(obj.i, pattern.s) :  ProcedureReturn Ftp2GetXmlDirListingAsync(obj, pattern) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn Ftp2IsUnlocked(obj) :  EndProcedure
  Procedure.l ckLargeFileUpload(obj.i, localPath.s, remotePath.s, chunkSize.l) :  ProcedureReturn Ftp2LargeFileUpload(obj, localPath, remotePath, chunkSize) :  EndProcedure
  Procedure.i ckLargeFileUploadAsync(obj.i, localPath.s, remotePath.s, chunkSize.l) :  ProcedureReturn Ftp2LargeFileUploadAsync(obj, localPath, remotePath, chunkSize) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn Ftp2LoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckLoginAfterConnectOnly(obj.i) :  ProcedureReturn Ftp2LoginAfterConnectOnly(obj) :  EndProcedure
  Procedure.i ckLoginAfterConnectOnlyAsync(obj.i) :  ProcedureReturn Ftp2LoginAfterConnectOnlyAsync(obj) :  EndProcedure
  Procedure.l ckMGetFiles(obj.i, remotePattern.s, localDir.s) :  ProcedureReturn Ftp2MGetFiles(obj, remotePattern, localDir) :  EndProcedure
  Procedure.i ckMGetFilesAsync(obj.i, remotePattern.s, localDir.s) :  ProcedureReturn Ftp2MGetFilesAsync(obj, remotePattern, localDir) :  EndProcedure
  Procedure.l ckMPutFiles(obj.i, pattern.s) :  ProcedureReturn Ftp2MPutFiles(obj, pattern) :  EndProcedure
  Procedure.i ckMPutFilesAsync(obj.i, pattern.s) :  ProcedureReturn Ftp2MPutFilesAsync(obj, pattern) :  EndProcedure
  Procedure.s ckNlstXml(obj.i, remoteDirPattern.s) :  ProcedureReturn PeekS(Ftp2NlstXml(obj, remoteDirPattern)) :  EndProcedure
  Procedure.i ckNlstXmlAsync(obj.i, remoteDirPattern.s) :  ProcedureReturn Ftp2NlstXmlAsync(obj, remoteDirPattern) :  EndProcedure
  Procedure.l ckNoop(obj.i) :  ProcedureReturn Ftp2Noop(obj) :  EndProcedure
  Procedure.i ckNoopAsync(obj.i) :  ProcedureReturn Ftp2NoopAsync(obj) :  EndProcedure
  Procedure.l ckPutFile(obj.i, localFilePath.s, remoteFilePath.s) :  ProcedureReturn Ftp2PutFile(obj, localFilePath, remoteFilePath) :  EndProcedure
  Procedure.i ckPutFileAsync(obj.i, localFilePath.s, remoteFilePath.s) :  ProcedureReturn Ftp2PutFileAsync(obj, localFilePath, remoteFilePath) :  EndProcedure
  Procedure.l ckPutFileBd(obj.i, binData.i, remoteFilePath.s) :  ProcedureReturn Ftp2PutFileBd(obj, binData, remoteFilePath) :  EndProcedure
  Procedure.i ckPutFileBdAsync(obj.i, binData.i, remoteFilePath.s) :  ProcedureReturn Ftp2PutFileBdAsync(obj, binData, remoteFilePath) :  EndProcedure
  Procedure.l ckPutFileFromTextData(obj.i, remoteFilename.s, textData.s, charset.s) :  ProcedureReturn Ftp2PutFileFromTextData(obj, remoteFilename, textData, charset) :  EndProcedure
  Procedure.i ckPutFileFromTextDataAsync(obj.i, remoteFilename.s, textData.s, charset.s) :  ProcedureReturn Ftp2PutFileFromTextDataAsync(obj, remoteFilename, textData, charset) :  EndProcedure
  Procedure.l ckPutFileSb(obj.i, sb.i, charset.s, includeBom.l, remoteFilePath.s) :  ProcedureReturn Ftp2PutFileSb(obj, sb, charset, includeBom, remoteFilePath) :  EndProcedure
  Procedure.i ckPutFileSbAsync(obj.i, sb.i, charset.s, includeBom.l, remoteFilePath.s) :  ProcedureReturn Ftp2PutFileSbAsync(obj, sb, charset, includeBom, remoteFilePath) :  EndProcedure
  Procedure.l ckPutPlan(obj.i, plan.s, alreadyDoneFilename.s) :  ProcedureReturn Ftp2PutPlan(obj, plan, alreadyDoneFilename) :  EndProcedure
  Procedure.i ckPutPlanAsync(obj.i, plan.s, alreadyDoneFilename.s) :  ProcedureReturn Ftp2PutPlanAsync(obj, plan, alreadyDoneFilename) :  EndProcedure
  Procedure.l ckPutTree(obj.i, localDir.s) :  ProcedureReturn Ftp2PutTree(obj, localDir) :  EndProcedure
  Procedure.i ckPutTreeAsync(obj.i, localDir.s) :  ProcedureReturn Ftp2PutTreeAsync(obj, localDir) :  EndProcedure
  Procedure.l ckQuote(obj.i, cmd.s) :  ProcedureReturn Ftp2Quote(obj, cmd) :  EndProcedure
  Procedure.i ckQuoteAsync(obj.i, cmd.s) :  ProcedureReturn Ftp2QuoteAsync(obj, cmd) :  EndProcedure
  Procedure.l ckRemoveRemoteDir(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2RemoveRemoteDir(obj, remoteDirPath) :  EndProcedure
  Procedure.i ckRemoveRemoteDirAsync(obj.i, remoteDirPath.s) :  ProcedureReturn Ftp2RemoveRemoteDirAsync(obj, remoteDirPath) :  EndProcedure
  Procedure.l ckRenameRemoteFile(obj.i, existingRemoteFilePath.s, newRemoteFilePath.s) :  ProcedureReturn Ftp2RenameRemoteFile(obj, existingRemoteFilePath, newRemoteFilePath) :  EndProcedure
  Procedure.i ckRenameRemoteFileAsync(obj.i, existingRemoteFilePath.s, newRemoteFilePath.s) :  ProcedureReturn Ftp2RenameRemoteFileAsync(obj, existingRemoteFilePath, newRemoteFilePath) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn Ftp2SaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSendCommand(obj.i, cmd.s) :  ProcedureReturn PeekS(Ftp2SendCommand(obj, cmd)) :  EndProcedure
  Procedure.i ckSendCommandAsync(obj.i, cmd.s) :  ProcedureReturn Ftp2SendCommandAsync(obj, cmd) :  EndProcedure
  Procedure.l ckSetModeZ(obj.i) :  ProcedureReturn Ftp2SetModeZ(obj) :  EndProcedure
  Procedure.i ckSetModeZAsync(obj.i) :  ProcedureReturn Ftp2SetModeZAsync(obj) :  EndProcedure
  Procedure ckSetOldestDateStr(obj.i, oldestDateTimeStr.s) :  ProcedureReturn Ftp2SetOldestDateStr(obj, oldestDateTimeStr) :  EndProcedure
  Procedure.l ckSetOption(obj.i, option.s) :  ProcedureReturn Ftp2SetOption(obj, option) :  EndProcedure
  Procedure.l ckSetPassword(obj.i, password.i) :  ProcedureReturn Ftp2SetPassword(obj, password) :  EndProcedure
  Procedure.l ckSetRemoteFileDateTimeStr(obj.i, dateTimeStr.s, remoteFilename.s) :  ProcedureReturn Ftp2SetRemoteFileDateTimeStr(obj, dateTimeStr, remoteFilename) :  EndProcedure
  Procedure.i ckSetRemoteFileDateTimeStrAsync(obj.i, dateTimeStr.s, remoteFilename.s) :  ProcedureReturn Ftp2SetRemoteFileDateTimeStrAsync(obj, dateTimeStr, remoteFilename) :  EndProcedure
  Procedure.l ckSetRemoteFileDt(obj.i, dt.i, remoteFilename.s) :  ProcedureReturn Ftp2SetRemoteFileDt(obj, dt, remoteFilename) :  EndProcedure
  Procedure.i ckSetRemoteFileDtAsync(obj.i, dt.i, remoteFilename.s) :  ProcedureReturn Ftp2SetRemoteFileDtAsync(obj, dt, remoteFilename) :  EndProcedure
  Procedure.l ckSetSecurePassword(obj.i, password.i) :  ProcedureReturn Ftp2SetSecurePassword(obj, password) :  EndProcedure
  Procedure ckSetSslCertRequirement(obj.i, reqName.s, reqValue.s) :  ProcedureReturn Ftp2SetSslCertRequirement(obj, reqName, reqValue) :  EndProcedure
  Procedure.l ckSetSslClientCert(obj.i, cert.i) :  ProcedureReturn Ftp2SetSslClientCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s) :  ProcedureReturn Ftp2SetSslClientCertPem(obj, pemDataOrFilename, pemPassword) :  EndProcedure
  Procedure.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s) :  ProcedureReturn Ftp2SetSslClientCertPfx(obj, pfxFilename, pfxPassword) :  EndProcedure
  Procedure.l ckSetTypeAscii(obj.i) :  ProcedureReturn Ftp2SetTypeAscii(obj) :  EndProcedure
  Procedure.i ckSetTypeAsciiAsync(obj.i) :  ProcedureReturn Ftp2SetTypeAsciiAsync(obj) :  EndProcedure
  Procedure.l ckSetTypeBinary(obj.i) :  ProcedureReturn Ftp2SetTypeBinary(obj) :  EndProcedure
  Procedure.i ckSetTypeBinaryAsync(obj.i) :  ProcedureReturn Ftp2SetTypeBinaryAsync(obj) :  EndProcedure
  Procedure.l ckSite(obj.i, siteCommand.s) :  ProcedureReturn Ftp2Site(obj, siteCommand) :  EndProcedure
  Procedure.i ckSiteAsync(obj.i, siteCommand.s) :  ProcedureReturn Ftp2SiteAsync(obj, siteCommand) :  EndProcedure
  Procedure ckSleepMs(obj.i, millisec.l) :  ProcedureReturn Ftp2SleepMs(obj, millisec) :  EndProcedure
  Procedure.s ckStat(obj.i) :  ProcedureReturn PeekS(Ftp2Stat(obj)) :  EndProcedure
  Procedure.i ckStatAsync(obj.i) :  ProcedureReturn Ftp2StatAsync(obj) :  EndProcedure
  Procedure.l ckSyncDeleteRemote(obj.i, localRoot.s) :  ProcedureReturn Ftp2SyncDeleteRemote(obj, localRoot) :  EndProcedure
  Procedure.i ckSyncDeleteRemoteAsync(obj.i, localRoot.s) :  ProcedureReturn Ftp2SyncDeleteRemoteAsync(obj, localRoot) :  EndProcedure
  Procedure.l ckSyncLocalDir(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncLocalDir(obj, localRoot, mode) :  EndProcedure
  Procedure.i ckSyncLocalDirAsync(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncLocalDirAsync(obj, localRoot, mode) :  EndProcedure
  Procedure.l ckSyncLocalTree(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncLocalTree(obj, localRoot, mode) :  EndProcedure
  Procedure.i ckSyncLocalTreeAsync(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncLocalTreeAsync(obj, localRoot, mode) :  EndProcedure
  Procedure.l ckSyncRemoteTree(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncRemoteTree(obj, localRoot, mode) :  EndProcedure
  Procedure.i ckSyncRemoteTreeAsync(obj.i, localRoot.s, mode.l) :  ProcedureReturn Ftp2SyncRemoteTreeAsync(obj, localRoot, mode) :  EndProcedure
  Procedure.l ckSyncRemoteTree2(obj.i, localDirPath.s, mode.l, bDescend.l, bPreviewOnly.l) :  ProcedureReturn Ftp2SyncRemoteTree2(obj, localDirPath, mode, bDescend, bPreviewOnly) :  EndProcedure
  Procedure.i ckSyncRemoteTree2Async(obj.i, localDirPath.s, mode.l, bDescend.l, bPreviewOnly.l) :  ProcedureReturn Ftp2SyncRemoteTree2Async(obj, localDirPath, mode, bDescend, bPreviewOnly) :  EndProcedure
  Procedure.s ckSyst(obj.i) :  ProcedureReturn PeekS(Ftp2Syst(obj)) :  EndProcedure
  Procedure.i ckSystAsync(obj.i) :  ProcedureReturn Ftp2SystAsync(obj) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn Ftp2UnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

