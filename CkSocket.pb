DeclareModule CkSocket
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckAcceptFailReason(obj.i)
  Declare.s ckAlpnProtocol(obj.i)
  Declare setCkAlpnProtocol(obj.i, value.s)
  Declare.l ckBandwidthThrottleDown(obj.i)
  Declare setCkBandwidthThrottleDown(obj.i, value.l)
  Declare.l ckBandwidthThrottleUp(obj.i)
  Declare setCkBandwidthThrottleUp(obj.i, value.l)
  Declare.l ckBigEndian(obj.i)
  Declare setCkBigEndian(obj.i, value.l)
  Declare.s ckClientIpAddress(obj.i)
  Declare setCkClientIpAddress(obj.i, value.s)
  Declare.l ckClientPort(obj.i)
  Declare setCkClientPort(obj.i, value.l)
  Declare.l ckConnectFailReason(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckElapsedSeconds(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckHttpProxyAuthMethod(obj.i)
  Declare setCkHttpProxyAuthMethod(obj.i, value.s)
  Declare.s ckHttpProxyDomain(obj.i)
  Declare setCkHttpProxyDomain(obj.i, value.s)
  Declare.l ckHttpProxyForHttp(obj.i)
  Declare setCkHttpProxyForHttp(obj.i, value.l)
  Declare.s ckHttpProxyHostname(obj.i)
  Declare setCkHttpProxyHostname(obj.i, value.s)
  Declare.s ckHttpProxyPassword(obj.i)
  Declare setCkHttpProxyPassword(obj.i, value.s)
  Declare.l ckHttpProxyPort(obj.i)
  Declare setCkHttpProxyPort(obj.i, value.l)
  Declare.s ckHttpProxyUsername(obj.i)
  Declare setCkHttpProxyUsername(obj.i, value.s)
  Declare.l ckIsConnected(obj.i)
  Declare.l ckKeepAlive(obj.i)
  Declare setCkKeepAlive(obj.i, value.l)
  Declare.l ckKeepSessionLog(obj.i)
  Declare setCkKeepSessionLog(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodFailed(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckListenIpv6(obj.i)
  Declare setCkListenIpv6(obj.i, value.l)
  Declare.l ckListenPort(obj.i)
  Declare.s ckLocalIpAddress(obj.i)
  Declare.l ckLocalPort(obj.i)
  Declare.l ckMaxReadIdleMs(obj.i)
  Declare setCkMaxReadIdleMs(obj.i, value.l)
  Declare.l ckMaxSendIdleMs(obj.i)
  Declare setCkMaxSendIdleMs(obj.i, value.l)
  Declare.s ckMyIpAddress(obj.i)
  Declare.l ckNumReceivedClientCerts(obj.i)
  Declare.l ckNumSocketsInSet(obj.i)
  Declare.l ckNumSslAcceptableClientCAs(obj.i)
  Declare.l ckObjectId(obj.i)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.l ckPreferIpv6(obj.i)
  Declare setCkPreferIpv6(obj.i, value.l)
  Declare.l ckRcvBytesPerSec(obj.i)
  Declare.l ckReceivedCount(obj.i)
  Declare setCkReceivedCount(obj.i, value.l)
  Declare.l ckReceivedInt(obj.i)
  Declare setCkReceivedInt(obj.i, value.l)
  Declare.l ckReceiveFailReason(obj.i)
  Declare.l ckReceivePacketSize(obj.i)
  Declare setCkReceivePacketSize(obj.i, value.l)
  Declare.s ckRemoteIpAddress(obj.i)
  Declare.l ckRemotePort(obj.i)
  Declare.l ckRequireSslCertVerify(obj.i)
  Declare setCkRequireSslCertVerify(obj.i, value.l)
  Declare.l ckSelectorIndex(obj.i)
  Declare setCkSelectorIndex(obj.i, value.l)
  Declare.l ckSelectorReadIndex(obj.i)
  Declare setCkSelectorReadIndex(obj.i, value.l)
  Declare.l ckSelectorWriteIndex(obj.i)
  Declare setCkSelectorWriteIndex(obj.i, value.l)
  Declare.l ckSendBytesPerSec(obj.i)
  Declare.l ckSendFailReason(obj.i)
  Declare.l ckSendPacketSize(obj.i)
  Declare setCkSendPacketSize(obj.i, value.l)
  Declare.s ckSessionLog(obj.i)
  Declare.s ckSessionLogEncoding(obj.i)
  Declare setCkSessionLogEncoding(obj.i, value.s)
  Declare.s ckSniHostname(obj.i)
  Declare setCkSniHostname(obj.i, value.s)
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
  Declare.l ckSoReuseAddr(obj.i)
  Declare setCkSoReuseAddr(obj.i, value.l)
  Declare.l ckSoSndBuf(obj.i)
  Declare setCkSoSndBuf(obj.i, value.l)
  Declare.l ckSsl(obj.i)
  Declare setCkSsl(obj.i, value.l)
  Declare.s ckSslAllowedCiphers(obj.i)
  Declare setCkSslAllowedCiphers(obj.i, value.s)
  Declare.s ckSslProtocol(obj.i)
  Declare setCkSslProtocol(obj.i, value.s)
  Declare.s ckStringCharset(obj.i)
  Declare setCkStringCharset(obj.i, value.s)
  Declare.l ckTcpNoDelay(obj.i)
  Declare setCkTcpNoDelay(obj.i, value.l)
  Declare.s ckTlsCipherSuite(obj.i)
  Declare.s ckTlsPinSet(obj.i)
  Declare setCkTlsPinSet(obj.i, value.s)
  Declare.s ckTlsVersion(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.s ckUserData(obj.i)
  Declare setCkUserData(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.i ckAcceptNextConnection(obj.i, maxWaitMs.l)
  Declare.i ckAcceptNextConnectionAsync(obj.i, maxWaitMs.l)
  Declare.l ckAddSslAcceptableClientCaDn(obj.i, certAuthDN.s)
  Declare.l ckBindAndListen(obj.i, port.l, backLog.l)
  Declare.i ckBindAndListenAsync(obj.i, port.l, backLog.l)
  Declare.l ckBindAndListenPortRange(obj.i, beginPort.l, endPort.l, backLog.l)
  Declare.i ckBindAndListenPortRangeAsync(obj.i, beginPort.l, endPort.l, backLog.l)
  Declare.s ckBuildHttpGetRequest(obj.i, url.s)
  Declare.l ckCheckWriteable(obj.i, maxWaitMs.l)
  Declare.i ckCheckWriteableAsync(obj.i, maxWaitMs.l)
  Declare ckClearSessionLog(obj.i)
  Declare.i ckCloneSocket(obj.i)
  Declare.l ckClose(obj.i, maxWaitMs.l)
  Declare.i ckCloseAsync(obj.i, maxWaitMs.l)
  Declare.l ckConnect(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l)
  Declare.i ckConnectAsync(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l)
  Declare.l ckConvertFromSsl(obj.i)
  Declare.i ckConvertFromSslAsync(obj.i)
  Declare.l ckConvertToSsl(obj.i)
  Declare.i ckConvertToSslAsync(obj.i)
  Declare ckDnsCacheClear(obj.i)
  Declare.s ckDnsLookup(obj.i, hostname.s, maxWaitMs.l)
  Declare.i ckDnsLookupAsync(obj.i, hostname.s, maxWaitMs.l)
  Declare.i ckGetMyCert(obj.i)
  Declare.i ckGetReceivedClientCert(obj.i, index.l)
  Declare.s ckGetSslAcceptableClientCaDn(obj.i, index.l)
  Declare.i ckGetSslServerCert(obj.i)
  Declare.l ckInitSslServer(obj.i, cert.i)
  Declare.l ckIsUnlocked(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckPollDataAvailable(obj.i)
  Declare.i ckPollDataAvailableAsync(obj.i)
  Declare.l ckReceiveBd(obj.i, binData.i)
  Declare.i ckReceiveBdAsync(obj.i, binData.i)
  Declare.l ckReceiveBdN(obj.i, numBytes.l, binData.i)
  Declare.i ckReceiveBdNAsync(obj.i, numBytes.l, binData.i)
  Declare.l ckReceiveByte(obj.i, bUnsigned.l)
  Declare.i ckReceiveByteAsync(obj.i, bUnsigned.l)
  Declare.s ckReceiveBytesENC(obj.i, encodingAlg.s)
  Declare.i ckReceiveBytesENCAsync(obj.i, encodingAlg.s)
  Declare.l ckReceiveBytesToFile(obj.i, appendFilename.s)
  Declare.i ckReceiveBytesToFileAsync(obj.i, appendFilename.s)
  Declare.l ckReceiveCount(obj.i)
  Declare.i ckReceiveCountAsync(obj.i)
  Declare.l ckReceiveInt16(obj.i, bigEndian.l, bUnsigned.l)
  Declare.i ckReceiveInt16Async(obj.i, bigEndian.l, bUnsigned.l)
  Declare.l ckReceiveInt32(obj.i, bigEndian.l)
  Declare.i ckReceiveInt32Async(obj.i, bigEndian.l)
  Declare.s ckReceiveNBytesENC(obj.i, numBytes.l, encodingAlg.s)
  Declare.i ckReceiveNBytesENCAsync(obj.i, numBytes.l, encodingAlg.s)
  Declare.l ckReceiveSb(obj.i, sb.i)
  Declare.i ckReceiveSbAsync(obj.i, sb.i)
  Declare.s ckReceiveString(obj.i)
  Declare.i ckReceiveStringAsync(obj.i)
  Declare.s ckReceiveStringMaxN(obj.i, maxByteCount.l)
  Declare.i ckReceiveStringMaxNAsync(obj.i, maxByteCount.l)
  Declare.s ckReceiveStringUntilByte(obj.i, lookForByte.l)
  Declare.i ckReceiveStringUntilByteAsync(obj.i, lookForByte.l)
  Declare.s ckReceiveToCRLF(obj.i)
  Declare.i ckReceiveToCRLFAsync(obj.i)
  Declare.l ckReceiveUntilByteBd(obj.i, lookForByte.l, bd.i)
  Declare.i ckReceiveUntilByteBdAsync(obj.i, lookForByte.l, bd.i)
  Declare.s ckReceiveUntilMatch(obj.i, matchStr.s)
  Declare.i ckReceiveUntilMatchAsync(obj.i, matchStr.s)
  Declare ckResetPerf(obj.i, rcvPerf.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSelectForReading(obj.i, timeoutMs.l)
  Declare.i ckSelectForReadingAsync(obj.i, timeoutMs.l)
  Declare.l ckSelectForWriting(obj.i, timeoutMs.l)
  Declare.i ckSelectForWritingAsync(obj.i, timeoutMs.l)
  Declare.l ckSendBd(obj.i, binData.i, offset.l, numBytes.l)
  Declare.i ckSendBdAsync(obj.i, binData.i, offset.l, numBytes.l)
  Declare.l ckSendByte(obj.i, value.l)
  Declare.i ckSendByteAsync(obj.i, value.l)
  Declare.l ckSendBytesENC(obj.i, encodedBytes.s, encodingAlg.s)
  Declare.i ckSendBytesENCAsync(obj.i, encodedBytes.s, encodingAlg.s)
  Declare.l ckSendCount(obj.i, byteCount.l)
  Declare.i ckSendCountAsync(obj.i, byteCount.l)
  Declare.l ckSendInt16(obj.i, value.l, bigEndian.l)
  Declare.i ckSendInt16Async(obj.i, value.l, bigEndian.l)
  Declare.l ckSendInt32(obj.i, value.l, bigEndian.l)
  Declare.i ckSendInt32Async(obj.i, value.l, bigEndian.l)
  Declare.l ckSendSb(obj.i, sb.i)
  Declare.i ckSendSbAsync(obj.i, sb.i)
  Declare.l ckSendString(obj.i, stringToSend.s)
  Declare.i ckSendStringAsync(obj.i, stringToSend.s)
  Declare.l ckSendWakeOnLan(obj.i, macAddress.s, port.l, ipBroadcastAddr.s)
  Declare.l ckSendWakeOnLan2(obj.i, macAddress.s, port.l, ipBroadcastAddr.s, password.s)
  Declare.l ckSetSslClientCert(obj.i, cert.i)
  Declare.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s)
  Declare.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s)
  Declare ckSleepMs(obj.i, millisec.l)
  Declare.l ckSshAuthenticatePk(obj.i, sshLogin.s, privateKey.i)
  Declare.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, privateKey.i)
  Declare.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s)
  Declare.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s)
  Declare.l ckSshCloseTunnel(obj.i)
  Declare.i ckSshCloseTunnelAsync(obj.i)
  Declare.i ckSshOpenChannel(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l)
  Declare.i ckSshOpenChannelAsync(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l)
  Declare.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l)
  Declare.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l)
  Declare ckStartTiming(obj.i)
  Declare.l ckTakeConnection(obj.i, sock.i)
  Declare.l ckTakeSocket(obj.i, sock.i)
  Declare.l ckTlsRenegotiate(obj.i)
  Declare.i ckTlsRenegotiateAsync(obj.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUseSsh(obj.i, ssh.i)
EndDeclareModule

Module CkSocket
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMslll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.i ckiMill(obj.i, arg1.i, arg2.l, arg3.l)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.l cklMill(obj.i, arg1.i, arg2.l, arg3.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiMll(obj.i, arg1.l, arg2.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i CkSocketCreate()
  PrototypeC CkSocketDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSocketLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSocketLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SocketCreate.CkSocketCreate = GetFunction(CkSocketLibId,"CkSocketU_CreateW")
  Global SocketDispose.CkSocketDispose = GetFunction(CkSocketLibId,"CkSocketU_DisposeW")
  Global SocketAbortCurrent.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getAbortCurrentW")
  Global SocketPSetAbortCurrent.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putAbortCurrentW")
  Global SocketAcceptFailReason.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getAcceptFailReasonW")
  Global SocketAlpnProtocol.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_alpnProtocolW")
  Global SocketPSetAlpnProtocol.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putAlpnProtocolW")
  Global SocketBandwidthThrottleDown.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getBandwidthThrottleDownW")
  Global SocketPSetBandwidthThrottleDown.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putBandwidthThrottleDownW")
  Global SocketBandwidthThrottleUp.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getBandwidthThrottleUpW")
  Global SocketPSetBandwidthThrottleUp.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putBandwidthThrottleUpW")
  Global SocketBigEndian.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getBigEndianW")
  Global SocketPSetBigEndian.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putBigEndianW")
  Global SocketClientIpAddress.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_clientIpAddressW")
  Global SocketPSetClientIpAddress.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putClientIpAddressW")
  Global SocketClientPort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getClientPortW")
  Global SocketPSetClientPort.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putClientPortW")
  Global SocketConnectFailReason.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getConnectFailReasonW")
  Global SocketDebugLogFilePath.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_debugLogFilePathW")
  Global SocketPSetDebugLogFilePath.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putDebugLogFilePathW")
  Global SocketElapsedSeconds.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getElapsedSecondsW")
  Global SocketHeartbeatMs.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getHeartbeatMsW")
  Global SocketPSetHeartbeatMs.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHeartbeatMsW")
  Global SocketHttpProxyAuthMethod.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_httpProxyAuthMethodW")
  Global SocketPSetHttpProxyAuthMethod.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyAuthMethodW")
  Global SocketHttpProxyDomain.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_httpProxyDomainW")
  Global SocketPSetHttpProxyDomain.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyDomainW")
  Global SocketHttpProxyForHttp.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getHttpProxyForHttpW")
  Global SocketPSetHttpProxyForHttp.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyForHttpW")
  Global SocketHttpProxyHostname.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_httpProxyHostnameW")
  Global SocketPSetHttpProxyHostname.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyHostnameW")
  Global SocketHttpProxyPassword.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_httpProxyPasswordW")
  Global SocketPSetHttpProxyPassword.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyPasswordW")
  Global SocketHttpProxyPort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getHttpProxyPortW")
  Global SocketPSetHttpProxyPort.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyPortW")
  Global SocketHttpProxyUsername.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_httpProxyUsernameW")
  Global SocketPSetHttpProxyUsername.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putHttpProxyUsernameW")
  Global SocketIsConnected.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getIsConnectedW")
  Global SocketKeepAlive.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getKeepAliveW")
  Global SocketPSetKeepAlive.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putKeepAliveW")
  Global SocketKeepSessionLog.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getKeepSessionLogW")
  Global SocketPSetKeepSessionLog.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putKeepSessionLogW")
  Global SocketLastErrorHtml.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_lastErrorHtmlW")
  Global SocketLastErrorText.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_lastErrorTextW")
  Global SocketLastErrorXml.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_lastErrorXmlW")
  Global SocketLastMethodFailed.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getLastMethodFailedW")
  Global SocketLastMethodSuccess.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getLastMethodSuccessW")
  Global SocketPSetLastMethodSuccess.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putLastMethodSuccessW")
  Global SocketListenIpv6.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getListenIpv6W")
  Global SocketPSetListenIpv6.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putListenIpv6W")
  Global SocketListenPort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getListenPortW")
  Global SocketLocalIpAddress.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_localIpAddressW")
  Global SocketLocalPort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getLocalPortW")
  Global SocketMaxReadIdleMs.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getMaxReadIdleMsW")
  Global SocketPSetMaxReadIdleMs.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putMaxReadIdleMsW")
  Global SocketMaxSendIdleMs.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getMaxSendIdleMsW")
  Global SocketPSetMaxSendIdleMs.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putMaxSendIdleMsW")
  Global SocketMyIpAddress.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_myIpAddressW")
  Global SocketNumReceivedClientCerts.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getNumReceivedClientCertsW")
  Global SocketNumSocketsInSet.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getNumSocketsInSetW")
  Global SocketNumSslAcceptableClientCAs.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getNumSslAcceptableClientCAsW")
  Global SocketObjectId.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getObjectIdW")
  Global SocketPercentDoneScale.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getPercentDoneScaleW")
  Global SocketPSetPercentDoneScale.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putPercentDoneScaleW")
  Global SocketPreferIpv6.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getPreferIpv6W")
  Global SocketPSetPreferIpv6.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putPreferIpv6W")
  Global SocketRcvBytesPerSec.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getRcvBytesPerSecW")
  Global SocketReceivedCount.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getReceivedCountW")
  Global SocketPSetReceivedCount.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putReceivedCountW")
  Global SocketReceivedInt.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getReceivedIntW")
  Global SocketPSetReceivedInt.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putReceivedIntW")
  Global SocketReceiveFailReason.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getReceiveFailReasonW")
  Global SocketReceivePacketSize.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getReceivePacketSizeW")
  Global SocketPSetReceivePacketSize.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putReceivePacketSizeW")
  Global SocketRemoteIpAddress.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_remoteIpAddressW")
  Global SocketRemotePort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getRemotePortW")
  Global SocketRequireSslCertVerify.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getRequireSslCertVerifyW")
  Global SocketPSetRequireSslCertVerify.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putRequireSslCertVerifyW")
  Global SocketSelectorIndex.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSelectorIndexW")
  Global SocketPSetSelectorIndex.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSelectorIndexW")
  Global SocketSelectorReadIndex.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSelectorReadIndexW")
  Global SocketPSetSelectorReadIndex.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSelectorReadIndexW")
  Global SocketSelectorWriteIndex.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSelectorWriteIndexW")
  Global SocketPSetSelectorWriteIndex.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSelectorWriteIndexW")
  Global SocketSendBytesPerSec.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSendBytesPerSecW")
  Global SocketSendFailReason.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSendFailReasonW")
  Global SocketSendPacketSize.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSendPacketSizeW")
  Global SocketPSetSendPacketSize.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSendPacketSizeW")
  Global SocketSessionLog.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_sessionLogW")
  Global SocketSessionLogEncoding.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_sessionLogEncodingW")
  Global SocketPSetSessionLogEncoding.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSessionLogEncodingW")
  Global SocketSniHostname.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_sniHostnameW")
  Global SocketPSetSniHostname.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSniHostnameW")
  Global SocketSocksHostname.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_socksHostnameW")
  Global SocketPSetSocksHostname.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSocksHostnameW")
  Global SocketSocksPassword.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_socksPasswordW")
  Global SocketPSetSocksPassword.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSocksPasswordW")
  Global SocketSocksPort.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSocksPortW")
  Global SocketPSetSocksPort.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSocksPortW")
  Global SocketSocksUsername.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_socksUsernameW")
  Global SocketPSetSocksUsername.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSocksUsernameW")
  Global SocketSocksVersion.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSocksVersionW")
  Global SocketPSetSocksVersion.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSocksVersionW")
  Global SocketSoRcvBuf.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSoRcvBufW")
  Global SocketPSetSoRcvBuf.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSoRcvBufW")
  Global SocketSoReuseAddr.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSoReuseAddrW")
  Global SocketPSetSoReuseAddr.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSoReuseAddrW")
  Global SocketSoSndBuf.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSoSndBufW")
  Global SocketPSetSoSndBuf.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSoSndBufW")
  Global SocketSsl.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getSslW")
  Global SocketPSetSsl.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSslW")
  Global SocketSslAllowedCiphers.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_sslAllowedCiphersW")
  Global SocketPSetSslAllowedCiphers.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSslAllowedCiphersW")
  Global SocketSslProtocol.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_sslProtocolW")
  Global SocketPSetSslProtocol.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putSslProtocolW")
  Global SocketStringCharset.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_stringCharsetW")
  Global SocketPSetStringCharset.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putStringCharsetW")
  Global SocketTcpNoDelay.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getTcpNoDelayW")
  Global SocketPSetTcpNoDelay.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putTcpNoDelayW")
  Global SocketTlsCipherSuite.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_tlsCipherSuiteW")
  Global SocketTlsPinSet.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_tlsPinSetW")
  Global SocketPSetTlsPinSet.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putTlsPinSetW")
  Global SocketTlsVersion.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_tlsVersionW")
  Global SocketUncommonOptions.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_uncommonOptionsW")
  Global SocketPSetUncommonOptions.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putUncommonOptionsW")
  Global SocketUserData.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_userDataW")
  Global SocketPSetUserData.cksPropSet = GetFunction(CkSocketLibId,"CkSocketU_putUserDataW")
  Global SocketVerboseLogging.cklPropGet = GetFunction(CkSocketLibId,"CkSocketU_getVerboseLoggingW")
  Global SocketPSetVerboseLogging.cklPropSet = GetFunction(CkSocketLibId,"CkSocketU_putVerboseLoggingW")
  Global SocketVersion.cksPropGet = GetFunction(CkSocketLibId,"CkSocketU_versionW")
  Global SocketAcceptNextConnection.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_AcceptNextConnectionW")
  Global SocketAcceptNextConnectionAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_AcceptNextConnectionAsyncW")
  Global SocketAddSslAcceptableClientCaDn.cklMs = GetFunction(CkSocketLibId,"CkSocketU_AddSslAcceptableClientCaDnW")
  Global SocketBindAndListen.cklMll = GetFunction(CkSocketLibId,"CkSocketU_BindAndListenW")
  Global SocketBindAndListenAsync.ckiMll = GetFunction(CkSocketLibId,"CkSocketU_BindAndListenAsyncW")
  Global SocketBindAndListenPortRange.cklMlll = GetFunction(CkSocketLibId,"CkSocketU_BindAndListenPortRangeW")
  Global SocketBindAndListenPortRangeAsync.ckiMlll = GetFunction(CkSocketLibId,"CkSocketU_BindAndListenPortRangeAsyncW")
  Global SocketBuildHttpGetRequest.cklMs = GetFunction(CkSocketLibId,"CkSocketU_buildHttpGetRequestW")
  Global SocketCheckWriteable.cklMl = GetFunction(CkSocketLibId,"CkSocketU_CheckWriteableW")
  Global SocketCheckWriteableAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_CheckWriteableAsyncW")
  Global SocketClearSessionLog.ckvM = GetFunction(CkSocketLibId,"CkSocketU_ClearSessionLogW")
  Global SocketCloneSocket.ckiM = GetFunction(CkSocketLibId,"CkSocketU_CloneSocketW")
  Global SocketClose.cklMl = GetFunction(CkSocketLibId,"CkSocketU_CloseW")
  Global SocketCloseAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_CloseAsyncW")
  Global SocketConnect.cklMslll = GetFunction(CkSocketLibId,"CkSocketU_ConnectW")
  Global SocketConnectAsync.ckiMslll = GetFunction(CkSocketLibId,"CkSocketU_ConnectAsyncW")
  Global SocketConvertFromSsl.cklM = GetFunction(CkSocketLibId,"CkSocketU_ConvertFromSslW")
  Global SocketConvertFromSslAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_ConvertFromSslAsyncW")
  Global SocketConvertToSsl.cklM = GetFunction(CkSocketLibId,"CkSocketU_ConvertToSslW")
  Global SocketConvertToSslAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_ConvertToSslAsyncW")
  Global SocketDnsCacheClear.ckvM = GetFunction(CkSocketLibId,"CkSocketU_DnsCacheClearW")
  Global SocketDnsLookup.cklMsl = GetFunction(CkSocketLibId,"CkSocketU_dnsLookupW")
  Global SocketDnsLookupAsync.ckiMsl = GetFunction(CkSocketLibId,"CkSocketU_DnsLookupAsyncW")
  Global SocketGetMyCert.ckiM = GetFunction(CkSocketLibId,"CkSocketU_GetMyCertW")
  Global SocketGetReceivedClientCert.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_GetReceivedClientCertW")
  Global SocketGetSslAcceptableClientCaDn.cklMl = GetFunction(CkSocketLibId,"CkSocketU_getSslAcceptableClientCaDnW")
  Global SocketGetSslServerCert.ckiM = GetFunction(CkSocketLibId,"CkSocketU_GetSslServerCertW")
  Global SocketInitSslServer.cklMi = GetFunction(CkSocketLibId,"CkSocketU_InitSslServerW")
  Global SocketIsUnlocked.cklM = GetFunction(CkSocketLibId,"CkSocketU_IsUnlockedW")
  Global SocketLastJsonData.ckiM = GetFunction(CkSocketLibId,"CkSocketU_LastJsonDataW")
  Global SocketLoadTaskCaller.cklMi = GetFunction(CkSocketLibId,"CkSocketU_LoadTaskCallerW")
  Global SocketLoadTaskResult.cklMi = GetFunction(CkSocketLibId,"CkSocketU_LoadTaskResultW")
  Global SocketPollDataAvailable.cklM = GetFunction(CkSocketLibId,"CkSocketU_PollDataAvailableW")
  Global SocketPollDataAvailableAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_PollDataAvailableAsyncW")
  Global SocketReceiveBd.cklMi = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBdW")
  Global SocketReceiveBdAsync.ckiMi = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBdAsyncW")
  Global SocketReceiveBdN.cklMli = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBdNW")
  Global SocketReceiveBdNAsync.ckiMli = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBdNAsyncW")
  Global SocketReceiveByte.cklMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveByteW")
  Global SocketReceiveByteAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveByteAsyncW")
  Global SocketReceiveBytesENC.cklMs = GetFunction(CkSocketLibId,"CkSocketU_receiveBytesENCW")
  Global SocketReceiveBytesENCAsync.ckiMs = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBytesENCAsyncW")
  Global SocketReceiveBytesToFile.cklMs = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBytesToFileW")
  Global SocketReceiveBytesToFileAsync.ckiMs = GetFunction(CkSocketLibId,"CkSocketU_ReceiveBytesToFileAsyncW")
  Global SocketReceiveCount.cklM = GetFunction(CkSocketLibId,"CkSocketU_ReceiveCountW")
  Global SocketReceiveCountAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_ReceiveCountAsyncW")
  Global SocketReceiveInt16.cklMll = GetFunction(CkSocketLibId,"CkSocketU_ReceiveInt16W")
  Global SocketReceiveInt16Async.ckiMll = GetFunction(CkSocketLibId,"CkSocketU_ReceiveInt16AsyncW")
  Global SocketReceiveInt32.cklMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveInt32W")
  Global SocketReceiveInt32Async.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveInt32AsyncW")
  Global SocketReceiveNBytesENC.cklMls = GetFunction(CkSocketLibId,"CkSocketU_receiveNBytesENCW")
  Global SocketReceiveNBytesENCAsync.ckiMls = GetFunction(CkSocketLibId,"CkSocketU_ReceiveNBytesENCAsyncW")
  Global SocketReceiveSb.cklMi = GetFunction(CkSocketLibId,"CkSocketU_ReceiveSbW")
  Global SocketReceiveSbAsync.ckiMi = GetFunction(CkSocketLibId,"CkSocketU_ReceiveSbAsyncW")
  Global SocketReceiveString.cklM = GetFunction(CkSocketLibId,"CkSocketU_receiveStringW")
  Global SocketReceiveStringAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_ReceiveStringAsyncW")
  Global SocketReceiveStringMaxN.cklMl = GetFunction(CkSocketLibId,"CkSocketU_receiveStringMaxNW")
  Global SocketReceiveStringMaxNAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveStringMaxNAsyncW")
  Global SocketReceiveStringUntilByte.cklMl = GetFunction(CkSocketLibId,"CkSocketU_receiveStringUntilByteW")
  Global SocketReceiveStringUntilByteAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_ReceiveStringUntilByteAsyncW")
  Global SocketReceiveToCRLF.cklM = GetFunction(CkSocketLibId,"CkSocketU_receiveToCRLFW")
  Global SocketReceiveToCRLFAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_ReceiveToCRLFAsyncW")
  Global SocketReceiveUntilByteBd.cklMli = GetFunction(CkSocketLibId,"CkSocketU_ReceiveUntilByteBdW")
  Global SocketReceiveUntilByteBdAsync.ckiMli = GetFunction(CkSocketLibId,"CkSocketU_ReceiveUntilByteBdAsyncW")
  Global SocketReceiveUntilMatch.cklMs = GetFunction(CkSocketLibId,"CkSocketU_receiveUntilMatchW")
  Global SocketReceiveUntilMatchAsync.ckiMs = GetFunction(CkSocketLibId,"CkSocketU_ReceiveUntilMatchAsyncW")
  Global SocketResetPerf.ckvMl = GetFunction(CkSocketLibId,"CkSocketU_ResetPerfW")
  Global SocketSaveLastError.cklMs = GetFunction(CkSocketLibId,"CkSocketU_SaveLastErrorW")
  Global SocketSelectForReading.cklMl = GetFunction(CkSocketLibId,"CkSocketU_SelectForReadingW")
  Global SocketSelectForReadingAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_SelectForReadingAsyncW")
  Global SocketSelectForWriting.cklMl = GetFunction(CkSocketLibId,"CkSocketU_SelectForWritingW")
  Global SocketSelectForWritingAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_SelectForWritingAsyncW")
  Global SocketSendBd.cklMill = GetFunction(CkSocketLibId,"CkSocketU_SendBdW")
  Global SocketSendBdAsync.ckiMill = GetFunction(CkSocketLibId,"CkSocketU_SendBdAsyncW")
  Global SocketSendByte.cklMl = GetFunction(CkSocketLibId,"CkSocketU_SendByteW")
  Global SocketSendByteAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_SendByteAsyncW")
  Global SocketSendBytesENC.cklMss = GetFunction(CkSocketLibId,"CkSocketU_SendBytesENCW")
  Global SocketSendBytesENCAsync.ckiMss = GetFunction(CkSocketLibId,"CkSocketU_SendBytesENCAsyncW")
  Global SocketSendCount.cklMl = GetFunction(CkSocketLibId,"CkSocketU_SendCountW")
  Global SocketSendCountAsync.ckiMl = GetFunction(CkSocketLibId,"CkSocketU_SendCountAsyncW")
  Global SocketSendInt16.cklMll = GetFunction(CkSocketLibId,"CkSocketU_SendInt16W")
  Global SocketSendInt16Async.ckiMll = GetFunction(CkSocketLibId,"CkSocketU_SendInt16AsyncW")
  Global SocketSendInt32.cklMll = GetFunction(CkSocketLibId,"CkSocketU_SendInt32W")
  Global SocketSendInt32Async.ckiMll = GetFunction(CkSocketLibId,"CkSocketU_SendInt32AsyncW")
  Global SocketSendSb.cklMi = GetFunction(CkSocketLibId,"CkSocketU_SendSbW")
  Global SocketSendSbAsync.ckiMi = GetFunction(CkSocketLibId,"CkSocketU_SendSbAsyncW")
  Global SocketSendString.cklMs = GetFunction(CkSocketLibId,"CkSocketU_SendStringW")
  Global SocketSendStringAsync.ckiMs = GetFunction(CkSocketLibId,"CkSocketU_SendStringAsyncW")
  Global SocketSendWakeOnLan.cklMsls = GetFunction(CkSocketLibId,"CkSocketU_SendWakeOnLanW")
  Global SocketSendWakeOnLan2.cklMslss = GetFunction(CkSocketLibId,"CkSocketU_SendWakeOnLan2W")
  Global SocketSetSslClientCert.cklMi = GetFunction(CkSocketLibId,"CkSocketU_SetSslClientCertW")
  Global SocketSetSslClientCertPem.cklMss = GetFunction(CkSocketLibId,"CkSocketU_SetSslClientCertPemW")
  Global SocketSetSslClientCertPfx.cklMss = GetFunction(CkSocketLibId,"CkSocketU_SetSslClientCertPfxW")
  Global SocketSleepMs.ckvMl = GetFunction(CkSocketLibId,"CkSocketU_SleepMsW")
  Global SocketSshAuthenticatePk.cklMsi = GetFunction(CkSocketLibId,"CkSocketU_SshAuthenticatePkW")
  Global SocketSshAuthenticatePkAsync.ckiMsi = GetFunction(CkSocketLibId,"CkSocketU_SshAuthenticatePkAsyncW")
  Global SocketSshAuthenticatePw.cklMss = GetFunction(CkSocketLibId,"CkSocketU_SshAuthenticatePwW")
  Global SocketSshAuthenticatePwAsync.ckiMss = GetFunction(CkSocketLibId,"CkSocketU_SshAuthenticatePwAsyncW")
  Global SocketSshCloseTunnel.cklM = GetFunction(CkSocketLibId,"CkSocketU_SshCloseTunnelW")
  Global SocketSshCloseTunnelAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_SshCloseTunnelAsyncW")
  Global SocketSshOpenChannel.ckiMslll = GetFunction(CkSocketLibId,"CkSocketU_SshOpenChannelW")
  Global SocketSshOpenChannelAsync.ckiMslll = GetFunction(CkSocketLibId,"CkSocketU_SshOpenChannelAsyncW")
  Global SocketSshOpenTunnel.cklMsl = GetFunction(CkSocketLibId,"CkSocketU_SshOpenTunnelW")
  Global SocketSshOpenTunnelAsync.ckiMsl = GetFunction(CkSocketLibId,"CkSocketU_SshOpenTunnelAsyncW")
  Global SocketStartTiming.ckvM = GetFunction(CkSocketLibId,"CkSocketU_StartTimingW")
  Global SocketTakeConnection.cklMi = GetFunction(CkSocketLibId,"CkSocketU_TakeConnectionW")
  Global SocketTakeSocket.cklMi = GetFunction(CkSocketLibId,"CkSocketU_TakeSocketW")
  Global SocketTlsRenegotiate.cklM = GetFunction(CkSocketLibId,"CkSocketU_TlsRenegotiateW")
  Global SocketTlsRenegotiateAsync.ckiM = GetFunction(CkSocketLibId,"CkSocketU_TlsRenegotiateAsyncW")
  Global SocketUnlockComponent.cklMs = GetFunction(CkSocketLibId,"CkSocketU_UnlockComponentW")
  Global SocketUseSsh.cklMi = GetFunction(CkSocketLibId,"CkSocketU_UseSshW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SocketCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SocketDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn SocketAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn SocketPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckAcceptFailReason(obj.i) : ProcedureReturn SocketAcceptFailReason(obj) : EndProcedure
  Procedure.s ckAlpnProtocol(obj.i) : ProcedureReturn PeekS(SocketAlpnProtocol(obj)) : EndProcedure
  Procedure setCkAlpnProtocol(obj.i, value.s) : ProcedureReturn SocketPSetAlpnProtocol(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleDown(obj.i) : ProcedureReturn SocketBandwidthThrottleDown(obj) : EndProcedure
  Procedure setCkBandwidthThrottleDown(obj.i, value.l) : ProcedureReturn SocketPSetBandwidthThrottleDown(obj,value) : EndProcedure
  Procedure.l ckBandwidthThrottleUp(obj.i) : ProcedureReturn SocketBandwidthThrottleUp(obj) : EndProcedure
  Procedure setCkBandwidthThrottleUp(obj.i, value.l) : ProcedureReturn SocketPSetBandwidthThrottleUp(obj,value) : EndProcedure
  Procedure.l ckBigEndian(obj.i) : ProcedureReturn SocketBigEndian(obj) : EndProcedure
  Procedure setCkBigEndian(obj.i, value.l) : ProcedureReturn SocketPSetBigEndian(obj,value) : EndProcedure
  Procedure.s ckClientIpAddress(obj.i) : ProcedureReturn PeekS(SocketClientIpAddress(obj)) : EndProcedure
  Procedure setCkClientIpAddress(obj.i, value.s) : ProcedureReturn SocketPSetClientIpAddress(obj,value) : EndProcedure
  Procedure.l ckClientPort(obj.i) : ProcedureReturn SocketClientPort(obj) : EndProcedure
  Procedure setCkClientPort(obj.i, value.l) : ProcedureReturn SocketPSetClientPort(obj,value) : EndProcedure
  Procedure.l ckConnectFailReason(obj.i) : ProcedureReturn SocketConnectFailReason(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SocketDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SocketPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckElapsedSeconds(obj.i) : ProcedureReturn SocketElapsedSeconds(obj) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn SocketHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn SocketPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckHttpProxyAuthMethod(obj.i) : ProcedureReturn PeekS(SocketHttpProxyAuthMethod(obj)) : EndProcedure
  Procedure setCkHttpProxyAuthMethod(obj.i, value.s) : ProcedureReturn SocketPSetHttpProxyAuthMethod(obj,value) : EndProcedure
  Procedure.s ckHttpProxyDomain(obj.i) : ProcedureReturn PeekS(SocketHttpProxyDomain(obj)) : EndProcedure
  Procedure setCkHttpProxyDomain(obj.i, value.s) : ProcedureReturn SocketPSetHttpProxyDomain(obj,value) : EndProcedure
  Procedure.l ckHttpProxyForHttp(obj.i) : ProcedureReturn SocketHttpProxyForHttp(obj) : EndProcedure
  Procedure setCkHttpProxyForHttp(obj.i, value.l) : ProcedureReturn SocketPSetHttpProxyForHttp(obj,value) : EndProcedure
  Procedure.s ckHttpProxyHostname(obj.i) : ProcedureReturn PeekS(SocketHttpProxyHostname(obj)) : EndProcedure
  Procedure setCkHttpProxyHostname(obj.i, value.s) : ProcedureReturn SocketPSetHttpProxyHostname(obj,value) : EndProcedure
  Procedure.s ckHttpProxyPassword(obj.i) : ProcedureReturn PeekS(SocketHttpProxyPassword(obj)) : EndProcedure
  Procedure setCkHttpProxyPassword(obj.i, value.s) : ProcedureReturn SocketPSetHttpProxyPassword(obj,value) : EndProcedure
  Procedure.l ckHttpProxyPort(obj.i) : ProcedureReturn SocketHttpProxyPort(obj) : EndProcedure
  Procedure setCkHttpProxyPort(obj.i, value.l) : ProcedureReturn SocketPSetHttpProxyPort(obj,value) : EndProcedure
  Procedure.s ckHttpProxyUsername(obj.i) : ProcedureReturn PeekS(SocketHttpProxyUsername(obj)) : EndProcedure
  Procedure setCkHttpProxyUsername(obj.i, value.s) : ProcedureReturn SocketPSetHttpProxyUsername(obj,value) : EndProcedure
  Procedure.l ckIsConnected(obj.i) : ProcedureReturn SocketIsConnected(obj) : EndProcedure
  Procedure.l ckKeepAlive(obj.i) : ProcedureReturn SocketKeepAlive(obj) : EndProcedure
  Procedure setCkKeepAlive(obj.i, value.l) : ProcedureReturn SocketPSetKeepAlive(obj,value) : EndProcedure
  Procedure.l ckKeepSessionLog(obj.i) : ProcedureReturn SocketKeepSessionLog(obj) : EndProcedure
  Procedure setCkKeepSessionLog(obj.i, value.l) : ProcedureReturn SocketPSetKeepSessionLog(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SocketLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SocketLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SocketLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodFailed(obj.i) : ProcedureReturn SocketLastMethodFailed(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SocketLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SocketPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckListenIpv6(obj.i) : ProcedureReturn SocketListenIpv6(obj) : EndProcedure
  Procedure setCkListenIpv6(obj.i, value.l) : ProcedureReturn SocketPSetListenIpv6(obj,value) : EndProcedure
  Procedure.l ckListenPort(obj.i) : ProcedureReturn SocketListenPort(obj) : EndProcedure
  Procedure.s ckLocalIpAddress(obj.i) : ProcedureReturn PeekS(SocketLocalIpAddress(obj)) : EndProcedure
  Procedure.l ckLocalPort(obj.i) : ProcedureReturn SocketLocalPort(obj) : EndProcedure
  Procedure.l ckMaxReadIdleMs(obj.i) : ProcedureReturn SocketMaxReadIdleMs(obj) : EndProcedure
  Procedure setCkMaxReadIdleMs(obj.i, value.l) : ProcedureReturn SocketPSetMaxReadIdleMs(obj,value) : EndProcedure
  Procedure.l ckMaxSendIdleMs(obj.i) : ProcedureReturn SocketMaxSendIdleMs(obj) : EndProcedure
  Procedure setCkMaxSendIdleMs(obj.i, value.l) : ProcedureReturn SocketPSetMaxSendIdleMs(obj,value) : EndProcedure
  Procedure.s ckMyIpAddress(obj.i) : ProcedureReturn PeekS(SocketMyIpAddress(obj)) : EndProcedure
  Procedure.l ckNumReceivedClientCerts(obj.i) : ProcedureReturn SocketNumReceivedClientCerts(obj) : EndProcedure
  Procedure.l ckNumSocketsInSet(obj.i) : ProcedureReturn SocketNumSocketsInSet(obj) : EndProcedure
  Procedure.l ckNumSslAcceptableClientCAs(obj.i) : ProcedureReturn SocketNumSslAcceptableClientCAs(obj) : EndProcedure
  Procedure.l ckObjectId(obj.i) : ProcedureReturn SocketObjectId(obj) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn SocketPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn SocketPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.l ckPreferIpv6(obj.i) : ProcedureReturn SocketPreferIpv6(obj) : EndProcedure
  Procedure setCkPreferIpv6(obj.i, value.l) : ProcedureReturn SocketPSetPreferIpv6(obj,value) : EndProcedure
  Procedure.l ckRcvBytesPerSec(obj.i) : ProcedureReturn SocketRcvBytesPerSec(obj) : EndProcedure
  Procedure.l ckReceivedCount(obj.i) : ProcedureReturn SocketReceivedCount(obj) : EndProcedure
  Procedure setCkReceivedCount(obj.i, value.l) : ProcedureReturn SocketPSetReceivedCount(obj,value) : EndProcedure
  Procedure.l ckReceivedInt(obj.i) : ProcedureReturn SocketReceivedInt(obj) : EndProcedure
  Procedure setCkReceivedInt(obj.i, value.l) : ProcedureReturn SocketPSetReceivedInt(obj,value) : EndProcedure
  Procedure.l ckReceiveFailReason(obj.i) : ProcedureReturn SocketReceiveFailReason(obj) : EndProcedure
  Procedure.l ckReceivePacketSize(obj.i) : ProcedureReturn SocketReceivePacketSize(obj) : EndProcedure
  Procedure setCkReceivePacketSize(obj.i, value.l) : ProcedureReturn SocketPSetReceivePacketSize(obj,value) : EndProcedure
  Procedure.s ckRemoteIpAddress(obj.i) : ProcedureReturn PeekS(SocketRemoteIpAddress(obj)) : EndProcedure
  Procedure.l ckRemotePort(obj.i) : ProcedureReturn SocketRemotePort(obj) : EndProcedure
  Procedure.l ckRequireSslCertVerify(obj.i) : ProcedureReturn SocketRequireSslCertVerify(obj) : EndProcedure
  Procedure setCkRequireSslCertVerify(obj.i, value.l) : ProcedureReturn SocketPSetRequireSslCertVerify(obj,value) : EndProcedure
  Procedure.l ckSelectorIndex(obj.i) : ProcedureReturn SocketSelectorIndex(obj) : EndProcedure
  Procedure setCkSelectorIndex(obj.i, value.l) : ProcedureReturn SocketPSetSelectorIndex(obj,value) : EndProcedure
  Procedure.l ckSelectorReadIndex(obj.i) : ProcedureReturn SocketSelectorReadIndex(obj) : EndProcedure
  Procedure setCkSelectorReadIndex(obj.i, value.l) : ProcedureReturn SocketPSetSelectorReadIndex(obj,value) : EndProcedure
  Procedure.l ckSelectorWriteIndex(obj.i) : ProcedureReturn SocketSelectorWriteIndex(obj) : EndProcedure
  Procedure setCkSelectorWriteIndex(obj.i, value.l) : ProcedureReturn SocketPSetSelectorWriteIndex(obj,value) : EndProcedure
  Procedure.l ckSendBytesPerSec(obj.i) : ProcedureReturn SocketSendBytesPerSec(obj) : EndProcedure
  Procedure.l ckSendFailReason(obj.i) : ProcedureReturn SocketSendFailReason(obj) : EndProcedure
  Procedure.l ckSendPacketSize(obj.i) : ProcedureReturn SocketSendPacketSize(obj) : EndProcedure
  Procedure setCkSendPacketSize(obj.i, value.l) : ProcedureReturn SocketPSetSendPacketSize(obj,value) : EndProcedure
  Procedure.s ckSessionLog(obj.i) : ProcedureReturn PeekS(SocketSessionLog(obj)) : EndProcedure
  Procedure.s ckSessionLogEncoding(obj.i) : ProcedureReturn PeekS(SocketSessionLogEncoding(obj)) : EndProcedure
  Procedure setCkSessionLogEncoding(obj.i, value.s) : ProcedureReturn SocketPSetSessionLogEncoding(obj,value) : EndProcedure
  Procedure.s ckSniHostname(obj.i) : ProcedureReturn PeekS(SocketSniHostname(obj)) : EndProcedure
  Procedure setCkSniHostname(obj.i, value.s) : ProcedureReturn SocketPSetSniHostname(obj,value) : EndProcedure
  Procedure.s ckSocksHostname(obj.i) : ProcedureReturn PeekS(SocketSocksHostname(obj)) : EndProcedure
  Procedure setCkSocksHostname(obj.i, value.s) : ProcedureReturn SocketPSetSocksHostname(obj,value) : EndProcedure
  Procedure.s ckSocksPassword(obj.i) : ProcedureReturn PeekS(SocketSocksPassword(obj)) : EndProcedure
  Procedure setCkSocksPassword(obj.i, value.s) : ProcedureReturn SocketPSetSocksPassword(obj,value) : EndProcedure
  Procedure.l ckSocksPort(obj.i) : ProcedureReturn SocketSocksPort(obj) : EndProcedure
  Procedure setCkSocksPort(obj.i, value.l) : ProcedureReturn SocketPSetSocksPort(obj,value) : EndProcedure
  Procedure.s ckSocksUsername(obj.i) : ProcedureReturn PeekS(SocketSocksUsername(obj)) : EndProcedure
  Procedure setCkSocksUsername(obj.i, value.s) : ProcedureReturn SocketPSetSocksUsername(obj,value) : EndProcedure
  Procedure.l ckSocksVersion(obj.i) : ProcedureReturn SocketSocksVersion(obj) : EndProcedure
  Procedure setCkSocksVersion(obj.i, value.l) : ProcedureReturn SocketPSetSocksVersion(obj,value) : EndProcedure
  Procedure.l ckSoRcvBuf(obj.i) : ProcedureReturn SocketSoRcvBuf(obj) : EndProcedure
  Procedure setCkSoRcvBuf(obj.i, value.l) : ProcedureReturn SocketPSetSoRcvBuf(obj,value) : EndProcedure
  Procedure.l ckSoReuseAddr(obj.i) : ProcedureReturn SocketSoReuseAddr(obj) : EndProcedure
  Procedure setCkSoReuseAddr(obj.i, value.l) : ProcedureReturn SocketPSetSoReuseAddr(obj,value) : EndProcedure
  Procedure.l ckSoSndBuf(obj.i) : ProcedureReturn SocketSoSndBuf(obj) : EndProcedure
  Procedure setCkSoSndBuf(obj.i, value.l) : ProcedureReturn SocketPSetSoSndBuf(obj,value) : EndProcedure
  Procedure.l ckSsl(obj.i) : ProcedureReturn SocketSsl(obj) : EndProcedure
  Procedure setCkSsl(obj.i, value.l) : ProcedureReturn SocketPSetSsl(obj,value) : EndProcedure
  Procedure.s ckSslAllowedCiphers(obj.i) : ProcedureReturn PeekS(SocketSslAllowedCiphers(obj)) : EndProcedure
  Procedure setCkSslAllowedCiphers(obj.i, value.s) : ProcedureReturn SocketPSetSslAllowedCiphers(obj,value) : EndProcedure
  Procedure.s ckSslProtocol(obj.i) : ProcedureReturn PeekS(SocketSslProtocol(obj)) : EndProcedure
  Procedure setCkSslProtocol(obj.i, value.s) : ProcedureReturn SocketPSetSslProtocol(obj,value) : EndProcedure
  Procedure.s ckStringCharset(obj.i) : ProcedureReturn PeekS(SocketStringCharset(obj)) : EndProcedure
  Procedure setCkStringCharset(obj.i, value.s) : ProcedureReturn SocketPSetStringCharset(obj,value) : EndProcedure
  Procedure.l ckTcpNoDelay(obj.i) : ProcedureReturn SocketTcpNoDelay(obj) : EndProcedure
  Procedure setCkTcpNoDelay(obj.i, value.l) : ProcedureReturn SocketPSetTcpNoDelay(obj,value) : EndProcedure
  Procedure.s ckTlsCipherSuite(obj.i) : ProcedureReturn PeekS(SocketTlsCipherSuite(obj)) : EndProcedure
  Procedure.s ckTlsPinSet(obj.i) : ProcedureReturn PeekS(SocketTlsPinSet(obj)) : EndProcedure
  Procedure setCkTlsPinSet(obj.i, value.s) : ProcedureReturn SocketPSetTlsPinSet(obj,value) : EndProcedure
  Procedure.s ckTlsVersion(obj.i) : ProcedureReturn PeekS(SocketTlsVersion(obj)) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(SocketUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn SocketPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.s ckUserData(obj.i) : ProcedureReturn PeekS(SocketUserData(obj)) : EndProcedure
  Procedure setCkUserData(obj.i, value.s) : ProcedureReturn SocketPSetUserData(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SocketVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SocketPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SocketVersion(obj)) : EndProcedure
  Procedure.i ckAcceptNextConnection(obj.i, maxWaitMs.l) :  ProcedureReturn SocketAcceptNextConnection(obj, maxWaitMs) :  EndProcedure
  Procedure.i ckAcceptNextConnectionAsync(obj.i, maxWaitMs.l) :  ProcedureReturn SocketAcceptNextConnectionAsync(obj, maxWaitMs) :  EndProcedure
  Procedure.l ckAddSslAcceptableClientCaDn(obj.i, certAuthDN.s) :  ProcedureReturn SocketAddSslAcceptableClientCaDn(obj, certAuthDN) :  EndProcedure
  Procedure.l ckBindAndListen(obj.i, port.l, backLog.l) :  ProcedureReturn SocketBindAndListen(obj, port, backLog) :  EndProcedure
  Procedure.i ckBindAndListenAsync(obj.i, port.l, backLog.l) :  ProcedureReturn SocketBindAndListenAsync(obj, port, backLog) :  EndProcedure
  Procedure.l ckBindAndListenPortRange(obj.i, beginPort.l, endPort.l, backLog.l) :  ProcedureReturn SocketBindAndListenPortRange(obj, beginPort, endPort, backLog) :  EndProcedure
  Procedure.i ckBindAndListenPortRangeAsync(obj.i, beginPort.l, endPort.l, backLog.l) :  ProcedureReturn SocketBindAndListenPortRangeAsync(obj, beginPort, endPort, backLog) :  EndProcedure
  Procedure.s ckBuildHttpGetRequest(obj.i, url.s) :  ProcedureReturn PeekS(SocketBuildHttpGetRequest(obj, url)) :  EndProcedure
  Procedure.l ckCheckWriteable(obj.i, maxWaitMs.l) :  ProcedureReturn SocketCheckWriteable(obj, maxWaitMs) :  EndProcedure
  Procedure.i ckCheckWriteableAsync(obj.i, maxWaitMs.l) :  ProcedureReturn SocketCheckWriteableAsync(obj, maxWaitMs) :  EndProcedure
  Procedure ckClearSessionLog(obj.i) :  ProcedureReturn SocketClearSessionLog(obj) :  EndProcedure
  Procedure.i ckCloneSocket(obj.i) :  ProcedureReturn SocketCloneSocket(obj) :  EndProcedure
  Procedure.l ckClose(obj.i, maxWaitMs.l) :  ProcedureReturn SocketClose(obj, maxWaitMs) :  EndProcedure
  Procedure.i ckCloseAsync(obj.i, maxWaitMs.l) :  ProcedureReturn SocketCloseAsync(obj, maxWaitMs) :  EndProcedure
  Procedure.l ckConnect(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l) :  ProcedureReturn SocketConnect(obj, hostname, port, ssl, maxWaitMs) :  EndProcedure
  Procedure.i ckConnectAsync(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l) :  ProcedureReturn SocketConnectAsync(obj, hostname, port, ssl, maxWaitMs) :  EndProcedure
  Procedure.l ckConvertFromSsl(obj.i) :  ProcedureReturn SocketConvertFromSsl(obj) :  EndProcedure
  Procedure.i ckConvertFromSslAsync(obj.i) :  ProcedureReturn SocketConvertFromSslAsync(obj) :  EndProcedure
  Procedure.l ckConvertToSsl(obj.i) :  ProcedureReturn SocketConvertToSsl(obj) :  EndProcedure
  Procedure.i ckConvertToSslAsync(obj.i) :  ProcedureReturn SocketConvertToSslAsync(obj) :  EndProcedure
  Procedure ckDnsCacheClear(obj.i) :  ProcedureReturn SocketDnsCacheClear(obj) :  EndProcedure
  Procedure.s ckDnsLookup(obj.i, hostname.s, maxWaitMs.l) :  ProcedureReturn PeekS(SocketDnsLookup(obj, hostname, maxWaitMs)) :  EndProcedure
  Procedure.i ckDnsLookupAsync(obj.i, hostname.s, maxWaitMs.l) :  ProcedureReturn SocketDnsLookupAsync(obj, hostname, maxWaitMs) :  EndProcedure
  Procedure.i ckGetMyCert(obj.i) :  ProcedureReturn SocketGetMyCert(obj) :  EndProcedure
  Procedure.i ckGetReceivedClientCert(obj.i, index.l) :  ProcedureReturn SocketGetReceivedClientCert(obj, index) :  EndProcedure
  Procedure.s ckGetSslAcceptableClientCaDn(obj.i, index.l) :  ProcedureReturn PeekS(SocketGetSslAcceptableClientCaDn(obj, index)) :  EndProcedure
  Procedure.i ckGetSslServerCert(obj.i) :  ProcedureReturn SocketGetSslServerCert(obj) :  EndProcedure
  Procedure.l ckInitSslServer(obj.i, cert.i) :  ProcedureReturn SocketInitSslServer(obj, cert) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn SocketIsUnlocked(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn SocketLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn SocketLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn SocketLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckPollDataAvailable(obj.i) :  ProcedureReturn SocketPollDataAvailable(obj) :  EndProcedure
  Procedure.i ckPollDataAvailableAsync(obj.i) :  ProcedureReturn SocketPollDataAvailableAsync(obj) :  EndProcedure
  Procedure.l ckReceiveBd(obj.i, binData.i) :  ProcedureReturn SocketReceiveBd(obj, binData) :  EndProcedure
  Procedure.i ckReceiveBdAsync(obj.i, binData.i) :  ProcedureReturn SocketReceiveBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckReceiveBdN(obj.i, numBytes.l, binData.i) :  ProcedureReturn SocketReceiveBdN(obj, numBytes, binData) :  EndProcedure
  Procedure.i ckReceiveBdNAsync(obj.i, numBytes.l, binData.i) :  ProcedureReturn SocketReceiveBdNAsync(obj, numBytes, binData) :  EndProcedure
  Procedure.l ckReceiveByte(obj.i, bUnsigned.l) :  ProcedureReturn SocketReceiveByte(obj, bUnsigned) :  EndProcedure
  Procedure.i ckReceiveByteAsync(obj.i, bUnsigned.l) :  ProcedureReturn SocketReceiveByteAsync(obj, bUnsigned) :  EndProcedure
  Procedure.s ckReceiveBytesENC(obj.i, encodingAlg.s) :  ProcedureReturn PeekS(SocketReceiveBytesENC(obj, encodingAlg)) :  EndProcedure
  Procedure.i ckReceiveBytesENCAsync(obj.i, encodingAlg.s) :  ProcedureReturn SocketReceiveBytesENCAsync(obj, encodingAlg) :  EndProcedure
  Procedure.l ckReceiveBytesToFile(obj.i, appendFilename.s) :  ProcedureReturn SocketReceiveBytesToFile(obj, appendFilename) :  EndProcedure
  Procedure.i ckReceiveBytesToFileAsync(obj.i, appendFilename.s) :  ProcedureReturn SocketReceiveBytesToFileAsync(obj, appendFilename) :  EndProcedure
  Procedure.l ckReceiveCount(obj.i) :  ProcedureReturn SocketReceiveCount(obj) :  EndProcedure
  Procedure.i ckReceiveCountAsync(obj.i) :  ProcedureReturn SocketReceiveCountAsync(obj) :  EndProcedure
  Procedure.l ckReceiveInt16(obj.i, bigEndian.l, bUnsigned.l) :  ProcedureReturn SocketReceiveInt16(obj, bigEndian, bUnsigned) :  EndProcedure
  Procedure.i ckReceiveInt16Async(obj.i, bigEndian.l, bUnsigned.l) :  ProcedureReturn SocketReceiveInt16Async(obj, bigEndian, bUnsigned) :  EndProcedure
  Procedure.l ckReceiveInt32(obj.i, bigEndian.l) :  ProcedureReturn SocketReceiveInt32(obj, bigEndian) :  EndProcedure
  Procedure.i ckReceiveInt32Async(obj.i, bigEndian.l) :  ProcedureReturn SocketReceiveInt32Async(obj, bigEndian) :  EndProcedure
  Procedure.s ckReceiveNBytesENC(obj.i, numBytes.l, encodingAlg.s) :  ProcedureReturn PeekS(SocketReceiveNBytesENC(obj, numBytes, encodingAlg)) :  EndProcedure
  Procedure.i ckReceiveNBytesENCAsync(obj.i, numBytes.l, encodingAlg.s) :  ProcedureReturn SocketReceiveNBytesENCAsync(obj, numBytes, encodingAlg) :  EndProcedure
  Procedure.l ckReceiveSb(obj.i, sb.i) :  ProcedureReturn SocketReceiveSb(obj, sb) :  EndProcedure
  Procedure.i ckReceiveSbAsync(obj.i, sb.i) :  ProcedureReturn SocketReceiveSbAsync(obj, sb) :  EndProcedure
  Procedure.s ckReceiveString(obj.i) :  ProcedureReturn PeekS(SocketReceiveString(obj)) :  EndProcedure
  Procedure.i ckReceiveStringAsync(obj.i) :  ProcedureReturn SocketReceiveStringAsync(obj) :  EndProcedure
  Procedure.s ckReceiveStringMaxN(obj.i, maxByteCount.l) :  ProcedureReturn PeekS(SocketReceiveStringMaxN(obj, maxByteCount)) :  EndProcedure
  Procedure.i ckReceiveStringMaxNAsync(obj.i, maxByteCount.l) :  ProcedureReturn SocketReceiveStringMaxNAsync(obj, maxByteCount) :  EndProcedure
  Procedure.s ckReceiveStringUntilByte(obj.i, lookForByte.l) :  ProcedureReturn PeekS(SocketReceiveStringUntilByte(obj, lookForByte)) :  EndProcedure
  Procedure.i ckReceiveStringUntilByteAsync(obj.i, lookForByte.l) :  ProcedureReturn SocketReceiveStringUntilByteAsync(obj, lookForByte) :  EndProcedure
  Procedure.s ckReceiveToCRLF(obj.i) :  ProcedureReturn PeekS(SocketReceiveToCRLF(obj)) :  EndProcedure
  Procedure.i ckReceiveToCRLFAsync(obj.i) :  ProcedureReturn SocketReceiveToCRLFAsync(obj) :  EndProcedure
  Procedure.l ckReceiveUntilByteBd(obj.i, lookForByte.l, bd.i) :  ProcedureReturn SocketReceiveUntilByteBd(obj, lookForByte, bd) :  EndProcedure
  Procedure.i ckReceiveUntilByteBdAsync(obj.i, lookForByte.l, bd.i) :  ProcedureReturn SocketReceiveUntilByteBdAsync(obj, lookForByte, bd) :  EndProcedure
  Procedure.s ckReceiveUntilMatch(obj.i, matchStr.s) :  ProcedureReturn PeekS(SocketReceiveUntilMatch(obj, matchStr)) :  EndProcedure
  Procedure.i ckReceiveUntilMatchAsync(obj.i, matchStr.s) :  ProcedureReturn SocketReceiveUntilMatchAsync(obj, matchStr) :  EndProcedure
  Procedure ckResetPerf(obj.i, rcvPerf.l) :  ProcedureReturn SocketResetPerf(obj, rcvPerf) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SocketSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSelectForReading(obj.i, timeoutMs.l) :  ProcedureReturn SocketSelectForReading(obj, timeoutMs) :  EndProcedure
  Procedure.i ckSelectForReadingAsync(obj.i, timeoutMs.l) :  ProcedureReturn SocketSelectForReadingAsync(obj, timeoutMs) :  EndProcedure
  Procedure.l ckSelectForWriting(obj.i, timeoutMs.l) :  ProcedureReturn SocketSelectForWriting(obj, timeoutMs) :  EndProcedure
  Procedure.i ckSelectForWritingAsync(obj.i, timeoutMs.l) :  ProcedureReturn SocketSelectForWritingAsync(obj, timeoutMs) :  EndProcedure
  Procedure.l ckSendBd(obj.i, binData.i, offset.l, numBytes.l) :  ProcedureReturn SocketSendBd(obj, binData, offset, numBytes) :  EndProcedure
  Procedure.i ckSendBdAsync(obj.i, binData.i, offset.l, numBytes.l) :  ProcedureReturn SocketSendBdAsync(obj, binData, offset, numBytes) :  EndProcedure
  Procedure.l ckSendByte(obj.i, value.l) :  ProcedureReturn SocketSendByte(obj, value) :  EndProcedure
  Procedure.i ckSendByteAsync(obj.i, value.l) :  ProcedureReturn SocketSendByteAsync(obj, value) :  EndProcedure
  Procedure.l ckSendBytesENC(obj.i, encodedBytes.s, encodingAlg.s) :  ProcedureReturn SocketSendBytesENC(obj, encodedBytes, encodingAlg) :  EndProcedure
  Procedure.i ckSendBytesENCAsync(obj.i, encodedBytes.s, encodingAlg.s) :  ProcedureReturn SocketSendBytesENCAsync(obj, encodedBytes, encodingAlg) :  EndProcedure
  Procedure.l ckSendCount(obj.i, byteCount.l) :  ProcedureReturn SocketSendCount(obj, byteCount) :  EndProcedure
  Procedure.i ckSendCountAsync(obj.i, byteCount.l) :  ProcedureReturn SocketSendCountAsync(obj, byteCount) :  EndProcedure
  Procedure.l ckSendInt16(obj.i, value.l, bigEndian.l) :  ProcedureReturn SocketSendInt16(obj, value, bigEndian) :  EndProcedure
  Procedure.i ckSendInt16Async(obj.i, value.l, bigEndian.l) :  ProcedureReturn SocketSendInt16Async(obj, value, bigEndian) :  EndProcedure
  Procedure.l ckSendInt32(obj.i, value.l, bigEndian.l) :  ProcedureReturn SocketSendInt32(obj, value, bigEndian) :  EndProcedure
  Procedure.i ckSendInt32Async(obj.i, value.l, bigEndian.l) :  ProcedureReturn SocketSendInt32Async(obj, value, bigEndian) :  EndProcedure
  Procedure.l ckSendSb(obj.i, sb.i) :  ProcedureReturn SocketSendSb(obj, sb) :  EndProcedure
  Procedure.i ckSendSbAsync(obj.i, sb.i) :  ProcedureReturn SocketSendSbAsync(obj, sb) :  EndProcedure
  Procedure.l ckSendString(obj.i, stringToSend.s) :  ProcedureReturn SocketSendString(obj, stringToSend) :  EndProcedure
  Procedure.i ckSendStringAsync(obj.i, stringToSend.s) :  ProcedureReturn SocketSendStringAsync(obj, stringToSend) :  EndProcedure
  Procedure.l ckSendWakeOnLan(obj.i, macAddress.s, port.l, ipBroadcastAddr.s) :  ProcedureReturn SocketSendWakeOnLan(obj, macAddress, port, ipBroadcastAddr) :  EndProcedure
  Procedure.l ckSendWakeOnLan2(obj.i, macAddress.s, port.l, ipBroadcastAddr.s, password.s) :  ProcedureReturn SocketSendWakeOnLan2(obj, macAddress, port, ipBroadcastAddr, password) :  EndProcedure
  Procedure.l ckSetSslClientCert(obj.i, cert.i) :  ProcedureReturn SocketSetSslClientCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSslClientCertPem(obj.i, pemDataOrFilename.s, pemPassword.s) :  ProcedureReturn SocketSetSslClientCertPem(obj, pemDataOrFilename, pemPassword) :  EndProcedure
  Procedure.l ckSetSslClientCertPfx(obj.i, pfxFilename.s, pfxPassword.s) :  ProcedureReturn SocketSetSslClientCertPfx(obj, pfxFilename, pfxPassword) :  EndProcedure
  Procedure ckSleepMs(obj.i, millisec.l) :  ProcedureReturn SocketSleepMs(obj, millisec) :  EndProcedure
  Procedure.l ckSshAuthenticatePk(obj.i, sshLogin.s, privateKey.i) :  ProcedureReturn SocketSshAuthenticatePk(obj, sshLogin, privateKey) :  EndProcedure
  Procedure.i ckSshAuthenticatePkAsync(obj.i, sshLogin.s, privateKey.i) :  ProcedureReturn SocketSshAuthenticatePkAsync(obj, sshLogin, privateKey) :  EndProcedure
  Procedure.l ckSshAuthenticatePw(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn SocketSshAuthenticatePw(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.i ckSshAuthenticatePwAsync(obj.i, sshLogin.s, sshPassword.s) :  ProcedureReturn SocketSshAuthenticatePwAsync(obj, sshLogin, sshPassword) :  EndProcedure
  Procedure.l ckSshCloseTunnel(obj.i) :  ProcedureReturn SocketSshCloseTunnel(obj) :  EndProcedure
  Procedure.i ckSshCloseTunnelAsync(obj.i) :  ProcedureReturn SocketSshCloseTunnelAsync(obj) :  EndProcedure
  Procedure.i ckSshOpenChannel(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l) :  ProcedureReturn SocketSshOpenChannel(obj, hostname, port, ssl, maxWaitMs) :  EndProcedure
  Procedure.i ckSshOpenChannelAsync(obj.i, hostname.s, port.l, ssl.l, maxWaitMs.l) :  ProcedureReturn SocketSshOpenChannelAsync(obj, hostname, port, ssl, maxWaitMs) :  EndProcedure
  Procedure.l ckSshOpenTunnel(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn SocketSshOpenTunnel(obj, sshHostname, sshPort) :  EndProcedure
  Procedure.i ckSshOpenTunnelAsync(obj.i, sshHostname.s, sshPort.l) :  ProcedureReturn SocketSshOpenTunnelAsync(obj, sshHostname, sshPort) :  EndProcedure
  Procedure ckStartTiming(obj.i) :  ProcedureReturn SocketStartTiming(obj) :  EndProcedure
  Procedure.l ckTakeConnection(obj.i, sock.i) :  ProcedureReturn SocketTakeConnection(obj, sock) :  EndProcedure
  Procedure.l ckTakeSocket(obj.i, sock.i) :  ProcedureReturn SocketTakeSocket(obj, sock) :  EndProcedure
  Procedure.l ckTlsRenegotiate(obj.i) :  ProcedureReturn SocketTlsRenegotiate(obj) :  EndProcedure
  Procedure.i ckTlsRenegotiateAsync(obj.i) :  ProcedureReturn SocketTlsRenegotiateAsync(obj) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn SocketUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUseSsh(obj.i, ssh.i) :  ProcedureReturn SocketUseSsh(obj, ssh) :  EndProcedure
EndModule

