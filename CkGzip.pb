DeclareModule CkGzip
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckComment(obj.i)
  Declare setCkComment(obj.i, value.s)
  Declare.l ckCompressionLevel(obj.i)
  Declare setCkCompressionLevel(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckFilename(obj.i)
  Declare setCkFilename(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastModStr(obj.i)
  Declare setCkLastModStr(obj.i, value.s)
  Declare.l ckUseCurrentDate(obj.i)
  Declare setCkUseCurrentDate(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckCompressBd(obj.i, binDat.i)
  Declare.i ckCompressBdAsync(obj.i, binDat.i)
  Declare.l ckCompressFile(obj.i, inFilename.s, destPath.s)
  Declare.i ckCompressFileAsync(obj.i, inFilename.s, destPath.s)
  Declare.l ckCompressFile2(obj.i, inFilename.s, embeddedFilename.s, destPath.s)
  Declare.i ckCompressFile2Async(obj.i, inFilename.s, embeddedFilename.s, destPath.s)
  Declare.s ckCompressStringENC(obj.i, inStr.s, charset.s, encoding.s)
  Declare.l ckCompressStringToFile(obj.i, inStr.s, destCharset.s, destPath.s)
  Declare.i ckCompressStringToFileAsync(obj.i, inStr.s, destCharset.s, destPath.s)
  Declare.s ckDeflateStringENC(obj.i, inString.s, charsetName.s, outputEncoding.s)
  Declare.l ckExamineFile(obj.i, inGzFilename.s)
  Declare.i ckGetDt(obj.i)
  Declare.s ckInflateStringENC(obj.i, inString.s, convertFromCharset.s, inputEncoding.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetDt(obj.i, dt.i)
  Declare.l ckUncompressBd(obj.i, binDat.i)
  Declare.i ckUncompressBdAsync(obj.i, binDat.i)
  Declare.l ckUncompressFile(obj.i, srcPath.s, destPath.s)
  Declare.i ckUncompressFileAsync(obj.i, srcPath.s, destPath.s)
  Declare.s ckUncompressFileToString(obj.i, gzFilename.s, charset.s)
  Declare.i ckUncompressFileToStringAsync(obj.i, gzFilename.s, charset.s)
  Declare.s ckUncompressStringENC(obj.i, inStr.s, charset.s, encoding.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUnTarGz(obj.i, tgzFilename.s, destDir.s, bNoAbsolute.l)
  Declare.i ckUnTarGzAsync(obj.i, tgzFilename.s, destDir.s, bNoAbsolute.l)
  Declare.s ckXfdlToXml(obj.i, xfldData.s)
EndDeclareModule

Module CkGzip
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkGzipCreate()
  PrototypeC CkGzipDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkGzipLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkGzipLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkGzipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkGzipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkGzipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global GzipCreate.CkGzipCreate = GetFunction(CkGzipLibId,"CkGzipU_CreateW")
  Global GzipDispose.CkGzipDispose = GetFunction(CkGzipLibId,"CkGzipU_DisposeW")
  Global GzipAbortCurrent.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getAbortCurrentW")
  Global GzipPSetAbortCurrent.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putAbortCurrentW")
  Global GzipComment.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_commentW")
  Global GzipPSetComment.cksPropSet = GetFunction(CkGzipLibId,"CkGzipU_putCommentW")
  Global GzipCompressionLevel.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getCompressionLevelW")
  Global GzipPSetCompressionLevel.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putCompressionLevelW")
  Global GzipDebugLogFilePath.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_debugLogFilePathW")
  Global GzipPSetDebugLogFilePath.cksPropSet = GetFunction(CkGzipLibId,"CkGzipU_putDebugLogFilePathW")
  Global GzipFilename.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_filenameW")
  Global GzipPSetFilename.cksPropSet = GetFunction(CkGzipLibId,"CkGzipU_putFilenameW")
  Global GzipHeartbeatMs.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getHeartbeatMsW")
  Global GzipPSetHeartbeatMs.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putHeartbeatMsW")
  Global GzipLastErrorHtml.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_lastErrorHtmlW")
  Global GzipLastErrorText.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_lastErrorTextW")
  Global GzipLastErrorXml.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_lastErrorXmlW")
  Global GzipLastMethodSuccess.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getLastMethodSuccessW")
  Global GzipPSetLastMethodSuccess.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putLastMethodSuccessW")
  Global GzipLastModStr.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_lastModStrW")
  Global GzipPSetLastModStr.cksPropSet = GetFunction(CkGzipLibId,"CkGzipU_putLastModStrW")
  Global GzipUseCurrentDate.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getUseCurrentDateW")
  Global GzipPSetUseCurrentDate.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putUseCurrentDateW")
  Global GzipVerboseLogging.cklPropGet = GetFunction(CkGzipLibId,"CkGzipU_getVerboseLoggingW")
  Global GzipPSetVerboseLogging.cklPropSet = GetFunction(CkGzipLibId,"CkGzipU_putVerboseLoggingW")
  Global GzipVersion.cksPropGet = GetFunction(CkGzipLibId,"CkGzipU_versionW")
  Global GzipCompressBd.cklMi = GetFunction(CkGzipLibId,"CkGzipU_CompressBdW")
  Global GzipCompressBdAsync.ckiMi = GetFunction(CkGzipLibId,"CkGzipU_CompressBdAsyncW")
  Global GzipCompressFile.cklMss = GetFunction(CkGzipLibId,"CkGzipU_CompressFileW")
  Global GzipCompressFileAsync.ckiMss = GetFunction(CkGzipLibId,"CkGzipU_CompressFileAsyncW")
  Global GzipCompressFile2.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_CompressFile2W")
  Global GzipCompressFile2Async.ckiMsss = GetFunction(CkGzipLibId,"CkGzipU_CompressFile2AsyncW")
  Global GzipCompressStringENC.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_compressStringENCW")
  Global GzipCompressStringToFile.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_CompressStringToFileW")
  Global GzipCompressStringToFileAsync.ckiMsss = GetFunction(CkGzipLibId,"CkGzipU_CompressStringToFileAsyncW")
  Global GzipDeflateStringENC.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_deflateStringENCW")
  Global GzipExamineFile.cklMs = GetFunction(CkGzipLibId,"CkGzipU_ExamineFileW")
  Global GzipGetDt.ckiM = GetFunction(CkGzipLibId,"CkGzipU_GetDtW")
  Global GzipInflateStringENC.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_inflateStringENCW")
  Global GzipLoadTaskCaller.cklMi = GetFunction(CkGzipLibId,"CkGzipU_LoadTaskCallerW")
  Global GzipSaveLastError.cklMs = GetFunction(CkGzipLibId,"CkGzipU_SaveLastErrorW")
  Global GzipSetDt.cklMi = GetFunction(CkGzipLibId,"CkGzipU_SetDtW")
  Global GzipUncompressBd.cklMi = GetFunction(CkGzipLibId,"CkGzipU_UncompressBdW")
  Global GzipUncompressBdAsync.ckiMi = GetFunction(CkGzipLibId,"CkGzipU_UncompressBdAsyncW")
  Global GzipUncompressFile.cklMss = GetFunction(CkGzipLibId,"CkGzipU_UncompressFileW")
  Global GzipUncompressFileAsync.ckiMss = GetFunction(CkGzipLibId,"CkGzipU_UncompressFileAsyncW")
  Global GzipUncompressFileToString.cklMss = GetFunction(CkGzipLibId,"CkGzipU_uncompressFileToStringW")
  Global GzipUncompressFileToStringAsync.ckiMss = GetFunction(CkGzipLibId,"CkGzipU_UncompressFileToStringAsyncW")
  Global GzipUncompressStringENC.cklMsss = GetFunction(CkGzipLibId,"CkGzipU_uncompressStringENCW")
  Global GzipUnlockComponent.cklMs = GetFunction(CkGzipLibId,"CkGzipU_UnlockComponentW")
  Global GzipUnTarGz.cklMssl = GetFunction(CkGzipLibId,"CkGzipU_UnTarGzW")
  Global GzipUnTarGzAsync.ckiMssl = GetFunction(CkGzipLibId,"CkGzipU_UnTarGzAsyncW")
  Global GzipXfdlToXml.cklMs = GetFunction(CkGzipLibId,"CkGzipU_xfdlToXmlW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn GzipCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn GzipDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn GzipAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn GzipPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckComment(obj.i) : ProcedureReturn PeekS(GzipComment(obj)) : EndProcedure
  Procedure setCkComment(obj.i, value.s) : ProcedureReturn GzipPSetComment(obj,value) : EndProcedure
  Procedure.l ckCompressionLevel(obj.i) : ProcedureReturn GzipCompressionLevel(obj) : EndProcedure
  Procedure setCkCompressionLevel(obj.i, value.l) : ProcedureReturn GzipPSetCompressionLevel(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(GzipDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn GzipPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckFilename(obj.i) : ProcedureReturn PeekS(GzipFilename(obj)) : EndProcedure
  Procedure setCkFilename(obj.i, value.s) : ProcedureReturn GzipPSetFilename(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn GzipHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn GzipPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(GzipLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(GzipLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(GzipLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn GzipLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn GzipPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastModStr(obj.i) : ProcedureReturn PeekS(GzipLastModStr(obj)) : EndProcedure
  Procedure setCkLastModStr(obj.i, value.s) : ProcedureReturn GzipPSetLastModStr(obj,value) : EndProcedure
  Procedure.l ckUseCurrentDate(obj.i) : ProcedureReturn GzipUseCurrentDate(obj) : EndProcedure
  Procedure setCkUseCurrentDate(obj.i, value.l) : ProcedureReturn GzipPSetUseCurrentDate(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn GzipVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn GzipPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(GzipVersion(obj)) : EndProcedure
  Procedure.l ckCompressBd(obj.i, binDat.i) :  ProcedureReturn GzipCompressBd(obj, binDat) :  EndProcedure
  Procedure.i ckCompressBdAsync(obj.i, binDat.i) :  ProcedureReturn GzipCompressBdAsync(obj, binDat) :  EndProcedure
  Procedure.l ckCompressFile(obj.i, inFilename.s, destPath.s) :  ProcedureReturn GzipCompressFile(obj, inFilename, destPath) :  EndProcedure
  Procedure.i ckCompressFileAsync(obj.i, inFilename.s, destPath.s) :  ProcedureReturn GzipCompressFileAsync(obj, inFilename, destPath) :  EndProcedure
  Procedure.l ckCompressFile2(obj.i, inFilename.s, embeddedFilename.s, destPath.s) :  ProcedureReturn GzipCompressFile2(obj, inFilename, embeddedFilename, destPath) :  EndProcedure
  Procedure.i ckCompressFile2Async(obj.i, inFilename.s, embeddedFilename.s, destPath.s) :  ProcedureReturn GzipCompressFile2Async(obj, inFilename, embeddedFilename, destPath) :  EndProcedure
  Procedure.s ckCompressStringENC(obj.i, inStr.s, charset.s, encoding.s) :  ProcedureReturn PeekS(GzipCompressStringENC(obj, inStr, charset, encoding)) :  EndProcedure
  Procedure.l ckCompressStringToFile(obj.i, inStr.s, destCharset.s, destPath.s) :  ProcedureReturn GzipCompressStringToFile(obj, inStr, destCharset, destPath) :  EndProcedure
  Procedure.i ckCompressStringToFileAsync(obj.i, inStr.s, destCharset.s, destPath.s) :  ProcedureReturn GzipCompressStringToFileAsync(obj, inStr, destCharset, destPath) :  EndProcedure
  Procedure.s ckDeflateStringENC(obj.i, inString.s, charsetName.s, outputEncoding.s) :  ProcedureReturn PeekS(GzipDeflateStringENC(obj, inString, charsetName, outputEncoding)) :  EndProcedure
  Procedure.l ckExamineFile(obj.i, inGzFilename.s) :  ProcedureReturn GzipExamineFile(obj, inGzFilename) :  EndProcedure
  Procedure.i ckGetDt(obj.i) :  ProcedureReturn GzipGetDt(obj) :  EndProcedure
  Procedure.s ckInflateStringENC(obj.i, inString.s, convertFromCharset.s, inputEncoding.s) :  ProcedureReturn PeekS(GzipInflateStringENC(obj, inString, convertFromCharset, inputEncoding)) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn GzipLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn GzipSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetDt(obj.i, dt.i) :  ProcedureReturn GzipSetDt(obj, dt) :  EndProcedure
  Procedure.l ckUncompressBd(obj.i, binDat.i) :  ProcedureReturn GzipUncompressBd(obj, binDat) :  EndProcedure
  Procedure.i ckUncompressBdAsync(obj.i, binDat.i) :  ProcedureReturn GzipUncompressBdAsync(obj, binDat) :  EndProcedure
  Procedure.l ckUncompressFile(obj.i, srcPath.s, destPath.s) :  ProcedureReturn GzipUncompressFile(obj, srcPath, destPath) :  EndProcedure
  Procedure.i ckUncompressFileAsync(obj.i, srcPath.s, destPath.s) :  ProcedureReturn GzipUncompressFileAsync(obj, srcPath, destPath) :  EndProcedure
  Procedure.s ckUncompressFileToString(obj.i, gzFilename.s, charset.s) :  ProcedureReturn PeekS(GzipUncompressFileToString(obj, gzFilename, charset)) :  EndProcedure
  Procedure.i ckUncompressFileToStringAsync(obj.i, gzFilename.s, charset.s) :  ProcedureReturn GzipUncompressFileToStringAsync(obj, gzFilename, charset) :  EndProcedure
  Procedure.s ckUncompressStringENC(obj.i, inStr.s, charset.s, encoding.s) :  ProcedureReturn PeekS(GzipUncompressStringENC(obj, inStr, charset, encoding)) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn GzipUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUnTarGz(obj.i, tgzFilename.s, destDir.s, bNoAbsolute.l) :  ProcedureReturn GzipUnTarGz(obj, tgzFilename, destDir, bNoAbsolute) :  EndProcedure
  Procedure.i ckUnTarGzAsync(obj.i, tgzFilename.s, destDir.s, bNoAbsolute.l) :  ProcedureReturn GzipUnTarGzAsync(obj, tgzFilename, destDir, bNoAbsolute) :  EndProcedure
  Procedure.s ckXfdlToXml(obj.i, xfldData.s) :  ProcedureReturn PeekS(GzipXfdlToXml(obj, xfldData)) :  EndProcedure
EndModule

