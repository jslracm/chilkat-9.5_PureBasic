DeclareModule CkImap
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAppendSeen(obj.i)
  Declare setCkAppendSeen(obj.i, value.l)
  Declare.l ckAppendUid(obj.i)
  Declare.s ckAuthMethod(obj.i)
  Declare setCkAuthMethod(obj.i, value.s)
  Declare.s ckAuthzId(obj.i)
  Declare setCkAuthzId(obj.i, value.s)
  Declare.l ckAutoDownloadAttachments(obj.i)
  Declare setCkAutoDownloadAttachments(obj.i, value.l)
  Declare.l ckAutoFix(obj.i)
  Declare setCkAutoFix(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.s ckConnectedToHost(obj.i)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDomain(obj.i)
  Declare setCkDomain(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
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
  Declare.l ckKeepSessionLog(obj.i)
  Declare setCkKeepSessionLog(obj.i, value.l)
  Declare.s ckLastAppendedMime(obj.i)
  Declare.s ckLastCommand(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.s ckLastIntermediateResponse(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastResponse(obj.i)
  Declare.s ckLastResponseCode(obj.i)
  Declare.s ckLoggedInUser(obj.i)
  Declare.l ckNumMessages(obj.i)
  Declare.l ckPeekMode(obj.i)
  Declare setCkPeekMode(obj.i, value.l)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPort(obj.i)
  Declare setCkPort(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
  Declare.s ckSearchCharset(obj.i)
  Declare setCkSearchCharset(obj.i, value.s)
  Declare.s ckSelectedMailbox(obj.i)
  Declare.l ckSendBufferSize(obj.i)
  Declare setCkSendBufferSize(obj.i, value.l)
  Declare.s ckSeparatorChar(obj.i)
  Declare setCkSeparatorChar(obj.i, value.s)
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
  Declare.l ckStartTls(obj.i)
  Declare setCkStartTls(obj.i, value.l)
  Declare.s ckTlsCipherSuite(obj.i)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.s ckTlsVersion(obj.i)
  Declare.l ckUidNext(obj.i)
  Declare.l ckUidValidity(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s)
  Declare.l ckAppendMail(obj.i, mailbox.s, email.i)
  Declare.i ckAppendMailAsync(obj.i, mailbox.s, email.i)
  Declare.l ckAppendMime(obj.i, mailbox.s, mimeText.s)
  Declare.i ckAppendMimeAsync(obj.i, mailbox.s, mimeText.s)
  Declare.l ckAppendMimeWithDateStr(obj.i, mailbox.s, mimeText.s, internalDateStr.s)
  Declare.i ckAppendMimeWithDateStrAsync(obj.i, mailbox.s, mimeText.s, internalDateStr.s)
  Declare.l ckAppendMimeWithFlags(obj.i, mailbox.s, mimeText.s, seen.l, flagged.l, answered.l, draft.l)
  Declare.i ckAppendMimeWithFlagsAsync(obj.i, mailbox.s, mimeText.s, seen.l, flagged.l, answered.l, draft.l)
  Declare.l ckAppendMimeWithFlagsSb(obj.i, mailbox.s, sbMime.i, seen.l, flagged.l, answered.l, draft.l)
  Declare.i ckAppendMimeWithFlagsSbAsync(obj.i, mailbox.s, sbMime.i, seen.l, flagged.l, answered.l, draft.l)
  Declare.s ckCapability(obj.i)
  Declare.i ckCapabilityAsync(obj.i)
  Declare.l ckCheckConnection(obj.i)
  Declare.i ckCheckForNewEmail(obj.i)
  Declare.i ckCheckForNewEmailAsync(obj.i)
  Declare ckClearSessionLog(obj.i)
  Declare.l ckCloseMailbox(obj.i, mailbox.s)
  Declare.i ckCloseMailboxAsync(obj.i, mailbox.s)
  Declare.l ckConnect(obj.i, domainName.s)
  Declare.i ckConnectAsync(obj.i, domainName.s)
  Declare.l ckCopy(obj.i, msgId.l, bUid.l, copyToMailbox.s)
  Declare.i ckCopyAsync(obj.i, msgId.l, bUid.l, copyToMailbox.s)
  Declare.l ckCopyMultiple(obj.i, messageSet.i, copyToMailbox.s)
  Declare.i ckCopyMultipleAsync(obj.i, messageSet.i, copyToMailbox.s)
  Declare.l ckCopySequence(obj.i, startSeqNum.l, count.l, copyToMailbox.s)
  Declare.i ckCopySequenceAsync(obj.i, startSeqNum.l, count.l, copyToMailbox.s)
  Declare.l ckCreateMailbox(obj.i, mailbox.s)
  Declare.i ckCreateMailboxAsync(obj.i, mailbox.s)
  Declare.l ckDeleteMailbox(obj.i, mailbox.s)
  Declare.i ckDeleteMailboxAsync(obj.i, mailbox.s)
  Declare.l ckDisconnect(obj.i)
  Declare.i ckDisconnectAsync(obj.i)
  Declare.l ckExamineMailbox(obj.i, mailbox.s)
  Declare.i ckExamineMailboxAsync(obj.i, mailbox.s)
  Declare.l ckExpunge(obj.i)
  Declare.i ckExpungeAsync(obj.i)
  Declare.l ckExpungeAndClose(obj.i)
  Declare.i ckExpungeAndCloseAsync(obj.i)
  Declare.l ckFetchAttachment(obj.i, emailObject.i, attachmentIndex.l, saveToPath.s)
  Declare.i ckFetchAttachmentAsync(obj.i, emailObject.i, attachmentIndex.l, saveToPath.s)
  Declare.l ckFetchAttachmentBd(obj.i, email.i, attachmentIndex.l, binData.i)
  Declare.i ckFetchAttachmentBdAsync(obj.i, email.i, attachmentIndex.l, binData.i)
  Declare.l ckFetchAttachmentSb(obj.i, email.i, attachmentIndex.l, charset.s, sb.i)
  Declare.i ckFetchAttachmentSbAsync(obj.i, email.i, attachmentIndex.l, charset.s, sb.i)
  Declare.s ckFetchAttachmentString(obj.i, emailObject.i, attachmentIndex.l, charset.s)
  Declare.i ckFetchAttachmentStringAsync(obj.i, emailObject.i, attachmentIndex.l, charset.s)
  Declare.i ckFetchBundle(obj.i, messageSet.i)
  Declare.i ckFetchBundleAsync(obj.i, messageSet.i)
  Declare.i ckFetchBundleAsMime(obj.i, messageSet.i)
  Declare.i ckFetchBundleAsMimeAsync(obj.i, messageSet.i)
  Declare.i ckFetchChunk(obj.i, startSeqNum.l, count.l, failedSet.i, fetchedSet.i)
  Declare.i ckFetchChunkAsync(obj.i, startSeqNum.l, count.l, failedSet.i, fetchedSet.i)
  Declare.s ckFetchFlags(obj.i, msgId.l, bUid.l)
  Declare.i ckFetchFlagsAsync(obj.i, msgId.l, bUid.l)
  Declare.i ckFetchHeaders(obj.i, messageSet.i)
  Declare.i ckFetchHeadersAsync(obj.i, messageSet.i)
  Declare.i ckFetchSequence(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSequenceAsync(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSequenceAsMime(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSequenceAsMimeAsync(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSequenceHeaders(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSequenceHeadersAsync(obj.i, startSeqNum.l, numMessages.l)
  Declare.i ckFetchSingle(obj.i, msgId.l, bUid.l)
  Declare.i ckFetchSingleAsync(obj.i, msgId.l, bUid.l)
  Declare.s ckFetchSingleAsMime(obj.i, msgId.l, bUid.l)
  Declare.i ckFetchSingleAsMimeAsync(obj.i, msgId.l, bUid.l)
  Declare.l ckFetchSingleAsMimeSb(obj.i, msgId.l, bUid.l, sbMime.i)
  Declare.i ckFetchSingleAsMimeSbAsync(obj.i, msgId.l, bUid.l, sbMime.i)
  Declare.l ckFetchSingleBd(obj.i, msgId.l, bUid.l, mimeData.i)
  Declare.i ckFetchSingleBdAsync(obj.i, msgId.l, bUid.l, mimeData.i)
  Declare.i ckFetchSingleHeader(obj.i, msgId.l, bUid.l)
  Declare.i ckFetchSingleHeaderAsync(obj.i, msgId.l, bUid.l)
  Declare.s ckFetchSingleHeaderAsMime(obj.i, msgId.l, bUID.l)
  Declare.i ckFetchSingleHeaderAsMimeAsync(obj.i, msgId.l, bUID.l)
  Declare.i ckGetAllUids(obj.i)
  Declare.i ckGetAllUidsAsync(obj.i)
  Declare.s ckGetMailAttachFilename(obj.i, email.i, attachIndex.l)
  Declare.l ckGetMailAttachSize(obj.i, email.i, attachIndex.l)
  Declare.s ckGetMailboxStatus(obj.i, mailbox.s)
  Declare.i ckGetMailboxStatusAsync(obj.i, mailbox.s)
  Declare.l ckGetMailFlag(obj.i, email.i, flagName.s)
  Declare.l ckGetMailNumAttach(obj.i, email.i)
  Declare.l ckGetMailSize(obj.i, email.i)
  Declare.s ckGetQuota(obj.i, quotaRoot.s)
  Declare.i ckGetQuotaAsync(obj.i, quotaRoot.s)
  Declare.s ckGetQuotaRoot(obj.i, mailboxName.s)
  Declare.i ckGetQuotaRootAsync(obj.i, mailboxName.s)
  Declare.i ckGetSslServerCert(obj.i)
  Declare.l ckHasCapability(obj.i, name.s, capabilityResponse.s)
  Declare.s ckIdleCheck(obj.i, timeoutMs.l)
  Declare.i ckIdleCheckAsync(obj.i, timeoutMs.l)
  Declare.l ckIdleDone(obj.i)
  Declare.i ckIdleDoneAsync(obj.i)
  Declare.l ckIdleStart(obj.i)
  Declare.i ckIdleStartAsync(obj.i)
  Declare.l ckIsConnected(obj.i)
  Declare.l ckIsLoggedIn(obj.i)
  Declare.l ckIsUnlocked(obj.i)
  Declare.i ckListMailboxes(obj.i, reference.s, wildcardedMailbox.s)
  Declare.i ckListMailboxesAsync(obj.i, reference.s, wildcardedMailbox.s)
  Declare.i ckListSubscribed(obj.i, reference.s, wildcardedMailbox.s)
  Declare.i ckListSubscribedAsync(obj.i, reference.s, wildcardedMailbox.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckLogin(obj.i, loginName.s, password.s)
  Declare.i ckLoginAsync(obj.i, loginName.s, password.s)
  Declare.l ckLoginSecure(obj.i, loginName.i, password.i)
  Declare.i ckLoginSecureAsync(obj.i, loginName.i, password.i)
  Declare.l ckLogout(obj.i)
  Declare.i ckLogoutAsync(obj.i)
  Declare.l ckMoveMessages(obj.i, messageSet.i, destFolder.s)
  Declare.i ckMoveMessagesAsync(obj.i, messageSet.i, destFolder.s)
  Declare.l ckNoop(obj.i)
  Declare.i ckNoopAsync(obj.i)
  Declare.l ckRefetchMailFlags(obj.i, email.i)
  Declare.i ckRefetchMailFlagsAsync(obj.i, email.i)
  Declare.l ckRenameMailbox(obj.i, fromMailbox.s, toMailbox.s)
  Declare.i ckRenameMailboxAsync(obj.i, fromMailbox.s, toMailbox.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.i ckSearch(obj.i, criteria.s, bUid.l)
  Declare.i ckSearchAsync(obj.i, criteria.s, bUid.l)
  Declare.l ckSelectMailbox(obj.i, mailbox.s)
  Declare.i ckSelectMailboxAsync(obj.i, mailbox.s)
  Declare.s ckSendRawCommand(obj.i, cmd.s)
  Declare.i ckSendRawCommandAsync(obj.i, cmd.s)
  Declare.l ckSetDecryptCert(obj.i, cert.i)
  Declare.l ckSetDecryptCert2(obj.i, cert.i, key.i)
  Declare.l ckSetFlag(obj.i, msgId.l, bUid.l, flagName.s, value.l)
  Declare.i ckSetFlagAsync(obj.i, msgId.l, bUid.l, flagName.s, value.l)
  Declare.l ckSetFlags(obj.i, messageSet.i, flagName.s, value.l)
  Declare.i ckSetFlagsAsync(obj.i, messageSet.i, flagName.s, value.l)
  Declare.l ckSetMailFlag(obj.i, email.i, flagName.s, value.l)
  Declare.i ckSetMailFlagAsync(obj.i, email.i, flagName.s, value.l)
  Declare.l ckSetQuota(obj.i, quotaRoot.s, resource.s, quota.l)
  Declare.i ckSetQuotaAsync(obj.i, quotaRoot.s, resource.s, quota.l)
  Declare.l ckSetSslClientCert(obj.i, cert.i)
  Declare.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s)
  Declare.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s)
  Declare.i ckSort(obj.i, sortCriteria.s, charset.s, searchCriteria.s, bUid.l)
  Declare.i ckSortAsync(obj.i, sortCriteria.s, charset.s, searchCriteria.s, bUid.l)
  Declare.l ckSshAuthenticatePk(obj.i, sshLogin.s, privateKey.i)
  Declare.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, privateKey.i)
  Declare.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s)
  Declare.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s)
  Declare.l ckSshCloseTunnel(obj.i)
  Declare.i ckSshCloseTunnelAsync(obj.i)
  Declare.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l)
  Declare.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l)
  Declare.l ckStoreFlags(obj.i, msgId.l, bUid.l, flagNames.s, value.l)
  Declare.i ckStoreFlagsAsync(obj.i, msgId.l, bUid.l, flagNames.s, value.l)
  Declare.l ckSubscribe(obj.i, mailbox.s)
  Declare.i ckSubscribeAsync(obj.i, mailbox.s)
  Declare.i ckThreadCmd(obj.i, threadAlg.s, charset.s, searchCriteria.s, bUid.l)
  Declare.i ckThreadCmdAsync(obj.i, threadAlg.s, charset.s, searchCriteria.s, bUid.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUnsubscribe(obj.i, mailbox.s)
  Declare.i ckUnsubscribeAsync(obj.i, mailbox.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckUseSsh(obj.i, ssh.i)
  Declare.l ckUseSshTunnel(obj.i, tunnel.i)
EndDeclareModule

Module CkImap
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMsillll(obj.i, arg1.s, arg2.i, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i ckiMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC.i ckiMils(obj.i, arg1.i, arg2.l, arg3.s)
  PrototypeC.i ckiMlli(obj.i, arg1.l, arg2.l, arg3.i)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMili(obj.i, arg1.i, arg2.l, arg3.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMssllll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.l cklMsillll(obj.i, arg1.s, arg2.i, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMilsi(obj.i, arg1.i, arg2.l, arg3.s, arg4.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiMllii(obj.i, arg1.l, arg2.l, arg3.i, arg4.i)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMils(obj.i, arg1.i, arg2.l, arg3.s)
  PrototypeC.i ckiMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMili(obj.i, arg1.i, arg2.l, arg3.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMilsi(obj.i, arg1.i, arg2.l, arg3.s, arg4.i)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMlli(obj.i, arg1.l, arg2.l, arg3.i)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMssllll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC.i ckiMllsl(obj.i, arg1.l, arg2.l, arg3.s, arg4.l)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMllsl(obj.i, arg1.l, arg2.l, arg3.s, arg4.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkImapCreate()
  PrototypeC CkImapDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkImapLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkImapLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkImapLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkImapLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkImapLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ImapCreate.CkImapCreate = GetFunction(CkImapLibId,"CkImapU_CreateW")
  Global ImapDispose.CkImapDispose = GetFunction(CkImapLibId,"CkImapU_DisposeW")
  Global ImapAbortCurrent.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getAbortCurrentW")
  Global ImapPSetAbortCurrent.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putAbortCurrentW")
  Global ImapAppendSeen.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getAppendSeenW")
  Global ImapPSetAppendSeen.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putAppendSeenW")
  Global ImapAppendUid.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getAppendUidW")
  Global ImapAuthMethod.cksPropGet = GetFunction(CkImapLibId,"CkImapU_authMethodW")
  Global ImapPSetAuthMethod.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putAuthMethodW")
  Global ImapAuthzId.cksPropGet = GetFunction(CkImapLibId,"CkImapU_authzIdW")
  Global ImapPSetAuthzId.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putAuthzIdW")
  Global ImapAutoDownloadAttachments.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getAutoDownloadAttachmentsW")
  Global ImapPSetAutoDownloadAttachments.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putAutoDownloadAttachmentsW")
  Global ImapAutoFix.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getAutoFixW")
  Global ImapPSetAutoFix.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putAutoFixW")
  Global ImapClientIpAddress.cksPropGet = GetFunction(CkImapLibId,"CkImapU_clientIpAddressW")
  Global ImapPSetClientIpAddress.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putClientIpAddressW")
  Global ImapConnectedToHost.cksPropGet = GetFunction(CkImapLibId,"CkImapU_connectedToHostW")
  Global ImapConnectTimeout.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getConnectTimeoutW")
  Global ImapPSetConnectTimeout.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putConnectTimeoutW")
  Global ImapDebugLogFilePath.cksPropGet = GetFunction(CkImapLibId,"CkImapU_debugLogFilePathW")
  Global ImapPSetDebugLogFilePath.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putDebugLogFilePathW")
  Global ImapDomain.cksPropGet = GetFunction(CkImapLibId,"CkImapU_domainW")
  Global ImapPSetDomain.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putDomainW")
  Global ImapHeartbeatMs.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getHeartbeatMsW")
  Global ImapPSetHeartbeatMs.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putHeartbeatMsW")
  Global ImapHttpProxyAuthMethod.cksPropGet = GetFunction(CkImapLibId,"CkImapU_httpProxyAuthMethodW")
  Global ImapPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyAuthMethodW")
  Global ImapHttpProxyDomain.cksPropGet = GetFunction(CkImapLibId,"CkImapU_httpProxyDomainW")
  Global ImapPSetHttpProxyDomain.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyDomainW")
  Global ImapHttpProxyHostname.cksPropGet = GetFunction(CkImapLibId,"CkImapU_httpProxyHostnameW")
  Global ImapPSetHttpProxyHostname.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyHostnameW")
  Global ImapHttpProxyPassword.cksPropGet = GetFunction(CkImapLibId,"CkImapU_httpProxyPasswordW")
  Global ImapPSetHttpProxyPassword.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyPasswordW")
  Global ImapHttpProxyPort.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getHttpProxyPortW")
  Global ImapPSetHttpProxyPort.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyPortW")
  Global ImapHttpProxyUsername.cksPropGet = GetFunction(CkImapLibId,"CkImapU_httpProxyUsernameW")
  Global ImapPSetHttpProxyUsername.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putHttpProxyUsernameW")
  Global ImapKeepSessionLog.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getKeepSessionLogW")
  Global ImapPSetKeepSessionLog.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putKeepSessionLogW")
  Global ImapLastAppendedMime.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastAppendedMimeW")
  Global ImapLastCommand.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastCommandW")
  Global ImapLastErrorHtml.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastErrorHtmlW")
  Global ImapLastErrorText.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastErrorTextW")
  Global ImapLastErrorXml.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastErrorXmlW")
  Global ImapLastIntermediateResponse.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastIntermediateResponseW")
  Global ImapLastMethodSuccess.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getLastMethodSuccessW")
  Global ImapPSetLastMethodSuccess.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putLastMethodSuccessW")
  Global ImapLastResponse.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastResponseW")
  Global ImapLastResponseCode.cksPropGet = GetFunction(CkImapLibId,"CkImapU_lastResponseCodeW")
  Global ImapLoggedInUser.cksPropGet = GetFunction(CkImapLibId,"CkImapU_loggedInUserW")
  Global ImapNumMessages.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getNumMessagesW")
  Global ImapPeekMode.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getPeekModeW")
  Global ImapPSetPeekMode.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putPeekModeW")
  Global ImapPercentDoneScale.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getPercentDoneScaleW")
  Global ImapPSetPercentDoneScale.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putPercentDoneScaleW")
  Global ImapPort.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getPortW")
  Global ImapPSetPort.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putPortW")
  Global ImapPreferIpv6.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getPreferIpv6W")
  Global ImapPSetPreferIpv6.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putPreferIpv6W")
  Global ImapReadTimeout.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getReadTimeoutW")
  Global ImapPSetReadTimeout.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putReadTimeoutW")
  Global ImapRequireSslCertVerify.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getRequireSslCertVerifyW")
  Global ImapPSetRequireSslCertVerify.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putRequireSslCertVerifyW")
  Global ImapSearchCharset.cksPropGet = GetFunction(CkImapLibId,"CkImapU_searchCharsetW")
  Global ImapPSetSearchCharset.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSearchCharsetW")
  Global ImapSelectedMailbox.cksPropGet = GetFunction(CkImapLibId,"CkImapU_selectedMailboxW")
  Global ImapSendBufferSize.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSendBufferSizeW")
  Global ImapPSetSendBufferSize.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSendBufferSizeW")
  Global ImapSeparatorChar.cksPropGet = GetFunction(CkImapLibId,"CkImapU_separatorCharW")
  Global ImapPSetSeparatorChar.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSeparatorCharW")
  Global ImapSessionLog.cksPropGet = GetFunction(CkImapLibId,"CkImapU_sessionLogW")
  Global ImapSocksHostname.cksPropGet = GetFunction(CkImapLibId,"CkImapU_socksHostnameW")
  Global ImapPSetSocksHostname.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSocksHostnameW")
  Global ImapSocksPassword.cksPropGet = GetFunction(CkImapLibId,"CkImapU_socksPasswordW")
  Global ImapPSetSocksPassword.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSocksPasswordW")
  Global ImapSocksPort.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSocksPortW")
  Global ImapPSetSocksPort.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSocksPortW")
  Global ImapSocksUsername.cksPropGet = GetFunction(CkImapLibId,"CkImapU_socksUsernameW")
  Global ImapPSetSocksUsername.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSocksUsernameW")
  Global ImapSocksVersion.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSocksVersionW")
  Global ImapPSetSocksVersion.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSocksVersionW")
  Global ImapSoRcvBuf.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSoRcvBufW")
  Global ImapPSetSoRcvBuf.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSoRcvBufW")
  Global ImapSoSndBuf.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSoSndBufW")
  Global ImapPSetSoSndBuf.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSoSndBufW")
  Global ImapSsl.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSslW")
  Global ImapPSetSsl.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putSslW")
  Global ImapSslAllowedCiphers.cksPropGet = GetFunction(CkImapLibId,"CkImapU_sslAllowedCiphersW")
  Global ImapPSetSslAllowedCiphers.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSslAllowedCiphersW")
  Global ImapSslProtocol.cksPropGet = GetFunction(CkImapLibId,"CkImapU_sslProtocolW")
  Global ImapPSetSslProtocol.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putSslProtocolW")
  Global ImapSslServerCertVerified.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getSslServerCertVerifiedW")
  Global ImapStartTls.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getStartTlsW")
  Global ImapPSetStartTls.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putStartTlsW")
  Global ImapTlsCipherSuite.cksPropGet = GetFunction(CkImapLibId,"CkImapU_tlsCipherSuiteW")
  Global ImapTlsPinSet.cksPropGet = GetFunction(CkImapLibId,"CkImapU_tlsPinSetW")
  Global ImapPSetTlsPinSet.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putTlsPinSetW")
  Global ImapTlsVersion.cksPropGet = GetFunction(CkImapLibId,"CkImapU_tlsVersionW")
  Global ImapUidNext.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getUidNextW")
  Global ImapUidValidity.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getUidValidityW")
  Global ImapUncommonOptions.cksPropGet = GetFunction(CkImapLibId,"CkImapU_uncommonOptionsW")
  Global ImapPSetUncommonOptions.cksPropSet = GetFunction(CkImapLibId,"CkImapU_putUncommonOptionsW")
  Global ImapVerboseLogging.cklPropGet = GetFunction(CkImapLibId,"CkImapU_getVerboseLoggingW")
  Global ImapPSetVerboseLogging.cklPropSet = GetFunction(CkImapLibId,"CkImapU_putVerboseLoggingW")
  Global ImapVersion.cksPropGet = GetFunction(CkImapLibId,"CkImapU_versionW")
  Global ImapAddPfxSourceFile.cklMss = GetFunction(CkImapLibId,"CkImapU_AddPfxSourceFileW")
  Global ImapAppendMail.cklMsi = GetFunction(CkImapLibId,"CkImapU_AppendMailW")
  Global ImapAppendMailAsync.ckiMsi = GetFunction(CkImapLibId,"CkImapU_AppendMailAsyncW")
  Global ImapAppendMime.cklMss = GetFunction(CkImapLibId,"CkImapU_AppendMimeW")
  Global ImapAppendMimeAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_AppendMimeAsyncW")
  Global ImapAppendMimeWithDateStr.cklMsss = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithDateStrW")
  Global ImapAppendMimeWithDateStrAsync.ckiMsss = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithDateStrAsyncW")
  Global ImapAppendMimeWithFlags.cklMssllll = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithFlagsW")
  Global ImapAppendMimeWithFlagsAsync.ckiMssllll = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithFlagsAsyncW")
  Global ImapAppendMimeWithFlagsSb.cklMsillll = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithFlagsSbW")
  Global ImapAppendMimeWithFlagsSbAsync.ckiMsillll = GetFunction(CkImapLibId,"CkImapU_AppendMimeWithFlagsSbAsyncW")
  Global ImapCapability.cklM = GetFunction(CkImapLibId,"CkImapU_capabilityW")
  Global ImapCapabilityAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_CapabilityAsyncW")
  Global ImapCheckConnection.cklM = GetFunction(CkImapLibId,"CkImapU_CheckConnectionW")
  Global ImapCheckForNewEmail.ckiM = GetFunction(CkImapLibId,"CkImapU_CheckForNewEmailW")
  Global ImapCheckForNewEmailAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_CheckForNewEmailAsyncW")
  Global ImapClearSessionLog.ckvM = GetFunction(CkImapLibId,"CkImapU_ClearSessionLogW")
  Global ImapCloseMailbox.cklMs = GetFunction(CkImapLibId,"CkImapU_CloseMailboxW")
  Global ImapCloseMailboxAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_CloseMailboxAsyncW")
  Global ImapConnect.cklMs = GetFunction(CkImapLibId,"CkImapU_ConnectW")
  Global ImapConnectAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_ConnectAsyncW")
  Global ImapCopy.cklMlls = GetFunction(CkImapLibId,"CkImapU_CopyW")
  Global ImapCopyAsync.ckiMlls = GetFunction(CkImapLibId,"CkImapU_CopyAsyncW")
  Global ImapCopyMultiple.cklMis = GetFunction(CkImapLibId,"CkImapU_CopyMultipleW")
  Global ImapCopyMultipleAsync.ckiMis = GetFunction(CkImapLibId,"CkImapU_CopyMultipleAsyncW")
  Global ImapCopySequence.cklMlls = GetFunction(CkImapLibId,"CkImapU_CopySequenceW")
  Global ImapCopySequenceAsync.ckiMlls = GetFunction(CkImapLibId,"CkImapU_CopySequenceAsyncW")
  Global ImapCreateMailbox.cklMs = GetFunction(CkImapLibId,"CkImapU_CreateMailboxW")
  Global ImapCreateMailboxAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_CreateMailboxAsyncW")
  Global ImapDeleteMailbox.cklMs = GetFunction(CkImapLibId,"CkImapU_DeleteMailboxW")
  Global ImapDeleteMailboxAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_DeleteMailboxAsyncW")
  Global ImapDisconnect.cklM = GetFunction(CkImapLibId,"CkImapU_DisconnectW")
  Global ImapDisconnectAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_DisconnectAsyncW")
  Global ImapExamineMailbox.cklMs = GetFunction(CkImapLibId,"CkImapU_ExamineMailboxW")
  Global ImapExamineMailboxAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_ExamineMailboxAsyncW")
  Global ImapExpunge.cklM = GetFunction(CkImapLibId,"CkImapU_ExpungeW")
  Global ImapExpungeAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_ExpungeAsyncW")
  Global ImapExpungeAndClose.cklM = GetFunction(CkImapLibId,"CkImapU_ExpungeAndCloseW")
  Global ImapExpungeAndCloseAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_ExpungeAndCloseAsyncW")
  Global ImapFetchAttachment.cklMils = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentW")
  Global ImapFetchAttachmentAsync.ckiMils = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentAsyncW")
  Global ImapFetchAttachmentBd.cklMili = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentBdW")
  Global ImapFetchAttachmentBdAsync.ckiMili = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentBdAsyncW")
  Global ImapFetchAttachmentSb.cklMilsi = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentSbW")
  Global ImapFetchAttachmentSbAsync.ckiMilsi = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentSbAsyncW")
  Global ImapFetchAttachmentString.cklMils = GetFunction(CkImapLibId,"CkImapU_fetchAttachmentStringW")
  Global ImapFetchAttachmentStringAsync.ckiMils = GetFunction(CkImapLibId,"CkImapU_FetchAttachmentStringAsyncW")
  Global ImapFetchBundle.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchBundleW")
  Global ImapFetchBundleAsync.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchBundleAsyncW")
  Global ImapFetchBundleAsMime.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchBundleAsMimeW")
  Global ImapFetchBundleAsMimeAsync.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchBundleAsMimeAsyncW")
  Global ImapFetchChunk.ckiMllii = GetFunction(CkImapLibId,"CkImapU_FetchChunkW")
  Global ImapFetchChunkAsync.ckiMllii = GetFunction(CkImapLibId,"CkImapU_FetchChunkAsyncW")
  Global ImapFetchFlags.cklMll = GetFunction(CkImapLibId,"CkImapU_fetchFlagsW")
  Global ImapFetchFlagsAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchFlagsAsyncW")
  Global ImapFetchHeaders.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchHeadersW")
  Global ImapFetchHeadersAsync.ckiMi = GetFunction(CkImapLibId,"CkImapU_FetchHeadersAsyncW")
  Global ImapFetchSequence.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceW")
  Global ImapFetchSequenceAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceAsyncW")
  Global ImapFetchSequenceAsMime.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceAsMimeW")
  Global ImapFetchSequenceAsMimeAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceAsMimeAsyncW")
  Global ImapFetchSequenceHeaders.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceHeadersW")
  Global ImapFetchSequenceHeadersAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSequenceHeadersAsyncW")
  Global ImapFetchSingle.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleW")
  Global ImapFetchSingleAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleAsyncW")
  Global ImapFetchSingleAsMime.cklMll = GetFunction(CkImapLibId,"CkImapU_fetchSingleAsMimeW")
  Global ImapFetchSingleAsMimeAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleAsMimeAsyncW")
  Global ImapFetchSingleAsMimeSb.cklMlli = GetFunction(CkImapLibId,"CkImapU_FetchSingleAsMimeSbW")
  Global ImapFetchSingleAsMimeSbAsync.ckiMlli = GetFunction(CkImapLibId,"CkImapU_FetchSingleAsMimeSbAsyncW")
  Global ImapFetchSingleBd.cklMlli = GetFunction(CkImapLibId,"CkImapU_FetchSingleBdW")
  Global ImapFetchSingleBdAsync.ckiMlli = GetFunction(CkImapLibId,"CkImapU_FetchSingleBdAsyncW")
  Global ImapFetchSingleHeader.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleHeaderW")
  Global ImapFetchSingleHeaderAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleHeaderAsyncW")
  Global ImapFetchSingleHeaderAsMime.cklMll = GetFunction(CkImapLibId,"CkImapU_fetchSingleHeaderAsMimeW")
  Global ImapFetchSingleHeaderAsMimeAsync.ckiMll = GetFunction(CkImapLibId,"CkImapU_FetchSingleHeaderAsMimeAsyncW")
  Global ImapGetAllUids.ckiM = GetFunction(CkImapLibId,"CkImapU_GetAllUidsW")
  Global ImapGetAllUidsAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_GetAllUidsAsyncW")
  Global ImapGetMailAttachFilename.cklMil = GetFunction(CkImapLibId,"CkImapU_getMailAttachFilenameW")
  Global ImapGetMailAttachSize.cklMil = GetFunction(CkImapLibId,"CkImapU_GetMailAttachSizeW")
  Global ImapGetMailboxStatus.cklMs = GetFunction(CkImapLibId,"CkImapU_getMailboxStatusW")
  Global ImapGetMailboxStatusAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_GetMailboxStatusAsyncW")
  Global ImapGetMailFlag.cklMis = GetFunction(CkImapLibId,"CkImapU_GetMailFlagW")
  Global ImapGetMailNumAttach.cklMi = GetFunction(CkImapLibId,"CkImapU_GetMailNumAttachW")
  Global ImapGetMailSize.cklMi = GetFunction(CkImapLibId,"CkImapU_GetMailSizeW")
  Global ImapGetQuota.cklMs = GetFunction(CkImapLibId,"CkImapU_getQuotaW")
  Global ImapGetQuotaAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_GetQuotaAsyncW")
  Global ImapGetQuotaRoot.cklMs = GetFunction(CkImapLibId,"CkImapU_getQuotaRootW")
  Global ImapGetQuotaRootAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_GetQuotaRootAsyncW")
  Global ImapGetSslServerCert.ckiM = GetFunction(CkImapLibId,"CkImapU_GetSslServerCertW")
  Global ImapHasCapability.cklMss = GetFunction(CkImapLibId,"CkImapU_HasCapabilityW")
  Global ImapIdleCheck.cklMl = GetFunction(CkImapLibId,"CkImapU_idleCheckW")
  Global ImapIdleCheckAsync.ckiMl = GetFunction(CkImapLibId,"CkImapU_IdleCheckAsyncW")
  Global ImapIdleDone.cklM = GetFunction(CkImapLibId,"CkImapU_IdleDoneW")
  Global ImapIdleDoneAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_IdleDoneAsyncW")
  Global ImapIdleStart.cklM = GetFunction(CkImapLibId,"CkImapU_IdleStartW")
  Global ImapIdleStartAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_IdleStartAsyncW")
  Global ImapIsConnected.cklM = GetFunction(CkImapLibId,"CkImapU_IsConnectedW")
  Global ImapIsLoggedIn.cklM = GetFunction(CkImapLibId,"CkImapU_IsLoggedInW")
  Global ImapIsUnlocked.cklM = GetFunction(CkImapLibId,"CkImapU_IsUnlockedW")
  Global ImapListMailboxes.ckiMss = GetFunction(CkImapLibId,"CkImapU_ListMailboxesW")
  Global ImapListMailboxesAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_ListMailboxesAsyncW")
  Global ImapListSubscribed.ckiMss = GetFunction(CkImapLibId,"CkImapU_ListSubscribedW")
  Global ImapListSubscribedAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_ListSubscribedAsyncW")
  Global ImapLoadTaskCaller.cklMi = GetFunction(CkImapLibId,"CkImapU_LoadTaskCallerW")
  Global ImapLogin.cklMss = GetFunction(CkImapLibId,"CkImapU_LoginW")
  Global ImapLoginAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_LoginAsyncW")
  Global ImapLoginSecure.cklMii = GetFunction(CkImapLibId,"CkImapU_LoginSecureW")
  Global ImapLoginSecureAsync.ckiMii = GetFunction(CkImapLibId,"CkImapU_LoginSecureAsyncW")
  Global ImapLogout.cklM = GetFunction(CkImapLibId,"CkImapU_LogoutW")
  Global ImapLogoutAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_LogoutAsyncW")
  Global ImapMoveMessages.cklMis = GetFunction(CkImapLibId,"CkImapU_MoveMessagesW")
  Global ImapMoveMessagesAsync.ckiMis = GetFunction(CkImapLibId,"CkImapU_MoveMessagesAsyncW")
  Global ImapNoop.cklM = GetFunction(CkImapLibId,"CkImapU_NoopW")
  Global ImapNoopAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_NoopAsyncW")
  Global ImapRefetchMailFlags.cklMi = GetFunction(CkImapLibId,"CkImapU_RefetchMailFlagsW")
  Global ImapRefetchMailFlagsAsync.ckiMi = GetFunction(CkImapLibId,"CkImapU_RefetchMailFlagsAsyncW")
  Global ImapRenameMailbox.cklMss = GetFunction(CkImapLibId,"CkImapU_RenameMailboxW")
  Global ImapRenameMailboxAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_RenameMailboxAsyncW")
  Global ImapSaveLastError.cklMs = GetFunction(CkImapLibId,"CkImapU_SaveLastErrorW")
  Global ImapSearch.ckiMsl = GetFunction(CkImapLibId,"CkImapU_SearchW")
  Global ImapSearchAsync.ckiMsl = GetFunction(CkImapLibId,"CkImapU_SearchAsyncW")
  Global ImapSelectMailbox.cklMs = GetFunction(CkImapLibId,"CkImapU_SelectMailboxW")
  Global ImapSelectMailboxAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_SelectMailboxAsyncW")
  Global ImapSendRawCommand.cklMs = GetFunction(CkImapLibId,"CkImapU_sendRawCommandW")
  Global ImapSendRawCommandAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_SendRawCommandAsyncW")
  Global ImapSetDecryptCert.cklMi = GetFunction(CkImapLibId,"CkImapU_SetDecryptCertW")
  Global ImapSetDecryptCert2.cklMii = GetFunction(CkImapLibId,"CkImapU_SetDecryptCert2W")
  Global ImapSetFlag.cklMllsl = GetFunction(CkImapLibId,"CkImapU_SetFlagW")
  Global ImapSetFlagAsync.ckiMllsl = GetFunction(CkImapLibId,"CkImapU_SetFlagAsyncW")
  Global ImapSetFlags.cklMisl = GetFunction(CkImapLibId,"CkImapU_SetFlagsW")
  Global ImapSetFlagsAsync.ckiMisl = GetFunction(CkImapLibId,"CkImapU_SetFlagsAsyncW")
  Global ImapSetMailFlag.cklMisl = GetFunction(CkImapLibId,"CkImapU_SetMailFlagW")
  Global ImapSetMailFlagAsync.ckiMisl = GetFunction(CkImapLibId,"CkImapU_SetMailFlagAsyncW")
  Global ImapSetQuota.cklMssl = GetFunction(CkImapLibId,"CkImapU_SetQuotaW")
  Global ImapSetQuotaAsync.ckiMssl = GetFunction(CkImapLibId,"CkImapU_SetQuotaAsyncW")
  Global ImapSetSslClientCert.cklMi = GetFunction(CkImapLibId,"CkImapU_SetSslClientCertW")
  Global ImapSetSslClientCertPem.cklMss = GetFunction(CkImapLibId,"CkImapU_SetSslClientCertPemW")
  Global ImapSetSslClientCertPfx.cklMss = GetFunction(CkImapLibId,"CkImapU_SetSslClientCertPfxW")
  Global ImapSort.ckiMsssl = GetFunction(CkImapLibId,"CkImapU_SortW")
  Global ImapSortAsync.ckiMsssl = GetFunction(CkImapLibId,"CkImapU_SortAsyncW")
  Global ImapSshAuthenticatePk.cklMsi = GetFunction(CkImapLibId,"CkImapU_SshAuthenticatePkW")
  Global ImapSshAuthenticatePkAsync.ckiMsi = GetFunction(CkImapLibId,"CkImapU_SshAuthenticatePkAsyncW")
  Global ImapSshAuthenticatePw.cklMss = GetFunction(CkImapLibId,"CkImapU_SshAuthenticatePwW")
  Global ImapSshAuthenticatePwAsync.ckiMss = GetFunction(CkImapLibId,"CkImapU_SshAuthenticatePwAsyncW")
  Global ImapSshCloseTunnel.cklM = GetFunction(CkImapLibId,"CkImapU_SshCloseTunnelW")
  Global ImapSshCloseTunnelAsync.ckiM = GetFunction(CkImapLibId,"CkImapU_SshCloseTunnelAsyncW")
  Global ImapSshOpenTunnel.cklMsl = GetFunction(CkImapLibId,"CkImapU_SshOpenTunnelW")
  Global ImapSshOpenTunnelAsync.ckiMsl = GetFunction(CkImapLibId,"CkImapU_SshOpenTunnelAsyncW")
  Global ImapStoreFlags.cklMllsl = GetFunction(CkImapLibId,"CkImapU_StoreFlagsW")
  Global ImapStoreFlagsAsync.ckiMllsl = GetFunction(CkImapLibId,"CkImapU_StoreFlagsAsyncW")
  Global ImapSubscribe.cklMs = GetFunction(CkImapLibId,"CkImapU_SubscribeW")
  Global ImapSubscribeAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_SubscribeAsyncW")
  Global ImapThreadCmd.ckiMsssl = GetFunction(CkImapLibId,"CkImapU_ThreadCmdW")
  Global ImapThreadCmdAsync.ckiMsssl = GetFunction(CkImapLibId,"CkImapU_ThreadCmdAsyncW")
  Global ImapUnlockComponent.cklMs = GetFunction(CkImapLibId,"CkImapU_UnlockComponentW")
  Global ImapUnsubscribe.cklMs = GetFunction(CkImapLibId,"CkImapU_UnsubscribeW")
  Global ImapUnsubscribeAsync.ckiMs = GetFunction(CkImapLibId,"CkImapU_UnsubscribeAsyncW")
  Global ImapUseCertVault.cklMi = GetFunction(CkImapLibId,"CkImapU_UseCertVaultW")
  Global ImapUseSsh.cklMi = GetFunction(CkImapLibId,"CkImapU_UseSshW")
  Global ImapUseSshTunnel.cklMi = GetFunction(CkImapLibId,"CkImapU_UseSshTunnelW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ImapCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ImapDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn ImapAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn ImapPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAppendSeen(obj.i) : ProcedureReturn ImapAppendSeen(obj) : EndProcedure
  Procedure setCkAppendSeen(obj.i, value.l) : ProcedureReturn ImapPSetAppendSeen(obj,value) : EndProcedure
  Procedure.l ckAppendUid(obj.i) : ProcedureReturn ImapAppendUid(obj) : EndProcedure
  Procedure.s ckAuthMethod(obj.i) : ProcedureReturn PeekS(ImapAuthMethod(obj)) : EndProcedure
  Procedure setCkAuthMethod(obj.i, value.s) : ProcedureReturn ImapPSetAuthMethod(obj,value) : EndProcedure
  Procedure.s ckAuthzId(obj.i) : ProcedureReturn PeekS(ImapAuthzId(obj)) : EndProcedure
  Procedure setCkAuthzId(obj.i, value.s) : ProcedureReturn ImapPSetAuthzId(obj,value) : EndProcedure
  Procedure.l ckAutoDownloadAttachments(obj.i) : ProcedureReturn ImapAutoDownloadAttachments(obj) : EndProcedure
  Procedure setCkAutoDownloadAttachments(obj.i, value.l) : ProcedureReturn ImapPSetAutoDownloadAttachments(obj,value) : EndProcedure
  Procedure.l ckAutoFix(obj.i) : ProcedureReturn ImapAutoFix(obj) : EndProcedure
  Procedure setCkAutoFix(obj.i, value.l) : ProcedureReturn ImapPSetAutoFix(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(ImapClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn ImapPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.s ckConnectedToHost(obj.i) : ProcedureReturn PeekS(ImapConnectedToHost(obj)) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn ImapConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn ImapPSetConnectTimeout(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(ImapDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn ImapPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDomain(obj.i) : ProcedureReturn PeekS(ImapDomain(obj)) : EndProcedure
  Procedure setCkDomain(obj.i, value.s) : ProcedureReturn ImapPSetDomain(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn ImapHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn ImapPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(ImapHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn ImapPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(ImapHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn ImapPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(ImapHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn ImapPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(ImapHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn ImapPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn ImapHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn ImapPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(ImapHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn ImapPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckKeepSessionLog(obj.i) : ProcedureReturn ImapKeepSessionLog(obj) : EndProcedure
  Procedure setCkKeepSessionLog(obj.i, value.l) : ProcedureReturn ImapPSetKeepSessionLog(obj,value) : EndProcedure
  Procedure.s ckLastAppendedMime(obj.i) : ProcedureReturn PeekS(ImapLastAppendedMime(obj)) : EndProcedure
  Procedure.s ckLastCommand(obj.i) : ProcedureReturn PeekS(ImapLastCommand(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(ImapLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(ImapLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(ImapLastErrorXml(obj)) : EndProcedure
  Procedure.s ckLastIntermediateResponse(obj.i) : ProcedureReturn PeekS(ImapLastIntermediateResponse(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ImapLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ImapPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastResponse(obj.i) : ProcedureReturn PeekS(ImapLastResponse(obj)) : EndProcedure
  Procedure.s ckLastResponseCode(obj.i) : ProcedureReturn PeekS(ImapLastResponseCode(obj)) : EndProcedure
  Procedure.s ckLoggedInUser(obj.i) : ProcedureReturn PeekS(ImapLoggedInUser(obj)) : EndProcedure
  Procedure.l ckNumMessages(obj.i) : ProcedureReturn ImapNumMessages(obj) : EndProcedure
  Procedure.l ckPeekMode(obj.i) : ProcedureReturn ImapPeekMode(obj) : EndProcedure
  Procedure setCkPeekMode(obj.i, value.l) : ProcedureReturn ImapPSetPeekMode(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn ImapPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn ImapPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPort(obj.i) : ProcedureReturn ImapPort(obj) : EndProcedure
  Procedure setCkPort(obj.i, value.l) : ProcedureReturn ImapPSetPort(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn ImapPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn ImapPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn ImapReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn ImapPSetReadTimeout(obj,value) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn ImapRequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn ImapPSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.s ckSearchCharset(obj.i) : ProcedureReturn PeekS(ImapSearchCharset(obj)) : EndProcedure
  Procedure setCkSearchCharset(obj.i, value.s) : ProcedureReturn ImapPSetSearchCharset(obj,value) : EndProcedure
  Procedure.s ckSelectedMailbox(obj.i) : ProcedureReturn PeekS(ImapSelectedMailbox(obj)) : EndProcedure
  Procedure.l ckSendBufferSize(obj.i) : ProcedureReturn ImapSendBufferSize(obj) : EndProcedure
  Procedure setCkSendBufferSize(obj.i, value.l) : ProcedureReturn ImapPSetSendBufferSize(obj,value) : EndProcedure
  Procedure.s ckSeparatorChar(obj.i) : ProcedureReturn PeekS(ImapSeparatorChar(obj)) : EndProcedure
  Procedure setCkSeparatorChar(obj.i, value.s) : ProcedureReturn ImapPSetSeparatorChar(obj,value) : EndProcedure
  Procedure.s ckSessionLog(obj.i) : ProcedureReturn PeekS(ImapSessionLog(obj)) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(ImapSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn ImapPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(ImapSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn ImapPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn ImapSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn ImapPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(ImapSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn ImapPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn ImapSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn ImapPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn ImapSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn ImapPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn ImapSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn ImapPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckSsl(obj.i) : ProcedureReturn ImapSsl(obj) : EndProcedure
  Procedure setCkSsl(obj.i, value.l) : ProcedureReturn ImapPSetSsl(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(ImapSslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn ImapPSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(ImapSslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn ImapPSetSslProtocol(obj,value) : EndProcedure
  Procedure.l ckSslServerCertVerified(obj.i) : ProcedureReturn ImapSslServerCertVerified(obj) : EndProcedure
  Procedure.l ckStartTls(obj.i) : ProcedureReturn ImapStartTls(obj) : EndProcedure
  Procedure setCkStartTls(obj.i, value.l) : ProcedureReturn ImapPSetStartTls(obj,value) : EndProcedure
  Procedure.s ckTlsCipherSuite(obj.i) : ProcedureReturn PeekS(ImapTlsCipherSuite(obj)) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(ImapTlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn ImapPSetTlsPinSet(obj,value) : EndProcedure
  Procedure.s ckTlsVersion(obj.i) : ProcedureReturn PeekS(ImapTlsVersion(obj)) : EndProcedure
  Procedure.l ckUidNext(obj.i) : ProcedureReturn ImapUidNext(obj) : EndProcedure
  Procedure.l ckUidValidity(obj.i) : ProcedureReturn ImapUidValidity(obj) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(ImapUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn ImapPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn ImapVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn ImapPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(ImapVersion(obj)) : EndProcedure
  Procedure.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s) :  ProcedureReturn ImapAddPfxSourceFile(obj, pfxFilePath, pfxPassword) :  EndProcedure
  Procedure.l ckAppendMail(obj.i, mailbox.s, email.i) :  ProcedureReturn ImapAppendMail(obj, mailbox, email) :  EndProcedure
  Procedure.i ckAppendMailAsync(obj.i, mailbox.s, email.i) :  ProcedureReturn ImapAppendMailAsync(obj, mailbox, email) :  EndProcedure
  Procedure.l ckAppendMime(obj.i, mailbox.s, mimeText.s) :  ProcedureReturn ImapAppendMime(obj, mailbox, mimeText) :  EndProcedure
  Procedure.i ckAppendMimeAsync(obj.i, mailbox.s, mimeText.s) :  ProcedureReturn ImapAppendMimeAsync(obj, mailbox, mimeText) :  EndProcedure
  Procedure.l ckAppendMimeWithDateStr(obj.i, mailbox.s, mimeText.s, internalDateStr.s) :  ProcedureReturn ImapAppendMimeWithDateStr(obj, mailbox, mimeText, internalDateStr) :  EndProcedure
  Procedure.i ckAppendMimeWithDateStrAsync(obj.i, mailbox.s, mimeText.s, internalDateStr.s) :  ProcedureReturn ImapAppendMimeWithDateStrAsync(obj, mailbox, mimeText, internalDateStr) :  EndProcedure
  Procedure.l ckAppendMimeWithFlags(obj.i, mailbox.s, mimeText.s, seen.l, flagged.l, answered.l, draft.l) :  ProcedureReturn ImapAppendMimeWithFlags(obj, mailbox, mimeText, seen, flagged, answered, draft) :  EndProcedure
  Procedure.i ckAppendMimeWithFlagsAsync(obj.i, mailbox.s, mimeText.s, seen.l, flagged.l, answered.l, draft.l) :  ProcedureReturn ImapAppendMimeWithFlagsAsync(obj, mailbox, mimeText, seen, flagged, answered, draft) :  EndProcedure
  Procedure.l ckAppendMimeWithFlagsSb(obj.i, mailbox.s, sbMime.i, seen.l, flagged.l, answered.l, draft.l) :  ProcedureReturn ImapAppendMimeWithFlagsSb(obj, mailbox, sbMime, seen, flagged, answered, draft) :  EndProcedure
  Procedure.i ckAppendMimeWithFlagsSbAsync(obj.i, mailbox.s, sbMime.i, seen.l, flagged.l, answered.l, draft.l) :  ProcedureReturn ImapAppendMimeWithFlagsSbAsync(obj, mailbox, sbMime, seen, flagged, answered, draft) :  EndProcedure
  Procedure.s ckCapability(obj.i) :  ProcedureReturn PeekS(ImapCapability(obj)) :  EndProcedure
  Procedure.i ckCapabilityAsync(obj.i) :  ProcedureReturn ImapCapabilityAsync(obj) :  EndProcedure
  Procedure.l ckCheckConnection(obj.i) :  ProcedureReturn ImapCheckConnection(obj) :  EndProcedure
  Procedure.i ckCheckForNewEmail(obj.i) :  ProcedureReturn ImapCheckForNewEmail(obj) :  EndProcedure
  Procedure.i ckCheckForNewEmailAsync(obj.i) :  ProcedureReturn ImapCheckForNewEmailAsync(obj) :  EndProcedure
  Procedure ckClearSessionLog(obj.i) :  ProcedureReturn ImapClearSessionLog(obj) :  EndProcedure
  Procedure.l ckCloseMailbox(obj.i, mailbox.s) :  ProcedureReturn ImapCloseMailbox(obj, mailbox) :  EndProcedure
  Procedure.i ckCloseMailboxAsync(obj.i, mailbox.s) :  ProcedureReturn ImapCloseMailboxAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckConnect(obj.i, domainName.s) :  ProcedureReturn ImapConnect(obj, domainName) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, domainName.s) :  ProcedureReturn ImapConnectAsync(obj, domainName) :  EndProcedure
  Procedure.l ckCopy(obj.i, msgId.l, bUid.l, copyToMailbox.s) :  ProcedureReturn ImapCopy(obj, msgId, bUid, copyToMailbox) :  EndProcedure
  Procedure.i ckCopyAsync(obj.i, msgId.l, bUid.l, copyToMailbox.s) :  ProcedureReturn ImapCopyAsync(obj, msgId, bUid, copyToMailbox) :  EndProcedure
  Procedure.l ckCopyMultiple(obj.i, messageSet.i, copyToMailbox.s) :  ProcedureReturn ImapCopyMultiple(obj, messageSet, copyToMailbox) :  EndProcedure
  Procedure.i ckCopyMultipleAsync(obj.i, messageSet.i, copyToMailbox.s) :  ProcedureReturn ImapCopyMultipleAsync(obj, messageSet, copyToMailbox) :  EndProcedure
  Procedure.l ckCopySequence(obj.i, startSeqNum.l, count.l, copyToMailbox.s) :  ProcedureReturn ImapCopySequence(obj, startSeqNum, count, copyToMailbox) :  EndProcedure
  Procedure.i ckCopySequenceAsync(obj.i, startSeqNum.l, count.l, copyToMailbox.s) :  ProcedureReturn ImapCopySequenceAsync(obj, startSeqNum, count, copyToMailbox) :  EndProcedure
  Procedure.l ckCreateMailbox(obj.i, mailbox.s) :  ProcedureReturn ImapCreateMailbox(obj, mailbox) :  EndProcedure
  Procedure.i ckCreateMailboxAsync(obj.i, mailbox.s) :  ProcedureReturn ImapCreateMailboxAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckDeleteMailbox(obj.i, mailbox.s) :  ProcedureReturn ImapDeleteMailbox(obj, mailbox) :  EndProcedure
  Procedure.i ckDeleteMailboxAsync(obj.i, mailbox.s) :  ProcedureReturn ImapDeleteMailboxAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckDisconnect(obj.i) :  ProcedureReturn ImapDisconnect(obj) :  EndProcedure
  Procedure.i ckDisconnectAsync(obj.i) :  ProcedureReturn ImapDisconnectAsync(obj) :  EndProcedure
  Procedure.l ckExamineMailbox(obj.i, mailbox.s) :  ProcedureReturn ImapExamineMailbox(obj, mailbox) :  EndProcedure
  Procedure.i ckExamineMailboxAsync(obj.i, mailbox.s) :  ProcedureReturn ImapExamineMailboxAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckExpunge(obj.i) :  ProcedureReturn ImapExpunge(obj) :  EndProcedure
  Procedure.i ckExpungeAsync(obj.i) :  ProcedureReturn ImapExpungeAsync(obj) :  EndProcedure
  Procedure.l ckExpungeAndClose(obj.i) :  ProcedureReturn ImapExpungeAndClose(obj) :  EndProcedure
  Procedure.i ckExpungeAndCloseAsync(obj.i) :  ProcedureReturn ImapExpungeAndCloseAsync(obj) :  EndProcedure
  Procedure.l ckFetchAttachment(obj.i, emailObject.i, attachmentIndex.l, saveToPath.s) :  ProcedureReturn ImapFetchAttachment(obj, emailObject, attachmentIndex, saveToPath) :  EndProcedure
  Procedure.i ckFetchAttachmentAsync(obj.i, emailObject.i, attachmentIndex.l, saveToPath.s) :  ProcedureReturn ImapFetchAttachmentAsync(obj, emailObject, attachmentIndex, saveToPath) :  EndProcedure
  Procedure.l ckFetchAttachmentBd(obj.i, email.i, attachmentIndex.l, binData.i) :  ProcedureReturn ImapFetchAttachmentBd(obj, email, attachmentIndex, binData) :  EndProcedure
  Procedure.i ckFetchAttachmentBdAsync(obj.i, email.i, attachmentIndex.l, binData.i) :  ProcedureReturn ImapFetchAttachmentBdAsync(obj, email, attachmentIndex, binData) :  EndProcedure
  Procedure.l ckFetchAttachmentSb(obj.i, email.i, attachmentIndex.l, charset.s, sb.i) :  ProcedureReturn ImapFetchAttachmentSb(obj, email, attachmentIndex, charset, sb) :  EndProcedure
  Procedure.i ckFetchAttachmentSbAsync(obj.i, email.i, attachmentIndex.l, charset.s, sb.i) :  ProcedureReturn ImapFetchAttachmentSbAsync(obj, email, attachmentIndex, charset, sb) :  EndProcedure
  Procedure.s ckFetchAttachmentString(obj.i, emailObject.i, attachmentIndex.l, charset.s) :  ProcedureReturn PeekS(ImapFetchAttachmentString(obj, emailObject, attachmentIndex, charset)) :  EndProcedure
  Procedure.i ckFetchAttachmentStringAsync(obj.i, emailObject.i, attachmentIndex.l, charset.s) :  ProcedureReturn ImapFetchAttachmentStringAsync(obj, emailObject, attachmentIndex, charset) :  EndProcedure
  Procedure.i ckFetchBundle(obj.i, messageSet.i) :  ProcedureReturn ImapFetchBundle(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchBundleAsync(obj.i, messageSet.i) :  ProcedureReturn ImapFetchBundleAsync(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchBundleAsMime(obj.i, messageSet.i) :  ProcedureReturn ImapFetchBundleAsMime(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchBundleAsMimeAsync(obj.i, messageSet.i) :  ProcedureReturn ImapFetchBundleAsMimeAsync(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchChunk(obj.i, startSeqNum.l, count.l, failedSet.i, fetchedSet.i) :  ProcedureReturn ImapFetchChunk(obj, startSeqNum, count, failedSet, fetchedSet) :  EndProcedure
  Procedure.i ckFetchChunkAsync(obj.i, startSeqNum.l, count.l, failedSet.i, fetchedSet.i) :  ProcedureReturn ImapFetchChunkAsync(obj, startSeqNum, count, failedSet, fetchedSet) :  EndProcedure
  Procedure.s ckFetchFlags(obj.i, msgId.l, bUid.l) :  ProcedureReturn PeekS(ImapFetchFlags(obj, msgId, bUid)) :  EndProcedure
  Procedure.i ckFetchFlagsAsync(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchFlagsAsync(obj, msgId, bUid) :  EndProcedure
  Procedure.i ckFetchHeaders(obj.i, messageSet.i) :  ProcedureReturn ImapFetchHeaders(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchHeadersAsync(obj.i, messageSet.i) :  ProcedureReturn ImapFetchHeadersAsync(obj, messageSet) :  EndProcedure
  Procedure.i ckFetchSequence(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequence(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSequenceAsync(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequenceAsync(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSequenceAsMime(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequenceAsMime(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSequenceAsMimeAsync(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequenceAsMimeAsync(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSequenceHeaders(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequenceHeaders(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSequenceHeadersAsync(obj.i, startSeqNum.l, numMessages.l) :  ProcedureReturn ImapFetchSequenceHeadersAsync(obj, startSeqNum, numMessages) :  EndProcedure
  Procedure.i ckFetchSingle(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchSingle(obj, msgId, bUid) :  EndProcedure
  Procedure.i ckFetchSingleAsync(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchSingleAsync(obj, msgId, bUid) :  EndProcedure
  Procedure.s ckFetchSingleAsMime(obj.i, msgId.l, bUid.l) :  ProcedureReturn PeekS(ImapFetchSingleAsMime(obj, msgId, bUid)) :  EndProcedure
  Procedure.i ckFetchSingleAsMimeAsync(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchSingleAsMimeAsync(obj, msgId, bUid) :  EndProcedure
  Procedure.l ckFetchSingleAsMimeSb(obj.i, msgId.l, bUid.l, sbMime.i) :  ProcedureReturn ImapFetchSingleAsMimeSb(obj, msgId, bUid, sbMime) :  EndProcedure
  Procedure.i ckFetchSingleAsMimeSbAsync(obj.i, msgId.l, bUid.l, sbMime.i) :  ProcedureReturn ImapFetchSingleAsMimeSbAsync(obj, msgId, bUid, sbMime) :  EndProcedure
  Procedure.l ckFetchSingleBd(obj.i, msgId.l, bUid.l, mimeData.i) :  ProcedureReturn ImapFetchSingleBd(obj, msgId, bUid, mimeData) :  EndProcedure
  Procedure.i ckFetchSingleBdAsync(obj.i, msgId.l, bUid.l, mimeData.i) :  ProcedureReturn ImapFetchSingleBdAsync(obj, msgId, bUid, mimeData) :  EndProcedure
  Procedure.i ckFetchSingleHeader(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchSingleHeader(obj, msgId, bUid) :  EndProcedure
  Procedure.i ckFetchSingleHeaderAsync(obj.i, msgId.l, bUid.l) :  ProcedureReturn ImapFetchSingleHeaderAsync(obj, msgId, bUid) :  EndProcedure
  Procedure.s ckFetchSingleHeaderAsMime(obj.i, msgId.l, bUID.l) :  ProcedureReturn PeekS(ImapFetchSingleHeaderAsMime(obj, msgId, bUID)) :  EndProcedure
  Procedure.i ckFetchSingleHeaderAsMimeAsync(obj.i, msgId.l, bUID.l) :  ProcedureReturn ImapFetchSingleHeaderAsMimeAsync(obj, msgId, bUID) :  EndProcedure
  Procedure.i ckGetAllUids(obj.i) :  ProcedureReturn ImapGetAllUids(obj) :  EndProcedure
  Procedure.i ckGetAllUidsAsync(obj.i) :  ProcedureReturn ImapGetAllUidsAsync(obj) :  EndProcedure
  Procedure.s ckGetMailAttachFilename(obj.i, email.i, attachIndex.l) :  ProcedureReturn PeekS(ImapGetMailAttachFilename(obj, email, attachIndex)) :  EndProcedure
  Procedure.l ckGetMailAttachSize(obj.i, email.i, attachIndex.l) :  ProcedureReturn ImapGetMailAttachSize(obj, email, attachIndex) :  EndProcedure
  Procedure.s ckGetMailboxStatus(obj.i, mailbox.s) :  ProcedureReturn PeekS(ImapGetMailboxStatus(obj, mailbox)) :  EndProcedure
  Procedure.i ckGetMailboxStatusAsync(obj.i, mailbox.s) :  ProcedureReturn ImapGetMailboxStatusAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckGetMailFlag(obj.i, email.i, flagName.s) :  ProcedureReturn ImapGetMailFlag(obj, email, flagName) :  EndProcedure
  Procedure.l ckGetMailNumAttach(obj.i, email.i) :  ProcedureReturn ImapGetMailNumAttach(obj, email) :  EndProcedure
  Procedure.l ckGetMailSize(obj.i, email.i) :  ProcedureReturn ImapGetMailSize(obj, email) :  EndProcedure
  Procedure.s ckGetQuota(obj.i, quotaRoot.s) :  ProcedureReturn PeekS(ImapGetQuota(obj, quotaRoot)) :  EndProcedure
  Procedure.i ckGetQuotaAsync(obj.i, quotaRoot.s) :  ProcedureReturn ImapGetQuotaAsync(obj, quotaRoot) :  EndProcedure
  Procedure.s ckGetQuotaRoot(obj.i, mailboxName.s) :  ProcedureReturn PeekS(ImapGetQuotaRoot(obj, mailboxName)) :  EndProcedure
  Procedure.i ckGetQuotaRootAsync(obj.i, mailboxName.s) :  ProcedureReturn ImapGetQuotaRootAsync(obj, mailboxName) :  EndProcedure
  Procedure.i ckGetSslServerCert(obj.i) :  ProcedureReturn ImapGetSslServerCert(obj) :  EndProcedure
  Procedure.l ckHasCapability(obj.i, name.s, capabilityResponse.s) :  ProcedureReturn ImapHasCapability(obj, name, capabilityResponse) :  EndProcedure
  Procedure.s ckIdleCheck(obj.i, timeoutMs.l) :  ProcedureReturn PeekS(ImapIdleCheck(obj, timeoutMs)) :  EndProcedure
  Procedure.i ckIdleCheckAsync(obj.i, timeoutMs.l) :  ProcedureReturn ImapIdleCheckAsync(obj, timeoutMs) :  EndProcedure
  Procedure.l ckIdleDone(obj.i) :  ProcedureReturn ImapIdleDone(obj) :  EndProcedure
  Procedure.i ckIdleDoneAsync(obj.i) :  ProcedureReturn ImapIdleDoneAsync(obj) :  EndProcedure
  Procedure.l ckIdleStart(obj.i) :  ProcedureReturn ImapIdleStart(obj) :  EndProcedure
  Procedure.i ckIdleStartAsync(obj.i) :  ProcedureReturn ImapIdleStartAsync(obj) :  EndProcedure
  Procedure.l ckIsConnected(obj.i) :  ProcedureReturn ImapIsConnected(obj) :  EndProcedure
  Procedure.l ckIsLoggedIn(obj.i) :  ProcedureReturn ImapIsLoggedIn(obj) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn ImapIsUnlocked(obj) :  EndProcedure
  Procedure.i ckListMailboxes(obj.i, reference.s, wildcardedMailbox.s) :  ProcedureReturn ImapListMailboxes(obj, reference, wildcardedMailbox) :  EndProcedure
  Procedure.i ckListMailboxesAsync(obj.i, reference.s, wildcardedMailbox.s) :  ProcedureReturn ImapListMailboxesAsync(obj, reference, wildcardedMailbox) :  EndProcedure
  Procedure.i ckListSubscribed(obj.i, reference.s, wildcardedMailbox.s) :  ProcedureReturn ImapListSubscribed(obj, reference, wildcardedMailbox) :  EndProcedure
  Procedure.i ckListSubscribedAsync(obj.i, reference.s, wildcardedMailbox.s) :  ProcedureReturn ImapListSubscribedAsync(obj, reference, wildcardedMailbox) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn ImapLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckLogin(obj.i, loginName.s, password.s) :  ProcedureReturn ImapLogin(obj, loginName, password) :  EndProcedure
  Procedure.i ckLoginAsync(obj.i, loginName.s, password.s) :  ProcedureReturn ImapLoginAsync(obj, loginName, password) :  EndProcedure
  Procedure.l ckLoginSecure(obj.i, loginName.i, password.i) :  ProcedureReturn ImapLoginSecure(obj, loginName, password) :  EndProcedure
  Procedure.i ckLoginSecureAsync(obj.i, loginName.i, password.i) :  ProcedureReturn ImapLoginSecureAsync(obj, loginName, password) :  EndProcedure
  Procedure.l ckLogout(obj.i) :  ProcedureReturn ImapLogout(obj) :  EndProcedure
  Procedure.i ckLogoutAsync(obj.i) :  ProcedureReturn ImapLogoutAsync(obj) :  EndProcedure
  Procedure.l ckMoveMessages(obj.i, messageSet.i, destFolder.s) :  ProcedureReturn ImapMoveMessages(obj, messageSet, destFolder) :  EndProcedure
  Procedure.i ckMoveMessagesAsync(obj.i, messageSet.i, destFolder.s) :  ProcedureReturn ImapMoveMessagesAsync(obj, messageSet, destFolder) :  EndProcedure
  Procedure.l ckNoop(obj.i) :  ProcedureReturn ImapNoop(obj) :  EndProcedure
  Procedure.i ckNoopAsync(obj.i) :  ProcedureReturn ImapNoopAsync(obj) :  EndProcedure
  Procedure.l ckRefetchMailFlags(obj.i, email.i) :  ProcedureReturn ImapRefetchMailFlags(obj, email) :  EndProcedure
  Procedure.i ckRefetchMailFlagsAsync(obj.i, email.i) :  ProcedureReturn ImapRefetchMailFlagsAsync(obj, email) :  EndProcedure
  Procedure.l ckRenameMailbox(obj.i, fromMailbox.s, toMailbox.s) :  ProcedureReturn ImapRenameMailbox(obj, fromMailbox, toMailbox) :  EndProcedure
  Procedure.i ckRenameMailboxAsync(obj.i, fromMailbox.s, toMailbox.s) :  ProcedureReturn ImapRenameMailboxAsync(obj, fromMailbox, toMailbox) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn ImapSaveLastError(obj, path) :  EndProcedure
  Procedure.i ckSearch(obj.i, criteria.s, bUid.l) :  ProcedureReturn ImapSearch(obj, criteria, bUid) :  EndProcedure
  Procedure.i ckSearchAsync(obj.i, criteria.s, bUid.l) :  ProcedureReturn ImapSearchAsync(obj, criteria, bUid) :  EndProcedure
  Procedure.l ckSelectMailbox(obj.i, mailbox.s) :  ProcedureReturn ImapSelectMailbox(obj, mailbox) :  EndProcedure
  Procedure.i ckSelectMailboxAsync(obj.i, mailbox.s) :  ProcedureReturn ImapSelectMailboxAsync(obj, mailbox) :  EndProcedure
  Procedure.s ckSendRawCommand(obj.i, cmd.s) :  ProcedureReturn PeekS(ImapSendRawCommand(obj, cmd)) :  EndProcedure
  Procedure.i ckSendRawCommandAsync(obj.i, cmd.s) :  ProcedureReturn ImapSendRawCommandAsync(obj, cmd) :  EndProcedure
  Procedure.l ckSetDecryptCert(obj.i, cert.i) :  ProcedureReturn ImapSetDecryptCert(obj, cert) :  EndProcedure
  Procedure.l ckSetDecryptCert2(obj.i, cert.i, key.i) :  ProcedureReturn ImapSetDecryptCert2(obj, cert, key) :  EndProcedure
  Procedure.l ckSetFlag(obj.i, msgId.l, bUid.l, flagName.s, value.l) :  ProcedureReturn ImapSetFlag(obj, msgId, bUid, flagName, value) :  EndProcedure
  Procedure.i ckSetFlagAsync(obj.i, msgId.l, bUid.l, flagName.s, value.l) :  ProcedureReturn ImapSetFlagAsync(obj, msgId, bUid, flagName, value) :  EndProcedure
  Procedure.l ckSetFlags(obj.i, messageSet.i, flagName.s, value.l) :  ProcedureReturn ImapSetFlags(obj, messageSet, flagName, value) :  EndProcedure
  Procedure.i ckSetFlagsAsync(obj.i, messageSet.i, flagName.s, value.l) :  ProcedureReturn ImapSetFlagsAsync(obj, messageSet, flagName, value) :  EndProcedure
  Procedure.l ckSetMailFlag(obj.i, email.i, flagName.s, value.l) :  ProcedureReturn ImapSetMailFlag(obj, email, flagName, value) :  EndProcedure
  Procedure.i ckSetMailFlagAsync(obj.i, email.i, flagName.s, value.l) :  ProcedureReturn ImapSetMailFlagAsync(obj, email, flagName, value) :  EndProcedure
  Procedure.l ckSetQuota(obj.i, quotaRoot.s, resource.s, quota.l) :  ProcedureReturn ImapSetQuota(obj, quotaRoot, resource, quota) :  EndProcedure
  Procedure.i ckSetQuotaAsync(obj.i, quotaRoot.s, resource.s, quota.l) :  ProcedureReturn ImapSetQuotaAsync(obj, quotaRoot, resource, quota) :  EndProcedure
  Procedure.l ckSetSslClientCert(obj.i, cert.i) :  ProcedureReturn ImapSetSslClientCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s) :  ProcedureReturn ImapSetSslClientCertPem(obj, pemDataOrFilename, pemPassword) :  EndProcedure
  Procedure.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s) :  ProcedureReturn ImapSetSslClientCertPfx(obj, pfxFilename, pfxPassword) :  EndProcedure
  Procedure.i ckSort(obj.i, sortCriteria.s, charset.s, searchCriteria.s, bUid.l) :  ProcedureReturn ImapSort(obj, sortCriteria, charset, searchCriteria, bUid) :  EndProcedure
  Procedure.i ckSortAsync(obj.i, sortCriteria.s, charset.s, searchCriteria.s, bUid.l) :  ProcedureReturn ImapSortAsync(obj, sortCriteria, charset, searchCriteria, bUid) :  EndProcedure
  Procedure.l ckSshAuthenticatePk(obj.i, sshLogin.s, privateKey.i) :  ProcedureReturn ImapSshAuthenticatePk(obj, sshLogin, privateKey) :  EndProcedure
  Procedure.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, privateKey.i) :  ProcedureReturn ImapSshAuthenticatePkAsync(obj, sshLogin, privateKey) :  EndProcedure
  Procedure.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn ImapSshAuthenticatePw(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn ImapSshAuthenticatePwAsync(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.l ckSshCloseTunnel(obj.i) :  ProcedureReturn ImapSshCloseTunnel(obj) :  EndProcedure
  Procedure.i ckSshCloseTunnelAsync(obj.i) :  ProcedureReturn ImapSshCloseTunnelAsync(obj) :  EndProcedure
  Procedure.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn ImapSshOpenTunnel(obj, sshHostname, sshPort) :  EndProcedure
  Procedure.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn ImapSshOpenTunnelAsync(obj, sshHostname, sshPort) :  EndProcedure
  Procedure.l ckStoreFlags(obj.i, msgId.l, bUid.l, flagNames.s, value.l) :  ProcedureReturn ImapStoreFlags(obj, msgId, bUid, flagNames, value) :  EndProcedure
  Procedure.i ckStoreFlagsAsync(obj.i, msgId.l, bUid.l, flagNames.s, value.l) :  ProcedureReturn ImapStoreFlagsAsync(obj, msgId, bUid, flagNames, value) :  EndProcedure
  Procedure.l ckSubscribe(obj.i, mailbox.s) :  ProcedureReturn ImapSubscribe(obj, mailbox) :  EndProcedure
  Procedure.i ckSubscribeAsync(obj.i, mailbox.s) :  ProcedureReturn ImapSubscribeAsync(obj, mailbox) :  EndProcedure
  Procedure.i ckThreadCmd(obj.i, threadAlg.s, charset.s, searchCriteria.s, bUid.l) :  ProcedureReturn ImapThreadCmd(obj, threadAlg, charset, searchCriteria, bUid) :  EndProcedure
  Procedure.i ckThreadCmdAsync(obj.i, threadAlg.s, charset.s, searchCriteria.s, bUid.l) :  ProcedureReturn ImapThreadCmdAsync(obj, threadAlg, charset, searchCriteria, bUid) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn ImapUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUnsubscribe(obj.i, mailbox.s) :  ProcedureReturn ImapUnsubscribe(obj, mailbox) :  EndProcedure
  Procedure.i ckUnsubscribeAsync(obj.i, mailbox.s) :  ProcedureReturn ImapUnsubscribeAsync(obj, mailbox) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn ImapUseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckUseSsh(obj.i, ssh.i) :  ProcedureReturn ImapUseSsh(obj, ssh) :  EndProcedure
  Procedure.l ckUseSshTunnel(obj.i, tunnel.i) :  ProcedureReturn ImapUseSshTunnel(obj, tunnel) :  EndProcedure
EndModule

