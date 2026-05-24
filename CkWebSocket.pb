DeclareModule CkWebSocket
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCloseAutoRespond(obj.i)
  Declare setCkCloseAutoRespond(obj.i, value.l)
  Declare.s ckCloseReason(obj.i)
  Declare.l ckCloseReceived(obj.i)
  Declare.l ckCloseStatusCode(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckFinalFrame(obj.i)
  Declare.l ckFrameDataLen(obj.i)
  Declare.s ckFrameOpcode(obj.i)
  Declare.l ckFrameOpcodeInt(obj.i)
  Declare.l ckIdleTimeoutMs(obj.i)
  Declare setCkIdleTimeoutMs(obj.i, value.l)
  Declare.l ckIsConnected(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNeedSendPong(obj.i)
  Declare.l ckPingAutoRespond(obj.i)
  Declare setCkPingAutoRespond(obj.i, value.l)
  Declare.l ckPongAutoConsume(obj.i)
  Declare setCkPongAutoConsume(obj.i, value.l)
  Declare.l ckPongConsumed(obj.i)
  Declare.l ckReadFrameFailReason(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddClientHeaders(obj.i)
  Declare.l ckCloseConnection(obj.i)
  Declare.s ckGetFrameData(obj.i)
  Declare.l ckGetFrameDataBd(obj.i, binData.i)
  Declare.l ckGetFrameDataSb(obj.i, sb.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckPollDataAvailable(obj.i)
  Declare.l ckReadFrame(obj.i)
  Declare.i ckReadFrameAsync(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSendClose(obj.i, includeStatus.l, statusCode.l, reason.s)
  Declare.i ckSendCloseAsync(obj.i, includeStatus.l, statusCode.l, reason.s)
  Declare.l ckSendFrame(obj.i, stringToSend.s, finalFrame.l)
  Declare.i ckSendFrameAsync(obj.i, stringToSend.s, finalFrame.l)
  Declare.l ckSendFrameBd(obj.i, bdToSend.i, finalFrame.l)
  Declare.i ckSendFrameBdAsync(obj.i, bdToSend.i, finalFrame.l)
  Declare.l ckSendFrameSb(obj.i, sbToSend.i, finalFrame.l)
  Declare.i ckSendFrameSbAsync(obj.i, sbToSend.i, finalFrame.l)
  Declare.l ckSendPing(obj.i, pingData.s)
  Declare.i ckSendPingAsync(obj.i, pingData.s)
  Declare.l ckSendPong(obj.i)
  Declare.i ckSendPongAsync(obj.i)
  Declare.l ckUseConnection(obj.i, connection.i)
  Declare.l ckValidateServerHandshake(obj.i)
EndDeclareModule

Module CkWebSocket
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkWebSocketCreate()
  PrototypeC CkWebSocketDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkWebSocketLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkWebSocketLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkWebSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkWebSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkWebSocketLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global WebSocketCreate.CkWebSocketCreate = GetFunction(CkWebSocketLibId,"CkWebSocketU_CreateW")
  Global WebSocketDispose.CkWebSocketDispose = GetFunction(CkWebSocketLibId,"CkWebSocketU_DisposeW")
  Global WebSocketCloseAutoRespond.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getCloseAutoRespondW")
  Global WebSocketPSetCloseAutoRespond.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putCloseAutoRespondW")
  Global WebSocketCloseReason.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_closeReasonW")
  Global WebSocketCloseReceived.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getCloseReceivedW")
  Global WebSocketCloseStatusCode.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getCloseStatusCodeW")
  Global WebSocketDebugLogFilePath.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_debugLogFilePathW")
  Global WebSocketPSetDebugLogFilePath.cksPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putDebugLogFilePathW")
  Global WebSocketFinalFrame.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getFinalFrameW")
  Global WebSocketFrameDataLen.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getFrameDataLenW")
  Global WebSocketFrameOpcode.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_frameOpcodeW")
  Global WebSocketFrameOpcodeInt.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getFrameOpcodeIntW")
  Global WebSocketIdleTimeoutMs.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getIdleTimeoutMsW")
  Global WebSocketPSetIdleTimeoutMs.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putIdleTimeoutMsW")
  Global WebSocketIsConnected.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getIsConnectedW")
  Global WebSocketLastErrorHtml.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_lastErrorHtmlW")
  Global WebSocketLastErrorText.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_lastErrorTextW")
  Global WebSocketLastErrorXml.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_lastErrorXmlW")
  Global WebSocketLastMethodSuccess.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getLastMethodSuccessW")
  Global WebSocketPSetLastMethodSuccess.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putLastMethodSuccessW")
  Global WebSocketNeedSendPong.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getNeedSendPongW")
  Global WebSocketPingAutoRespond.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getPingAutoRespondW")
  Global WebSocketPSetPingAutoRespond.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putPingAutoRespondW")
  Global WebSocketPongAutoConsume.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getPongAutoConsumeW")
  Global WebSocketPSetPongAutoConsume.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putPongAutoConsumeW")
  Global WebSocketPongConsumed.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getPongConsumedW")
  Global WebSocketReadFrameFailReason.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getReadFrameFailReasonW")
  Global WebSocketUncommonOptions.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_uncommonOptionsW")
  Global WebSocketVerboseLogging.cklPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_getVerboseLoggingW")
  Global WebSocketPSetVerboseLogging.cklPropSet = GetFunction(CkWebSocketLibId,"CkWebSocketU_putVerboseLoggingW")
  Global WebSocketVersion.cksPropGet = GetFunction(CkWebSocketLibId,"CkWebSocketU_versionW")
  Global WebSocketAddClientHeaders.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_AddClientHeadersW")
  Global WebSocketCloseConnection.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_CloseConnectionW")
  Global WebSocketGetFrameData.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_getFrameDataW")
  Global WebSocketGetFrameDataBd.cklMi = GetFunction(CkWebSocketLibId,"CkWebSocketU_GetFrameDataBdW")
  Global WebSocketGetFrameDataSb.cklMi = GetFunction(CkWebSocketLibId,"CkWebSocketU_GetFrameDataSbW")
  Global WebSocketLoadTaskCaller.cklMi = GetFunction(CkWebSocketLibId,"CkWebSocketU_LoadTaskCallerW")
  Global WebSocketPollDataAvailable.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_PollDataAvailableW")
  Global WebSocketReadFrame.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_ReadFrameW")
  Global WebSocketReadFrameAsync.ckiM = GetFunction(CkWebSocketLibId,"CkWebSocketU_ReadFrameAsyncW")
  Global WebSocketSaveLastError.cklMs = GetFunction(CkWebSocketLibId,"CkWebSocketU_SaveLastErrorW")
  Global WebSocketSendClose.cklMlls = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendCloseW")
  Global WebSocketSendCloseAsync.ckiMlls = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendCloseAsyncW")
  Global WebSocketSendFrame.cklMsl = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameW")
  Global WebSocketSendFrameAsync.ckiMsl = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameAsyncW")
  Global WebSocketSendFrameBd.cklMil = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameBdW")
  Global WebSocketSendFrameBdAsync.ckiMil = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameBdAsyncW")
  Global WebSocketSendFrameSb.cklMil = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameSbW")
  Global WebSocketSendFrameSbAsync.ckiMil = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendFrameSbAsyncW")
  Global WebSocketSendPing.cklMs = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendPingW")
  Global WebSocketSendPingAsync.ckiMs = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendPingAsyncW")
  Global WebSocketSendPong.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendPongW")
  Global WebSocketSendPongAsync.ckiM = GetFunction(CkWebSocketLibId,"CkWebSocketU_SendPongAsyncW")
  Global WebSocketUseConnection.cklMi = GetFunction(CkWebSocketLibId,"CkWebSocketU_UseConnectionW")
  Global WebSocketValidateServerHandshake.cklM = GetFunction(CkWebSocketLibId,"CkWebSocketU_ValidateServerHandshakeW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn WebSocketCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn WebSocketDispose(obj) : EndProcedure
  Procedure.l ckCloseAutoRespond(obj.i) : ProcedureReturn WebSocketCloseAutoRespond(obj) : EndProcedure
  Procedure setCkCloseAutoRespond(obj.i, value.l) : ProcedureReturn WebSocketPSetCloseAutoRespond(obj,value) : EndProcedure
  Procedure.s ckCloseReason(obj.i) : ProcedureReturn PeekS(WebSocketCloseReason(obj)) : EndProcedure
  Procedure.l ckCloseReceived(obj.i) : ProcedureReturn WebSocketCloseReceived(obj) : EndProcedure
  Procedure.l ckCloseStatusCode(obj.i) : ProcedureReturn WebSocketCloseStatusCode(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(WebSocketDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn WebSocketPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckFinalFrame(obj.i) : ProcedureReturn WebSocketFinalFrame(obj) : EndProcedure
  Procedure.l ckFrameDataLen(obj.i) : ProcedureReturn WebSocketFrameDataLen(obj) : EndProcedure
  Procedure.s ckFrameOpcode(obj.i) : ProcedureReturn PeekS(WebSocketFrameOpcode(obj)) : EndProcedure
  Procedure.l ckFrameOpcodeInt(obj.i) : ProcedureReturn WebSocketFrameOpcodeInt(obj) : EndProcedure
  Procedure.l ckIdleTimeoutMs(obj.i) : ProcedureReturn WebSocketIdleTimeoutMs(obj) : EndProcedure
  Procedure setCkIdleTimeoutMs(obj.i, value.l) : ProcedureReturn WebSocketPSetIdleTimeoutMs(obj,value) : EndProcedure
  Procedure.l ckIsConnected(obj.i) : ProcedureReturn WebSocketIsConnected(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(WebSocketLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(WebSocketLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(WebSocketLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn WebSocketLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn WebSocketPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNeedSendPong(obj.i) : ProcedureReturn WebSocketNeedSendPong(obj) : EndProcedure
  Procedure.l ckPingAutoRespond(obj.i) : ProcedureReturn WebSocketPingAutoRespond(obj) : EndProcedure
  Procedure setCkPingAutoRespond(obj.i, value.l) : ProcedureReturn WebSocketPSetPingAutoRespond(obj,value) : EndProcedure
  Procedure.l ckPongAutoConsume(obj.i) : ProcedureReturn WebSocketPongAutoConsume(obj) : EndProcedure
  Procedure setCkPongAutoConsume(obj.i, value.l) : ProcedureReturn WebSocketPSetPongAutoConsume(obj,value) : EndProcedure
  Procedure.l ckPongConsumed(obj.i) : ProcedureReturn WebSocketPongConsumed(obj) : EndProcedure
  Procedure.l ckReadFrameFailReason(obj.i) : ProcedureReturn WebSocketReadFrameFailReason(obj) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(WebSocketUncommonOptions(obj)) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn WebSocketVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn WebSocketPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(WebSocketVersion(obj)) : EndProcedure
  Procedure.l ckAddClientHeaders(obj.i) :  ProcedureReturn WebSocketAddClientHeaders(obj) :  EndProcedure
  Procedure.l ckCloseConnection(obj.i) :  ProcedureReturn WebSocketCloseConnection(obj) :  EndProcedure
  Procedure.s ckGetFrameData(obj.i) :  ProcedureReturn PeekS(WebSocketGetFrameData(obj)) :  EndProcedure
  Procedure.l ckGetFrameDataBd(obj.i, binData.i) :  ProcedureReturn WebSocketGetFrameDataBd(obj, binData) :  EndProcedure
  Procedure.l ckGetFrameDataSb(obj.i, sb.i) :  ProcedureReturn WebSocketGetFrameDataSb(obj, sb) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn WebSocketLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckPollDataAvailable(obj.i) :  ProcedureReturn WebSocketPollDataAvailable(obj) :  EndProcedure
  Procedure.l ckReadFrame(obj.i) :  ProcedureReturn WebSocketReadFrame(obj) :  EndProcedure
  Procedure.i ckReadFrameAsync(obj.i) :  ProcedureReturn WebSocketReadFrameAsync(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn WebSocketSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSendClose(obj.i, includeStatus.l, statusCode.l, reason.s) :  ProcedureReturn WebSocketSendClose(obj, includeStatus, statusCode, reason) :  EndProcedure
  Procedure.i ckSendCloseAsync(obj.i, includeStatus.l, statusCode.l, reason.s) :  ProcedureReturn WebSocketSendCloseAsync(obj, includeStatus, statusCode, reason) :  EndProcedure
  Procedure.l ckSendFrame(obj.i, stringToSend.s, finalFrame.l) :  ProcedureReturn WebSocketSendFrame(obj, stringToSend, finalFrame) :  EndProcedure
  Procedure.i ckSendFrameAsync(obj.i, stringToSend.s, finalFrame.l) :  ProcedureReturn WebSocketSendFrameAsync(obj, stringToSend, finalFrame) :  EndProcedure
  Procedure.l ckSendFrameBd(obj.i, bdToSend.i, finalFrame.l) :  ProcedureReturn WebSocketSendFrameBd(obj, bdToSend, finalFrame) :  EndProcedure
  Procedure.i ckSendFrameBdAsync(obj.i, bdToSend.i, finalFrame.l) :  ProcedureReturn WebSocketSendFrameBdAsync(obj, bdToSend, finalFrame) :  EndProcedure
  Procedure.l ckSendFrameSb(obj.i, sbToSend.i, finalFrame.l) :  ProcedureReturn WebSocketSendFrameSb(obj, sbToSend, finalFrame) :  EndProcedure
  Procedure.i ckSendFrameSbAsync(obj.i, sbToSend.i, finalFrame.l) :  ProcedureReturn WebSocketSendFrameSbAsync(obj, sbToSend, finalFrame) :  EndProcedure
  Procedure.l ckSendPing(obj.i, pingData.s) :  ProcedureReturn WebSocketSendPing(obj, pingData) :  EndProcedure
  Procedure.i ckSendPingAsync(obj.i, pingData.s) :  ProcedureReturn WebSocketSendPingAsync(obj, pingData) :  EndProcedure
  Procedure.l ckSendPong(obj.i) :  ProcedureReturn WebSocketSendPong(obj) :  EndProcedure
  Procedure.i ckSendPongAsync(obj.i) :  ProcedureReturn WebSocketSendPongAsync(obj) :  EndProcedure
  Procedure.l ckUseConnection(obj.i, connection.i) :  ProcedureReturn WebSocketUseConnection(obj, connection) :  EndProcedure
  Procedure.l ckValidateServerHandshake(obj.i) :  ProcedureReturn WebSocketValidateServerHandshake(obj) :  EndProcedure
EndModule

