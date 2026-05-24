DeclareModule CkStream
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckCanRead(obj.i)
  Declare.l ckCanWrite(obj.i)
  Declare.l ckDataAvailable(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDefaultChunkSize(obj.i)
  Declare setCkDefaultChunkSize(obj.i, value.l)
  Declare.l ckEndOfStream(obj.i)
  Declare.l ckIsWriteClosed(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.q ckLength(obj.i)
  Declare setCkLength(obj.i, value.q)
  Declare.l ckLength32(obj.i)
  Declare setCkLength32(obj.i, value.l)
  Declare.q ckNumReceived(obj.i)
  Declare.q ckNumSent(obj.i)
  Declare.l ckReadFailReason(obj.i)
  Declare.l ckReadTimeoutMs(obj.i)
  Declare setCkReadTimeoutMs(obj.i, value.l)
  Declare.s ckSinkFile(obj.i)
  Declare setCkSinkFile(obj.i, value.s)
  Declare.l ckSinkFileAppend(obj.i)
  Declare setCkSinkFileAppend(obj.i, value.l)
  Declare.s ckSourceFile(obj.i)
  Declare setCkSourceFile(obj.i, value.s)
  Declare.l ckSourceFilePart(obj.i)
  Declare setCkSourceFilePart(obj.i, value.l)
  Declare.l ckSourceFilePartSize(obj.i)
  Declare setCkSourceFilePartSize(obj.i, value.l)
  Declare.l ckStringBom(obj.i)
  Declare setCkStringBom(obj.i, value.l)
  Declare.s ckStringCharset(obj.i)
  Declare setCkStringCharset(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckWriteFailReason(obj.i)
  Declare.l ckWriteTimeoutMs(obj.i)
  Declare setCkWriteTimeoutMs(obj.i, value.l)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckReadBd(obj.i, binData.i)
  Declare.i ckReadBdAsync(obj.i, binData.i)
  Declare.s ckReadBytesENC(obj.i, encoding.s)
  Declare.i ckReadBytesENCAsync(obj.i, encoding.s)
  Declare.s ckReadNBytesENC(obj.i, numBytes.l, encoding.s)
  Declare.i ckReadNBytesENCAsync(obj.i, numBytes.l, encoding.s)
  Declare.l ckReadSb(obj.i, sb.i)
  Declare.i ckReadSbAsync(obj.i, sb.i)
  Declare.s ckReadString(obj.i)
  Declare.i ckReadStringAsync(obj.i)
  Declare.s ckReadToCRLF(obj.i)
  Declare.i ckReadToCRLFAsync(obj.i)
  Declare.s ckReadUntilMatch(obj.i, matchStr.s)
  Declare.i ckReadUntilMatchAsync(obj.i, matchStr.s)
  Declare ckReset(obj.i)
  Declare.l ckRunStream(obj.i)
  Declare.i ckRunStreamAsync(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetSinkStream(obj.i, strm.i)
  Declare.l ckSetSourceStream(obj.i, strm.i)
  Declare.l ckSetSourceString(obj.i, srcStr.s, charset.s)
  Declare.l ckWriteBd(obj.i, binData.i)
  Declare.i ckWriteBdAsync(obj.i, binData.i)
  Declare.l ckWriteByte(obj.i, byteVal.l)
  Declare.i ckWriteByteAsync(obj.i, byteVal.l)
  Declare.l ckWriteBytesENC(obj.i, byteData.s, encoding.s)
  Declare.i ckWriteBytesENCAsync(obj.i, byteData.s, encoding.s)
  Declare.l ckWriteClose(obj.i)
  Declare.l ckWriteSb(obj.i, sb.i)
  Declare.i ckWriteSbAsync(obj.i, sb.i)
  Declare.l ckWriteString(obj.i, str.s)
  Declare.i ckWriteStringAsync(obj.i, str.s)
EndDeclareModule

Module CkStream
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkStreamCreate()
  PrototypeC CkStreamDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStreamLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkStreamLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkStreamLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStreamLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkStreamLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global StreamCreate.CkStreamCreate = GetFunction(CkStreamLibId,"CkStreamU_CreateW")
  Global StreamDispose.CkStreamDispose = GetFunction(CkStreamLibId,"CkStreamU_DisposeW")
  Global StreamAbortCurrent.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getAbortCurrentW")
  Global StreamPSetAbortCurrent.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putAbortCurrentW")
  Global StreamCanRead.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getCanReadW")
  Global StreamCanWrite.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getCanWriteW")
  Global StreamDataAvailable.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getDataAvailableW")
  Global StreamDebugLogFilePath.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_debugLogFilePathW")
  Global StreamPSetDebugLogFilePath.cksPropSet = GetFunction(CkStreamLibId,"CkStreamU_putDebugLogFilePathW")
  Global StreamDefaultChunkSize.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getDefaultChunkSizeW")
  Global StreamPSetDefaultChunkSize.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putDefaultChunkSizeW")
  Global StreamEndOfStream.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getEndOfStreamW")
  Global StreamIsWriteClosed.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getIsWriteClosedW")
  Global StreamLastErrorHtml.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_lastErrorHtmlW")
  Global StreamLastErrorText.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_lastErrorTextW")
  Global StreamLastErrorXml.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_lastErrorXmlW")
  Global StreamLastMethodSuccess.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getLastMethodSuccessW")
  Global StreamPSetLastMethodSuccess.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putLastMethodSuccessW")
  Global StreamLength.ckqPropGet = GetFunction(CkStreamLibId,"CkStreamU_getLengthW")
  Global StreamPSetLength.ckqPropSet = GetFunction(CkStreamLibId,"CkStreamU_putLengthW")
  Global StreamLength32.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getLength32W")
  Global StreamPSetLength32.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putLength32W")
  Global StreamNumReceived.ckqPropGet = GetFunction(CkStreamLibId,"CkStreamU_getNumReceivedW")
  Global StreamNumSent.ckqPropGet = GetFunction(CkStreamLibId,"CkStreamU_getNumSentW")
  Global StreamReadFailReason.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getReadFailReasonW")
  Global StreamReadTimeoutMs.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getReadTimeoutMsW")
  Global StreamPSetReadTimeoutMs.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putReadTimeoutMsW")
  Global StreamSinkFile.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_sinkFileW")
  Global StreamPSetSinkFile.cksPropSet = GetFunction(CkStreamLibId,"CkStreamU_putSinkFileW")
  Global StreamSinkFileAppend.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getSinkFileAppendW")
  Global StreamPSetSinkFileAppend.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putSinkFileAppendW")
  Global StreamSourceFile.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_sourceFileW")
  Global StreamPSetSourceFile.cksPropSet = GetFunction(CkStreamLibId,"CkStreamU_putSourceFileW")
  Global StreamSourceFilePart.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getSourceFilePartW")
  Global StreamPSetSourceFilePart.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putSourceFilePartW")
  Global StreamSourceFilePartSize.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getSourceFilePartSizeW")
  Global StreamPSetSourceFilePartSize.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putSourceFilePartSizeW")
  Global StreamStringBom.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getStringBomW")
  Global StreamPSetStringBom.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putStringBomW")
  Global StreamStringCharset.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_stringCharsetW")
  Global StreamPSetStringCharset.cksPropSet = GetFunction(CkStreamLibId,"CkStreamU_putStringCharsetW")
  Global StreamVerboseLogging.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getVerboseLoggingW")
  Global StreamPSetVerboseLogging.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putVerboseLoggingW")
  Global StreamVersion.cksPropGet = GetFunction(CkStreamLibId,"CkStreamU_versionW")
  Global StreamWriteFailReason.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getWriteFailReasonW")
  Global StreamWriteTimeoutMs.cklPropGet = GetFunction(CkStreamLibId,"CkStreamU_getWriteTimeoutMsW")
  Global StreamPSetWriteTimeoutMs.cklPropSet = GetFunction(CkStreamLibId,"CkStreamU_putWriteTimeoutMsW")
  Global StreamLoadTaskCaller.cklMi = GetFunction(CkStreamLibId,"CkStreamU_LoadTaskCallerW")
  Global StreamReadBd.cklMi = GetFunction(CkStreamLibId,"CkStreamU_ReadBdW")
  Global StreamReadBdAsync.ckiMi = GetFunction(CkStreamLibId,"CkStreamU_ReadBdAsyncW")
  Global StreamReadBytesENC.cklMs = GetFunction(CkStreamLibId,"CkStreamU_readBytesENCW")
  Global StreamReadBytesENCAsync.ckiMs = GetFunction(CkStreamLibId,"CkStreamU_ReadBytesENCAsyncW")
  Global StreamReadNBytesENC.cklMls = GetFunction(CkStreamLibId,"CkStreamU_readNBytesENCW")
  Global StreamReadNBytesENCAsync.ckiMls = GetFunction(CkStreamLibId,"CkStreamU_ReadNBytesENCAsyncW")
  Global StreamReadSb.cklMi = GetFunction(CkStreamLibId,"CkStreamU_ReadSbW")
  Global StreamReadSbAsync.ckiMi = GetFunction(CkStreamLibId,"CkStreamU_ReadSbAsyncW")
  Global StreamReadString.cklM = GetFunction(CkStreamLibId,"CkStreamU_readStringW")
  Global StreamReadStringAsync.ckiM = GetFunction(CkStreamLibId,"CkStreamU_ReadStringAsyncW")
  Global StreamReadToCRLF.cklM = GetFunction(CkStreamLibId,"CkStreamU_readToCRLFW")
  Global StreamReadToCRLFAsync.ckiM = GetFunction(CkStreamLibId,"CkStreamU_ReadToCRLFAsyncW")
  Global StreamReadUntilMatch.cklMs = GetFunction(CkStreamLibId,"CkStreamU_readUntilMatchW")
  Global StreamReadUntilMatchAsync.ckiMs = GetFunction(CkStreamLibId,"CkStreamU_ReadUntilMatchAsyncW")
  Global StreamReset.ckvM = GetFunction(CkStreamLibId,"CkStreamU_ResetW")
  Global StreamRunStream.cklM = GetFunction(CkStreamLibId,"CkStreamU_RunStreamW")
  Global StreamRunStreamAsync.ckiM = GetFunction(CkStreamLibId,"CkStreamU_RunStreamAsyncW")
  Global StreamSaveLastError.cklMs = GetFunction(CkStreamLibId,"CkStreamU_SaveLastErrorW")
  Global StreamSetSinkStream.cklMi = GetFunction(CkStreamLibId,"CkStreamU_SetSinkStreamW")
  Global StreamSetSourceStream.cklMi = GetFunction(CkStreamLibId,"CkStreamU_SetSourceStreamW")
  Global StreamSetSourceString.cklMss = GetFunction(CkStreamLibId,"CkStreamU_SetSourceStringW")
  Global StreamWriteBd.cklMi = GetFunction(CkStreamLibId,"CkStreamU_WriteBdW")
  Global StreamWriteBdAsync.ckiMi = GetFunction(CkStreamLibId,"CkStreamU_WriteBdAsyncW")
  Global StreamWriteByte.cklMl = GetFunction(CkStreamLibId,"CkStreamU_WriteByteW")
  Global StreamWriteByteAsync.ckiMl = GetFunction(CkStreamLibId,"CkStreamU_WriteByteAsyncW")
  Global StreamWriteBytesENC.cklMss = GetFunction(CkStreamLibId,"CkStreamU_WriteBytesENCW")
  Global StreamWriteBytesENCAsync.ckiMss = GetFunction(CkStreamLibId,"CkStreamU_WriteBytesENCAsyncW")
  Global StreamWriteClose.cklM = GetFunction(CkStreamLibId,"CkStreamU_WriteCloseW")
  Global StreamWriteSb.cklMi = GetFunction(CkStreamLibId,"CkStreamU_WriteSbW")
  Global StreamWriteSbAsync.ckiMi = GetFunction(CkStreamLibId,"CkStreamU_WriteSbAsyncW")
  Global StreamWriteString.cklMs = GetFunction(CkStreamLibId,"CkStreamU_WriteStringW")
  Global StreamWriteStringAsync.ckiMs = GetFunction(CkStreamLibId,"CkStreamU_WriteStringAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn StreamCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn StreamDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn StreamAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn StreamPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckCanRead(obj.i) : ProcedureReturn StreamCanRead(obj) : EndProcedure
  Procedure.l ckCanWrite(obj.i) : ProcedureReturn StreamCanWrite(obj) : EndProcedure
  Procedure.l ckDataAvailable(obj.i) : ProcedureReturn StreamDataAvailable(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(StreamDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn StreamPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDefaultChunkSize(obj.i) : ProcedureReturn StreamDefaultChunkSize(obj) : EndProcedure
  Procedure setCkDefaultChunkSize(obj.i, value.l) : ProcedureReturn StreamPSetDefaultChunkSize(obj,value) : EndProcedure
  Procedure.l ckEndOfStream(obj.i) : ProcedureReturn StreamEndOfStream(obj) : EndProcedure
  Procedure.l ckIsWriteClosed(obj.i) : ProcedureReturn StreamIsWriteClosed(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(StreamLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(StreamLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(StreamLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn StreamLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn StreamPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.q ckLength(obj.i) : ProcedureReturn StreamLength(obj) : EndProcedure
  Procedure setCkLength(obj.i, value.q) :    ProcedureReturn StreamPSetLength(obj,value) :   EndProcedure
  Procedure.l ckLength32(obj.i) : ProcedureReturn StreamLength32(obj) : EndProcedure
  Procedure setCkLength32(obj.i, value.l) : ProcedureReturn StreamPSetLength32(obj,value) : EndProcedure
  Procedure.q ckNumReceived(obj.i) : ProcedureReturn StreamNumReceived(obj) : EndProcedure
  Procedure.q ckNumSent(obj.i) : ProcedureReturn StreamNumSent(obj) : EndProcedure
  Procedure.l ckReadFailReason(obj.i) : ProcedureReturn StreamReadFailReason(obj) : EndProcedure
  Procedure.l ckReadTimeoutMs(obj.i) : ProcedureReturn StreamReadTimeoutMs(obj) : EndProcedure
  Procedure setCkReadTimeoutMs(obj.i, value.l) : ProcedureReturn StreamPSetReadTimeoutMs(obj,value) : EndProcedure
  Procedure.s ckSinkFile(obj.i) : ProcedureReturn PeekS(StreamSinkFile(obj)) : EndProcedure
  Procedure setCkSinkFile(obj.i, value.s) : ProcedureReturn StreamPSetSinkFile(obj,value) : EndProcedure
  Procedure.l ckSinkFileAppend(obj.i) : ProcedureReturn StreamSinkFileAppend(obj) : EndProcedure
  Procedure setCkSinkFileAppend(obj.i, value.l) : ProcedureReturn StreamPSetSinkFileAppend(obj,value) : EndProcedure
  Procedure.s ckSourceFile(obj.i) : ProcedureReturn PeekS(StreamSourceFile(obj)) : EndProcedure
  Procedure setCkSourceFile(obj.i, value.s) : ProcedureReturn StreamPSetSourceFile(obj,value) : EndProcedure
  Procedure.l ckSourceFilePart(obj.i) : ProcedureReturn StreamSourceFilePart(obj) : EndProcedure
  Procedure setCkSourceFilePart(obj.i, value.l) : ProcedureReturn StreamPSetSourceFilePart(obj,value) : EndProcedure
  Procedure.l ckSourceFilePartSize(obj.i) : ProcedureReturn StreamSourceFilePartSize(obj) : EndProcedure
  Procedure setCkSourceFilePartSize(obj.i, value.l) : ProcedureReturn StreamPSetSourceFilePartSize(obj,value) : EndProcedure
  Procedure.l ckStringBom(obj.i) : ProcedureReturn StreamStringBom(obj) : EndProcedure
  Procedure setCkStringBom(obj.i, value.l) : ProcedureReturn StreamPSetStringBom(obj,value) : EndProcedure
  Procedure.s ckStringCharset(obj.i) : ProcedureReturn PeekS(StreamStringCharset(obj)) : EndProcedure
  Procedure setCkStringCharset(obj.i, value.s) : ProcedureReturn StreamPSetStringCharset(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn StreamVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn StreamPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(StreamVersion(obj)) : EndProcedure
  Procedure.l ckWriteFailReason(obj.i) : ProcedureReturn StreamWriteFailReason(obj) : EndProcedure
  Procedure.l ckWriteTimeoutMs(obj.i) : ProcedureReturn StreamWriteTimeoutMs(obj) : EndProcedure
  Procedure setCkWriteTimeoutMs(obj.i, value.l) : ProcedureReturn StreamPSetWriteTimeoutMs(obj,value) : EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn StreamLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckReadBd(obj.i, binData.i) :  ProcedureReturn StreamReadBd(obj, binData) :  EndProcedure
  Procedure.i ckReadBdAsync(obj.i, binData.i) :  ProcedureReturn StreamReadBdAsync(obj, binData) :  EndProcedure
  Procedure.s ckReadBytesENC(obj.i, encoding.s) :  ProcedureReturn PeekS(StreamReadBytesENC(obj, encoding)) :  EndProcedure
  Procedure.i ckReadBytesENCAsync(obj.i, encoding.s) :  ProcedureReturn StreamReadBytesENCAsync(obj, encoding) :  EndProcedure
  Procedure.s ckReadNBytesENC(obj.i, numBytes.l, encoding.s) :  ProcedureReturn PeekS(StreamReadNBytesENC(obj, numBytes, encoding)) :  EndProcedure
  Procedure.i ckReadNBytesENCAsync(obj.i, numBytes.l, encoding.s) :  ProcedureReturn StreamReadNBytesENCAsync(obj, numBytes, encoding) :  EndProcedure
  Procedure.l ckReadSb(obj.i, sb.i) :  ProcedureReturn StreamReadSb(obj, sb) :  EndProcedure
  Procedure.i ckReadSbAsync(obj.i, sb.i) :  ProcedureReturn StreamReadSbAsync(obj, sb) :  EndProcedure
  Procedure.s ckReadString(obj.i) :  ProcedureReturn PeekS(StreamReadString(obj)) :  EndProcedure
  Procedure.i ckReadStringAsync(obj.i) :  ProcedureReturn StreamReadStringAsync(obj) :  EndProcedure
  Procedure.s ckReadToCRLF(obj.i) :  ProcedureReturn PeekS(StreamReadToCRLF(obj)) :  EndProcedure
  Procedure.i ckReadToCRLFAsync(obj.i) :  ProcedureReturn StreamReadToCRLFAsync(obj) :  EndProcedure
  Procedure.s ckReadUntilMatch(obj.i, matchStr.s) :  ProcedureReturn PeekS(StreamReadUntilMatch(obj, matchStr)) :  EndProcedure
  Procedure.i ckReadUntilMatchAsync(obj.i, matchStr.s) :  ProcedureReturn StreamReadUntilMatchAsync(obj, matchStr) :  EndProcedure
  Procedure ckReset(obj.i) :  ProcedureReturn StreamReset(obj) :  EndProcedure
  Procedure.l ckRunStream(obj.i) :  ProcedureReturn StreamRunStream(obj) :  EndProcedure
  Procedure.i ckRunStreamAsync(obj.i) :  ProcedureReturn StreamRunStreamAsync(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn StreamSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetSinkStream(obj.i, strm.i) :  ProcedureReturn StreamSetSinkStream(obj, strm) :  EndProcedure
  Procedure.l ckSetSourceStream(obj.i, strm.i) :  ProcedureReturn StreamSetSourceStream(obj, strm) :  EndProcedure
  Procedure.l ckSetSourceString(obj.i, srcStr.s, charset.s) :  ProcedureReturn StreamSetSourceString(obj, srcStr, charset) :  EndProcedure
  Procedure.l ckWriteBd(obj.i, binData.i) :  ProcedureReturn StreamWriteBd(obj, binData) :  EndProcedure
  Procedure.i ckWriteBdAsync(obj.i, binData.i) :  ProcedureReturn StreamWriteBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckWriteByte(obj.i, byteVal.l) :  ProcedureReturn StreamWriteByte(obj, byteVal) :  EndProcedure
  Procedure.i ckWriteByteAsync(obj.i, byteVal.l) :  ProcedureReturn StreamWriteByteAsync(obj, byteVal) :  EndProcedure
  Procedure.l ckWriteBytesENC(obj.i, byteData.s, encoding.s) :  ProcedureReturn StreamWriteBytesENC(obj, byteData, encoding) :  EndProcedure
  Procedure.i ckWriteBytesENCAsync(obj.i, byteData.s, encoding.s) :  ProcedureReturn StreamWriteBytesENCAsync(obj, byteData, encoding) :  EndProcedure
  Procedure.l ckWriteClose(obj.i) :  ProcedureReturn StreamWriteClose(obj) :  EndProcedure
  Procedure.l ckWriteSb(obj.i, sb.i) :  ProcedureReturn StreamWriteSb(obj, sb) :  EndProcedure
  Procedure.i ckWriteSbAsync(obj.i, sb.i) :  ProcedureReturn StreamWriteSbAsync(obj, sb) :  EndProcedure
  Procedure.l ckWriteString(obj.i, str.s) :  ProcedureReturn StreamWriteString(obj, str) :  EndProcedure
  Procedure.i ckWriteStringAsync(obj.i, str.s) :  ProcedureReturn StreamWriteStringAsync(obj, str) :  EndProcedure
EndModule

