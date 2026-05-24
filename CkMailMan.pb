DeclareModule CkMailMan
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAllOrNone(obj.i)
  Declare setCkAllOrNone(obj.i, value.l)
  Declare.l ckAutoFix(obj.i)
  Declare setCkAutoFix(obj.i, value.l)
  Declare.l ckAutoGenMessageId(obj.i)
  Declare setCkAutoGenMessageId(obj.i, value.l)
  Declare.l ckAutoSmtpRset(obj.i)
  Declare setCkAutoSmtpRset(obj.i, value.l)
  Declare.l ckAutoUnwrapSecurity(obj.i)
  Declare setCkAutoUnwrapSecurity(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.l ckConnectFailReason(obj.i)
  Declare.l ckConnectTimeout(obj.i)
  Declare setCkConnectTimeout(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDsnEnvid(obj.i)
  Declare setCkDsnEnvid(obj.i, value.s)
  Declare.s ckDsnNotify(obj.i)
  Declare setCkDsnNotify(obj.i, value.s)
  Declare.s ckDsnRet(obj.i)
  Declare setCkDsnRet(obj.i, value.s)
  Declare.l ckEmbedCertChain(obj.i)
  Declare setCkEmbedCertChain(obj.i, value.l)
  Declare.s ckFilter(obj.i)
  Declare setCkFilter(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHeloHostname(obj.i)
  Declare setCkHeloHostname(obj.i, value.s)
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
  Declare.l ckImmediateDelete(obj.i)
  Declare setCkImmediateDelete(obj.i, value.l)
  Declare.l ckIncludeRootCert(obj.i)
  Declare setCkIncludeRootCert(obj.i, value.l)
  Declare.l ckIsPop3Connected(obj.i)
  Declare.l ckIsSmtpConnected(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastSendQFilename(obj.i)
  Declare.l ckLastSmtpStatus(obj.i)
  Declare.s ckLastSmtpStatusMsg(obj.i)
  Declare.s ckLogMailReceivedFilename(obj.i)
  Declare setCkLogMailReceivedFilename(obj.i, value.s)
  Declare.s ckLogMailSentFilename(obj.i)
  Declare setCkLogMailSentFilename(obj.i, value.s)
  Declare.s ckMailHost(obj.i)
  Declare setCkMailHost(obj.i, value.s)
  Declare.l ckMailPort(obj.i)
  Declare setCkMailPort(obj.i, value.l)
  Declare.l ckMaxCount(obj.i)
  Declare setCkMaxCount(obj.i, value.l)
  Declare.s ckOAuth2AccessToken(obj.i)
  Declare setCkOAuth2AccessToken(obj.i, value.s)
  Declare.l ckOpaqueSigning(obj.i)
  Declare setCkOpaqueSigning(obj.i, value.l)
  Declare.s ckP7mEncryptAttachFilename(obj.i)
  Declare setCkP7mEncryptAttachFilename(obj.i, value.s)
  Declare.s ckP7mSigAttachFilename(obj.i)
  Declare setCkP7mSigAttachFilename(obj.i, value.s)
  Declare.s ckP7sSigAttachFilename(obj.i)
  Declare setCkP7sSigAttachFilename(obj.i, value.s)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPop3SessionId(obj.i)
  Declare.s ckPop3SessionLog(obj.i)
  Declare.l ckPop3SPA(obj.i)
  Declare setCkPop3SPA(obj.i, value.l)
  Declare.l ckPop3SslServerCertVerified(obj.i)
  Declare.l ckPop3Stls(obj.i)
  Declare setCkPop3Stls(obj.i, value.l)
  Declare.s ckPopPassword(obj.i)
  Declare setCkPopPassword(obj.i, value.s)
  Declare.s ckPopPasswordBase64(obj.i)
  Declare setCkPopPasswordBase64(obj.i, value.s)
  Declare.l ckPopSsl(obj.i)
  Declare setCkPopSsl(obj.i, value.l)
  Declare.s ckPopUsername(obj.i)
  Declare setCkPopUsername(obj.i, value.s)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckReadTimeout(obj.i)
  Declare setCkReadTimeout(obj.i, value.l)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
  Declare.l ckResetDateOnLoad(obj.i)
  Declare setCkResetDateOnLoad(obj.i, value.l)
  Declare.l ckSendBufferSize(obj.i)
  Declare setCkSendBufferSize(obj.i, value.l)
  Declare.l ckSendIndividual(obj.i)
  Declare setCkSendIndividual(obj.i, value.l)
  Declare.l ckSizeLimit(obj.i)
  Declare setCkSizeLimit(obj.i, value.l)
  Declare.s ckSmtpAuthMethod(obj.i)
  Declare setCkSmtpAuthMethod(obj.i, value.s)
  Declare.s ckSmtpFailReason(obj.i)
  Declare.s ckSmtpHost(obj.i)
  Declare setCkSmtpHost(obj.i, value.s)
  Declare.s ckSmtpLoginDomain(obj.i)
  Declare setCkSmtpLoginDomain(obj.i, value.s)
  Declare.s ckSmtpPassword(obj.i)
  Declare setCkSmtpPassword(obj.i, value.s)
  Declare.l ckSmtpPipelining(obj.i)
  Declare setCkSmtpPipelining(obj.i, value.l)
  Declare.l ckSmtpPort(obj.i)
  Declare setCkSmtpPort(obj.i, value.l)
  Declare.s ckSmtpSessionLog(obj.i)
  Declare.l ckSmtpSsl(obj.i)
  Declare setCkSmtpSsl(obj.i, value.l)
  Declare.l ckSmtpSslServerCertVerified(obj.i)
  Declare.s ckSmtpUsername(obj.i)
  Declare setCkSmtpUsername(obj.i, value.s)
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
  Declare.l ckStartTLS(obj.i)
  Declare setCkStartTLS(obj.i, value.l)
  Declare.l ckStartTLSifPossible(obj.i)
  Declare setCkStartTLSifPossible(obj.i, value.l)
  Declare.s ckTlsCipherSuite(obj.i)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.s ckTlsVersion(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUseApop(obj.i)
  Declare setCkUseApop(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, password.s)
  Declare.l ckCheckMail(obj.i)
  Declare.i ckCheckMailAsync(obj.i)
  Declare ckClearBadEmailAddresses(obj.i)
  Declare ckClearPop3SessionLog(obj.i)
  Declare ckClearSmtpSessionLog(obj.i)
  Declare.l ckCloseSmtpConnection(obj.i)
  Declare.i ckCloseSmtpConnectionAsync(obj.i)
  Declare.i ckCopyMail(obj.i)
  Declare.i ckCopyMailAsync(obj.i)
  Declare.l ckDeleteBundle(obj.i, emailBundle.i)
  Declare.i ckDeleteBundleAsync(obj.i, emailBundle.i)
  Declare.l ckDeleteByMsgnum(obj.i, msgnum.l)
  Declare.i ckDeleteByMsgnumAsync(obj.i, msgnum.l)
  Declare.l ckDeleteByUidl(obj.i, uidl.s)
  Declare.i ckDeleteByUidlAsync(obj.i, uidl.s)
  Declare.l ckDeleteEmail(obj.i, email.i)
  Declare.i ckDeleteEmailAsync(obj.i, email.i)
  Declare.l ckDeleteMultiple(obj.i, uidlArray.i)
  Declare.i ckDeleteMultipleAsync(obj.i, uidlArray.i)
  Declare.i ckFetchByMsgnum(obj.i, msgnum.l)
  Declare.i ckFetchByMsgnumAsync(obj.i, msgnum.l)
  Declare.i ckFetchEmail(obj.i, uidl.s)
  Declare.i ckFetchEmailAsync(obj.i, uidl.s)
  Declare.l ckFetchMimeBd(obj.i, uidl.s, mimeData.i)
  Declare.i ckFetchMimeBdAsync(obj.i, uidl.s, mimeData.i)
  Declare.i ckFetchMultiple(obj.i, uidlArray.i)
  Declare.i ckFetchMultipleAsync(obj.i, uidlArray.i)
  Declare.i ckFetchMultipleHeaders(obj.i, uidlArray.i, numBodyLines.l)
  Declare.i ckFetchMultipleHeadersAsync(obj.i, uidlArray.i, numBodyLines.l)
  Declare.i ckFetchMultipleMime(obj.i, uidlArray.i)
  Declare.i ckFetchMultipleMimeAsync(obj.i, uidlArray.i)
  Declare.i ckFetchSingleHeader(obj.i, numBodyLines.l, messageNumber.l)
  Declare.i ckFetchSingleHeaderAsync(obj.i, numBodyLines.l, messageNumber.l)
  Declare.i ckFetchSingleHeaderByUidl(obj.i, numBodyLines.l, uidl.s)
  Declare.i ckFetchSingleHeaderByUidlAsync(obj.i, numBodyLines.l, uidl.s)
  Declare.i ckGetAllHeaders(obj.i, numBodyLines.l)
  Declare.i ckGetAllHeadersAsync(obj.i, numBodyLines.l)
  Declare.i ckGetBadEmailAddrs(obj.i)
  Declare.i ckGetFullEmail(obj.i, email.i)
  Declare.i ckGetFullEmailAsync(obj.i, email.i)
  Declare.i ckGetHeaders(obj.i, numBodyLines.l, fromIndex.l, toIndex.l)
  Declare.i ckGetHeadersAsync(obj.i, numBodyLines.l, fromIndex.l, toIndex.l)
  Declare.l ckGetMailboxCount(obj.i)
  Declare.i ckGetMailboxCountAsync(obj.i)
  Declare.s ckGetMailboxInfoXml(obj.i)
  Declare.i ckGetMailboxInfoXmlAsync(obj.i)
  Declare.l ckGetMailboxSize(obj.i)
  Declare.i ckGetMailboxSizeAsync(obj.i)
  Declare.i ckGetPop3SslServerCert(obj.i)
  Declare.i ckGetSentToEmailAddrs(obj.i)
  Declare.l ckGetSizeByUidl(obj.i, uidl.s)
  Declare.i ckGetSizeByUidlAsync(obj.i, uidl.s)
  Declare.i ckGetSmtpSslServerCert(obj.i)
  Declare.i ckGetUidls(obj.i)
  Declare.i ckGetUidlsAsync(obj.i)
  Declare.l ckIsSmtpDsnCapable(obj.i)
  Declare.i ckIsSmtpDsnCapableAsync(obj.i)
  Declare.l ckIsUnlocked(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.i ckLoadEml(obj.i, emlFilename.s)
  Declare.i ckLoadMbx(obj.i, mbxFileName.s)
  Declare.i ckLoadMime(obj.i, mimeText.s)
  Declare.i ckLoadQueuedEmail(obj.i, path.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.i ckLoadXmlEmail(obj.i, filename.s)
  Declare.i ckLoadXmlEmailString(obj.i, xmlString.s)
  Declare.i ckLoadXmlFile(obj.i, filename.s)
  Declare.i ckLoadXmlString(obj.i, xmlString.s)
  Declare.s ckMxLookup(obj.i, emailAddress.s)
  Declare.i ckMxLookupAll(obj.i, emailAddress.s)
  Declare.l ckOpenSmtpConnection(obj.i)
  Declare.i ckOpenSmtpConnectionAsync(obj.i)
  Declare.l ckPop3Authenticate(obj.i)
  Declare.i ckPop3AuthenticateAsync(obj.i)
  Declare.l ckPop3BeginSession(obj.i)
  Declare.i ckPop3BeginSessionAsync(obj.i)
  Declare.l ckPop3Connect(obj.i)
  Declare.i ckPop3ConnectAsync(obj.i)
  Declare.l ckPop3EndSession(obj.i)
  Declare.i ckPop3EndSessionAsync(obj.i)
  Declare.l ckPop3EndSessionNoQuit(obj.i)
  Declare.i ckPop3EndSessionNoQuitAsync(obj.i)
  Declare.l ckPop3Noop(obj.i)
  Declare.i ckPop3NoopAsync(obj.i)
  Declare.l ckPop3Reset(obj.i)
  Declare.i ckPop3ResetAsync(obj.i)
  Declare.s ckPop3SendRawCommand(obj.i, command.s, charset.s)
  Declare.i ckPop3SendRawCommandAsync(obj.i, command.s, charset.s)
  Declare.l ckQuickSend(obj.i, fromAddr.s, toAddr.s, subject.s, body.s, smtpServer.s)
  Declare.i ckQuickSendAsync(obj.i, fromAddr.s, toAddr.s, subject.s, body.s, smtpServer.s)
  Declare.s ckRenderToMime(obj.i, email.i)
  Declare.l ckRenderToMimeBd(obj.i, email.i, renderedMime.i)
  Declare.l ckRenderToMimeSb(obj.i, email.i, renderedMime.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSendBundle(obj.i, bundle.i)
  Declare.i ckSendBundleAsync(obj.i, bundle.i)
  Declare.l ckSendEmail(obj.i, email.i)
  Declare.i ckSendEmailAsync(obj.i, email.i)
  Declare.l ckSendMime(obj.i, fromAddr.s, recipients.s, mimeSource.s)
  Declare.i ckSendMimeAsync(obj.i, fromAddr.s, recipients.s, mimeSource.s)
  Declare.l ckSendMimeBd(obj.i, fromAddr.s, recipients.s, mimeData.i)
  Declare.i ckSendMimeBdAsync(obj.i, fromAddr.s, recipients.s, mimeData.i)
  Declare.l ckSendMimeQ(obj.i, fromAddr.s, recipients.s, mimeSource.s)
  Declare.l ckSendMimeToList(obj.i, fromAddr.s, distListFilename.s, mimeSource.s)
  Declare.i ckSendMimeToListAsync(obj.i, fromAddr.s, distListFilename.s, mimeSource.s)
  Declare.l ckSendQ(obj.i, email.i)
  Declare.l ckSendQ2(obj.i, email.i, queueDir.s)
  Declare.l ckSendToDistributionList(obj.i, emailObj.i, recipientList.i)
  Declare.i ckSendToDistributionListAsync(obj.i, emailObj.i, recipientList.i)
  Declare.l ckSetDecryptCert(obj.i, cert.i)
  Declare.l ckSetDecryptCert2(obj.i, cert.i, privateKey.i)
  Declare.l ckSetPassword(obj.i, protocol.s, password.i)
  Declare.l ckSetSslClientCert(obj.i, cert.i)
  Declare.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s)
  Declare.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s)
  Declare.l ckSmtpAuthenticate(obj.i)
  Declare.i ckSmtpAuthenticateAsync(obj.i)
  Declare.l ckSmtpConnect(obj.i)
  Declare.i ckSmtpConnectAsync(obj.i)
  Declare.l ckSmtpNoop(obj.i)
  Declare.i ckSmtpNoopAsync(obj.i)
  Declare.l ckSmtpReset(obj.i)
  Declare.i ckSmtpResetAsync(obj.i)
  Declare.s ckSmtpSendRawCommand(obj.i, command.s, charset.s, bEncodeBase64.l)
  Declare.i ckSmtpSendRawCommandAsync(obj.i, command.s, charset.s, bEncodeBase64.l)
  Declare.l ckSshAuthenticatePk(obj.i, sshLogin.s, sshUsername.i)
  Declare.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, sshUsername.i)
  Declare.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s)
  Declare.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s)
  Declare.l ckSshCloseTunnel(obj.i)
  Declare.i ckSshCloseTunnelAsync(obj.i)
  Declare.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l)
  Declare.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l)
  Declare.i ckTransferMail(obj.i)
  Declare.i ckTransferMailAsync(obj.i)
  Declare.i ckTransferMultipleMime(obj.i, uidlArray.i)
  Declare.i ckTransferMultipleMimeAsync(obj.i, uidlArray.i)
  Declare.l ckUnlockComponent(obj.i, code.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckUseSsh(obj.i, ssh.i)
  Declare.l ckUseSshTunnel(obj.i, tunnel.i)
  Declare.l ckVerifyPopConnection(obj.i)
  Declare.i ckVerifyPopConnectionAsync(obj.i)
  Declare.l ckVerifyPopLogin(obj.i)
  Declare.i ckVerifyPopLoginAsync(obj.i)
  Declare.l ckVerifyRecips(obj.i, email.i, badAddrs.i)
  Declare.i ckVerifyRecipsAsync(obj.i, email.i, badAddrs.i)
  Declare.l ckVerifySmtpConnection(obj.i)
  Declare.i ckVerifySmtpConnectionAsync(obj.i)
  Declare.l ckVerifySmtpLogin(obj.i)
  Declare.i ckVerifySmtpLoginAsync(obj.i)
EndDeclareModule

Module CkMailMan
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.i ckiMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMll(obj.i, arg1.l, arg2.l)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i CkMailManCreate()
  PrototypeC CkMailManDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMailManLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkMailManLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkMailManLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMailManLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkMailManLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global MailManCreate.CkMailManCreate = GetFunction(CkMailManLibId,"CkMailManU_CreateW")
  Global MailManDispose.CkMailManDispose = GetFunction(CkMailManLibId,"CkMailManU_DisposeW")
  Global MailManAbortCurrent.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAbortCurrentW")
  Global MailManPSetAbortCurrent.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAbortCurrentW")
  Global MailManAllOrNone.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAllOrNoneW")
  Global MailManPSetAllOrNone.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAllOrNoneW")
  Global MailManAutoFix.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAutoFixW")
  Global MailManPSetAutoFix.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAutoFixW")
  Global MailManAutoGenMessageId.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAutoGenMessageIdW")
  Global MailManPSetAutoGenMessageId.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAutoGenMessageIdW")
  Global MailManAutoSmtpRset.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAutoSmtpRsetW")
  Global MailManPSetAutoSmtpRset.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAutoSmtpRsetW")
  Global MailManAutoUnwrapSecurity.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getAutoUnwrapSecurityW")
  Global MailManPSetAutoUnwrapSecurity.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putAutoUnwrapSecurityW")
  Global MailManClientIpAddress.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_clientIpAddressW")
  Global MailManPSetClientIpAddress.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putClientIpAddressW")
  Global MailManConnectFailReason.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getConnectFailReasonW")
  Global MailManConnectTimeout.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getConnectTimeoutW")
  Global MailManPSetConnectTimeout.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putConnectTimeoutW")
  Global MailManDebugLogFilePath.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_debugLogFilePathW")
  Global MailManPSetDebugLogFilePath.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putDebugLogFilePathW")
  Global MailManDsnEnvid.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_dsnEnvidW")
  Global MailManPSetDsnEnvid.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putDsnEnvidW")
  Global MailManDsnNotify.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_dsnNotifyW")
  Global MailManPSetDsnNotify.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putDsnNotifyW")
  Global MailManDsnRet.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_dsnRetW")
  Global MailManPSetDsnRet.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putDsnRetW")
  Global MailManEmbedCertChain.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getEmbedCertChainW")
  Global MailManPSetEmbedCertChain.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putEmbedCertChainW")
  Global MailManFilter.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_filterW")
  Global MailManPSetFilter.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putFilterW")
  Global MailManHeartbeatMs.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getHeartbeatMsW")
  Global MailManPSetHeartbeatMs.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHeartbeatMsW")
  Global MailManHeloHostname.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_heloHostnameW")
  Global MailManPSetHeloHostname.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHeloHostnameW")
  Global MailManHttpProxyAuthMethod.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_httpProxyAuthMethodW")
  Global MailManPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyAuthMethodW")
  Global MailManHttpProxyDomain.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_httpProxyDomainW")
  Global MailManPSetHttpProxyDomain.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyDomainW")
  Global MailManHttpProxyHostname.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_httpProxyHostnameW")
  Global MailManPSetHttpProxyHostname.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyHostnameW")
  Global MailManHttpProxyPassword.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_httpProxyPasswordW")
  Global MailManPSetHttpProxyPassword.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyPasswordW")
  Global MailManHttpProxyPort.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getHttpProxyPortW")
  Global MailManPSetHttpProxyPort.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyPortW")
  Global MailManHttpProxyUsername.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_httpProxyUsernameW")
  Global MailManPSetHttpProxyUsername.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putHttpProxyUsernameW")
  Global MailManImmediateDelete.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getImmediateDeleteW")
  Global MailManPSetImmediateDelete.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putImmediateDeleteW")
  Global MailManIncludeRootCert.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getIncludeRootCertW")
  Global MailManPSetIncludeRootCert.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putIncludeRootCertW")
  Global MailManIsPop3Connected.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getIsPop3ConnectedW")
  Global MailManIsSmtpConnected.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getIsSmtpConnectedW")
  Global MailManLastErrorHtml.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_lastErrorHtmlW")
  Global MailManLastErrorText.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_lastErrorTextW")
  Global MailManLastErrorXml.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_lastErrorXmlW")
  Global MailManLastMethodSuccess.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getLastMethodSuccessW")
  Global MailManPSetLastMethodSuccess.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putLastMethodSuccessW")
  Global MailManLastSendQFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_lastSendQFilenameW")
  Global MailManLastSmtpStatus.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getLastSmtpStatusW")
  Global MailManLastSmtpStatusMsg.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_lastSmtpStatusMsgW")
  Global MailManLogMailReceivedFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_logMailReceivedFilenameW")
  Global MailManPSetLogMailReceivedFilename.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putLogMailReceivedFilenameW")
  Global MailManLogMailSentFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_logMailSentFilenameW")
  Global MailManPSetLogMailSentFilename.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putLogMailSentFilenameW")
  Global MailManMailHost.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_mailHostW")
  Global MailManPSetMailHost.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putMailHostW")
  Global MailManMailPort.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getMailPortW")
  Global MailManPSetMailPort.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putMailPortW")
  Global MailManMaxCount.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getMaxCountW")
  Global MailManPSetMaxCount.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putMaxCountW")
  Global MailManOAuth2AccessToken.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_oAuth2AccessTokenW")
  Global MailManPSetOAuth2AccessToken.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putOAuth2AccessTokenW")
  Global MailManOpaqueSigning.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getOpaqueSigningW")
  Global MailManPSetOpaqueSigning.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putOpaqueSigningW")
  Global MailManP7mEncryptAttachFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_p7mEncryptAttachFilenameW")
  Global MailManPSetP7mEncryptAttachFilename.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putP7mEncryptAttachFilenameW")
  Global MailManP7mSigAttachFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_p7mSigAttachFilenameW")
  Global MailManPSetP7mSigAttachFilename.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putP7mSigAttachFilenameW")
  Global MailManP7sSigAttachFilename.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_p7sSigAttachFilenameW")
  Global MailManPSetP7sSigAttachFilename.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putP7sSigAttachFilenameW")
  Global MailManPercentDoneScale.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPercentDoneScaleW")
  Global MailManPSetPercentDoneScale.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPercentDoneScaleW")
  Global MailManPop3SessionId.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPop3SessionIdW")
  Global MailManPop3SessionLog.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_pop3SessionLogW")
  Global MailManPop3SPA.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPop3SPAW")
  Global MailManPSetPop3SPA.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPop3SPAW")
  Global MailManPop3SslServerCertVerified.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPop3SslServerCertVerifiedW")
  Global MailManPop3Stls.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPop3StlsW")
  Global MailManPSetPop3Stls.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPop3StlsW")
  Global MailManPopPassword.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_popPasswordW")
  Global MailManPSetPopPassword.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPopPasswordW")
  Global MailManPopPasswordBase64.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_popPasswordBase64W")
  Global MailManPSetPopPasswordBase64.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPopPasswordBase64W")
  Global MailManPopSsl.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPopSslW")
  Global MailManPSetPopSsl.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPopSslW")
  Global MailManPopUsername.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_popUsernameW")
  Global MailManPSetPopUsername.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPopUsernameW")
  Global MailManPreferIpv6.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getPreferIpv6W")
  Global MailManPSetPreferIpv6.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putPreferIpv6W")
  Global MailManReadTimeout.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getReadTimeoutW")
  Global MailManPSetReadTimeout.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putReadTimeoutW")
  Global MailManRequireSslCertVerify.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getRequireSslCertVerifyW")
  Global MailManPSetRequireSslCertVerify.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putRequireSslCertVerifyW")
  Global MailManResetDateOnLoad.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getResetDateOnLoadW")
  Global MailManPSetResetDateOnLoad.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putResetDateOnLoadW")
  Global MailManSendBufferSize.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSendBufferSizeW")
  Global MailManPSetSendBufferSize.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSendBufferSizeW")
  Global MailManSendIndividual.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSendIndividualW")
  Global MailManPSetSendIndividual.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSendIndividualW")
  Global MailManSizeLimit.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSizeLimitW")
  Global MailManPSetSizeLimit.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSizeLimitW")
  Global MailManSmtpAuthMethod.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpAuthMethodW")
  Global MailManPSetSmtpAuthMethod.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpAuthMethodW")
  Global MailManSmtpFailReason.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpFailReasonW")
  Global MailManSmtpHost.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpHostW")
  Global MailManPSetSmtpHost.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpHostW")
  Global MailManSmtpLoginDomain.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpLoginDomainW")
  Global MailManPSetSmtpLoginDomain.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpLoginDomainW")
  Global MailManSmtpPassword.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpPasswordW")
  Global MailManPSetSmtpPassword.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpPasswordW")
  Global MailManSmtpPipelining.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSmtpPipeliningW")
  Global MailManPSetSmtpPipelining.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpPipeliningW")
  Global MailManSmtpPort.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSmtpPortW")
  Global MailManPSetSmtpPort.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpPortW")
  Global MailManSmtpSessionLog.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpSessionLogW")
  Global MailManSmtpSsl.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSmtpSslW")
  Global MailManPSetSmtpSsl.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpSslW")
  Global MailManSmtpSslServerCertVerified.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSmtpSslServerCertVerifiedW")
  Global MailManSmtpUsername.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_smtpUsernameW")
  Global MailManPSetSmtpUsername.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSmtpUsernameW")
  Global MailManSocksHostname.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_socksHostnameW")
  Global MailManPSetSocksHostname.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSocksHostnameW")
  Global MailManSocksPassword.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_socksPasswordW")
  Global MailManPSetSocksPassword.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSocksPasswordW")
  Global MailManSocksPort.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSocksPortW")
  Global MailManPSetSocksPort.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSocksPortW")
  Global MailManSocksUsername.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_socksUsernameW")
  Global MailManPSetSocksUsername.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSocksUsernameW")
  Global MailManSocksVersion.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSocksVersionW")
  Global MailManPSetSocksVersion.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSocksVersionW")
  Global MailManSoRcvBuf.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSoRcvBufW")
  Global MailManPSetSoRcvBuf.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSoRcvBufW")
  Global MailManSoSndBuf.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getSoSndBufW")
  Global MailManPSetSoSndBuf.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSoSndBufW")
  Global MailManSslAllowedCiphers.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_sslAllowedCiphersW")
  Global MailManPSetSslAllowedCiphers.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSslAllowedCiphersW")
  Global MailManSslProtocol.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_sslProtocolW")
  Global MailManPSetSslProtocol.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putSslProtocolW")
  Global MailManStartTLS.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getStartTLSW")
  Global MailManPSetStartTLS.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putStartTLSW")
  Global MailManStartTLSifPossible.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getStartTLSifPossibleW")
  Global MailManPSetStartTLSifPossible.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putStartTLSifPossibleW")
  Global MailManTlsCipherSuite.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_tlsCipherSuiteW")
  Global MailManTlsPinSet.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_tlsPinSetW")
  Global MailManPSetTlsPinSet.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putTlsPinSetW")
  Global MailManTlsVersion.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_tlsVersionW")
  Global MailManUncommonOptions.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_uncommonOptionsW")
  Global MailManPSetUncommonOptions.cksPropSet = GetFunction(CkMailManLibId,"CkMailManU_putUncommonOptionsW")
  Global MailManUseApop.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getUseApopW")
  Global MailManPSetUseApop.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putUseApopW")
  Global MailManVerboseLogging.cklPropGet = GetFunction(CkMailManLibId,"CkMailManU_getVerboseLoggingW")
  Global MailManPSetVerboseLogging.cklPropSet = GetFunction(CkMailManLibId,"CkMailManU_putVerboseLoggingW")
  Global MailManVersion.cksPropGet = GetFunction(CkMailManLibId,"CkMailManU_versionW")
  Global MailManAddPfxSourceFile.cklMss = GetFunction(CkMailManLibId,"CkMailManU_AddPfxSourceFileW")
  Global MailManCheckMail.cklM = GetFunction(CkMailManLibId,"CkMailManU_CheckMailW")
  Global MailManCheckMailAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_CheckMailAsyncW")
  Global MailManClearBadEmailAddresses.ckvM = GetFunction(CkMailManLibId,"CkMailManU_ClearBadEmailAddressesW")
  Global MailManClearPop3SessionLog.ckvM = GetFunction(CkMailManLibId,"CkMailManU_ClearPop3SessionLogW")
  Global MailManClearSmtpSessionLog.ckvM = GetFunction(CkMailManLibId,"CkMailManU_ClearSmtpSessionLogW")
  Global MailManCloseSmtpConnection.cklM = GetFunction(CkMailManLibId,"CkMailManU_CloseSmtpConnectionW")
  Global MailManCloseSmtpConnectionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_CloseSmtpConnectionAsyncW")
  Global MailManCopyMail.ckiM = GetFunction(CkMailManLibId,"CkMailManU_CopyMailW")
  Global MailManCopyMailAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_CopyMailAsyncW")
  Global MailManDeleteBundle.cklMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteBundleW")
  Global MailManDeleteBundleAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteBundleAsyncW")
  Global MailManDeleteByMsgnum.cklMl = GetFunction(CkMailManLibId,"CkMailManU_DeleteByMsgnumW")
  Global MailManDeleteByMsgnumAsync.ckiMl = GetFunction(CkMailManLibId,"CkMailManU_DeleteByMsgnumAsyncW")
  Global MailManDeleteByUidl.cklMs = GetFunction(CkMailManLibId,"CkMailManU_DeleteByUidlW")
  Global MailManDeleteByUidlAsync.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_DeleteByUidlAsyncW")
  Global MailManDeleteEmail.cklMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteEmailW")
  Global MailManDeleteEmailAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteEmailAsyncW")
  Global MailManDeleteMultiple.cklMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteMultipleW")
  Global MailManDeleteMultipleAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_DeleteMultipleAsyncW")
  Global MailManFetchByMsgnum.ckiMl = GetFunction(CkMailManLibId,"CkMailManU_FetchByMsgnumW")
  Global MailManFetchByMsgnumAsync.ckiMl = GetFunction(CkMailManLibId,"CkMailManU_FetchByMsgnumAsyncW")
  Global MailManFetchEmail.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_FetchEmailW")
  Global MailManFetchEmailAsync.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_FetchEmailAsyncW")
  Global MailManFetchMimeBd.cklMsi = GetFunction(CkMailManLibId,"CkMailManU_FetchMimeBdW")
  Global MailManFetchMimeBdAsync.ckiMsi = GetFunction(CkMailManLibId,"CkMailManU_FetchMimeBdAsyncW")
  Global MailManFetchMultiple.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleW")
  Global MailManFetchMultipleAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleAsyncW")
  Global MailManFetchMultipleHeaders.ckiMil = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleHeadersW")
  Global MailManFetchMultipleHeadersAsync.ckiMil = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleHeadersAsyncW")
  Global MailManFetchMultipleMime.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleMimeW")
  Global MailManFetchMultipleMimeAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_FetchMultipleMimeAsyncW")
  Global MailManFetchSingleHeader.ckiMll = GetFunction(CkMailManLibId,"CkMailManU_FetchSingleHeaderW")
  Global MailManFetchSingleHeaderAsync.ckiMll = GetFunction(CkMailManLibId,"CkMailManU_FetchSingleHeaderAsyncW")
  Global MailManFetchSingleHeaderByUidl.ckiMls = GetFunction(CkMailManLibId,"CkMailManU_FetchSingleHeaderByUidlW")
  Global MailManFetchSingleHeaderByUidlAsync.ckiMls = GetFunction(CkMailManLibId,"CkMailManU_FetchSingleHeaderByUidlAsyncW")
  Global MailManGetAllHeaders.ckiMl = GetFunction(CkMailManLibId,"CkMailManU_GetAllHeadersW")
  Global MailManGetAllHeadersAsync.ckiMl = GetFunction(CkMailManLibId,"CkMailManU_GetAllHeadersAsyncW")
  Global MailManGetBadEmailAddrs.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetBadEmailAddrsW")
  Global MailManGetFullEmail.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_GetFullEmailW")
  Global MailManGetFullEmailAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_GetFullEmailAsyncW")
  Global MailManGetHeaders.ckiMlll = GetFunction(CkMailManLibId,"CkMailManU_GetHeadersW")
  Global MailManGetHeadersAsync.ckiMlll = GetFunction(CkMailManLibId,"CkMailManU_GetHeadersAsyncW")
  Global MailManGetMailboxCount.cklM = GetFunction(CkMailManLibId,"CkMailManU_GetMailboxCountW")
  Global MailManGetMailboxCountAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetMailboxCountAsyncW")
  Global MailManGetMailboxInfoXml.cklM = GetFunction(CkMailManLibId,"CkMailManU_getMailboxInfoXmlW")
  Global MailManGetMailboxInfoXmlAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetMailboxInfoXmlAsyncW")
  Global MailManGetMailboxSize.cklM = GetFunction(CkMailManLibId,"CkMailManU_GetMailboxSizeW")
  Global MailManGetMailboxSizeAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetMailboxSizeAsyncW")
  Global MailManGetPop3SslServerCert.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetPop3SslServerCertW")
  Global MailManGetSentToEmailAddrs.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetSentToEmailAddrsW")
  Global MailManGetSizeByUidl.cklMs = GetFunction(CkMailManLibId,"CkMailManU_GetSizeByUidlW")
  Global MailManGetSizeByUidlAsync.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_GetSizeByUidlAsyncW")
  Global MailManGetSmtpSslServerCert.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetSmtpSslServerCertW")
  Global MailManGetUidls.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetUidlsW")
  Global MailManGetUidlsAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_GetUidlsAsyncW")
  Global MailManIsSmtpDsnCapable.cklM = GetFunction(CkMailManLibId,"CkMailManU_IsSmtpDsnCapableW")
  Global MailManIsSmtpDsnCapableAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_IsSmtpDsnCapableAsyncW")
  Global MailManIsUnlocked.cklM = GetFunction(CkMailManLibId,"CkMailManU_IsUnlockedW")
  Global MailManLastJsonData.ckiM = GetFunction(CkMailManLibId,"CkMailManU_LastJsonDataW")
  Global MailManLoadEml.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadEmlW")
  Global MailManLoadMbx.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadMbxW")
  Global MailManLoadMime.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadMimeW")
  Global MailManLoadQueuedEmail.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadQueuedEmailW")
  Global MailManLoadTaskCaller.cklMi = GetFunction(CkMailManLibId,"CkMailManU_LoadTaskCallerW")
  Global MailManLoadXmlEmail.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadXmlEmailW")
  Global MailManLoadXmlEmailString.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadXmlEmailStringW")
  Global MailManLoadXmlFile.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadXmlFileW")
  Global MailManLoadXmlString.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_LoadXmlStringW")
  Global MailManMxLookup.cklMs = GetFunction(CkMailManLibId,"CkMailManU_mxLookupW")
  Global MailManMxLookupAll.ckiMs = GetFunction(CkMailManLibId,"CkMailManU_MxLookupAllW")
  Global MailManOpenSmtpConnection.cklM = GetFunction(CkMailManLibId,"CkMailManU_OpenSmtpConnectionW")
  Global MailManOpenSmtpConnectionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_OpenSmtpConnectionAsyncW")
  Global MailManPop3Authenticate.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3AuthenticateW")
  Global MailManPop3AuthenticateAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3AuthenticateAsyncW")
  Global MailManPop3BeginSession.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3BeginSessionW")
  Global MailManPop3BeginSessionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3BeginSessionAsyncW")
  Global MailManPop3Connect.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3ConnectW")
  Global MailManPop3ConnectAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3ConnectAsyncW")
  Global MailManPop3EndSession.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3EndSessionW")
  Global MailManPop3EndSessionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3EndSessionAsyncW")
  Global MailManPop3EndSessionNoQuit.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3EndSessionNoQuitW")
  Global MailManPop3EndSessionNoQuitAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3EndSessionNoQuitAsyncW")
  Global MailManPop3Noop.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3NoopW")
  Global MailManPop3NoopAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3NoopAsyncW")
  Global MailManPop3Reset.cklM = GetFunction(CkMailManLibId,"CkMailManU_Pop3ResetW")
  Global MailManPop3ResetAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_Pop3ResetAsyncW")
  Global MailManPop3SendRawCommand.cklMss = GetFunction(CkMailManLibId,"CkMailManU_pop3SendRawCommandW")
  Global MailManPop3SendRawCommandAsync.ckiMss = GetFunction(CkMailManLibId,"CkMailManU_Pop3SendRawCommandAsyncW")
  Global MailManQuickSend.cklMsssss = GetFunction(CkMailManLibId,"CkMailManU_QuickSendW")
  Global MailManQuickSendAsync.ckiMsssss = GetFunction(CkMailManLibId,"CkMailManU_QuickSendAsyncW")
  Global MailManRenderToMime.cklMi = GetFunction(CkMailManLibId,"CkMailManU_renderToMimeW")
  Global MailManRenderToMimeBd.cklMii = GetFunction(CkMailManLibId,"CkMailManU_RenderToMimeBdW")
  Global MailManRenderToMimeSb.cklMii = GetFunction(CkMailManLibId,"CkMailManU_RenderToMimeSbW")
  Global MailManSaveLastError.cklMs = GetFunction(CkMailManLibId,"CkMailManU_SaveLastErrorW")
  Global MailManSendBundle.cklMi = GetFunction(CkMailManLibId,"CkMailManU_SendBundleW")
  Global MailManSendBundleAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_SendBundleAsyncW")
  Global MailManSendEmail.cklMi = GetFunction(CkMailManLibId,"CkMailManU_SendEmailW")
  Global MailManSendEmailAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_SendEmailAsyncW")
  Global MailManSendMime.cklMsss = GetFunction(CkMailManLibId,"CkMailManU_SendMimeW")
  Global MailManSendMimeAsync.ckiMsss = GetFunction(CkMailManLibId,"CkMailManU_SendMimeAsyncW")
  Global MailManSendMimeBd.cklMssi = GetFunction(CkMailManLibId,"CkMailManU_SendMimeBdW")
  Global MailManSendMimeBdAsync.ckiMssi = GetFunction(CkMailManLibId,"CkMailManU_SendMimeBdAsyncW")
  Global MailManSendMimeQ.cklMsss = GetFunction(CkMailManLibId,"CkMailManU_SendMimeQW")
  Global MailManSendMimeToList.cklMsss = GetFunction(CkMailManLibId,"CkMailManU_SendMimeToListW")
  Global MailManSendMimeToListAsync.ckiMsss = GetFunction(CkMailManLibId,"CkMailManU_SendMimeToListAsyncW")
  Global MailManSendQ.cklMi = GetFunction(CkMailManLibId,"CkMailManU_SendQW")
  Global MailManSendQ2.cklMis = GetFunction(CkMailManLibId,"CkMailManU_SendQ2W")
  Global MailManSendToDistributionList.cklMii = GetFunction(CkMailManLibId,"CkMailManU_SendToDistributionListW")
  Global MailManSendToDistributionListAsync.ckiMii = GetFunction(CkMailManLibId,"CkMailManU_SendToDistributionListAsyncW")
  Global MailManSetDecryptCert.cklMi = GetFunction(CkMailManLibId,"CkMailManU_SetDecryptCertW")
  Global MailManSetDecryptCert2.cklMii = GetFunction(CkMailManLibId,"CkMailManU_SetDecryptCert2W")
  Global MailManSetPassword.cklMsi = GetFunction(CkMailManLibId,"CkMailManU_SetPasswordW")
  Global MailManSetSslClientCert.cklMi = GetFunction(CkMailManLibId,"CkMailManU_SetSslClientCertW")
  Global MailManSetSslClientCertPem.cklMss = GetFunction(CkMailManLibId,"CkMailManU_SetSslClientCertPemW")
  Global MailManSetSslClientCertPfx.cklMss = GetFunction(CkMailManLibId,"CkMailManU_SetSslClientCertPfxW")
  Global MailManSmtpAuthenticate.cklM = GetFunction(CkMailManLibId,"CkMailManU_SmtpAuthenticateW")
  Global MailManSmtpAuthenticateAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_SmtpAuthenticateAsyncW")
  Global MailManSmtpConnect.cklM = GetFunction(CkMailManLibId,"CkMailManU_SmtpConnectW")
  Global MailManSmtpConnectAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_SmtpConnectAsyncW")
  Global MailManSmtpNoop.cklM = GetFunction(CkMailManLibId,"CkMailManU_SmtpNoopW")
  Global MailManSmtpNoopAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_SmtpNoopAsyncW")
  Global MailManSmtpReset.cklM = GetFunction(CkMailManLibId,"CkMailManU_SmtpResetW")
  Global MailManSmtpResetAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_SmtpResetAsyncW")
  Global MailManSmtpSendRawCommand.cklMssl = GetFunction(CkMailManLibId,"CkMailManU_smtpSendRawCommandW")
  Global MailManSmtpSendRawCommandAsync.ckiMssl = GetFunction(CkMailManLibId,"CkMailManU_SmtpSendRawCommandAsyncW")
  Global MailManSshAuthenticatePk.cklMsi = GetFunction(CkMailManLibId,"CkMailManU_SshAuthenticatePkW")
  Global MailManSshAuthenticatePkAsync.ckiMsi = GetFunction(CkMailManLibId,"CkMailManU_SshAuthenticatePkAsyncW")
  Global MailManSshAuthenticatePw.cklMss = GetFunction(CkMailManLibId,"CkMailManU_SshAuthenticatePwW")
  Global MailManSshAuthenticatePwAsync.ckiMss = GetFunction(CkMailManLibId,"CkMailManU_SshAuthenticatePwAsyncW")
  Global MailManSshCloseTunnel.cklM = GetFunction(CkMailManLibId,"CkMailManU_SshCloseTunnelW")
  Global MailManSshCloseTunnelAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_SshCloseTunnelAsyncW")
  Global MailManSshOpenTunnel.cklMsl = GetFunction(CkMailManLibId,"CkMailManU_SshOpenTunnelW")
  Global MailManSshOpenTunnelAsync.ckiMsl = GetFunction(CkMailManLibId,"CkMailManU_SshOpenTunnelAsyncW")
  Global MailManTransferMail.ckiM = GetFunction(CkMailManLibId,"CkMailManU_TransferMailW")
  Global MailManTransferMailAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_TransferMailAsyncW")
  Global MailManTransferMultipleMime.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_TransferMultipleMimeW")
  Global MailManTransferMultipleMimeAsync.ckiMi = GetFunction(CkMailManLibId,"CkMailManU_TransferMultipleMimeAsyncW")
  Global MailManUnlockComponent.cklMs = GetFunction(CkMailManLibId,"CkMailManU_UnlockComponentW")
  Global MailManUseCertVault.cklMi = GetFunction(CkMailManLibId,"CkMailManU_UseCertVaultW")
  Global MailManUseSsh.cklMi = GetFunction(CkMailManLibId,"CkMailManU_UseSshW")
  Global MailManUseSshTunnel.cklMi = GetFunction(CkMailManLibId,"CkMailManU_UseSshTunnelW")
  Global MailManVerifyPopConnection.cklM = GetFunction(CkMailManLibId,"CkMailManU_VerifyPopConnectionW")
  Global MailManVerifyPopConnectionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_VerifyPopConnectionAsyncW")
  Global MailManVerifyPopLogin.cklM = GetFunction(CkMailManLibId,"CkMailManU_VerifyPopLoginW")
  Global MailManVerifyPopLoginAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_VerifyPopLoginAsyncW")
  Global MailManVerifyRecips.cklMii = GetFunction(CkMailManLibId,"CkMailManU_VerifyRecipsW")
  Global MailManVerifyRecipsAsync.ckiMii = GetFunction(CkMailManLibId,"CkMailManU_VerifyRecipsAsyncW")
  Global MailManVerifySmtpConnection.cklM = GetFunction(CkMailManLibId,"CkMailManU_VerifySmtpConnectionW")
  Global MailManVerifySmtpConnectionAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_VerifySmtpConnectionAsyncW")
  Global MailManVerifySmtpLogin.cklM = GetFunction(CkMailManLibId,"CkMailManU_VerifySmtpLoginW")
  Global MailManVerifySmtpLoginAsync.ckiM = GetFunction(CkMailManLibId,"CkMailManU_VerifySmtpLoginAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn MailManCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn MailManDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn MailManAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn MailManPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAllOrNone(obj.i) : ProcedureReturn MailManAllOrNone(obj) : EndProcedure
  Procedure setCkAllOrNone(obj.i, value.l) : ProcedureReturn MailManPSetAllOrNone(obj,value) : EndProcedure
  Procedure.l ckAutoFix(obj.i) : ProcedureReturn MailManAutoFix(obj) : EndProcedure
  Procedure setCkAutoFix(obj.i, value.l) : ProcedureReturn MailManPSetAutoFix(obj,value) : EndProcedure
  Procedure.l ckAutoGenMessageId(obj.i) : ProcedureReturn MailManAutoGenMessageId(obj) : EndProcedure
  Procedure setCkAutoGenMessageId(obj.i, value.l) : ProcedureReturn MailManPSetAutoGenMessageId(obj,value) : EndProcedure
  Procedure.l ckAutoSmtpRset(obj.i) : ProcedureReturn MailManAutoSmtpRset(obj) : EndProcedure
  Procedure setCkAutoSmtpRset(obj.i, value.l) : ProcedureReturn MailManPSetAutoSmtpRset(obj,value) : EndProcedure
  Procedure.l ckAutoUnwrapSecurity(obj.i) : ProcedureReturn MailManAutoUnwrapSecurity(obj) : EndProcedure
  Procedure setCkAutoUnwrapSecurity(obj.i, value.l) : ProcedureReturn MailManPSetAutoUnwrapSecurity(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(MailManClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn MailManPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.l ckConnectFailReason(obj.i) : ProcedureReturn MailManConnectFailReason(obj) : EndProcedure
  Procedure.l ckConnectTimeout(obj.i) : ProcedureReturn MailManConnectTimeout(obj) : EndProcedure
  Procedure setCkConnectTimeout(obj.i, value.l) : ProcedureReturn MailManPSetConnectTimeout(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(MailManDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn MailManPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDsnEnvid(obj.i) : ProcedureReturn PeekS(MailManDsnEnvid(obj)) : EndProcedure
  Procedure setCkDsnEnvid(obj.i, value.s) : ProcedureReturn MailManPSetDsnEnvid(obj,value) : EndProcedure
  Procedure.s ckDsnNotify(obj.i) : ProcedureReturn PeekS(MailManDsnNotify(obj)) : EndProcedure
  Procedure setCkDsnNotify(obj.i, value.s) : ProcedureReturn MailManPSetDsnNotify(obj,value) : EndProcedure
  Procedure.s ckDsnRet(obj.i) : ProcedureReturn PeekS(MailManDsnRet(obj)) : EndProcedure
  Procedure setCkDsnRet(obj.i, value.s) : ProcedureReturn MailManPSetDsnRet(obj,value) : EndProcedure
  Procedure.l ckEmbedCertChain(obj.i) : ProcedureReturn MailManEmbedCertChain(obj) : EndProcedure
  Procedure setCkEmbedCertChain(obj.i, value.l) : ProcedureReturn MailManPSetEmbedCertChain(obj,value) : EndProcedure
  Procedure.s ckFilter(obj.i) : ProcedureReturn PeekS(MailManFilter(obj)) : EndProcedure
  Procedure setCkFilter(obj.i, value.s) : ProcedureReturn MailManPSetFilter(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn MailManHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn MailManPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHeloHostname(obj.i) : ProcedureReturn PeekS(MailManHeloHostname(obj)) : EndProcedure
  Procedure setCkHeloHostname(obj.i, value.s) : ProcedureReturn MailManPSetHeloHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(MailManHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn MailManPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(MailManHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn MailManPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(MailManHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn MailManPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(MailManHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn MailManPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn MailManHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn MailManPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(MailManHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn MailManPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckImmediateDelete(obj.i) : ProcedureReturn MailManImmediateDelete(obj) : EndProcedure
  Procedure setCkImmediateDelete(obj.i, value.l) : ProcedureReturn MailManPSetImmediateDelete(obj,value) : EndProcedure
  Procedure.l ckIncludeRootCert(obj.i) : ProcedureReturn MailManIncludeRootCert(obj) : EndProcedure
  Procedure setCkIncludeRootCert(obj.i, value.l) : ProcedureReturn MailManPSetIncludeRootCert(obj,value) : EndProcedure
  Procedure.l ckIsPop3Connected(obj.i) : ProcedureReturn MailManIsPop3Connected(obj) : EndProcedure
  Procedure.l ckIsSmtpConnected(obj.i) : ProcedureReturn MailManIsSmtpConnected(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(MailManLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(MailManLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(MailManLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn MailManLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn MailManPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastSendQFilename(obj.i) : ProcedureReturn PeekS(MailManLastSendQFilename(obj)) : EndProcedure
  Procedure.l ckLastSmtpStatus(obj.i) : ProcedureReturn MailManLastSmtpStatus(obj) : EndProcedure
  Procedure.s ckLastSmtpStatusMsg(obj.i) : ProcedureReturn PeekS(MailManLastSmtpStatusMsg(obj)) : EndProcedure
  Procedure.s ckLogMailReceivedFilename(obj.i) : ProcedureReturn PeekS(MailManLogMailReceivedFilename(obj)) : EndProcedure
  Procedure setCkLogMailReceivedFilename(obj.i, value.s) : ProcedureReturn MailManPSetLogMailReceivedFilename(obj,value) : EndProcedure
  Procedure.s ckLogMailSentFilename(obj.i) : ProcedureReturn PeekS(MailManLogMailSentFilename(obj)) : EndProcedure
  Procedure setCkLogMailSentFilename(obj.i, value.s) : ProcedureReturn MailManPSetLogMailSentFilename(obj,value) : EndProcedure
  Procedure.s ckMailHost(obj.i) : ProcedureReturn PeekS(MailManMailHost(obj)) : EndProcedure
  Procedure setCkMailHost(obj.i, value.s) : ProcedureReturn MailManPSetMailHost(obj,value) : EndProcedure
  Procedure.l ckMailPort(obj.i) : ProcedureReturn MailManMailPort(obj) : EndProcedure
  Procedure setCkMailPort(obj.i, value.l) : ProcedureReturn MailManPSetMailPort(obj,value) : EndProcedure
  Procedure.l ckMaxCount(obj.i) : ProcedureReturn MailManMaxCount(obj) : EndProcedure
  Procedure setCkMaxCount(obj.i, value.l) : ProcedureReturn MailManPSetMaxCount(obj,value) : EndProcedure
  Procedure.s ckOAuth2AccessToken(obj.i) : ProcedureReturn PeekS(MailManOAuth2AccessToken(obj)) : EndProcedure
  Procedure setCkOAuth2AccessToken(obj.i, value.s) : ProcedureReturn MailManPSetOAuth2AccessToken(obj,value) : EndProcedure
  Procedure.l ckOpaqueSigning(obj.i) : ProcedureReturn MailManOpaqueSigning(obj) : EndProcedure
  Procedure setCkOpaqueSigning(obj.i, value.l) : ProcedureReturn MailManPSetOpaqueSigning(obj,value) : EndProcedure
  Procedure.s ckP7mEncryptAttachFilename(obj.i) : ProcedureReturn PeekS(MailManP7mEncryptAttachFilename(obj)) : EndProcedure
  Procedure setCkP7mEncryptAttachFilename(obj.i, value.s) : ProcedureReturn MailManPSetP7mEncryptAttachFilename(obj,value) : EndProcedure
  Procedure.s ckP7mSigAttachFilename(obj.i) : ProcedureReturn PeekS(MailManP7mSigAttachFilename(obj)) : EndProcedure
  Procedure setCkP7mSigAttachFilename(obj.i, value.s) : ProcedureReturn MailManPSetP7mSigAttachFilename(obj,value) : EndProcedure
  Procedure.s ckP7sSigAttachFilename(obj.i) : ProcedureReturn PeekS(MailManP7sSigAttachFilename(obj)) : EndProcedure
  Procedure setCkP7sSigAttachFilename(obj.i, value.s) : ProcedureReturn MailManPSetP7sSigAttachFilename(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn MailManPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn MailManPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPop3SessionId(obj.i) : ProcedureReturn MailManPop3SessionId(obj) : EndProcedure
  Procedure.s ckPop3SessionLog(obj.i) : ProcedureReturn PeekS(MailManPop3SessionLog(obj)) : EndProcedure
  Procedure.l ckPop3SPA(obj.i) : ProcedureReturn MailManPop3SPA(obj) : EndProcedure
  Procedure setCkPop3SPA(obj.i, value.l) : ProcedureReturn MailManPSetPop3SPA(obj,value) : EndProcedure
  Procedure.l ckPop3SslServerCertVerified(obj.i) : ProcedureReturn MailManPop3SslServerCertVerified(obj) : EndProcedure
  Procedure.l ckPop3Stls(obj.i) : ProcedureReturn MailManPop3Stls(obj) : EndProcedure
  Procedure setCkPop3Stls(obj.i, value.l) : ProcedureReturn MailManPSetPop3Stls(obj,value) : EndProcedure
  Procedure.s ckPopPassword(obj.i) : ProcedureReturn PeekS(MailManPopPassword(obj)) : EndProcedure
  Procedure setCkPopPassword(obj.i, value.s) : ProcedureReturn MailManPSetPopPassword(obj,value) : EndProcedure
  Procedure.s ckPopPasswordBase64(obj.i) : ProcedureReturn PeekS(MailManPopPasswordBase64(obj)) : EndProcedure
  Procedure setCkPopPasswordBase64(obj.i, value.s) : ProcedureReturn MailManPSetPopPasswordBase64(obj,value) : EndProcedure
  Procedure.l ckPopSsl(obj.i) : ProcedureReturn MailManPopSsl(obj) : EndProcedure
  Procedure setCkPopSsl(obj.i, value.l) : ProcedureReturn MailManPSetPopSsl(obj,value) : EndProcedure
  Procedure.s ckPopUsername(obj.i) : ProcedureReturn PeekS(MailManPopUsername(obj)) : EndProcedure
  Procedure setCkPopUsername(obj.i, value.s) : ProcedureReturn MailManPSetPopUsername(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn MailManPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn MailManPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckReadTimeout(obj.i) : ProcedureReturn MailManReadTimeout(obj) : EndProcedure
  Procedure setCkReadTimeout(obj.i, value.l) : ProcedureReturn MailManPSetReadTimeout(obj,value) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn MailManRequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn MailManPSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.l ckResetDateOnLoad(obj.i) : ProcedureReturn MailManResetDateOnLoad(obj) : EndProcedure
  Procedure setCkResetDateOnLoad(obj.i, value.l) : ProcedureReturn MailManPSetResetDateOnLoad(obj,value) : EndProcedure
  Procedure.l ckSendBufferSize(obj.i) : ProcedureReturn MailManSendBufferSize(obj) : EndProcedure
  Procedure setCkSendBufferSize(obj.i, value.l) : ProcedureReturn MailManPSetSendBufferSize(obj,value) : EndProcedure
  Procedure.l ckSendIndividual(obj.i) : ProcedureReturn MailManSendIndividual(obj) : EndProcedure
  Procedure setCkSendIndividual(obj.i, value.l) : ProcedureReturn MailManPSetSendIndividual(obj,value) : EndProcedure
  Procedure.l ckSizeLimit(obj.i) : ProcedureReturn MailManSizeLimit(obj) : EndProcedure
  Procedure setCkSizeLimit(obj.i, value.l) : ProcedureReturn MailManPSetSizeLimit(obj,value) : EndProcedure
  Procedure.s ckSmtpAuthMethod(obj.i) : ProcedureReturn PeekS(MailManSmtpAuthMethod(obj)) : EndProcedure
  Procedure setCkSmtpAuthMethod(obj.i, value.s) : ProcedureReturn MailManPSetSmtpAuthMethod(obj,value) : EndProcedure
  Procedure.s ckSmtpFailReason(obj.i) : ProcedureReturn PeekS(MailManSmtpFailReason(obj)) : EndProcedure
  Procedure.s ckSmtpHost(obj.i) : ProcedureReturn PeekS(MailManSmtpHost(obj)) : EndProcedure
  Procedure setCkSmtpHost(obj.i, value.s) : ProcedureReturn MailManPSetSmtpHost(obj,value) : EndProcedure
  Procedure.s ckSmtpLoginDomain(obj.i) : ProcedureReturn PeekS(MailManSmtpLoginDomain(obj)) : EndProcedure
  Procedure setCkSmtpLoginDomain(obj.i, value.s) : ProcedureReturn MailManPSetSmtpLoginDomain(obj,value) : EndProcedure
  Procedure.s ckSmtpPassword(obj.i) : ProcedureReturn PeekS(MailManSmtpPassword(obj)) : EndProcedure
  Procedure setCkSmtpPassword(obj.i, value.s) : ProcedureReturn MailManPSetSmtpPassword(obj,value) : EndProcedure
  Procedure.l ckSmtpPipelining(obj.i) : ProcedureReturn MailManSmtpPipelining(obj) : EndProcedure
  Procedure setCkSmtpPipelining(obj.i, value.l) : ProcedureReturn MailManPSetSmtpPipelining(obj,value) : EndProcedure
  Procedure.l ckSmtpPort(obj.i) : ProcedureReturn MailManSmtpPort(obj) : EndProcedure
  Procedure setCkSmtpPort(obj.i, value.l) : ProcedureReturn MailManPSetSmtpPort(obj,value) : EndProcedure
  Procedure.s ckSmtpSessionLog(obj.i) : ProcedureReturn PeekS(MailManSmtpSessionLog(obj)) : EndProcedure
  Procedure.l ckSmtpSsl(obj.i) : ProcedureReturn MailManSmtpSsl(obj) : EndProcedure
  Procedure setCkSmtpSsl(obj.i, value.l) : ProcedureReturn MailManPSetSmtpSsl(obj,value) : EndProcedure
  Procedure.l ckSmtpSslServerCertVerified(obj.i) : ProcedureReturn MailManSmtpSslServerCertVerified(obj) : EndProcedure
  Procedure.s ckSmtpUsername(obj.i) : ProcedureReturn PeekS(MailManSmtpUsername(obj)) : EndProcedure
  Procedure setCkSmtpUsername(obj.i, value.s) : ProcedureReturn MailManPSetSmtpUsername(obj,value) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(MailManSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn MailManPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(MailManSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn MailManPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn MailManSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn MailManPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(MailManSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn MailManPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn MailManSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn MailManPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn MailManSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn MailManPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn MailManSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn MailManPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(MailManSslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn MailManPSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(MailManSslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn MailManPSetSslProtocol(obj,value) : EndProcedure
  Procedure.l ckStartTLS(obj.i) : ProcedureReturn MailManStartTLS(obj) : EndProcedure
  Procedure setCkStartTLS(obj.i, value.l) : ProcedureReturn MailManPSetStartTLS(obj,value) : EndProcedure
  Procedure.l ckStartTLSifPossible(obj.i) : ProcedureReturn MailManStartTLSifPossible(obj) : EndProcedure
  Procedure setCkStartTLSifPossible(obj.i, value.l) : ProcedureReturn MailManPSetStartTLSifPossible(obj,value) : EndProcedure
  Procedure.s ckTlsCipherSuite(obj.i) : ProcedureReturn PeekS(MailManTlsCipherSuite(obj)) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(MailManTlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn MailManPSetTlsPinSet(obj,value) : EndProcedure
  Procedure.s ckTlsVersion(obj.i) : ProcedureReturn PeekS(MailManTlsVersion(obj)) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(MailManUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn MailManPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUseApop(obj.i) : ProcedureReturn MailManUseApop(obj) : EndProcedure
  Procedure setCkUseApop(obj.i, value.l) : ProcedureReturn MailManPSetUseApop(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn MailManVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn MailManPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(MailManVersion(obj)) : EndProcedure
  Procedure.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, password.s) :  ProcedureReturn MailManAddPfxSourceFile(obj, pfxFilePath, password) :  EndProcedure
  Procedure.l ckCheckMail(obj.i) :  ProcedureReturn MailManCheckMail(obj) :  EndProcedure
  Procedure.i ckCheckMailAsync(obj.i) :  ProcedureReturn MailManCheckMailAsync(obj) :  EndProcedure
  Procedure ckClearBadEmailAddresses(obj.i) :  ProcedureReturn MailManClearBadEmailAddresses(obj) :  EndProcedure
  Procedure ckClearPop3SessionLog(obj.i) :  ProcedureReturn MailManClearPop3SessionLog(obj) :  EndProcedure
  Procedure ckClearSmtpSessionLog(obj.i) :  ProcedureReturn MailManClearSmtpSessionLog(obj) :  EndProcedure
  Procedure.l ckCloseSmtpConnection(obj.i) :  ProcedureReturn MailManCloseSmtpConnection(obj) :  EndProcedure
  Procedure.i ckCloseSmtpConnectionAsync(obj.i) :  ProcedureReturn MailManCloseSmtpConnectionAsync(obj) :  EndProcedure
  Procedure.i ckCopyMail(obj.i) :  ProcedureReturn MailManCopyMail(obj) :  EndProcedure
  Procedure.i ckCopyMailAsync(obj.i) :  ProcedureReturn MailManCopyMailAsync(obj) :  EndProcedure
  Procedure.l ckDeleteBundle(obj.i, emailBundle.i) :  ProcedureReturn MailManDeleteBundle(obj, emailBundle) :  EndProcedure
  Procedure.i ckDeleteBundleAsync(obj.i, emailBundle.i) :  ProcedureReturn MailManDeleteBundleAsync(obj, emailBundle) :  EndProcedure
  Procedure.l ckDeleteByMsgnum(obj.i, msgnum.l) :  ProcedureReturn MailManDeleteByMsgnum(obj, msgnum) :  EndProcedure
  Procedure.i ckDeleteByMsgnumAsync(obj.i, msgnum.l) :  ProcedureReturn MailManDeleteByMsgnumAsync(obj, msgnum) :  EndProcedure
  Procedure.l ckDeleteByUidl(obj.i, uidl.s) :  ProcedureReturn MailManDeleteByUidl(obj, uidl) :  EndProcedure
  Procedure.i ckDeleteByUidlAsync(obj.i, uidl.s) :  ProcedureReturn MailManDeleteByUidlAsync(obj, uidl) :  EndProcedure
  Procedure.l ckDeleteEmail(obj.i, email.i) :  ProcedureReturn MailManDeleteEmail(obj, email) :  EndProcedure
  Procedure.i ckDeleteEmailAsync(obj.i, email.i) :  ProcedureReturn MailManDeleteEmailAsync(obj, email) :  EndProcedure
  Procedure.l ckDeleteMultiple(obj.i, uidlArray.i) :  ProcedureReturn MailManDeleteMultiple(obj, uidlArray) :  EndProcedure
  Procedure.i ckDeleteMultipleAsync(obj.i, uidlArray.i) :  ProcedureReturn MailManDeleteMultipleAsync(obj, uidlArray) :  EndProcedure
  Procedure.i ckFetchByMsgnum(obj.i, msgnum.l) :  ProcedureReturn MailManFetchByMsgnum(obj, msgnum) :  EndProcedure
  Procedure.i ckFetchByMsgnumAsync(obj.i, msgnum.l) :  ProcedureReturn MailManFetchByMsgnumAsync(obj, msgnum) :  EndProcedure
  Procedure.i ckFetchEmail(obj.i, uidl.s) :  ProcedureReturn MailManFetchEmail(obj, uidl) :  EndProcedure
  Procedure.i ckFetchEmailAsync(obj.i, uidl.s) :  ProcedureReturn MailManFetchEmailAsync(obj, uidl) :  EndProcedure
  Procedure.l ckFetchMimeBd(obj.i, uidl.s, mimeData.i) :  ProcedureReturn MailManFetchMimeBd(obj, uidl, mimeData) :  EndProcedure
  Procedure.i ckFetchMimeBdAsync(obj.i, uidl.s, mimeData.i) :  ProcedureReturn MailManFetchMimeBdAsync(obj, uidl, mimeData) :  EndProcedure
  Procedure.i ckFetchMultiple(obj.i, uidlArray.i) :  ProcedureReturn MailManFetchMultiple(obj, uidlArray) :  EndProcedure
  Procedure.i ckFetchMultipleAsync(obj.i, uidlArray.i) :  ProcedureReturn MailManFetchMultipleAsync(obj, uidlArray) :  EndProcedure
  Procedure.i ckFetchMultipleHeaders(obj.i, uidlArray.i, numBodyLines.l) :  ProcedureReturn MailManFetchMultipleHeaders(obj, uidlArray, numBodyLines) :  EndProcedure
  Procedure.i ckFetchMultipleHeadersAsync(obj.i, uidlArray.i, numBodyLines.l) :  ProcedureReturn MailManFetchMultipleHeadersAsync(obj, uidlArray, numBodyLines) :  EndProcedure
  Procedure.i ckFetchMultipleMime(obj.i, uidlArray.i) :  ProcedureReturn MailManFetchMultipleMime(obj, uidlArray) :  EndProcedure
  Procedure.i ckFetchMultipleMimeAsync(obj.i, uidlArray.i) :  ProcedureReturn MailManFetchMultipleMimeAsync(obj, uidlArray) :  EndProcedure
  Procedure.i ckFetchSingleHeader(obj.i, numBodyLines.l, messageNumber.l) :  ProcedureReturn MailManFetchSingleHeader(obj, numBodyLines, messageNumber) :  EndProcedure
  Procedure.i ckFetchSingleHeaderAsync(obj.i, numBodyLines.l, messageNumber.l) :  ProcedureReturn MailManFetchSingleHeaderAsync(obj, numBodyLines, messageNumber) :  EndProcedure
  Procedure.i ckFetchSingleHeaderByUidl(obj.i, numBodyLines.l, uidl.s) :  ProcedureReturn MailManFetchSingleHeaderByUidl(obj, numBodyLines, uidl) :  EndProcedure
  Procedure.i ckFetchSingleHeaderByUidlAsync(obj.i, numBodyLines.l, uidl.s) :  ProcedureReturn MailManFetchSingleHeaderByUidlAsync(obj, numBodyLines, uidl) :  EndProcedure
  Procedure.i ckGetAllHeaders(obj.i, numBodyLines.l) :  ProcedureReturn MailManGetAllHeaders(obj, numBodyLines) :  EndProcedure
  Procedure.i ckGetAllHeadersAsync(obj.i, numBodyLines.l) :  ProcedureReturn MailManGetAllHeadersAsync(obj, numBodyLines) :  EndProcedure
  Procedure.i ckGetBadEmailAddrs(obj.i) :  ProcedureReturn MailManGetBadEmailAddrs(obj) :  EndProcedure
  Procedure.i ckGetFullEmail(obj.i, email.i) :  ProcedureReturn MailManGetFullEmail(obj, email) :  EndProcedure
  Procedure.i ckGetFullEmailAsync(obj.i, email.i) :  ProcedureReturn MailManGetFullEmailAsync(obj, email) :  EndProcedure
  Procedure.i ckGetHeaders(obj.i, numBodyLines.l, fromIndex.l, toIndex.l) :  ProcedureReturn MailManGetHeaders(obj, numBodyLines, fromIndex, toIndex) :  EndProcedure
  Procedure.i ckGetHeadersAsync(obj.i, numBodyLines.l, fromIndex.l, toIndex.l) :  ProcedureReturn MailManGetHeadersAsync(obj, numBodyLines, fromIndex, toIndex) :  EndProcedure
  Procedure.l ckGetMailboxCount(obj.i) :  ProcedureReturn MailManGetMailboxCount(obj) :  EndProcedure
  Procedure.i ckGetMailboxCountAsync(obj.i) :  ProcedureReturn MailManGetMailboxCountAsync(obj) :  EndProcedure
  Procedure.s ckGetMailboxInfoXml(obj.i) :  ProcedureReturn PeekS(MailManGetMailboxInfoXml(obj)) :  EndProcedure
  Procedure.i ckGetMailboxInfoXmlAsync(obj.i) :  ProcedureReturn MailManGetMailboxInfoXmlAsync(obj) :  EndProcedure
  Procedure.l ckGetMailboxSize(obj.i) :  ProcedureReturn MailManGetMailboxSize(obj) :  EndProcedure
  Procedure.i ckGetMailboxSizeAsync(obj.i) :  ProcedureReturn MailManGetMailboxSizeAsync(obj) :  EndProcedure
  Procedure.i ckGetPop3SslServerCert(obj.i) :  ProcedureReturn MailManGetPop3SslServerCert(obj) :  EndProcedure
  Procedure.i ckGetSentToEmailAddrs(obj.i) :  ProcedureReturn MailManGetSentToEmailAddrs(obj) :  EndProcedure
  Procedure.l ckGetSizeByUidl(obj.i, uidl.s) :  ProcedureReturn MailManGetSizeByUidl(obj, uidl) :  EndProcedure
  Procedure.i ckGetSizeByUidlAsync(obj.i, uidl.s) :  ProcedureReturn MailManGetSizeByUidlAsync(obj, uidl) :  EndProcedure
  Procedure.i ckGetSmtpSslServerCert(obj.i) :  ProcedureReturn MailManGetSmtpSslServerCert(obj) :  EndProcedure
  Procedure.i ckGetUidls(obj.i) :  ProcedureReturn MailManGetUidls(obj) :  EndProcedure
  Procedure.i ckGetUidlsAsync(obj.i) :  ProcedureReturn MailManGetUidlsAsync(obj) :  EndProcedure
  Procedure.l ckIsSmtpDsnCapable(obj.i) :  ProcedureReturn MailManIsSmtpDsnCapable(obj) :  EndProcedure
  Procedure.i ckIsSmtpDsnCapableAsync(obj.i) :  ProcedureReturn MailManIsSmtpDsnCapableAsync(obj) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn MailManIsUnlocked(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn MailManLastJsonData(obj) :  EndProcedure
  Procedure.i ckLoadEml(obj.i, emlFilename.s) :  ProcedureReturn MailManLoadEml(obj, emlFilename) :  EndProcedure
  Procedure.i ckLoadMbx(obj.i, mbxFileName.s) :  ProcedureReturn MailManLoadMbx(obj, mbxFileName) :  EndProcedure
  Procedure.i ckLoadMime(obj.i, mimeText.s) :  ProcedureReturn MailManLoadMime(obj, mimeText) :  EndProcedure
  Procedure.i ckLoadQueuedEmail(obj.i, path.s) :  ProcedureReturn MailManLoadQueuedEmail(obj, path) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn MailManLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.i ckLoadXmlEmail(obj.i, filename.s) :  ProcedureReturn MailManLoadXmlEmail(obj, filename) :  EndProcedure
  Procedure.i ckLoadXmlEmailString(obj.i, xmlString.s) :  ProcedureReturn MailManLoadXmlEmailString(obj, xmlString) :  EndProcedure
  Procedure.i ckLoadXmlFile(obj.i, filename.s) :  ProcedureReturn MailManLoadXmlFile(obj, filename) :  EndProcedure
  Procedure.i ckLoadXmlString(obj.i, xmlString.s) :  ProcedureReturn MailManLoadXmlString(obj, xmlString) :  EndProcedure
  Procedure.s ckMxLookup(obj.i, emailAddress.s) :  ProcedureReturn PeekS(MailManMxLookup(obj, emailAddress)) :  EndProcedure
  Procedure.i ckMxLookupAll(obj.i, emailAddress.s) :  ProcedureReturn MailManMxLookupAll(obj, emailAddress) :  EndProcedure
  Procedure.l ckOpenSmtpConnection(obj.i) :  ProcedureReturn MailManOpenSmtpConnection(obj) :  EndProcedure
  Procedure.i ckOpenSmtpConnectionAsync(obj.i) :  ProcedureReturn MailManOpenSmtpConnectionAsync(obj) :  EndProcedure
  Procedure.l ckPop3Authenticate(obj.i) :  ProcedureReturn MailManPop3Authenticate(obj) :  EndProcedure
  Procedure.i ckPop3AuthenticateAsync(obj.i) :  ProcedureReturn MailManPop3AuthenticateAsync(obj) :  EndProcedure
  Procedure.l ckPop3BeginSession(obj.i) :  ProcedureReturn MailManPop3BeginSession(obj) :  EndProcedure
  Procedure.i ckPop3BeginSessionAsync(obj.i) :  ProcedureReturn MailManPop3BeginSessionAsync(obj) :  EndProcedure
  Procedure.l ckPop3Connect(obj.i) :  ProcedureReturn MailManPop3Connect(obj) :  EndProcedure
  Procedure.i ckPop3ConnectAsync(obj.i) :  ProcedureReturn MailManPop3ConnectAsync(obj) :  EndProcedure
  Procedure.l ckPop3EndSession(obj.i) :  ProcedureReturn MailManPop3EndSession(obj) :  EndProcedure
  Procedure.i ckPop3EndSessionAsync(obj.i) :  ProcedureReturn MailManPop3EndSessionAsync(obj) :  EndProcedure
  Procedure.l ckPop3EndSessionNoQuit(obj.i) :  ProcedureReturn MailManPop3EndSessionNoQuit(obj) :  EndProcedure
  Procedure.i ckPop3EndSessionNoQuitAsync(obj.i) :  ProcedureReturn MailManPop3EndSessionNoQuitAsync(obj) :  EndProcedure
  Procedure.l ckPop3Noop(obj.i) :  ProcedureReturn MailManPop3Noop(obj) :  EndProcedure
  Procedure.i ckPop3NoopAsync(obj.i) :  ProcedureReturn MailManPop3NoopAsync(obj) :  EndProcedure
  Procedure.l ckPop3Reset(obj.i) :  ProcedureReturn MailManPop3Reset(obj) :  EndProcedure
  Procedure.i ckPop3ResetAsync(obj.i) :  ProcedureReturn MailManPop3ResetAsync(obj) :  EndProcedure
  Procedure.s ckPop3SendRawCommand(obj.i, command.s, charset.s) :  ProcedureReturn PeekS(MailManPop3SendRawCommand(obj, command, charset)) :  EndProcedure
  Procedure.i ckPop3SendRawCommandAsync(obj.i, command.s, charset.s) :  ProcedureReturn MailManPop3SendRawCommandAsync(obj, command, charset) :  EndProcedure
  Procedure.l ckQuickSend(obj.i, fromAddr.s, toAddr.s, subject.s, body.s, smtpServer.s) :  ProcedureReturn MailManQuickSend(obj, fromAddr, toAddr, subject, body, smtpServer) :  EndProcedure
  Procedure.i ckQuickSendAsync(obj.i, fromAddr.s, toAddr.s, subject.s, body.s, smtpServer.s) :  ProcedureReturn MailManQuickSendAsync(obj, fromAddr, toAddr, subject, body, smtpServer) :  EndProcedure
  Procedure.s ckRenderToMime(obj.i, email.i) :  ProcedureReturn PeekS(MailManRenderToMime(obj, email)) :  EndProcedure
  Procedure.l ckRenderToMimeBd(obj.i, email.i, renderedMime.i) :  ProcedureReturn MailManRenderToMimeBd(obj, email, renderedMime) :  EndProcedure
  Procedure.l ckRenderToMimeSb(obj.i, email.i, renderedMime.i) :  ProcedureReturn MailManRenderToMimeSb(obj, email, renderedMime) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn MailManSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSendBundle(obj.i, bundle.i) :  ProcedureReturn MailManSendBundle(obj, bundle) :  EndProcedure
  Procedure.i ckSendBundleAsync(obj.i, bundle.i) :  ProcedureReturn MailManSendBundleAsync(obj, bundle) :  EndProcedure
  Procedure.l ckSendEmail(obj.i, email.i) :  ProcedureReturn MailManSendEmail(obj, email) :  EndProcedure
  Procedure.i ckSendEmailAsync(obj.i, email.i) :  ProcedureReturn MailManSendEmailAsync(obj, email) :  EndProcedure
  Procedure.l ckSendMime(obj.i, fromAddr.s, recipients.s, mimeSource.s) :  ProcedureReturn MailManSendMime(obj, fromAddr, recipients, mimeSource) :  EndProcedure
  Procedure.i ckSendMimeAsync(obj.i, fromAddr.s, recipients.s, mimeSource.s) :  ProcedureReturn MailManSendMimeAsync(obj, fromAddr, recipients, mimeSource) :  EndProcedure
  Procedure.l ckSendMimeBd(obj.i, fromAddr.s, recipients.s, mimeData.i) :  ProcedureReturn MailManSendMimeBd(obj, fromAddr, recipients, mimeData) :  EndProcedure
  Procedure.i ckSendMimeBdAsync(obj.i, fromAddr.s, recipients.s, mimeData.i) :  ProcedureReturn MailManSendMimeBdAsync(obj, fromAddr, recipients, mimeData) :  EndProcedure
  Procedure.l ckSendMimeQ(obj.i, fromAddr.s, recipients.s, mimeSource.s) :  ProcedureReturn MailManSendMimeQ(obj, fromAddr, recipients, mimeSource) :  EndProcedure
  Procedure.l ckSendMimeToList(obj.i, fromAddr.s, distListFilename.s, mimeSource.s) :  ProcedureReturn MailManSendMimeToList(obj, fromAddr, distListFilename, mimeSource) :  EndProcedure
  Procedure.i ckSendMimeToListAsync(obj.i, fromAddr.s, distListFilename.s, mimeSource.s) :  ProcedureReturn MailManSendMimeToListAsync(obj, fromAddr, distListFilename, mimeSource) :  EndProcedure
  Procedure.l ckSendQ(obj.i, email.i) :  ProcedureReturn MailManSendQ(obj, email) :  EndProcedure
  Procedure.l ckSendQ2(obj.i, email.i, queueDir.s) :  ProcedureReturn MailManSendQ2(obj, email, queueDir) :  EndProcedure
  Procedure.l ckSendToDistributionList(obj.i, emailObj.i, recipientList.i) :  ProcedureReturn MailManSendToDistributionList(obj, emailObj, recipientList) :  EndProcedure
  Procedure.i ckSendToDistributionListAsync(obj.i, emailObj.i, recipientList.i) :  ProcedureReturn MailManSendToDistributionListAsync(obj, emailObj, recipientList) :  EndProcedure
  Procedure.l ckSetDecryptCert(obj.i, cert.i) :  ProcedureReturn MailManSetDecryptCert(obj, cert) :  EndProcedure
  Procedure.l ckSetDecryptCert2(obj.i, cert.i, privateKey.i) :  ProcedureReturn MailManSetDecryptCert2(obj, cert, privateKey) :  EndProcedure
  Procedure.l ckSetPassword(obj.i, protocol.s, password.i) :  ProcedureReturn MailManSetPassword(obj, protocol, password) :  EndProcedure
  Procedure.l ckSetSslClientCert(obj.i, cert.i) :  ProcedureReturn MailManSetSslClientCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s) :  ProcedureReturn MailManSetSslClientCertPem(obj, pemDataOrFilename, pemPassword) :  EndProcedure
  Procedure.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s) :  ProcedureReturn MailManSetSslClientCertPfx(obj, pfxFilename, pfxPassword) :  EndProcedure
  Procedure.l ckSmtpAuthenticate(obj.i) :  ProcedureReturn MailManSmtpAuthenticate(obj) :  EndProcedure
  Procedure.i ckSmtpAuthenticateAsync(obj.i) :  ProcedureReturn MailManSmtpAuthenticateAsync(obj) :  EndProcedure
  Procedure.l ckSmtpConnect(obj.i) :  ProcedureReturn MailManSmtpConnect(obj) :  EndProcedure
  Procedure.i ckSmtpConnectAsync(obj.i) :  ProcedureReturn MailManSmtpConnectAsync(obj) :  EndProcedure
  Procedure.l ckSmtpNoop(obj.i) :  ProcedureReturn MailManSmtpNoop(obj) :  EndProcedure
  Procedure.i ckSmtpNoopAsync(obj.i) :  ProcedureReturn MailManSmtpNoopAsync(obj) :  EndProcedure
  Procedure.l ckSmtpReset(obj.i) :  ProcedureReturn MailManSmtpReset(obj) :  EndProcedure
  Procedure.i ckSmtpResetAsync(obj.i) :  ProcedureReturn MailManSmtpResetAsync(obj) :  EndProcedure
  Procedure.s ckSmtpSendRawCommand(obj.i, command.s, charset.s, bEncodeBase64.l) :  ProcedureReturn PeekS(MailManSmtpSendRawCommand(obj, command, charset, bEncodeBase64)) :  EndProcedure
  Procedure.i ckSmtpSendRawCommandAsync(obj.i, command.s, charset.s, bEncodeBase64.l) :  ProcedureReturn MailManSmtpSendRawCommandAsync(obj, command, charset, bEncodeBase64) :  EndProcedure
  Procedure.l ckSshAuthenticatePk(obj.i, sshLogin.s, sshUsername.i) :  ProcedureReturn MailManSshAuthenticatePk(obj, sshLogin, sshUsername) :  EndProcedure
  Procedure.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, sshUsername.i) :  ProcedureReturn MailManSshAuthenticatePkAsync(obj, sshLogin, sshUsername) :  EndProcedure
  Procedure.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn MailManSshAuthenticatePw(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn MailManSshAuthenticatePwAsync(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.l ckSshCloseTunnel(obj.i) :  ProcedureReturn MailManSshCloseTunnel(obj) :  EndProcedure
  Procedure.i ckSshCloseTunnelAsync(obj.i) :  ProcedureReturn MailManSshCloseTunnelAsync(obj) :  EndProcedure
  Procedure.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn MailManSshOpenTunnel(obj, sshHostname, sshPort) :  EndProcedure
  Procedure.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn MailManSshOpenTunnelAsync(obj, sshHostname, sshPort) :  EndProcedure
  Procedure.i ckTransferMail(obj.i) :  ProcedureReturn MailManTransferMail(obj) :  EndProcedure
  Procedure.i ckTransferMailAsync(obj.i) :  ProcedureReturn MailManTransferMailAsync(obj) :  EndProcedure
  Procedure.i ckTransferMultipleMime(obj.i, uidlArray.i) :  ProcedureReturn MailManTransferMultipleMime(obj, uidlArray) :  EndProcedure
  Procedure.i ckTransferMultipleMimeAsync(obj.i, uidlArray.i) :  ProcedureReturn MailManTransferMultipleMimeAsync(obj, uidlArray) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, code.s) :  ProcedureReturn MailManUnlockComponent(obj, code) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn MailManUseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckUseSsh(obj.i, ssh.i) :  ProcedureReturn MailManUseSsh(obj, ssh) :  EndProcedure
  Procedure.l ckUseSshTunnel(obj.i, tunnel.i) :  ProcedureReturn MailManUseSshTunnel(obj, tunnel) :  EndProcedure
  Procedure.l ckVerifyPopConnection(obj.i) :  ProcedureReturn MailManVerifyPopConnection(obj) :  EndProcedure
  Procedure.i ckVerifyPopConnectionAsync(obj.i) :  ProcedureReturn MailManVerifyPopConnectionAsync(obj) :  EndProcedure
  Procedure.l ckVerifyPopLogin(obj.i) :  ProcedureReturn MailManVerifyPopLogin(obj) :  EndProcedure
  Procedure.i ckVerifyPopLoginAsync(obj.i) :  ProcedureReturn MailManVerifyPopLoginAsync(obj) :  EndProcedure
  Procedure.l ckVerifyRecips(obj.i, email.i, badAddrs.i) :  ProcedureReturn MailManVerifyRecips(obj, email, badAddrs) :  EndProcedure
  Procedure.i ckVerifyRecipsAsync(obj.i, email.i, badAddrs.i) :  ProcedureReturn MailManVerifyRecipsAsync(obj, email, badAddrs) :  EndProcedure
  Procedure.l ckVerifySmtpConnection(obj.i) :  ProcedureReturn MailManVerifySmtpConnection(obj) :  EndProcedure
  Procedure.i ckVerifySmtpConnectionAsync(obj.i) :  ProcedureReturn MailManVerifySmtpConnectionAsync(obj) :  EndProcedure
  Procedure.l ckVerifySmtpLogin(obj.i) :  ProcedureReturn MailManVerifySmtpLogin(obj) :  EndProcedure
  Procedure.i ckVerifySmtpLoginAsync(obj.i) :  ProcedureReturn MailManVerifySmtpLoginAsync(obj) :  EndProcedure
EndModule

