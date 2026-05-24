DeclareModule CkSsh
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAuthFailReason(obj.i)
  Declare.l ckCaretControl(obj.i)
  Declare setCkCaretControl(obj.i, value.l)
  Declare.l ckChannelOpenFailCode(obj.i)
  Declare.s ckChannelOpenFailReason(obj.i)
  Declare.s ckClientIdentifier(obj.i)
  Declare setCkClientIdentifier(obj.i, value.s)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.l ckClientPort(obj.i)
  Declare setCkClientPort(obj.i, value.l)
  Declare.l ckConnectTimeoutMs(obj.i)
  Declare setCkConnectTimeoutMs(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDisconnectCode(obj.i)
  Declare.s ckDisconnectReason(obj.i)
  Declare.l ckEnableCompression(obj.i)
  Declare setCkEnableCompression(obj.i, value.l)
  Declare.s ckForceCipher(obj.i)
  Declare setCkForceCipher(obj.i, value.s)
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
  Declare.l ckIsConnected(obj.i)
  Declare.l ckKeepSessionLog(obj.i)
  Declare setCkKeepSessionLog(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckMaxPacketSize(obj.i)
  Declare setCkMaxPacketSize(obj.i, value.l)
  Declare.l ckNumOpenChannels(obj.i)
  Declare.l ckPasswordChangeRequested(obj.i)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckReadTimeoutMs(obj.i)
  Declare setCkReadTimeoutMs(obj.i, value.l)
  Declare.s ckReqExecCharset(obj.i)
  Declare setCkReqExecCharset(obj.i, value.s)
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
  Declare.l ckStderrToStdout(obj.i)
  Declare setCkStderrToStdout(obj.i, value.l)
  Declare.l ckStripColorCodes(obj.i)
  Declare setCkStripColorCodes(obj.i, value.l)
  Declare.l ckTcpNoDelay(obj.i)
  Declare setCkTcpNoDelay(obj.i, value.l)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.s ckUserAuthBanner(obj.i)
  Declare setCkUserAuthBanner(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
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
  Declare.l ckChannelIsOpen(obj.i, channelNum.l)
  Declare.l ckChannelPoll(obj.i, channelNum.l, pollTimeoutMs.l)
  Declare.i ckChannelPollAsync(obj.i, channelNum.l, pollTimeoutMs.l)
  Declare.l ckChannelRead(obj.i, channelNum.l)
  Declare.i ckChannelReadAsync(obj.i, channelNum.l)
  Declare.l ckChannelReadAndPoll(obj.i, channelNum.l, pollTimeoutMs.l)
  Declare.i ckChannelReadAndPollAsync(obj.i, channelNum.l, pollTimeoutMs.l)
  Declare.l ckChannelReadAndPoll2(obj.i, channelNum.l, pollTimeoutMs.l, maxNumBytes.l)
  Declare.i ckChannelReadAndPoll2Async(obj.i, channelNum.l, pollTimeoutMs.l, maxNumBytes.l)
  Declare.l ckChannelReceivedClose(obj.i, channelNum.l)
  Declare.l ckChannelReceivedEof(obj.i, channelNum.l)
  Declare.l ckChannelReceivedExitStatus(obj.i, channelNum.l)
  Declare.l ckChannelReceiveToClose(obj.i, channelNum.l)
  Declare.i ckChannelReceiveToCloseAsync(obj.i, channelNum.l)
  Declare.l ckChannelReceiveUntilMatch(obj.i, channelNum.l, matchPattern.s, charset.s, caseSensitive.l)
  Declare.i ckChannelReceiveUntilMatchAsync(obj.i, channelNum.l, matchPattern.s, charset.s, caseSensitive.l)
  Declare.l ckChannelReceiveUntilMatchN(obj.i, channelNum.l, matchPatterns.i, charset.s, caseSensitive.l)
  Declare.i ckChannelReceiveUntilMatchNAsync(obj.i, channelNum.l, matchPatterns.i, charset.s, caseSensitive.l)
  Declare ckChannelRelease(obj.i, channelNum.l)
  Declare.l ckChannelSendClose(obj.i, channelNum.l)
  Declare.i ckChannelSendCloseAsync(obj.i, channelNum.l)
  Declare.l ckChannelSendEof(obj.i, channelNum.l)
  Declare.i ckChannelSendEofAsync(obj.i, channelNum.l)
  Declare.l ckChannelSendString(obj.i, channelNum.l, textData.s, charset.s)
  Declare.i ckChannelSendStringAsync(obj.i, channelNum.l, textData.s, charset.s)
  Declare.l ckCheckConnection(obj.i)
  Declare ckClearTtyModes(obj.i)
  Declare.l ckConnect(obj.i, domainName.s, port.l)
  Declare.i ckConnectAsync(obj.i, domainName.s, port.l)
  Declare.l ckConnectThroughSsh(obj.i, ssh.i, hostname.s, port.l)
  Declare.i ckConnectThroughSshAsync(obj.i, ssh.i, hostname.s, port.l)
  Declare.s ckContinueKeyboardAuth(obj.i, response.s)
  Declare.i ckContinueKeyboardAuthAsync(obj.i, response.s)
  Declare ckDisconnect(obj.i)
  Declare.s ckGetAuthMethods(obj.i)
  Declare.i ckGetAuthMethodsAsync(obj.i)
  Declare.l ckGetChannelExitStatus(obj.i, channelNum.l)
  Declare.l ckGetChannelNumber(obj.i, index.l)
  Declare.s ckGetChannelType(obj.i, index.l)
  Declare.l ckGetReceivedNumBytes(obj.i, channelNum.l)
  Declare.s ckGetReceivedStderrText(obj.i, channelNum.l, charset.s)
  Declare.s ckGetReceivedText(obj.i, channelNum.l, charset.s)
  Declare.s ckGetReceivedTextS(obj.i, channelNum.l, substr.s, charset.s)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckOpenCustomChannel(obj.i, channelType.s)
  Declare.i ckOpenCustomChannelAsync(obj.i, channelType.s)
  Declare.l ckOpenDirectTcpIpChannel(obj.i, targetHostname.s, targetPort.l)
  Declare.i ckOpenDirectTcpIpChannelAsync(obj.i, targetHostname.s, targetPort.l)
  Declare.l ckOpenSessionChannel(obj.i)
  Declare.i ckOpenSessionChannelAsync(obj.i)
  Declare.s ckPeekReceivedText(obj.i, channelNum.l, charset.s)
  Declare.l ckQuickCmdCheck(obj.i, pollTimeoutMs.l)
  Declare.i ckQuickCmdCheckAsync(obj.i, pollTimeoutMs.l)
  Declare.l ckQuickCmdSend(obj.i, command.s)
  Declare.i ckQuickCmdSendAsync(obj.i, command.s)
  Declare.s ckQuickCommand(obj.i, command.s, charset.s)
  Declare.i ckQuickCommandAsync(obj.i, command.s, charset.s)
  Declare.l ckQuickShell(obj.i)
  Declare.i ckQuickShellAsync(obj.i)
  Declare.l ckReKey(obj.i)
  Declare.i ckReKeyAsync(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSendIgnore(obj.i)
  Declare.i ckSendIgnoreAsync(obj.i)
  Declare.l ckSendReqExec(obj.i, channelNum.l, commandLine.s)
  Declare.i ckSendReqExecAsync(obj.i, channelNum.l, commandLine.s)
  Declare.l ckSendReqPty(obj.i, channelNum.l, termType.s, widthInChars.l, heightInChars.l, widthInPixels.l, heightInPixels.l)
  Declare.i ckSendReqPtyAsync(obj.i, channelNum.l, termType.s, widthInChars.l, heightInChars.l, widthInPixels.l, heightInPixels.l)
  Declare.l ckSendReqSetEnv(obj.i, channelNum.l, name.s, value.s)
  Declare.i ckSendReqSetEnvAsync(obj.i, channelNum.l, name.s, value.s)
  Declare.l ckSendReqShell(obj.i, channelNum.l)
  Declare.i ckSendReqShellAsync(obj.i, channelNum.l)
  Declare.l ckSendReqSignal(obj.i, channelNum.l, signalName.s)
  Declare.i ckSendReqSignalAsync(obj.i, channelNum.l, signalName.s)
  Declare.l ckSendReqSubsystem(obj.i, channelNum.l, subsystemName.s)
  Declare.i ckSendReqSubsystemAsync(obj.i, channelNum.l, subsystemName.s)
  Declare.l ckSendReqWindowChange(obj.i, channelNum.l, widthInChars.l, heightInRows.l, pixWidth.l, pixHeight.l)
  Declare.i ckSendReqWindowChangeAsync(obj.i, channelNum.l, widthInChars.l, heightInRows.l, pixWidth.l, pixHeight.l)
  Declare.l ckSendReqX11Forwarding(obj.i, channelNum.l, singleConnection.l, authProt.s, authCookie.s, screenNum.l)
  Declare.i ckSendReqX11ForwardingAsync(obj.i, channelNum.l, singleConnection.l, authProt.s, authCookie.s, screenNum.l)
  Declare.l ckSendReqXonXoff(obj.i, channelNum.l, clientCanDo.l)
  Declare.i ckSendReqXonXoffAsync(obj.i, channelNum.l, clientCanDo.l)
  Declare.l ckSetTtyMode(obj.i, ttyName.s, ttyValue.l)
  Declare.s ckStartKeyboardAuth(obj.i, login.s)
  Declare.i ckStartKeyboardAuthAsync(obj.i, login.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckWaitForChannelMessage(obj.i, pollTimeoutMs.l)
  Declare.i ckWaitForChannelMessageAsync(obj.i, pollTimeoutMs.l)
EndDeclareModule

Module CkSsh
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
  PrototypeC.i ckiMlssl(obj.i, arg1.l, arg2.s, arg3.s, arg4.l)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMlsllll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMlsllll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMll(obj.i, arg1.l, arg2.l)
  PrototypeC.i ckiMlllll(obj.i, arg1.l, arg2.l, arg3.l, arg4.l, arg5.l)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMlisl(obj.i, arg1.l, arg2.i, arg3.s, arg4.l)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMllssl(obj.i, arg1.l, arg2.l, arg3.s, arg4.s, arg5.l)
  PrototypeC.i ckiMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.i ckiMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.l cklMlssl(obj.i, arg1.l, arg2.s, arg3.s, arg4.l)
  PrototypeC.i ckiMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMllssl(obj.i, arg1.l, arg2.l, arg3.s, arg4.s, arg5.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMlllll(obj.i, arg1.l, arg2.l, arg3.l, arg4.l, arg5.l)
  PrototypeC.i ckiMlisl(obj.i, arg1.l, arg2.i, arg3.s, arg4.l)
  PrototypeC.l cklMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkSshCreate()
  PrototypeC CkSshDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSshLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSshLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSshLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SshCreate.CkSshCreate = GetFunction(CkSshLibId,"CkSshU_CreateW")
  Global SshDispose.CkSshDispose = GetFunction(CkSshLibId,"CkSshU_DisposeW")
  Global SshAbortCurrent.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getAbortCurrentW")
  Global SshPSetAbortCurrent.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putAbortCurrentW")
  Global SshAuthFailReason.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getAuthFailReasonW")
  Global SshCaretControl.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getCaretControlW")
  Global SshPSetCaretControl.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putCaretControlW")
  Global SshChannelOpenFailCode.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getChannelOpenFailCodeW")
  Global SshChannelOpenFailReason.cksPropGet = GetFunction(CkSshLibId,"CkSshU_channelOpenFailReasonW")
  Global SshClientIdentifier.cksPropGet = GetFunction(CkSshLibId,"CkSshU_clientIdentifierW")
  Global SshPSetClientIdentifier.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putClientIdentifierW")
  Global SshClientIpAddress.cksPropGet = GetFunction(CkSshLibId,"CkSshU_clientIpAddressW")
  Global SshPSetClientIpAddress.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putClientIpAddressW")
  Global SshClientPort.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getClientPortW")
  Global SshPSetClientPort.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putClientPortW")
  Global SshConnectTimeoutMs.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getConnectTimeoutMsW")
  Global SshPSetConnectTimeoutMs.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putConnectTimeoutMsW")
  Global SshDebugLogFilePath.cksPropGet = GetFunction(CkSshLibId,"CkSshU_debugLogFilePathW")
  Global SshPSetDebugLogFilePath.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putDebugLogFilePathW")
  Global SshDisconnectCode.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getDisconnectCodeW")
  Global SshDisconnectReason.cksPropGet = GetFunction(CkSshLibId,"CkSshU_disconnectReasonW")
  Global SshEnableCompression.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getEnableCompressionW")
  Global SshPSetEnableCompression.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putEnableCompressionW")
  Global SshForceCipher.cksPropGet = GetFunction(CkSshLibId,"CkSshU_forceCipherW")
  Global SshPSetForceCipher.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putForceCipherW")
  Global SshHeartbeatMs.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getHeartbeatMsW")
  Global SshPSetHeartbeatMs.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putHeartbeatMsW")
  Global SshHostKeyAlg.cksPropGet = GetFunction(CkSshLibId,"CkSshU_hostKeyAlgW")
  Global SshPSetHostKeyAlg.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHostKeyAlgW")
  Global SshHostKeyFingerprint.cksPropGet = GetFunction(CkSshLibId,"CkSshU_hostKeyFingerprintW")
  Global SshHttpProxyAuthMethod.cksPropGet = GetFunction(CkSshLibId,"CkSshU_httpProxyAuthMethodW")
  Global SshPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyAuthMethodW")
  Global SshHttpProxyDomain.cksPropGet = GetFunction(CkSshLibId,"CkSshU_httpProxyDomainW")
  Global SshPSetHttpProxyDomain.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyDomainW")
  Global SshHttpProxyHostname.cksPropGet = GetFunction(CkSshLibId,"CkSshU_httpProxyHostnameW")
  Global SshPSetHttpProxyHostname.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyHostnameW")
  Global SshHttpProxyPassword.cksPropGet = GetFunction(CkSshLibId,"CkSshU_httpProxyPasswordW")
  Global SshPSetHttpProxyPassword.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyPasswordW")
  Global SshHttpProxyPort.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getHttpProxyPortW")
  Global SshPSetHttpProxyPort.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyPortW")
  Global SshHttpProxyUsername.cksPropGet = GetFunction(CkSshLibId,"CkSshU_httpProxyUsernameW")
  Global SshPSetHttpProxyUsername.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putHttpProxyUsernameW")
  Global SshIdleTimeoutMs.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getIdleTimeoutMsW")
  Global SshPSetIdleTimeoutMs.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putIdleTimeoutMsW")
  Global SshIsConnected.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getIsConnectedW")
  Global SshKeepSessionLog.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getKeepSessionLogW")
  Global SshPSetKeepSessionLog.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putKeepSessionLogW")
  Global SshLastErrorHtml.cksPropGet = GetFunction(CkSshLibId,"CkSshU_lastErrorHtmlW")
  Global SshLastErrorText.cksPropGet = GetFunction(CkSshLibId,"CkSshU_lastErrorTextW")
  Global SshLastErrorXml.cksPropGet = GetFunction(CkSshLibId,"CkSshU_lastErrorXmlW")
  Global SshLastMethodSuccess.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getLastMethodSuccessW")
  Global SshPSetLastMethodSuccess.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putLastMethodSuccessW")
  Global SshMaxPacketSize.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getMaxPacketSizeW")
  Global SshPSetMaxPacketSize.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putMaxPacketSizeW")
  Global SshNumOpenChannels.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getNumOpenChannelsW")
  Global SshPasswordChangeRequested.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getPasswordChangeRequestedW")
  Global SshPreferIpv6.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getPreferIpv6W")
  Global SshPSetPreferIpv6.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putPreferIpv6W")
  Global SshReadTimeoutMs.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getReadTimeoutMsW")
  Global SshPSetReadTimeoutMs.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putReadTimeoutMsW")
  Global SshReqExecCharset.cksPropGet = GetFunction(CkSshLibId,"CkSshU_reqExecCharsetW")
  Global SshPSetReqExecCharset.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putReqExecCharsetW")
  Global SshServerIdentifier.cksPropGet = GetFunction(CkSshLibId,"CkSshU_serverIdentifierW")
  Global SshSessionLog.cksPropGet = GetFunction(CkSshLibId,"CkSshU_sessionLogW")
  Global SshSocksHostname.cksPropGet = GetFunction(CkSshLibId,"CkSshU_socksHostnameW")
  Global SshPSetSocksHostname.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putSocksHostnameW")
  Global SshSocksPassword.cksPropGet = GetFunction(CkSshLibId,"CkSshU_socksPasswordW")
  Global SshPSetSocksPassword.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putSocksPasswordW")
  Global SshSocksPort.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getSocksPortW")
  Global SshPSetSocksPort.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putSocksPortW")
  Global SshSocksUsername.cksPropGet = GetFunction(CkSshLibId,"CkSshU_socksUsernameW")
  Global SshPSetSocksUsername.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putSocksUsernameW")
  Global SshSocksVersion.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getSocksVersionW")
  Global SshPSetSocksVersion.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putSocksVersionW")
  Global SshSoRcvBuf.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getSoRcvBufW")
  Global SshPSetSoRcvBuf.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putSoRcvBufW")
  Global SshSoSndBuf.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getSoSndBufW")
  Global SshPSetSoSndBuf.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putSoSndBufW")
  Global SshStderrToStdout.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getStderrToStdoutW")
  Global SshPSetStderrToStdout.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putStderrToStdoutW")
  Global SshStripColorCodes.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getStripColorCodesW")
  Global SshPSetStripColorCodes.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putStripColorCodesW")
  Global SshTcpNoDelay.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getTcpNoDelayW")
  Global SshPSetTcpNoDelay.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putTcpNoDelayW")
  Global SshUncommonOptions.cksPropGet = GetFunction(CkSshLibId,"CkSshU_uncommonOptionsW")
  Global SshPSetUncommonOptions.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putUncommonOptionsW")
  Global SshUserAuthBanner.cksPropGet = GetFunction(CkSshLibId,"CkSshU_userAuthBannerW")
  Global SshPSetUserAuthBanner.cksPropSet = GetFunction(CkSshLibId,"CkSshU_putUserAuthBannerW")
  Global SshVerboseLogging.cklPropGet = GetFunction(CkSshLibId,"CkSshU_getVerboseLoggingW")
  Global SshPSetVerboseLogging.cklPropSet = GetFunction(CkSshLibId,"CkSshU_putVerboseLoggingW")
  Global SshVersion.cksPropGet = GetFunction(CkSshLibId,"CkSshU_versionW")
  Global SshAuthenticatePk.cklMsi = GetFunction(CkSshLibId,"CkSshU_AuthenticatePkW")
  Global SshAuthenticatePkAsync.ckiMsi = GetFunction(CkSshLibId,"CkSshU_AuthenticatePkAsyncW")
  Global SshAuthenticatePw.cklMss = GetFunction(CkSshLibId,"CkSshU_AuthenticatePwW")
  Global SshAuthenticatePwAsync.ckiMss = GetFunction(CkSshLibId,"CkSshU_AuthenticatePwAsyncW")
  Global SshAuthenticatePwPk.cklMssi = GetFunction(CkSshLibId,"CkSshU_AuthenticatePwPkW")
  Global SshAuthenticatePwPkAsync.ckiMssi = GetFunction(CkSshLibId,"CkSshU_AuthenticatePwPkAsyncW")
  Global SshAuthenticateSecPw.cklMii = GetFunction(CkSshLibId,"CkSshU_AuthenticateSecPwW")
  Global SshAuthenticateSecPwAsync.ckiMii = GetFunction(CkSshLibId,"CkSshU_AuthenticateSecPwAsyncW")
  Global SshAuthenticateSecPwPk.cklMiii = GetFunction(CkSshLibId,"CkSshU_AuthenticateSecPwPkW")
  Global SshAuthenticateSecPwPkAsync.ckiMiii = GetFunction(CkSshLibId,"CkSshU_AuthenticateSecPwPkAsyncW")
  Global SshChannelIsOpen.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelIsOpenW")
  Global SshChannelPoll.cklMll = GetFunction(CkSshLibId,"CkSshU_ChannelPollW")
  Global SshChannelPollAsync.ckiMll = GetFunction(CkSshLibId,"CkSshU_ChannelPollAsyncW")
  Global SshChannelRead.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelReadW")
  Global SshChannelReadAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_ChannelReadAsyncW")
  Global SshChannelReadAndPoll.cklMll = GetFunction(CkSshLibId,"CkSshU_ChannelReadAndPollW")
  Global SshChannelReadAndPollAsync.ckiMll = GetFunction(CkSshLibId,"CkSshU_ChannelReadAndPollAsyncW")
  Global SshChannelReadAndPoll2.cklMlll = GetFunction(CkSshLibId,"CkSshU_ChannelReadAndPoll2W")
  Global SshChannelReadAndPoll2Async.ckiMlll = GetFunction(CkSshLibId,"CkSshU_ChannelReadAndPoll2AsyncW")
  Global SshChannelReceivedClose.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelReceivedCloseW")
  Global SshChannelReceivedEof.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelReceivedEofW")
  Global SshChannelReceivedExitStatus.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelReceivedExitStatusW")
  Global SshChannelReceiveToClose.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveToCloseW")
  Global SshChannelReceiveToCloseAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveToCloseAsyncW")
  Global SshChannelReceiveUntilMatch.cklMlssl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveUntilMatchW")
  Global SshChannelReceiveUntilMatchAsync.ckiMlssl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveUntilMatchAsyncW")
  Global SshChannelReceiveUntilMatchN.cklMlisl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveUntilMatchNW")
  Global SshChannelReceiveUntilMatchNAsync.ckiMlisl = GetFunction(CkSshLibId,"CkSshU_ChannelReceiveUntilMatchNAsyncW")
  Global SshChannelRelease.ckvMl = GetFunction(CkSshLibId,"CkSshU_ChannelReleaseW")
  Global SshChannelSendClose.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelSendCloseW")
  Global SshChannelSendCloseAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_ChannelSendCloseAsyncW")
  Global SshChannelSendEof.cklMl = GetFunction(CkSshLibId,"CkSshU_ChannelSendEofW")
  Global SshChannelSendEofAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_ChannelSendEofAsyncW")
  Global SshChannelSendString.cklMlss = GetFunction(CkSshLibId,"CkSshU_ChannelSendStringW")
  Global SshChannelSendStringAsync.ckiMlss = GetFunction(CkSshLibId,"CkSshU_ChannelSendStringAsyncW")
  Global SshCheckConnection.cklM = GetFunction(CkSshLibId,"CkSshU_CheckConnectionW")
  Global SshClearTtyModes.ckvM = GetFunction(CkSshLibId,"CkSshU_ClearTtyModesW")
  Global SshConnect.cklMsl = GetFunction(CkSshLibId,"CkSshU_ConnectW")
  Global SshConnectAsync.ckiMsl = GetFunction(CkSshLibId,"CkSshU_ConnectAsyncW")
  Global SshConnectThroughSsh.cklMisl = GetFunction(CkSshLibId,"CkSshU_ConnectThroughSshW")
  Global SshConnectThroughSshAsync.ckiMisl = GetFunction(CkSshLibId,"CkSshU_ConnectThroughSshAsyncW")
  Global SshContinueKeyboardAuth.cklMs = GetFunction(CkSshLibId,"CkSshU_continueKeyboardAuthW")
  Global SshContinueKeyboardAuthAsync.ckiMs = GetFunction(CkSshLibId,"CkSshU_ContinueKeyboardAuthAsyncW")
  Global SshDisconnect.ckvM = GetFunction(CkSshLibId,"CkSshU_DisconnectW")
  Global SshGetAuthMethods.cklM = GetFunction(CkSshLibId,"CkSshU_getAuthMethodsW")
  Global SshGetAuthMethodsAsync.ckiM = GetFunction(CkSshLibId,"CkSshU_GetAuthMethodsAsyncW")
  Global SshGetChannelExitStatus.cklMl = GetFunction(CkSshLibId,"CkSshU_GetChannelExitStatusW")
  Global SshGetChannelNumber.cklMl = GetFunction(CkSshLibId,"CkSshU_GetChannelNumberW")
  Global SshGetChannelType.cklMl = GetFunction(CkSshLibId,"CkSshU_getChannelTypeW")
  Global SshGetReceivedNumBytes.cklMl = GetFunction(CkSshLibId,"CkSshU_GetReceivedNumBytesW")
  Global SshGetReceivedStderrText.cklMls = GetFunction(CkSshLibId,"CkSshU_getReceivedStderrTextW")
  Global SshGetReceivedText.cklMls = GetFunction(CkSshLibId,"CkSshU_getReceivedTextW")
  Global SshGetReceivedTextS.cklMlss = GetFunction(CkSshLibId,"CkSshU_getReceivedTextSW")
  Global SshLastJsonData.ckiM = GetFunction(CkSshLibId,"CkSshU_LastJsonDataW")
  Global SshLoadTaskCaller.cklMi = GetFunction(CkSshLibId,"CkSshU_LoadTaskCallerW")
  Global SshOpenCustomChannel.cklMs = GetFunction(CkSshLibId,"CkSshU_OpenCustomChannelW")
  Global SshOpenCustomChannelAsync.ckiMs = GetFunction(CkSshLibId,"CkSshU_OpenCustomChannelAsyncW")
  Global SshOpenDirectTcpIpChannel.cklMsl = GetFunction(CkSshLibId,"CkSshU_OpenDirectTcpIpChannelW")
  Global SshOpenDirectTcpIpChannelAsync.ckiMsl = GetFunction(CkSshLibId,"CkSshU_OpenDirectTcpIpChannelAsyncW")
  Global SshOpenSessionChannel.cklM = GetFunction(CkSshLibId,"CkSshU_OpenSessionChannelW")
  Global SshOpenSessionChannelAsync.ckiM = GetFunction(CkSshLibId,"CkSshU_OpenSessionChannelAsyncW")
  Global SshPeekReceivedText.cklMls = GetFunction(CkSshLibId,"CkSshU_peekReceivedTextW")
  Global SshQuickCmdCheck.cklMl = GetFunction(CkSshLibId,"CkSshU_QuickCmdCheckW")
  Global SshQuickCmdCheckAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_QuickCmdCheckAsyncW")
  Global SshQuickCmdSend.cklMs = GetFunction(CkSshLibId,"CkSshU_QuickCmdSendW")
  Global SshQuickCmdSendAsync.ckiMs = GetFunction(CkSshLibId,"CkSshU_QuickCmdSendAsyncW")
  Global SshQuickCommand.cklMss = GetFunction(CkSshLibId,"CkSshU_quickCommandW")
  Global SshQuickCommandAsync.ckiMss = GetFunction(CkSshLibId,"CkSshU_QuickCommandAsyncW")
  Global SshQuickShell.cklM = GetFunction(CkSshLibId,"CkSshU_QuickShellW")
  Global SshQuickShellAsync.ckiM = GetFunction(CkSshLibId,"CkSshU_QuickShellAsyncW")
  Global SshReKey.cklM = GetFunction(CkSshLibId,"CkSshU_ReKeyW")
  Global SshReKeyAsync.ckiM = GetFunction(CkSshLibId,"CkSshU_ReKeyAsyncW")
  Global SshSaveLastError.cklMs = GetFunction(CkSshLibId,"CkSshU_SaveLastErrorW")
  Global SshSendIgnore.cklM = GetFunction(CkSshLibId,"CkSshU_SendIgnoreW")
  Global SshSendIgnoreAsync.ckiM = GetFunction(CkSshLibId,"CkSshU_SendIgnoreAsyncW")
  Global SshSendReqExec.cklMls = GetFunction(CkSshLibId,"CkSshU_SendReqExecW")
  Global SshSendReqExecAsync.ckiMls = GetFunction(CkSshLibId,"CkSshU_SendReqExecAsyncW")
  Global SshSendReqPty.cklMlsllll = GetFunction(CkSshLibId,"CkSshU_SendReqPtyW")
  Global SshSendReqPtyAsync.ckiMlsllll = GetFunction(CkSshLibId,"CkSshU_SendReqPtyAsyncW")
  Global SshSendReqSetEnv.cklMlss = GetFunction(CkSshLibId,"CkSshU_SendReqSetEnvW")
  Global SshSendReqSetEnvAsync.ckiMlss = GetFunction(CkSshLibId,"CkSshU_SendReqSetEnvAsyncW")
  Global SshSendReqShell.cklMl = GetFunction(CkSshLibId,"CkSshU_SendReqShellW")
  Global SshSendReqShellAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_SendReqShellAsyncW")
  Global SshSendReqSignal.cklMls = GetFunction(CkSshLibId,"CkSshU_SendReqSignalW")
  Global SshSendReqSignalAsync.ckiMls = GetFunction(CkSshLibId,"CkSshU_SendReqSignalAsyncW")
  Global SshSendReqSubsystem.cklMls = GetFunction(CkSshLibId,"CkSshU_SendReqSubsystemW")
  Global SshSendReqSubsystemAsync.ckiMls = GetFunction(CkSshLibId,"CkSshU_SendReqSubsystemAsyncW")
  Global SshSendReqWindowChange.cklMlllll = GetFunction(CkSshLibId,"CkSshU_SendReqWindowChangeW")
  Global SshSendReqWindowChangeAsync.ckiMlllll = GetFunction(CkSshLibId,"CkSshU_SendReqWindowChangeAsyncW")
  Global SshSendReqX11Forwarding.cklMllssl = GetFunction(CkSshLibId,"CkSshU_SendReqX11ForwardingW")
  Global SshSendReqX11ForwardingAsync.ckiMllssl = GetFunction(CkSshLibId,"CkSshU_SendReqX11ForwardingAsyncW")
  Global SshSendReqXonXoff.cklMll = GetFunction(CkSshLibId,"CkSshU_SendReqXonXoffW")
  Global SshSendReqXonXoffAsync.ckiMll = GetFunction(CkSshLibId,"CkSshU_SendReqXonXoffAsyncW")
  Global SshSetTtyMode.cklMsl = GetFunction(CkSshLibId,"CkSshU_SetTtyModeW")
  Global SshStartKeyboardAuth.cklMs = GetFunction(CkSshLibId,"CkSshU_startKeyboardAuthW")
  Global SshStartKeyboardAuthAsync.ckiMs = GetFunction(CkSshLibId,"CkSshU_StartKeyboardAuthAsyncW")
  Global SshUnlockComponent.cklMs = GetFunction(CkSshLibId,"CkSshU_UnlockComponentW")
  Global SshWaitForChannelMessage.cklMl = GetFunction(CkSshLibId,"CkSshU_WaitForChannelMessageW")
  Global SshWaitForChannelMessageAsync.ckiMl = GetFunction(CkSshLibId,"CkSshU_WaitForChannelMessageAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SshCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SshDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn SshAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn SshPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAuthFailReason(obj.i) : ProcedureReturn SshAuthFailReason(obj) : EndProcedure
  Procedure.l ckCaretControl(obj.i) : ProcedureReturn SshCaretControl(obj) : EndProcedure
  Procedure setCkCaretControl(obj.i, value.l) : ProcedureReturn SshPSetCaretControl(obj,value) : EndProcedure
  Procedure.l ckChannelOpenFailCode(obj.i) : ProcedureReturn SshChannelOpenFailCode(obj) : EndProcedure
  Procedure.s ckChannelOpenFailReason(obj.i) : ProcedureReturn PeekS(SshChannelOpenFailReason(obj)) : EndProcedure
  Procedure.s ckClientIdentifier(obj.i) : ProcedureReturn PeekS(SshClientIdentifier(obj)) : EndProcedure
  Procedure setCkClientIdentifier(obj.i, value.s) : ProcedureReturn SshPSetClientIdentifier(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(SshClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn SshPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.l ckClientPort(obj.i) : ProcedureReturn SshClientPort(obj) : EndProcedure
  Procedure setCkClientPort(obj.i, value.l) : ProcedureReturn SshPSetClientPort(obj,value) : EndProcedure
  Procedure.l ckConnectTimeoutMs(obj.i) : ProcedureReturn SshConnectTimeoutMs(obj) : EndProcedure
  Procedure setCkConnectTimeoutMs(obj.i, value.l) : ProcedureReturn SshPSetConnectTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SshDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SshPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDisconnectCode(obj.i) : ProcedureReturn SshDisconnectCode(obj) : EndProcedure
  Procedure.s ckDisconnectReason(obj.i) : ProcedureReturn PeekS(SshDisconnectReason(obj)) : EndProcedure
  Procedure.l ckEnableCompression(obj.i) : ProcedureReturn SshEnableCompression(obj) : EndProcedure
  Procedure setCkEnableCompression(obj.i, value.l) : ProcedureReturn SshPSetEnableCompression(obj,value) : EndProcedure
  Procedure.s ckForceCipher(obj.i) : ProcedureReturn PeekS(SshForceCipher(obj)) : EndProcedure
  Procedure setCkForceCipher(obj.i, value.s) : ProcedureReturn SshPSetForceCipher(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn SshHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn SshPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHostKeyAlg(obj.i) : ProcedureReturn PeekS(SshHostKeyAlg(obj)) : EndProcedure
  Procedure setCkHostKeyAlg(obj.i, value.s) : ProcedureReturn SshPSetHostKeyAlg(obj,value) : EndProcedure
  Procedure.s ckHostKeyFingerprint(obj.i) : ProcedureReturn PeekS(SshHostKeyFingerprint(obj)) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(SshHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn SshPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(SshHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn SshPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(SshHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn SshPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(SshHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn SshPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn SshHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn SshPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(SshHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn SshPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn SshIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn SshPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.l ckIsConnected(obj.i) : ProcedureReturn SshIsConnected(obj) : EndProcedure
  Procedure.l ckKeepSessionLog(obj.i) : ProcedureReturn SshKeepSessionLog(obj) : EndProcedure
  Procedure setCkKeepSessionLog(obj.i, value.l) : ProcedureReturn SshPSetKeepSessionLog(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SshLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SshLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SshLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SshLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SshPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMaxPacketSize(obj.i) : ProcedureReturn SshMaxPacketSize(obj) : EndProcedure
  Procedure setCkMaxPacketSize(obj.i, value.l) : ProcedureReturn SshPSetMaxPacketSize(obj,value) : EndProcedure
  Procedure.l ckNumOpenChannels(obj.i) : ProcedureReturn SshNumOpenChannels(obj) : EndProcedure
  Procedure.l ckPasswordChangeRequested(obj.i) : ProcedureReturn SshPasswordChangeRequested(obj) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn SshPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn SshPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckReadTimeoutMs(obj.i) : ProcedureReturn SshReadTimeoutMs(obj) : EndProcedure
  Procedure setCkReadTimeoutMs(obj.i, value.l) : ProcedureReturn SshPSetReadTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckReqExecCharset(obj.i) : ProcedureReturn PeekS(SshReqExecCharset(obj)) : EndProcedure
  Procedure setCkReqExecCharset(obj.i, value.s) : ProcedureReturn SshPSetReqExecCharset(obj,value) : EndProcedure
  Procedure.s ckServerIdentifier(obj.i) : ProcedureReturn PeekS(SshServerIdentifier(obj)) : EndProcedure
  Procedure.s ckSessionLog(obj.i) : ProcedureReturn PeekS(SshSessionLog(obj)) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(SshSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn SshPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(SshSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn SshPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn SshSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn SshPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(SshSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn SshPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn SshSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn SshPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn SshSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn SshPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn SshSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn SshPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckStderrToStdout(obj.i) : ProcedureReturn SshStderrToStdout(obj) : EndProcedure
  Procedure setCkStderrToStdout(obj.i, value.l) : ProcedureReturn SshPSetStderrToStdout(obj,value) : EndProcedure
  Procedure.l ckStripColorCodes(obj.i) : ProcedureReturn SshStripColorCodes(obj) : EndProcedure
  Procedure setCkStripColorCodes(obj.i, value.l) : ProcedureReturn SshPSetStripColorCodes(obj,value) : EndProcedure
  Procedure.l ckTcpNoDelay(obj.i) : ProcedureReturn SshTcpNoDelay(obj) : EndProcedure
  Procedure setCkTcpNoDelay(obj.i, value.l) : ProcedureReturn SshPSetTcpNoDelay(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(SshUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn SshPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.s ckUserAuthBanner(obj.i) : ProcedureReturn PeekS(SshUserAuthBanner(obj)) : EndProcedure
  Procedure setCkUserAuthBanner(obj.i, value.s) : ProcedureReturn SshPSetUserAuthBanner(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SshVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SshPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SshVersion(obj)) : EndProcedure
  Procedure.l ckAuthenticatePk(obj.i, username.s, privateKey.i) :  ProcedureReturn SshAuthenticatePk(obj, username, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePkAsync(obj.i, username.s, privateKey.i) :  ProcedureReturn SshAuthenticatePkAsync(obj, username, privateKey) :  EndProcedure
  Procedure.l ckAuthenticatePw(obj.i, login.s, password.s) :  ProcedureReturn SshAuthenticatePw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticatePwAsync(obj.i, login.s, password.s) :  ProcedureReturn SshAuthenticatePwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticatePwPk(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SshAuthenticatePwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePwPkAsync(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SshAuthenticatePwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure.l ckAuthenticateSecPw(obj.i, login.i, password.i) :  ProcedureReturn SshAuthenticateSecPw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticateSecPwAsync(obj.i, login.i, password.i) :  ProcedureReturn SshAuthenticateSecPwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticateSecPwPk(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SshAuthenticateSecPwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticateSecPwPkAsync(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SshAuthenticateSecPwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure.l ckChannelIsOpen(obj.i, channelNum.l) :  ProcedureReturn SshChannelIsOpen(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelPoll(obj.i, channelNum.l, pollTimeoutMs.l) :  ProcedureReturn SshChannelPoll(obj, channelNum, pollTimeoutMs) :  EndProcedure
  Procedure.i ckChannelPollAsync(obj.i, channelNum.l, pollTimeoutMs.l) :  ProcedureReturn SshChannelPollAsync(obj, channelNum, pollTimeoutMs) :  EndProcedure
  Procedure.l ckChannelRead(obj.i, channelNum.l) :  ProcedureReturn SshChannelRead(obj, channelNum) :  EndProcedure
  Procedure.i ckChannelReadAsync(obj.i, channelNum.l) :  ProcedureReturn SshChannelReadAsync(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelReadAndPoll(obj.i, channelNum.l, pollTimeoutMs.l) :  ProcedureReturn SshChannelReadAndPoll(obj, channelNum, pollTimeoutMs) :  EndProcedure
  Procedure.i ckChannelReadAndPollAsync(obj.i, channelNum.l, pollTimeoutMs.l) :  ProcedureReturn SshChannelReadAndPollAsync(obj, channelNum, pollTimeoutMs) :  EndProcedure
  Procedure.l ckChannelReadAndPoll2(obj.i, channelNum.l, pollTimeoutMs.l, maxNumBytes.l) :  ProcedureReturn SshChannelReadAndPoll2(obj, channelNum, pollTimeoutMs, maxNumBytes) :  EndProcedure
  Procedure.i ckChannelReadAndPoll2Async(obj.i, channelNum.l, pollTimeoutMs.l, maxNumBytes.l) :  ProcedureReturn SshChannelReadAndPoll2Async(obj, channelNum, pollTimeoutMs, maxNumBytes) :  EndProcedure
  Procedure.l ckChannelReceivedClose(obj.i, channelNum.l) :  ProcedureReturn SshChannelReceivedClose(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelReceivedEof(obj.i, channelNum.l) :  ProcedureReturn SshChannelReceivedEof(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelReceivedExitStatus(obj.i, channelNum.l) :  ProcedureReturn SshChannelReceivedExitStatus(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelReceiveToClose(obj.i, channelNum.l) :  ProcedureReturn SshChannelReceiveToClose(obj, channelNum) :  EndProcedure
  Procedure.i ckChannelReceiveToCloseAsync(obj.i, channelNum.l) :  ProcedureReturn SshChannelReceiveToCloseAsync(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelReceiveUntilMatch(obj.i, channelNum.l, matchPattern.s, charset.s, caseSensitive.l) :  ProcedureReturn SshChannelReceiveUntilMatch(obj, channelNum, matchPattern, charset, caseSensitive) :  EndProcedure
  Procedure.i ckChannelReceiveUntilMatchAsync(obj.i, channelNum.l, matchPattern.s, charset.s, caseSensitive.l) :  ProcedureReturn SshChannelReceiveUntilMatchAsync(obj, channelNum, matchPattern, charset, caseSensitive) :  EndProcedure
  Procedure.l ckChannelReceiveUntilMatchN(obj.i, channelNum.l, matchPatterns.i, charset.s, caseSensitive.l) :  ProcedureReturn SshChannelReceiveUntilMatchN(obj, channelNum, matchPatterns, charset, caseSensitive) :  EndProcedure
  Procedure.i ckChannelReceiveUntilMatchNAsync(obj.i, channelNum.l, matchPatterns.i, charset.s, caseSensitive.l) :  ProcedureReturn SshChannelReceiveUntilMatchNAsync(obj, channelNum, matchPatterns, charset, caseSensitive) :  EndProcedure
  Procedure ckChannelRelease(obj.i, channelNum.l) :  ProcedureReturn SshChannelRelease(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelSendClose(obj.i, channelNum.l) :  ProcedureReturn SshChannelSendClose(obj, channelNum) :  EndProcedure
  Procedure.i ckChannelSendCloseAsync(obj.i, channelNum.l) :  ProcedureReturn SshChannelSendCloseAsync(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelSendEof(obj.i, channelNum.l) :  ProcedureReturn SshChannelSendEof(obj, channelNum) :  EndProcedure
  Procedure.i ckChannelSendEofAsync(obj.i, channelNum.l) :  ProcedureReturn SshChannelSendEofAsync(obj, channelNum) :  EndProcedure
  Procedure.l ckChannelSendString(obj.i, channelNum.l, textData.s, charset.s) :  ProcedureReturn SshChannelSendString(obj, channelNum, textData, charset) :  EndProcedure
  Procedure.i ckChannelSendStringAsync(obj.i, channelNum.l, textData.s, charset.s) :  ProcedureReturn SshChannelSendStringAsync(obj, channelNum, textData, charset) :  EndProcedure
  Procedure.l ckCheckConnection(obj.i) :  ProcedureReturn SshCheckConnection(obj) :  EndProcedure
  Procedure ckClearTtyModes(obj.i) :  ProcedureReturn SshClearTtyModes(obj) :  EndProcedure
  Procedure.l ckConnect(obj.i, domainName.s, port.l) :  ProcedureReturn SshConnect(obj, domainName, port) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, domainName.s, port.l) :  ProcedureReturn SshConnectAsync(obj, domainName, port) :  EndProcedure
  Procedure.l ckConnectThroughSsh(obj.i, ssh.i, hostname.s, port.l) :  ProcedureReturn SshConnectThroughSsh(obj, ssh, hostname, port) :  EndProcedure
  Procedure.i ckConnectThroughSshAsync(obj.i, ssh.i, hostname.s, port.l) :  ProcedureReturn SshConnectThroughSshAsync(obj, ssh, hostname, port) :  EndProcedure
  Procedure.s ckContinueKeyboardAuth(obj.i, response.s) :  ProcedureReturn PeekS(SshContinueKeyboardAuth(obj, response)) :  EndProcedure
  Procedure.i ckContinueKeyboardAuthAsync(obj.i, response.s) :  ProcedureReturn SshContinueKeyboardAuthAsync(obj, response) :  EndProcedure
  Procedure ckDisconnect(obj.i) :  ProcedureReturn SshDisconnect(obj) :  EndProcedure
  Procedure.s ckGetAuthMethods(obj.i) :  ProcedureReturn PeekS(SshGetAuthMethods(obj)) :  EndProcedure
  Procedure.i ckGetAuthMethodsAsync(obj.i) :  ProcedureReturn SshGetAuthMethodsAsync(obj) :  EndProcedure
  Procedure.l ckGetChannelExitStatus(obj.i, channelNum.l) :  ProcedureReturn SshGetChannelExitStatus(obj, channelNum) :  EndProcedure
  Procedure.l ckGetChannelNumber(obj.i, index.l) :  ProcedureReturn SshGetChannelNumber(obj, index) :  EndProcedure
  Procedure.s ckGetChannelType(obj.i, index.l) :  ProcedureReturn PeekS(SshGetChannelType(obj, index)) :  EndProcedure
  Procedure.l ckGetReceivedNumBytes(obj.i, channelNum.l) :  ProcedureReturn SshGetReceivedNumBytes(obj, channelNum) :  EndProcedure
  Procedure.s ckGetReceivedStderrText(obj.i, channelNum.l, charset.s) :  ProcedureReturn PeekS(SshGetReceivedStderrText(obj, channelNum, charset)) :  EndProcedure
  Procedure.s ckGetReceivedText(obj.i, channelNum.l, charset.s) :  ProcedureReturn PeekS(SshGetReceivedText(obj, channelNum, charset)) :  EndProcedure
  Procedure.s ckGetReceivedTextS(obj.i, channelNum.l, substr.s, charset.s) :  ProcedureReturn PeekS(SshGetReceivedTextS(obj, channelNum, substr, charset)) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn SshLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn SshLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckOpenCustomChannel(obj.i, channelType.s) :  ProcedureReturn SshOpenCustomChannel(obj, channelType) :  EndProcedure
  Procedure.i ckOpenCustomChannelAsync(obj.i, channelType.s) :  ProcedureReturn SshOpenCustomChannelAsync(obj, channelType) :  EndProcedure
  Procedure.l ckOpenDirectTcpIpChannel(obj.i, targetHostname.s, targetPort.l) :  ProcedureReturn SshOpenDirectTcpIpChannel(obj, targetHostname, targetPort) :  EndProcedure
  Procedure.i ckOpenDirectTcpIpChannelAsync(obj.i, targetHostname.s, targetPort.l) :  ProcedureReturn SshOpenDirectTcpIpChannelAsync(obj, targetHostname, targetPort) :  EndProcedure
  Procedure.l ckOpenSessionChannel(obj.i) :  ProcedureReturn SshOpenSessionChannel(obj) :  EndProcedure
  Procedure.i ckOpenSessionChannelAsync(obj.i) :  ProcedureReturn SshOpenSessionChannelAsync(obj) :  EndProcedure
  Procedure.s ckPeekReceivedText(obj.i, channelNum.l, charset.s) :  ProcedureReturn PeekS(SshPeekReceivedText(obj, channelNum, charset)) :  EndProcedure
  Procedure.l ckQuickCmdCheck(obj.i, pollTimeoutMs.l) :  ProcedureReturn SshQuickCmdCheck(obj, pollTimeoutMs) :  EndProcedure
  Procedure.i ckQuickCmdCheckAsync(obj.i, pollTimeoutMs.l) :  ProcedureReturn SshQuickCmdCheckAsync(obj, pollTimeoutMs) :  EndProcedure
  Procedure.l ckQuickCmdSend(obj.i, command.s) :  ProcedureReturn SshQuickCmdSend(obj, command) :  EndProcedure
  Procedure.i ckQuickCmdSendAsync(obj.i, command.s) :  ProcedureReturn SshQuickCmdSendAsync(obj, command) :  EndProcedure
  Procedure.s ckQuickCommand(obj.i, command.s, charset.s) :  ProcedureReturn PeekS(SshQuickCommand(obj, command, charset)) :  EndProcedure
  Procedure.i ckQuickCommandAsync(obj.i, command.s, charset.s) :  ProcedureReturn SshQuickCommandAsync(obj, command, charset) :  EndProcedure
  Procedure.l ckQuickShell(obj.i) :  ProcedureReturn SshQuickShell(obj) :  EndProcedure
  Procedure.i ckQuickShellAsync(obj.i) :  ProcedureReturn SshQuickShellAsync(obj) :  EndProcedure
  Procedure.l ckReKey(obj.i) :  ProcedureReturn SshReKey(obj) :  EndProcedure
  Procedure.i ckReKeyAsync(obj.i) :  ProcedureReturn SshReKeyAsync(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SshSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSendIgnore(obj.i) :  ProcedureReturn SshSendIgnore(obj) :  EndProcedure
  Procedure.i ckSendIgnoreAsync(obj.i) :  ProcedureReturn SshSendIgnoreAsync(obj) :  EndProcedure
  Procedure.l ckSendReqExec(obj.i, channelNum.l, commandLine.s) :  ProcedureReturn SshSendReqExec(obj, channelNum, commandLine) :  EndProcedure
  Procedure.i ckSendReqExecAsync(obj.i, channelNum.l, commandLine.s) :  ProcedureReturn SshSendReqExecAsync(obj, channelNum, commandLine) :  EndProcedure
  Procedure.l ckSendReqPty(obj.i, channelNum.l, termType.s, widthInChars.l, heightInChars.l, widthInPixels.l, heightInPixels.l) :  ProcedureReturn SshSendReqPty(obj, channelNum, termType, widthInChars, heightInChars, widthInPixels, heightInPixels) :  EndProcedure
  Procedure.i ckSendReqPtyAsync(obj.i, channelNum.l, termType.s, widthInChars.l, heightInChars.l, widthInPixels.l, heightInPixels.l) :  ProcedureReturn SshSendReqPtyAsync(obj, channelNum, termType, widthInChars, heightInChars, widthInPixels, heightInPixels) :  EndProcedure
  Procedure.l ckSendReqSetEnv(obj.i, channelNum.l, name.s, value.s) :  ProcedureReturn SshSendReqSetEnv(obj, channelNum, name, value) :  EndProcedure
  Procedure.i ckSendReqSetEnvAsync(obj.i, channelNum.l, name.s, value.s) :  ProcedureReturn SshSendReqSetEnvAsync(obj, channelNum, name, value) :  EndProcedure
  Procedure.l ckSendReqShell(obj.i, channelNum.l) :  ProcedureReturn SshSendReqShell(obj, channelNum) :  EndProcedure
  Procedure.i ckSendReqShellAsync(obj.i, channelNum.l) :  ProcedureReturn SshSendReqShellAsync(obj, channelNum) :  EndProcedure
  Procedure.l ckSendReqSignal(obj.i, channelNum.l, signalName.s) :  ProcedureReturn SshSendReqSignal(obj, channelNum, signalName) :  EndProcedure
  Procedure.i ckSendReqSignalAsync(obj.i, channelNum.l, signalName.s) :  ProcedureReturn SshSendReqSignalAsync(obj, channelNum, signalName) :  EndProcedure
  Procedure.l ckSendReqSubsystem(obj.i, channelNum.l, subsystemName.s) :  ProcedureReturn SshSendReqSubsystem(obj, channelNum, subsystemName) :  EndProcedure
  Procedure.i ckSendReqSubsystemAsync(obj.i, channelNum.l, subsystemName.s) :  ProcedureReturn SshSendReqSubsystemAsync(obj, channelNum, subsystemName) :  EndProcedure
  Procedure.l ckSendReqWindowChange(obj.i, channelNum.l, widthInChars.l, heightInRows.l, pixWidth.l, pixHeight.l) :  ProcedureReturn SshSendReqWindowChange(obj, channelNum, widthInChars, heightInRows, pixWidth, pixHeight) :  EndProcedure
  Procedure.i ckSendReqWindowChangeAsync(obj.i, channelNum.l, widthInChars.l, heightInRows.l, pixWidth.l, pixHeight.l) :  ProcedureReturn SshSendReqWindowChangeAsync(obj, channelNum, widthInChars, heightInRows, pixWidth, pixHeight) :  EndProcedure
  Procedure.l ckSendReqX11Forwarding(obj.i, channelNum.l, singleConnection.l, authProt.s, authCookie.s, screenNum.l) :  ProcedureReturn SshSendReqX11Forwarding(obj, channelNum, singleConnection, authProt, authCookie, screenNum) :  EndProcedure
  Procedure.i ckSendReqX11ForwardingAsync(obj.i, channelNum.l, singleConnection.l, authProt.s, authCookie.s, screenNum.l) :  ProcedureReturn SshSendReqX11ForwardingAsync(obj, channelNum, singleConnection, authProt, authCookie, screenNum) :  EndProcedure
  Procedure.l ckSendReqXonXoff(obj.i, channelNum.l, clientCanDo.l) :  ProcedureReturn SshSendReqXonXoff(obj, channelNum, clientCanDo) :  EndProcedure
  Procedure.i ckSendReqXonXoffAsync(obj.i, channelNum.l, clientCanDo.l) :  ProcedureReturn SshSendReqXonXoffAsync(obj, channelNum, clientCanDo) :  EndProcedure
  Procedure.l ckSetTtyMode(obj.i, ttyName.s, ttyValue.l) :  ProcedureReturn SshSetTtyMode(obj, ttyName, ttyValue) :  EndProcedure
  Procedure.s ckStartKeyboardAuth(obj.i, login.s) :  ProcedureReturn PeekS(SshStartKeyboardAuth(obj, login)) :  EndProcedure
  Procedure.i ckStartKeyboardAuthAsync(obj.i, login.s) :  ProcedureReturn SshStartKeyboardAuthAsync(obj, login) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn SshUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckWaitForChannelMessage(obj.i, pollTimeoutMs.l) :  ProcedureReturn SshWaitForChannelMessage(obj, pollTimeoutMs) :  EndProcedure
  Procedure.i ckWaitForChannelMessageAsync(obj.i, pollTimeoutMs.l) :  ProcedureReturn SshWaitForChannelMessageAsync(obj, pollTimeoutMs) :  EndProcedure
EndModule

