DeclareModule CkCompression
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAlgorithm(obj.i)
  Declare setCkAlgorithm(obj.i, value.s)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDeflateLevel(obj.i)
  Declare setCkDeflateLevel(obj.i, value.l)
  Declare.s ckEncodingMode(obj.i)
  Declare setCkEncodingMode(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckBeginCompressStringENC(obj.i, str.s)
  Declare.i ckBeginCompressStringENCAsync(obj.i, str.s)
  Declare.s ckBeginDecompressStringENC(obj.i, str.s)
  Declare.i ckBeginDecompressStringENCAsync(obj.i, str.s)
  Declare.l ckCompressBd(obj.i, binData.i)
  Declare.i ckCompressBdAsync(obj.i, binData.i)
  Declare.l ckCompressFile(obj.i, srcPath.s, destPath.s)
  Declare.i ckCompressFileAsync(obj.i, srcPath.s, destPath.s)
  Declare.l ckCompressSb(obj.i, sb.i, binData.i)
  Declare.i ckCompressSbAsync(obj.i, sb.i, binData.i)
  Declare.l ckCompressStream(obj.i, strm.i)
  Declare.i ckCompressStreamAsync(obj.i, strm.i)
  Declare.s ckCompressStringENC(obj.i, str.s)
  Declare.i ckCompressStringENCAsync(obj.i, str.s)
  Declare.l ckDecompressBd(obj.i, binData.i)
  Declare.i ckDecompressBdAsync(obj.i, binData.i)
  Declare.l ckDecompressFile(obj.i, srcPath.s, destPath.s)
  Declare.i ckDecompressFileAsync(obj.i, srcPath.s, destPath.s)
  Declare.l ckDecompressSb(obj.i, binData.i, sb.i)
  Declare.i ckDecompressSbAsync(obj.i, binData.i, sb.i)
  Declare.l ckDecompressStream(obj.i, strm.i)
  Declare.i ckDecompressStreamAsync(obj.i, strm.i)
  Declare.s ckDecompressStringENC(obj.i, encodedCompressedData.s)
  Declare.i ckDecompressStringENCAsync(obj.i, encodedCompressedData.s)
  Declare.s ckEndCompressBytesENC(obj.i)
  Declare.i ckEndCompressBytesENCAsync(obj.i)
  Declare.s ckEndCompressStringENC(obj.i)
  Declare.i ckEndCompressStringENCAsync(obj.i)
  Declare.s ckEndDecompressString(obj.i)
  Declare.i ckEndDecompressStringAsync(obj.i)
  Declare.s ckEndDecompressStringENC(obj.i)
  Declare.i ckEndDecompressStringENCAsync(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.s ckMoreCompressStringENC(obj.i, str.s)
  Declare.i ckMoreCompressStringENCAsync(obj.i, str.s)
  Declare.s ckMoreDecompressStringENC(obj.i, str.s)
  Declare.i ckMoreDecompressStringENCAsync(obj.i, str.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkCompression
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkCompressionCreate()
  PrototypeC CkCompressionDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCompressionLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCompressionLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCompressionLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCompressionLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCompressionLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CompressionCreate.CkCompressionCreate = GetFunction(CkCompressionLibId,"CkCompressionU_CreateW")
  Global CompressionDispose.CkCompressionDispose = GetFunction(CkCompressionLibId,"CkCompressionU_DisposeW")
  Global CompressionAlgorithm.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_algorithmW")
  Global CompressionPSetAlgorithm.cksPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putAlgorithmW")
  Global CompressionCharset.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_charsetW")
  Global CompressionPSetCharset.cksPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putCharsetW")
  Global CompressionDebugLogFilePath.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_debugLogFilePathW")
  Global CompressionPSetDebugLogFilePath.cksPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putDebugLogFilePathW")
  Global CompressionDeflateLevel.cklPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_getDeflateLevelW")
  Global CompressionPSetDeflateLevel.cklPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putDeflateLevelW")
  Global CompressionEncodingMode.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_encodingModeW")
  Global CompressionPSetEncodingMode.cksPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putEncodingModeW")
  Global CompressionHeartbeatMs.cklPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_getHeartbeatMsW")
  Global CompressionPSetHeartbeatMs.cklPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putHeartbeatMsW")
  Global CompressionLastErrorHtml.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_lastErrorHtmlW")
  Global CompressionLastErrorText.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_lastErrorTextW")
  Global CompressionLastErrorXml.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_lastErrorXmlW")
  Global CompressionLastMethodSuccess.cklPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_getLastMethodSuccessW")
  Global CompressionPSetLastMethodSuccess.cklPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putLastMethodSuccessW")
  Global CompressionVerboseLogging.cklPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_getVerboseLoggingW")
  Global CompressionPSetVerboseLogging.cklPropSet = GetFunction(CkCompressionLibId,"CkCompressionU_putVerboseLoggingW")
  Global CompressionVersion.cksPropGet = GetFunction(CkCompressionLibId,"CkCompressionU_versionW")
  Global CompressionBeginCompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_beginCompressStringENCW")
  Global CompressionBeginCompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_BeginCompressStringENCAsyncW")
  Global CompressionBeginDecompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_beginDecompressStringENCW")
  Global CompressionBeginDecompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_BeginDecompressStringENCAsyncW")
  Global CompressionCompressBd.cklMi = GetFunction(CkCompressionLibId,"CkCompressionU_CompressBdW")
  Global CompressionCompressBdAsync.ckiMi = GetFunction(CkCompressionLibId,"CkCompressionU_CompressBdAsyncW")
  Global CompressionCompressFile.cklMss = GetFunction(CkCompressionLibId,"CkCompressionU_CompressFileW")
  Global CompressionCompressFileAsync.ckiMss = GetFunction(CkCompressionLibId,"CkCompressionU_CompressFileAsyncW")
  Global CompressionCompressSb.cklMii = GetFunction(CkCompressionLibId,"CkCompressionU_CompressSbW")
  Global CompressionCompressSbAsync.ckiMii = GetFunction(CkCompressionLibId,"CkCompressionU_CompressSbAsyncW")
  Global CompressionCompressStream.cklMi = GetFunction(CkCompressionLibId,"CkCompressionU_CompressStreamW")
  Global CompressionCompressStreamAsync.ckiMi = GetFunction(CkCompressionLibId,"CkCompressionU_CompressStreamAsyncW")
  Global CompressionCompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_compressStringENCW")
  Global CompressionCompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_CompressStringENCAsyncW")
  Global CompressionDecompressBd.cklMi = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressBdW")
  Global CompressionDecompressBdAsync.ckiMi = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressBdAsyncW")
  Global CompressionDecompressFile.cklMss = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressFileW")
  Global CompressionDecompressFileAsync.ckiMss = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressFileAsyncW")
  Global CompressionDecompressSb.cklMii = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressSbW")
  Global CompressionDecompressSbAsync.ckiMii = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressSbAsyncW")
  Global CompressionDecompressStream.cklMi = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressStreamW")
  Global CompressionDecompressStreamAsync.ckiMi = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressStreamAsyncW")
  Global CompressionDecompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_decompressStringENCW")
  Global CompressionDecompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_DecompressStringENCAsyncW")
  Global CompressionEndCompressBytesENC.cklM = GetFunction(CkCompressionLibId,"CkCompressionU_endCompressBytesENCW")
  Global CompressionEndCompressBytesENCAsync.ckiM = GetFunction(CkCompressionLibId,"CkCompressionU_EndCompressBytesENCAsyncW")
  Global CompressionEndCompressStringENC.cklM = GetFunction(CkCompressionLibId,"CkCompressionU_endCompressStringENCW")
  Global CompressionEndCompressStringENCAsync.ckiM = GetFunction(CkCompressionLibId,"CkCompressionU_EndCompressStringENCAsyncW")
  Global CompressionEndDecompressString.cklM = GetFunction(CkCompressionLibId,"CkCompressionU_endDecompressStringW")
  Global CompressionEndDecompressStringAsync.ckiM = GetFunction(CkCompressionLibId,"CkCompressionU_EndDecompressStringAsyncW")
  Global CompressionEndDecompressStringENC.cklM = GetFunction(CkCompressionLibId,"CkCompressionU_endDecompressStringENCW")
  Global CompressionEndDecompressStringENCAsync.ckiM = GetFunction(CkCompressionLibId,"CkCompressionU_EndDecompressStringENCAsyncW")
  Global CompressionLoadTaskCaller.cklMi = GetFunction(CkCompressionLibId,"CkCompressionU_LoadTaskCallerW")
  Global CompressionMoreCompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_moreCompressStringENCW")
  Global CompressionMoreCompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_MoreCompressStringENCAsyncW")
  Global CompressionMoreDecompressStringENC.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_moreDecompressStringENCW")
  Global CompressionMoreDecompressStringENCAsync.ckiMs = GetFunction(CkCompressionLibId,"CkCompressionU_MoreDecompressStringENCAsyncW")
  Global CompressionSaveLastError.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_SaveLastErrorW")
  Global CompressionUnlockComponent.cklMs = GetFunction(CkCompressionLibId,"CkCompressionU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CompressionCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CompressionDispose(obj) : EndProcedure
  Procedure.s ckAlgorithm(obj.i) : ProcedureReturn PeekS(CompressionAlgorithm(obj)) : EndProcedure
  Procedure setCkAlgorithm(obj.i, value.s) : ProcedureReturn CompressionPSetAlgorithm(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(CompressionCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn CompressionPSetCharset(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CompressionDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CompressionPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDeflateLevel(obj.i) : ProcedureReturn CompressionDeflateLevel(obj) : EndProcedure
  Procedure setCkDeflateLevel(obj.i, value.l) : ProcedureReturn CompressionPSetDeflateLevel(obj,value) : EndProcedure
  Procedure.s ckEncodingMode(obj.i) : ProcedureReturn PeekS(CompressionEncodingMode(obj)) : EndProcedure
  Procedure setCkEncodingMode(obj.i, value.s) : ProcedureReturn CompressionPSetEncodingMode(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn CompressionHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn CompressionPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CompressionLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CompressionLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CompressionLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CompressionLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CompressionPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CompressionVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CompressionPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CompressionVersion(obj)) : EndProcedure
  Procedure.s ckBeginCompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(CompressionBeginCompressStringENC(obj, str)) :  EndProcedure
  Procedure.i ckBeginCompressStringENCAsync(obj.i, str.s) :  ProcedureReturn CompressionBeginCompressStringENCAsync(obj, str) :  EndProcedure
  Procedure.s ckBeginDecompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(CompressionBeginDecompressStringENC(obj, str)) :  EndProcedure
  Procedure.i ckBeginDecompressStringENCAsync(obj.i, str.s) :  ProcedureReturn CompressionBeginDecompressStringENCAsync(obj, str) :  EndProcedure
  Procedure.l ckCompressBd(obj.i, binData.i) :  ProcedureReturn CompressionCompressBd(obj, binData) :  EndProcedure
  Procedure.i ckCompressBdAsync(obj.i, binData.i) :  ProcedureReturn CompressionCompressBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckCompressFile(obj.i, srcPath.s, destPath.s) :  ProcedureReturn CompressionCompressFile(obj, srcPath, destPath) :  EndProcedure
  Procedure.i ckCompressFileAsync(obj.i, srcPath.s, destPath.s) :  ProcedureReturn CompressionCompressFileAsync(obj, srcPath, destPath) :  EndProcedure
  Procedure.l ckCompressSb(obj.i, sb.i, binData.i) :  ProcedureReturn CompressionCompressSb(obj, sb, binData) :  EndProcedure
  Procedure.i ckCompressSbAsync(obj.i, sb.i, binData.i) :  ProcedureReturn CompressionCompressSbAsync(obj, sb, binData) :  EndProcedure
  Procedure.l ckCompressStream(obj.i, strm.i) :  ProcedureReturn CompressionCompressStream(obj, strm) :  EndProcedure
  Procedure.i ckCompressStreamAsync(obj.i, strm.i) :  ProcedureReturn CompressionCompressStreamAsync(obj, strm) :  EndProcedure
  Procedure.s ckCompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(CompressionCompressStringENC(obj, str)) :  EndProcedure
  Procedure.i ckCompressStringENCAsync(obj.i, str.s) :  ProcedureReturn CompressionCompressStringENCAsync(obj, str) :  EndProcedure
  Procedure.l ckDecompressBd(obj.i, binData.i) :  ProcedureReturn CompressionDecompressBd(obj, binData) :  EndProcedure
  Procedure.i ckDecompressBdAsync(obj.i, binData.i) :  ProcedureReturn CompressionDecompressBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckDecompressFile(obj.i, srcPath.s, destPath.s) :  ProcedureReturn CompressionDecompressFile(obj, srcPath, destPath) :  EndProcedure
  Procedure.i ckDecompressFileAsync(obj.i, srcPath.s, destPath.s) :  ProcedureReturn CompressionDecompressFileAsync(obj, srcPath, destPath) :  EndProcedure
  Procedure.l ckDecompressSb(obj.i, binData.i, sb.i) :  ProcedureReturn CompressionDecompressSb(obj, binData, sb) :  EndProcedure
  Procedure.i ckDecompressSbAsync(obj.i, binData.i, sb.i) :  ProcedureReturn CompressionDecompressSbAsync(obj, binData, sb) :  EndProcedure
  Procedure.l ckDecompressStream(obj.i, strm.i) :  ProcedureReturn CompressionDecompressStream(obj, strm) :  EndProcedure
  Procedure.i ckDecompressStreamAsync(obj.i, strm.i) :  ProcedureReturn CompressionDecompressStreamAsync(obj, strm) :  EndProcedure
  Procedure.s ckDecompressStringENC(obj.i, encodedCompressedData.s) :  ProcedureReturn PeekS(CompressionDecompressStringENC(obj, encodedCompressedData)) :  EndProcedure
  Procedure.i ckDecompressStringENCAsync(obj.i, encodedCompressedData.s) :  ProcedureReturn CompressionDecompressStringENCAsync(obj, encodedCompressedData) :  EndProcedure
  Procedure.s ckEndCompressBytesENC(obj.i) :  ProcedureReturn PeekS(CompressionEndCompressBytesENC(obj)) :  EndProcedure
  Procedure.i ckEndCompressBytesENCAsync(obj.i) :  ProcedureReturn CompressionEndCompressBytesENCAsync(obj) :  EndProcedure
  Procedure.s ckEndCompressStringENC(obj.i) :  ProcedureReturn PeekS(CompressionEndCompressStringENC(obj)) :  EndProcedure
  Procedure.i ckEndCompressStringENCAsync(obj.i) :  ProcedureReturn CompressionEndCompressStringENCAsync(obj) :  EndProcedure
  Procedure.s ckEndDecompressString(obj.i) :  ProcedureReturn PeekS(CompressionEndDecompressString(obj)) :  EndProcedure
  Procedure.i ckEndDecompressStringAsync(obj.i) :  ProcedureReturn CompressionEndDecompressStringAsync(obj) :  EndProcedure
  Procedure.s ckEndDecompressStringENC(obj.i) :  ProcedureReturn PeekS(CompressionEndDecompressStringENC(obj)) :  EndProcedure
  Procedure.i ckEndDecompressStringENCAsync(obj.i) :  ProcedureReturn CompressionEndDecompressStringENCAsync(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn CompressionLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.s ckMoreCompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(CompressionMoreCompressStringENC(obj, str)) :  EndProcedure
  Procedure.i ckMoreCompressStringENCAsync(obj.i, str.s) :  ProcedureReturn CompressionMoreCompressStringENCAsync(obj, str) :  EndProcedure
  Procedure.s ckMoreDecompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(CompressionMoreDecompressStringENC(obj, str)) :  EndProcedure
  Procedure.i ckMoreDecompressStringENCAsync(obj.i, str.s) :  ProcedureReturn CompressionMoreDecompressStringENCAsync(obj, str) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CompressionSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn CompressionUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

