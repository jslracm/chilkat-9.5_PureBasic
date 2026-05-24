DeclareModule CkSshTunnel
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckAcceptLog(obj.i)
  Declare setCkAcceptLog(obj.i, value.s)
  Declare.s ckAcceptLogPath(obj.i)
  Declare setCkAcceptLogPath(obj.i, value.s)
  Declare.l ckConnectTimeoutMs(obj.i)
  Declare setCkConnectTimeoutMs(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDestHostname(obj.i)
  Declare setCkDestHostname(obj.i, value.s)
  Declare.l ckDestPort(obj.i)
  Declare setCkDestPort(obj.i, value.l)
  Declare.l ckDynamicPortForwarding(obj.i)
  Declare setCkDynamicPortForwarding(obj.i, value.l)
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
  Declare.s ckInboundSocksPassword(obj.i)
  Declare setCkInboundSocksPassword(obj.i, value.s)
  Declare.s ckInboundSocksUsername(obj.i)
  Declare setCkInboundSocksUsername(obj.i, value.s)
  Declare.l ckIsAccepting(obj.i)
  Declare.l ckKeepAcceptLog(obj.i)
  Declare setCkKeepAcceptLog(obj.i, value.l)
  Declare.l ckKeepTunnelLog(obj.i)
  Declare setCkKeepTunnelLog(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckListenBindIpAddress(obj.i)
  Declare setCkListenBindIpAddress(obj.i, value.s)
  Declare.l ckListenPort(obj.i)
  Declare.s ckOutboundBindIpAddress(obj.i)
  Declare setCkOutboundBindIpAddress(obj.i, value.s)
  Declare.l ckOutboundBindPort(obj.i)
  Declare setCkOutboundBindPort(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
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
  Declare.l ckTcpNoDelay(obj.i)
  Declare setCkTcpNoDelay(obj.i, value.l)
  Declare.s ckTunnelLog(obj.i)
  Declare setCkTunnelLog(obj.i, value.s)
  Declare.s ckTunnelLogPath(obj.i)
  Declare setCkTunnelLogPath(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
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
  Declare.l ckBeginAccepting(obj.i, listenPort.l)
  Declare.i ckBeginAcceptingAsync(obj.i, listenPort.l)
  Declare.l ckCloseTunnel(obj.i, waitForThreads.l)
  Declare.l ckConnect(obj.i, hostname.s, port.l)
  Declare.i ckConnectAsync(obj.i, hostname.s, port.l)
  Declare.l ckConnectThroughSsh(obj.i, ssh.i, hostname.s, port.l)
  Declare.i ckConnectThroughSshAsync(obj.i, ssh.i, hostname.s, port.l)
  Declare.s ckContinueKeyboardAuth(obj.i, response.s)
  Declare.i ckContinueKeyboardAuthAsync(obj.i, response.s)
  Declare.l ckDisconnectAllClients(obj.i, waitForThreads.l)
  Declare.s ckGetCurrentState(obj.i)
  Declare.l ckIsSshConnected(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckStartKeyboardAuth(obj.i, login.s)
  Declare.i ckStartKeyboardAuthAsync(obj.i, login.s)
  Declare.l ckStopAccepting(obj.i, waitForThread.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkSshTunnel
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMiii(obj.i, arg1.i, arg2.i, arg3.i)
  PrototypeC.i CkSshTunnelCreate()
  PrototypeC CkSshTunnelDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshTunnelLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSshTunnelLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSshTunnelLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshTunnelLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSshTunnelLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SshTunnelCreate.CkSshTunnelCreate = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_CreateW")
  Global SshTunnelDispose.CkSshTunnelDispose = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_DisposeW")
  Global SshTunnelAbortCurrent.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getAbortCurrentW")
  Global SshTunnelPSetAbortCurrent.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putAbortCurrentW")
  Global SshTunnelAcceptLog.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_acceptLogW")
  Global SshTunnelPSetAcceptLog.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putAcceptLogW")
  Global SshTunnelAcceptLogPath.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_acceptLogPathW")
  Global SshTunnelPSetAcceptLogPath.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putAcceptLogPathW")
  Global SshTunnelConnectTimeoutMs.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getConnectTimeoutMsW")
  Global SshTunnelPSetConnectTimeoutMs.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putConnectTimeoutMsW")
  Global SshTunnelDebugLogFilePath.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_debugLogFilePathW")
  Global SshTunnelPSetDebugLogFilePath.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putDebugLogFilePathW")
  Global SshTunnelDestHostname.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_destHostnameW")
  Global SshTunnelPSetDestHostname.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putDestHostnameW")
  Global SshTunnelDestPort.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getDestPortW")
  Global SshTunnelPSetDestPort.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putDestPortW")
  Global SshTunnelDynamicPortForwarding.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getDynamicPortForwardingW")
  Global SshTunnelPSetDynamicPortForwarding.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putDynamicPortForwardingW")
  Global SshTunnelHostKeyFingerprint.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_hostKeyFingerprintW")
  Global SshTunnelHttpProxyAuthMethod.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_httpProxyAuthMethodW")
  Global SshTunnelPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyAuthMethodW")
  Global SshTunnelHttpProxyDomain.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_httpProxyDomainW")
  Global SshTunnelPSetHttpProxyDomain.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyDomainW")
  Global SshTunnelHttpProxyHostname.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_httpProxyHostnameW")
  Global SshTunnelPSetHttpProxyHostname.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyHostnameW")
  Global SshTunnelHttpProxyPassword.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_httpProxyPasswordW")
  Global SshTunnelPSetHttpProxyPassword.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyPasswordW")
  Global SshTunnelHttpProxyPort.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getHttpProxyPortW")
  Global SshTunnelPSetHttpProxyPort.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyPortW")
  Global SshTunnelHttpProxyUsername.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_httpProxyUsernameW")
  Global SshTunnelPSetHttpProxyUsername.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putHttpProxyUsernameW")
  Global SshTunnelIdleTimeoutMs.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getIdleTimeoutMsW")
  Global SshTunnelPSetIdleTimeoutMs.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putIdleTimeoutMsW")
  Global SshTunnelInboundSocksPassword.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_inboundSocksPasswordW")
  Global SshTunnelPSetInboundSocksPassword.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putInboundSocksPasswordW")
  Global SshTunnelInboundSocksUsername.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_inboundSocksUsernameW")
  Global SshTunnelPSetInboundSocksUsername.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putInboundSocksUsernameW")
  Global SshTunnelIsAccepting.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getIsAcceptingW")
  Global SshTunnelKeepAcceptLog.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getKeepAcceptLogW")
  Global SshTunnelPSetKeepAcceptLog.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putKeepAcceptLogW")
  Global SshTunnelKeepTunnelLog.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getKeepTunnelLogW")
  Global SshTunnelPSetKeepTunnelLog.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putKeepTunnelLogW")
  Global SshTunnelLastErrorHtml.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_lastErrorHtmlW")
  Global SshTunnelLastErrorText.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_lastErrorTextW")
  Global SshTunnelLastErrorXml.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_lastErrorXmlW")
  Global SshTunnelLastMethodSuccess.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getLastMethodSuccessW")
  Global SshTunnelPSetLastMethodSuccess.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putLastMethodSuccessW")
  Global SshTunnelListenBindIpAddress.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_listenBindIpAddressW")
  Global SshTunnelPSetListenBindIpAddress.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putListenBindIpAddressW")
  Global SshTunnelListenPort.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getListenPortW")
  Global SshTunnelOutboundBindIpAddress.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_outboundBindIpAddressW")
  Global SshTunnelPSetOutboundBindIpAddress.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putOutboundBindIpAddressW")
  Global SshTunnelOutboundBindPort.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getOutboundBindPortW")
  Global SshTunnelPSetOutboundBindPort.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putOutboundBindPortW")
  Global SshTunnelPreferIpv6.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getPreferIpv6W")
  Global SshTunnelPSetPreferIpv6.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putPreferIpv6W")
  Global SshTunnelSocksHostname.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_socksHostnameW")
  Global SshTunnelPSetSocksHostname.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSocksHostnameW")
  Global SshTunnelSocksPassword.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_socksPasswordW")
  Global SshTunnelPSetSocksPassword.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSocksPasswordW")
  Global SshTunnelSocksPort.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getSocksPortW")
  Global SshTunnelPSetSocksPort.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSocksPortW")
  Global SshTunnelSocksUsername.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_socksUsernameW")
  Global SshTunnelPSetSocksUsername.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSocksUsernameW")
  Global SshTunnelSocksVersion.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getSocksVersionW")
  Global SshTunnelPSetSocksVersion.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSocksVersionW")
  Global SshTunnelSoRcvBuf.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getSoRcvBufW")
  Global SshTunnelPSetSoRcvBuf.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSoRcvBufW")
  Global SshTunnelSoSndBuf.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getSoSndBufW")
  Global SshTunnelPSetSoSndBuf.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putSoSndBufW")
  Global SshTunnelTcpNoDelay.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getTcpNoDelayW")
  Global SshTunnelPSetTcpNoDelay.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putTcpNoDelayW")
  Global SshTunnelTunnelLog.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_tunnelLogW")
  Global SshTunnelPSetTunnelLog.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putTunnelLogW")
  Global SshTunnelTunnelLogPath.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_tunnelLogPathW")
  Global SshTunnelPSetTunnelLogPath.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putTunnelLogPathW")
  Global SshTunnelUncommonOptions.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_uncommonOptionsW")
  Global SshTunnelPSetUncommonOptions.cksPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putUncommonOptionsW")
  Global SshTunnelVerboseLogging.cklPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getVerboseLoggingW")
  Global SshTunnelPSetVerboseLogging.cklPropSet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_putVerboseLoggingW")
  Global SshTunnelVersion.cksPropGet = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_versionW")
  Global SshTunnelAuthenticatePk.cklMsi = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePkW")
  Global SshTunnelAuthenticatePkAsync.ckiMsi = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePkAsyncW")
  Global SshTunnelAuthenticatePw.cklMss = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePwW")
  Global SshTunnelAuthenticatePwAsync.ckiMss = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePwAsyncW")
  Global SshTunnelAuthenticatePwPk.cklMssi = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePwPkW")
  Global SshTunnelAuthenticatePwPkAsync.ckiMssi = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticatePwPkAsyncW")
  Global SshTunnelAuthenticateSecPw.cklMii = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticateSecPwW")
  Global SshTunnelAuthenticateSecPwAsync.ckiMii = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticateSecPwAsyncW")
  Global SshTunnelAuthenticateSecPwPk.cklMiii = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticateSecPwPkW")
  Global SshTunnelAuthenticateSecPwPkAsync.ckiMiii = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_AuthenticateSecPwPkAsyncW")
  Global SshTunnelBeginAccepting.cklMl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_BeginAcceptingW")
  Global SshTunnelBeginAcceptingAsync.ckiMl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_BeginAcceptingAsyncW")
  Global SshTunnelCloseTunnel.cklMl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_CloseTunnelW")
  Global SshTunnelConnect.cklMsl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_ConnectW")
  Global SshTunnelConnectAsync.ckiMsl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_ConnectAsyncW")
  Global SshTunnelConnectThroughSsh.cklMisl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_ConnectThroughSshW")
  Global SshTunnelConnectThroughSshAsync.ckiMisl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_ConnectThroughSshAsyncW")
  Global SshTunnelContinueKeyboardAuth.cklMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_continueKeyboardAuthW")
  Global SshTunnelContinueKeyboardAuthAsync.ckiMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_ContinueKeyboardAuthAsyncW")
  Global SshTunnelDisconnectAllClients.cklMl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_DisconnectAllClientsW")
  Global SshTunnelGetCurrentState.cklM = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_getCurrentStateW")
  Global SshTunnelIsSshConnected.cklM = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_IsSshConnectedW")
  Global SshTunnelLoadTaskCaller.cklMi = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_LoadTaskCallerW")
  Global SshTunnelSaveLastError.cklMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_SaveLastErrorW")
  Global SshTunnelStartKeyboardAuth.cklMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_startKeyboardAuthW")
  Global SshTunnelStartKeyboardAuthAsync.ckiMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_StartKeyboardAuthAsyncW")
  Global SshTunnelStopAccepting.cklMl = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_StopAcceptingW")
  Global SshTunnelUnlockComponent.cklMs = GetFunction(CkSshTunnelLibId,"CkSshTunnelU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SshTunnelCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SshTunnelDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn SshTunnelAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn SshTunnelPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckAcceptLog(obj.i) : ProcedureReturn PeekS(SshTunnelAcceptLog(obj)) : EndProcedure
  Procedure setCkAcceptLog(obj.i, value.s) : ProcedureReturn SshTunnelPSetAcceptLog(obj,value) : EndProcedure
  Procedure.s ckAcceptLogPath(obj.i) : ProcedureReturn PeekS(SshTunnelAcceptLogPath(obj)) : EndProcedure
  Procedure setCkAcceptLogPath(obj.i, value.s) : ProcedureReturn SshTunnelPSetAcceptLogPath(obj,value) : EndProcedure
  Procedure.l ckConnectTimeoutMs(obj.i) : ProcedureReturn SshTunnelConnectTimeoutMs(obj) : EndProcedure
  Procedure setCkConnectTimeoutMs(obj.i, value.l) : ProcedureReturn SshTunnelPSetConnectTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SshTunnelDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SshTunnelPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDestHostname(obj.i) : ProcedureReturn PeekS(SshTunnelDestHostname(obj)) : EndProcedure
  Procedure setCkDestHostname(obj.i, value.s) : ProcedureReturn SshTunnelPSetDestHostname(obj,value) : EndProcedure
  Procedure.l ckDestPort(obj.i) : ProcedureReturn SshTunnelDestPort(obj) : EndProcedure
  Procedure setCkDestPort(obj.i, value.l) : ProcedureReturn SshTunnelPSetDestPort(obj,value) : EndProcedure
  Procedure.l ckDynamicPortForwarding(obj.i) : ProcedureReturn SshTunnelDynamicPortForwarding(obj) : EndProcedure
  Procedure setCkDynamicPortForwarding(obj.i, value.l) : ProcedureReturn SshTunnelPSetDynamicPortForwarding(obj,value) : EndProcedure
  Procedure.s ckHostKeyFingerprint(obj.i) : ProcedureReturn PeekS(SshTunnelHostKeyFingerprint(obj)) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(SshTunnelHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn SshTunnelPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(SshTunnelHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn SshTunnelPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(SshTunnelHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn SshTunnelPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(SshTunnelHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn SshTunnelPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn SshTunnelHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn SshTunnelPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(SshTunnelHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn SshTunnelPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn SshTunnelIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn SshTunnelPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckInboundSocksPassword(obj.i) : ProcedureReturn PeekS(SshTunnelInboundSocksPassword(obj)) : EndProcedure
  Procedure setCkInboundSocksPassword(obj.i, value.s) : ProcedureReturn SshTunnelPSetInboundSocksPassword(obj,value) : EndProcedure
  Procedure.s ckInboundSocksUsername(obj.i) : ProcedureReturn PeekS(SshTunnelInboundSocksUsername(obj)) : EndProcedure
  Procedure setCkInboundSocksUsername(obj.i, value.s) : ProcedureReturn SshTunnelPSetInboundSocksUsername(obj,value) : EndProcedure
  Procedure.l ckIsAccepting(obj.i) : ProcedureReturn SshTunnelIsAccepting(obj) : EndProcedure
  Procedure.l ckKeepAcceptLog(obj.i) : ProcedureReturn SshTunnelKeepAcceptLog(obj) : EndProcedure
  Procedure setCkKeepAcceptLog(obj.i, value.l) : ProcedureReturn SshTunnelPSetKeepAcceptLog(obj,value) : EndProcedure
  Procedure.l ckKeepTunnelLog(obj.i) : ProcedureReturn SshTunnelKeepTunnelLog(obj) : EndProcedure
  Procedure setCkKeepTunnelLog(obj.i, value.l) : ProcedureReturn SshTunnelPSetKeepTunnelLog(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SshTunnelLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SshTunnelLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SshTunnelLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SshTunnelLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SshTunnelPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckListenBindIpAddress(obj.i) : ProcedureReturn PeekS(SshTunnelListenBindIpAddress(obj)) : EndProcedure
  Procedure setCkListenBindIpAddress(obj.i, value.s) : ProcedureReturn SshTunnelPSetListenBindIpAddress(obj,value) : EndProcedure
  Procedure.l ckListenPort(obj.i) : ProcedureReturn SshTunnelListenPort(obj) : EndProcedure
  Procedure.s ckOutboundBindIpAddress(obj.i) : ProcedureReturn PeekS(SshTunnelOutboundBindIpAddress(obj)) : EndProcedure
  Procedure setCkOutboundBindIpAddress(obj.i, value.s) : ProcedureReturn SshTunnelPSetOutboundBindIpAddress(obj,value) : EndProcedure
  Procedure.l ckOutboundBindPort(obj.i) : ProcedureReturn SshTunnelOutboundBindPort(obj) : EndProcedure
  Procedure setCkOutboundBindPort(obj.i, value.l) : ProcedureReturn SshTunnelPSetOutboundBindPort(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn SshTunnelPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn SshTunnelPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(SshTunnelSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn SshTunnelPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(SshTunnelSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn SshTunnelPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn SshTunnelSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn SshTunnelPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(SshTunnelSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn SshTunnelPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn SshTunnelSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn SshTunnelPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn SshTunnelSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn SshTunnelPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn SshTunnelSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn SshTunnelPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckTcpNoDelay(obj.i) : ProcedureReturn SshTunnelTcpNoDelay(obj) : EndProcedure
  Procedure setCkTcpNoDelay(obj.i, value.l) : ProcedureReturn SshTunnelPSetTcpNoDelay(obj,value) : EndProcedure
  Procedure.s ckTunnelLog(obj.i) : ProcedureReturn PeekS(SshTunnelTunnelLog(obj)) : EndProcedure
  Procedure setCkTunnelLog(obj.i, value.s) : ProcedureReturn SshTunnelPSetTunnelLog(obj,value) : EndProcedure
  Procedure.s ckTunnelLogPath(obj.i) : ProcedureReturn PeekS(SshTunnelTunnelLogPath(obj)) : EndProcedure
  Procedure setCkTunnelLogPath(obj.i, value.s) : ProcedureReturn SshTunnelPSetTunnelLogPath(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(SshTunnelUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn SshTunnelPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SshTunnelVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SshTunnelPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SshTunnelVersion(obj)) : EndProcedure
  Procedure.l ckAuthenticatePk(obj.i, username.s, privateKey.i) :  ProcedureReturn SshTunnelAuthenticatePk(obj, username, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePkAsync(obj.i, username.s, privateKey.i) :  ProcedureReturn SshTunnelAuthenticatePkAsync(obj, username, privateKey) :  EndProcedure
  Procedure.l ckAuthenticatePw(obj.i, login.s, password.s) :  ProcedureReturn SshTunnelAuthenticatePw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticatePwAsync(obj.i, login.s, password.s) :  ProcedureReturn SshTunnelAuthenticatePwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticatePwPk(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SshTunnelAuthenticatePwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticatePwPkAsync(obj.i, username.s, password.s, privateKey.i) :  ProcedureReturn SshTunnelAuthenticatePwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure.l ckAuthenticateSecPw(obj.i, login.i, password.i) :  ProcedureReturn SshTunnelAuthenticateSecPw(obj, login, password) :  EndProcedure
  Procedure.i ckAuthenticateSecPwAsync(obj.i, login.i, password.i) :  ProcedureReturn SshTunnelAuthenticateSecPwAsync(obj, login, password) :  EndProcedure
  Procedure.l ckAuthenticateSecPwPk(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SshTunnelAuthenticateSecPwPk(obj, username, password, privateKey) :  EndProcedure
  Procedure.i ckAuthenticateSecPwPkAsync(obj.i, username.i, password.i, privateKey.i) :  ProcedureReturn SshTunnelAuthenticateSecPwPkAsync(obj, username, password, privateKey) :  EndProcedure
  Procedure.l ckBeginAccepting(obj.i, listenPort.l) :  ProcedureReturn SshTunnelBeginAccepting(obj, listenPort) :  EndProcedure
  Procedure.i ckBeginAcceptingAsync(obj.i, listenPort.l) :  ProcedureReturn SshTunnelBeginAcceptingAsync(obj, listenPort) :  EndProcedure
  Procedure.l ckCloseTunnel(obj.i, waitForThreads.l) :  ProcedureReturn SshTunnelCloseTunnel(obj, waitForThreads) :  EndProcedure
  Procedure.l ckConnect(obj.i, hostname.s, port.l) :  ProcedureReturn SshTunnelConnect(obj, hostname, port) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, hostname.s, port.l) :  ProcedureReturn SshTunnelConnectAsync(obj, hostname, port) :  EndProcedure
  Procedure.l ckConnectThroughSsh(obj.i, ssh.i, hostname.s, port.l) :  ProcedureReturn SshTunnelConnectThroughSsh(obj, ssh, hostname, port) :  EndProcedure
  Procedure.i ckConnectThroughSshAsync(obj.i, ssh.i, hostname.s, port.l) :  ProcedureReturn SshTunnelConnectThroughSshAsync(obj, ssh, hostname, port) :  EndProcedure
  Procedure.s ckContinueKeyboardAuth(obj.i, response.s) :  ProcedureReturn PeekS(SshTunnelContinueKeyboardAuth(obj, response)) :  EndProcedure
  Procedure.i ckContinueKeyboardAuthAsync(obj.i, response.s) :  ProcedureReturn SshTunnelContinueKeyboardAuthAsync(obj, response) :  EndProcedure
  Procedure.l ckDisconnectAllClients(obj.i, waitForThreads.l) :  ProcedureReturn SshTunnelDisconnectAllClients(obj, waitForThreads) :  EndProcedure
  Procedure.s ckGetCurrentState(obj.i) :  ProcedureReturn PeekS(SshTunnelGetCurrentState(obj)) :  EndProcedure
  Procedure.l ckIsSshConnected(obj.i) :  ProcedureReturn SshTunnelIsSshConnected(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn SshTunnelLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SshTunnelSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckStartKeyboardAuth(obj.i, login.s) :  ProcedureReturn PeekS(SshTunnelStartKeyboardAuth(obj, login)) :  EndProcedure
  Procedure.i ckStartKeyboardAuthAsync(obj.i, login.s) :  ProcedureReturn SshTunnelStartKeyboardAuthAsync(obj, login) :  EndProcedure
  Procedure.l ckStopAccepting(obj.i, waitForThread.l) :  ProcedureReturn SshTunnelStopAccepting(obj, waitForThread) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn SshTunnelUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

