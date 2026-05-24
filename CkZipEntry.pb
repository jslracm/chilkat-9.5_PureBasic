DeclareModule CkZipEntry
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckComment(obj.i)
  Declare setCkComment(obj.i, value.s)
  Declare.l ckCompressedLength(obj.i)
  Declare.q ckCompressedLength64(obj.i)
  Declare.l ckCompressionLevel(obj.i)
  Declare setCkCompressionLevel(obj.i, value.l)
  Declare.l ckCompressionMethod(obj.i)
  Declare setCkCompressionMethod(obj.i, value.l)
  Declare.l ckCrc(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckEncryptionKeyLen(obj.i)
  Declare.l ckEntryID(obj.i)
  Declare.l ckEntryType(obj.i)
  Declare.s ckFileDateTimeStr(obj.i)
  Declare setCkFileDateTimeStr(obj.i, value.s)
  Declare.s ckFileName(obj.i)
  Declare setCkFileName(obj.i, value.s)
  Declare.s ckFileNameHex(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckIsAesEncrypted(obj.i)
  Declare.l ckIsDirectory(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckTextFlag(obj.i)
  Declare setCkTextFlag(obj.i, value.l)
  Declare.l ckUncompressedLength(obj.i)
  Declare.q ckUncompressedLength64(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppendString(obj.i, strContent.s, charset.s)
  Declare.i ckAppendStringAsync(obj.i, strContent.s, charset.s)
  Declare.s ckCopyToBase64(obj.i)
  Declare.s ckCopyToHex(obj.i)
  Declare.l ckExtract(obj.i, dirPath.s)
  Declare.i ckExtractAsync(obj.i, dirPath.s)
  Declare.l ckExtractInto(obj.i, dirPath.s)
  Declare.i ckExtractIntoAsync(obj.i, dirPath.s)
  Declare.i ckGetDt(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.i ckNextEntry(obj.i)
  Declare.i ckNextMatchingEntry(obj.i, matchStr.s)
  Declare.l ckReplaceString(obj.i, strContent.s, charset.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetDt(obj.i, dt.i)
  Declare.l ckUnzipToBd(obj.i, binData.i)
  Declare.i ckUnzipToBdAsync(obj.i, binData.i)
  Declare.l ckUnzipToSb(obj.i, lineEndingBehavior.l, srcCharset.s, sb.i)
  Declare.i ckUnzipToSbAsync(obj.i, lineEndingBehavior.l, srcCharset.s, sb.i)
  Declare.l ckUnzipToStream(obj.i, toStream.i)
  Declare.i ckUnzipToStreamAsync(obj.i, toStream.i)
  Declare.s ckUnzipToString(obj.i, lineEndingBehavior.l, srcCharset.s)
  Declare.i ckUnzipToStringAsync(obj.i, lineEndingBehavior.l, srcCharset.s)
EndDeclareModule

Module CkZipEntry
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMlsi(obj.i, arg1.l, arg2.s, arg3.i)
  PrototypeC.i ckiMlsi(obj.i, arg1.l, arg2.s, arg3.i)
  PrototypeC.i CkZipEntryCreate()
  PrototypeC CkZipEntryDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipEntryLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkZipEntryLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkZipEntryLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipEntryLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkZipEntryLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ZipEntryCreate.CkZipEntryCreate = GetFunction(CkZipEntryLibId,"CkZipEntryU_CreateW")
  Global ZipEntryDispose.CkZipEntryDispose = GetFunction(CkZipEntryLibId,"CkZipEntryU_DisposeW")
  Global ZipEntryComment.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_commentW")
  Global ZipEntryPSetComment.cksPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putCommentW")
  Global ZipEntryCompressedLength.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getCompressedLengthW")
  Global ZipEntryCompressedLength64.ckqPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getCompressedLength64W")
  Global ZipEntryCompressionLevel.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getCompressionLevelW")
  Global ZipEntryPSetCompressionLevel.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putCompressionLevelW")
  Global ZipEntryCompressionMethod.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getCompressionMethodW")
  Global ZipEntryPSetCompressionMethod.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putCompressionMethodW")
  Global ZipEntryCrc.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getCrcW")
  Global ZipEntryDebugLogFilePath.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_debugLogFilePathW")
  Global ZipEntryPSetDebugLogFilePath.cksPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putDebugLogFilePathW")
  Global ZipEntryEncryptionKeyLen.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getEncryptionKeyLenW")
  Global ZipEntryEntryID.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getEntryIDW")
  Global ZipEntryEntryType.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getEntryTypeW")
  Global ZipEntryFileDateTimeStr.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_fileDateTimeStrW")
  Global ZipEntryPSetFileDateTimeStr.cksPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putFileDateTimeStrW")
  Global ZipEntryFileName.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_fileNameW")
  Global ZipEntryPSetFileName.cksPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putFileNameW")
  Global ZipEntryFileNameHex.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_fileNameHexW")
  Global ZipEntryHeartbeatMs.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getHeartbeatMsW")
  Global ZipEntryPSetHeartbeatMs.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putHeartbeatMsW")
  Global ZipEntryIsAesEncrypted.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getIsAesEncryptedW")
  Global ZipEntryIsDirectory.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getIsDirectoryW")
  Global ZipEntryLastErrorHtml.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_lastErrorHtmlW")
  Global ZipEntryLastErrorText.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_lastErrorTextW")
  Global ZipEntryLastErrorXml.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_lastErrorXmlW")
  Global ZipEntryLastMethodSuccess.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getLastMethodSuccessW")
  Global ZipEntryPSetLastMethodSuccess.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putLastMethodSuccessW")
  Global ZipEntryTextFlag.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getTextFlagW")
  Global ZipEntryPSetTextFlag.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putTextFlagW")
  Global ZipEntryUncompressedLength.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getUncompressedLengthW")
  Global ZipEntryUncompressedLength64.ckqPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getUncompressedLength64W")
  Global ZipEntryVerboseLogging.cklPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_getVerboseLoggingW")
  Global ZipEntryPSetVerboseLogging.cklPropSet = GetFunction(CkZipEntryLibId,"CkZipEntryU_putVerboseLoggingW")
  Global ZipEntryVersion.cksPropGet = GetFunction(CkZipEntryLibId,"CkZipEntryU_versionW")
  Global ZipEntryAppendString.cklMss = GetFunction(CkZipEntryLibId,"CkZipEntryU_AppendStringW")
  Global ZipEntryAppendStringAsync.ckiMss = GetFunction(CkZipEntryLibId,"CkZipEntryU_AppendStringAsyncW")
  Global ZipEntryCopyToBase64.cklM = GetFunction(CkZipEntryLibId,"CkZipEntryU_copyToBase64W")
  Global ZipEntryCopyToHex.cklM = GetFunction(CkZipEntryLibId,"CkZipEntryU_copyToHexW")
  Global ZipEntryExtract.cklMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_ExtractW")
  Global ZipEntryExtractAsync.ckiMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_ExtractAsyncW")
  Global ZipEntryExtractInto.cklMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_ExtractIntoW")
  Global ZipEntryExtractIntoAsync.ckiMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_ExtractIntoAsyncW")
  Global ZipEntryGetDt.ckiM = GetFunction(CkZipEntryLibId,"CkZipEntryU_GetDtW")
  Global ZipEntryLoadTaskCaller.cklMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_LoadTaskCallerW")
  Global ZipEntryNextEntry.ckiM = GetFunction(CkZipEntryLibId,"CkZipEntryU_NextEntryW")
  Global ZipEntryNextMatchingEntry.ckiMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_NextMatchingEntryW")
  Global ZipEntryReplaceString.cklMss = GetFunction(CkZipEntryLibId,"CkZipEntryU_ReplaceStringW")
  Global ZipEntrySaveLastError.cklMs = GetFunction(CkZipEntryLibId,"CkZipEntryU_SaveLastErrorW")
  Global ZipEntrySetDt.ckvMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_SetDtW")
  Global ZipEntryUnzipToBd.cklMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToBdW")
  Global ZipEntryUnzipToBdAsync.ckiMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToBdAsyncW")
  Global ZipEntryUnzipToSb.cklMlsi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToSbW")
  Global ZipEntryUnzipToSbAsync.ckiMlsi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToSbAsyncW")
  Global ZipEntryUnzipToStream.cklMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToStreamW")
  Global ZipEntryUnzipToStreamAsync.ckiMi = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToStreamAsyncW")
  Global ZipEntryUnzipToString.cklMls = GetFunction(CkZipEntryLibId,"CkZipEntryU_unzipToStringW")
  Global ZipEntryUnzipToStringAsync.ckiMls = GetFunction(CkZipEntryLibId,"CkZipEntryU_UnzipToStringAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ZipEntryCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ZipEntryDispose(obj) : EndProcedure
  Procedure.s ckComment(obj.i) : ProcedureReturn PeekS(ZipEntryComment(obj)) : EndProcedure
  Procedure setCkComment(obj.i, value.s) : ProcedureReturn ZipEntryPSetComment(obj,value) : EndProcedure
  Procedure.l ckCompressedLength(obj.i) : ProcedureReturn ZipEntryCompressedLength(obj) : EndProcedure
  Procedure.q ckCompressedLength64(obj.i) : ProcedureReturn ZipEntryCompressedLength64(obj) : EndProcedure
  Procedure.l ckCompressionLevel(obj.i) : ProcedureReturn ZipEntryCompressionLevel(obj) : EndProcedure
  Procedure setCkCompressionLevel(obj.i, value.l) : ProcedureReturn ZipEntryPSetCompressionLevel(obj,value) : EndProcedure
  Procedure.l ckCompressionMethod(obj.i) : ProcedureReturn ZipEntryCompressionMethod(obj) : EndProcedure
  Procedure setCkCompressionMethod(obj.i, value.l) : ProcedureReturn ZipEntryPSetCompressionMethod(obj,value) : EndProcedure
  Procedure.l ckCrc(obj.i) : ProcedureReturn ZipEntryCrc(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(ZipEntryDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn ZipEntryPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckEncryptionKeyLen(obj.i) : ProcedureReturn ZipEntryEncryptionKeyLen(obj) : EndProcedure
  Procedure.l ckEntryID(obj.i) : ProcedureReturn ZipEntryEntryID(obj) : EndProcedure
  Procedure.l ckEntryType(obj.i) : ProcedureReturn ZipEntryEntryType(obj) : EndProcedure
  Procedure.s ckFileDateTimeStr(obj.i) : ProcedureReturn PeekS(ZipEntryFileDateTimeStr(obj)) : EndProcedure
  Procedure setCkFileDateTimeStr(obj.i, value.s) : ProcedureReturn ZipEntryPSetFileDateTimeStr(obj,value) : EndProcedure
  Procedure.s ckFileName(obj.i) : ProcedureReturn PeekS(ZipEntryFileName(obj)) : EndProcedure
  Procedure setCkFileName(obj.i, value.s) : ProcedureReturn ZipEntryPSetFileName(obj,value) : EndProcedure
  Procedure.s ckFileNameHex(obj.i) : ProcedureReturn PeekS(ZipEntryFileNameHex(obj)) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn ZipEntryHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn ZipEntryPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckIsAesEncrypted(obj.i) : ProcedureReturn ZipEntryIsAesEncrypted(obj) : EndProcedure
  Procedure.l ckIsDirectory(obj.i) : ProcedureReturn ZipEntryIsDirectory(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(ZipEntryLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(ZipEntryLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(ZipEntryLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ZipEntryLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ZipEntryPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckTextFlag(obj.i) : ProcedureReturn ZipEntryTextFlag(obj) : EndProcedure
  Procedure setCkTextFlag(obj.i, value.l) : ProcedureReturn ZipEntryPSetTextFlag(obj,value) : EndProcedure
  Procedure.l ckUncompressedLength(obj.i) : ProcedureReturn ZipEntryUncompressedLength(obj) : EndProcedure
  Procedure.q ckUncompressedLength64(obj.i) : ProcedureReturn ZipEntryUncompressedLength64(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn ZipEntryVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn ZipEntryPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(ZipEntryVersion(obj)) : EndProcedure
  Procedure.l ckAppendString(obj.i, strContent.s, charset.s) :  ProcedureReturn ZipEntryAppendString(obj, strContent, charset) :  EndProcedure
  Procedure.i ckAppendStringAsync(obj.i, strContent.s, charset.s) :  ProcedureReturn ZipEntryAppendStringAsync(obj, strContent, charset) :  EndProcedure
  Procedure.s ckCopyToBase64(obj.i) :  ProcedureReturn PeekS(ZipEntryCopyToBase64(obj)) :  EndProcedure
  Procedure.s ckCopyToHex(obj.i) :  ProcedureReturn PeekS(ZipEntryCopyToHex(obj)) :  EndProcedure
  Procedure.l ckExtract(obj.i, dirPath.s) :  ProcedureReturn ZipEntryExtract(obj, dirPath) :  EndProcedure
  Procedure.i ckExtractAsync(obj.i, dirPath.s) :  ProcedureReturn ZipEntryExtractAsync(obj, dirPath) :  EndProcedure
  Procedure.l ckExtractInto(obj.i, dirPath.s) :  ProcedureReturn ZipEntryExtractInto(obj, dirPath) :  EndProcedure
  Procedure.i ckExtractIntoAsync(obj.i, dirPath.s) :  ProcedureReturn ZipEntryExtractIntoAsync(obj, dirPath) :  EndProcedure
  Procedure.i ckGetDt(obj.i) :  ProcedureReturn ZipEntryGetDt(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn ZipEntryLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.i ckNextEntry(obj.i) :  ProcedureReturn ZipEntryNextEntry(obj) :  EndProcedure
  Procedure.i ckNextMatchingEntry(obj.i, matchStr.s) :  ProcedureReturn ZipEntryNextMatchingEntry(obj, matchStr) :  EndProcedure
  Procedure.l ckReplaceString(obj.i, strContent.s, charset.s) :  ProcedureReturn ZipEntryReplaceString(obj, strContent, charset) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn ZipEntrySaveLastError(obj, path) :  EndProcedure
  Procedure ckSetDt(obj.i, dt.i) :  ProcedureReturn ZipEntrySetDt(obj, dt) :  EndProcedure
  Procedure.l ckUnzipToBd(obj.i, binData.i) :  ProcedureReturn ZipEntryUnzipToBd(obj, binData) :  EndProcedure
  Procedure.i ckUnzipToBdAsync(obj.i, binData.i) :  ProcedureReturn ZipEntryUnzipToBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckUnzipToSb(obj.i, lineEndingBehavior.l, srcCharset.s, sb.i) :  ProcedureReturn ZipEntryUnzipToSb(obj, lineEndingBehavior, srcCharset, sb) :  EndProcedure
  Procedure.i ckUnzipToSbAsync(obj.i, lineEndingBehavior.l, srcCharset.s, sb.i) :  ProcedureReturn ZipEntryUnzipToSbAsync(obj, lineEndingBehavior, srcCharset, sb) :  EndProcedure
  Procedure.l ckUnzipToStream(obj.i, toStream.i) :  ProcedureReturn ZipEntryUnzipToStream(obj, toStream) :  EndProcedure
  Procedure.i ckUnzipToStreamAsync(obj.i, toStream.i) :  ProcedureReturn ZipEntryUnzipToStreamAsync(obj, toStream) :  EndProcedure
  Procedure.s ckUnzipToString(obj.i, lineEndingBehavior.l, srcCharset.s) :  ProcedureReturn PeekS(ZipEntryUnzipToString(obj, lineEndingBehavior, srcCharset)) :  EndProcedure
  Procedure.i ckUnzipToStringAsync(obj.i, lineEndingBehavior.l, srcCharset.s) :  ProcedureReturn ZipEntryUnzipToStringAsync(obj, lineEndingBehavior, srcCharset) :  EndProcedure
EndModule

