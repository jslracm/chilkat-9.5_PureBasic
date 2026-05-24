DeclareModule CkFileAccess
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckCurrentDir(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckEndOfFile(obj.i)
  Declare.l ckFileOpenError(obj.i)
  Declare.s ckFileOpenErrorMsg(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLockFileOnOpen(obj.i)
  Declare setCkLockFileOnOpen(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppendAnsi(obj.i, text.s)
  Declare.l ckAppendBd(obj.i, bd.i)
  Declare.l ckAppendSb(obj.i, sb.i, charset.s)
  Declare.l ckAppendText(obj.i, str.s, charset.s)
  Declare.l ckAppendUnicodeBOM(obj.i)
  Declare.l ckAppendUtf8BOM(obj.i)
  Declare.l ckDirAutoCreate(obj.i, filePath.s)
  Declare.l ckDirCreate(obj.i, dirPath.s)
  Declare.l ckDirDelete(obj.i, dirPath.s)
  Declare.l ckDirEnsureExists(obj.i, dirPath.s)
  Declare ckFileClose(obj.i)
  Declare.l ckFileContentsEqual(obj.i, filePath1.s, filePath2.s)
  Declare.l ckFileCopy(obj.i, existingFilepath.s, newFilepath.s, failIfExists.l)
  Declare.l ckFileDelete(obj.i, filePath.s)
  Declare.l ckFileExists(obj.i, filePath.s)
  Declare.l ckFileExists3(obj.i, path.s)
  Declare.l ckFileOpen(obj.i, filePath.s, accessMode.l, shareMode.l, createDisposition.l, attributes.l)
  Declare.l ckFileReadBd(obj.i, maxNumBytes.l, binData.i)
  Declare.l ckFileRename(obj.i, existingFilepath.s, newFilepath.s)
  Declare.l ckFileSeek(obj.i, offset.l, origin.l)
  Declare.l ckFileSize(obj.i, filePath.s)
  Declare.s ckFileSizeStr(obj.i, filePath.s)
  Declare.l ckFileType(obj.i, path.s)
  Declare.l ckFileWriteBd(obj.i, binData.i, offset.l, numBytes.l)
  Declare.s ckGenBlockId(obj.i, index.l, length.l, encoding.s)
  Declare.s ckGetDirectoryName(obj.i, path.s)
  Declare.s ckGetExtension(obj.i, path.s)
  Declare.s ckGetFileName(obj.i, path.s)
  Declare.s ckGetFileNameWithoutExtension(obj.i, path.s)
  Declare.i ckGetFileTime(obj.i, path.s, which.l)
  Declare.i ckGetLastModified(obj.i, path.s)
  Declare.l ckGetNumBlocks(obj.i, blockSize.l)
  Declare.s ckGetTempFilename(obj.i, dirPath.s, prefix.s)
  Declare.l ckOpenForAppend(obj.i, filePath.s)
  Declare.l ckOpenForRead(obj.i, filePath.s)
  Declare.l ckOpenForReadWrite(obj.i, filePath.s)
  Declare.l ckOpenForWrite(obj.i, filePath.s)
  Declare.s ckReadBinaryToEncoded(obj.i, filePath.s, encoding.s)
  Declare.l ckReadBlockBd(obj.i, blockIndex.l, blockSize.l, bd.i)
  Declare.s ckReadEntireTextFile(obj.i, filePath.s, charset.s)
  Declare.l ckReadNextFragment(obj.i, startAtBeginning.l, beginMarker.s, endMarker.s, charset.s, sb.i)
  Declare.l ckReassembleFile(obj.i, partsDirPath.s, partPrefix.s, partExtension.s, reassembledFilename.s)
  Declare.l ckReplaceStrings(obj.i, filePath.s, charset.s, existingString.s, replacementString.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetCurrentDir(obj.i, dirPath.s)
  Declare.l ckSetFileTimes(obj.i, filePath.s, createTime.i, lastAccessTime.i, lastModTime.i)
  Declare.l ckSetLastModified(obj.i, filePath.s, lastModified.i)
  Declare.l ckSplitFile(obj.i, fileToSplit.s, partPrefix.s, partExtension.s, partSize.l, destDir.s)
  Declare.l ckSymlinkCreate(obj.i, targetPath.s, linkPath.s)
  Declare.s ckSymlinkTarget(obj.i, linkPath.s)
  Declare.l ckTreeDelete(obj.i, path.s)
  Declare.l ckTruncate(obj.i)
  Declare.l ckWriteEntireTextFile(obj.i, filePath.s, textData.s, charset.s, includedPreamble.l)
EndDeclareModule

Module CkFileAccess
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMlsssi(obj.i, arg1.l, arg2.s, arg3.s, arg4.s, arg5.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklMsiii(obj.i, arg1.s, arg2.i, arg3.i, arg4.i)
  PrototypeC.l cklMill(obj.i, arg1.i, arg2.l, arg3.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMsllll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l, arg5.l)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsssls(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.s)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMlli(obj.i, arg1.l, arg2.l, arg3.i)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i CkFileAccessCreate()
  PrototypeC CkFileAccessDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkFileAccessLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkFileAccessLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkFileAccessLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkFileAccessLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkFileAccessLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global FileAccessCreate.CkFileAccessCreate = GetFunction(CkFileAccessLibId,"CkFileAccessU_CreateW")
  Global FileAccessDispose.CkFileAccessDispose = GetFunction(CkFileAccessLibId,"CkFileAccessU_DisposeW")
  Global FileAccessCurrentDir.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_currentDirW")
  Global FileAccessDebugLogFilePath.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_debugLogFilePathW")
  Global FileAccessPSetDebugLogFilePath.cksPropSet = GetFunction(CkFileAccessLibId,"CkFileAccessU_putDebugLogFilePathW")
  Global FileAccessEndOfFile.cklPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_getEndOfFileW")
  Global FileAccessFileOpenError.cklPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_getFileOpenErrorW")
  Global FileAccessFileOpenErrorMsg.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_fileOpenErrorMsgW")
  Global FileAccessLastErrorHtml.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_lastErrorHtmlW")
  Global FileAccessLastErrorText.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_lastErrorTextW")
  Global FileAccessLastErrorXml.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_lastErrorXmlW")
  Global FileAccessLastMethodSuccess.cklPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_getLastMethodSuccessW")
  Global FileAccessPSetLastMethodSuccess.cklPropSet = GetFunction(CkFileAccessLibId,"CkFileAccessU_putLastMethodSuccessW")
  Global FileAccessLockFileOnOpen.cklPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_getLockFileOnOpenW")
  Global FileAccessPSetLockFileOnOpen.cklPropSet = GetFunction(CkFileAccessLibId,"CkFileAccessU_putLockFileOnOpenW")
  Global FileAccessVerboseLogging.cklPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_getVerboseLoggingW")
  Global FileAccessPSetVerboseLogging.cklPropSet = GetFunction(CkFileAccessLibId,"CkFileAccessU_putVerboseLoggingW")
  Global FileAccessVersion.cksPropGet = GetFunction(CkFileAccessLibId,"CkFileAccessU_versionW")
  Global FileAccessAppendAnsi.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendAnsiW")
  Global FileAccessAppendBd.cklMi = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendBdW")
  Global FileAccessAppendSb.cklMis = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendSbW")
  Global FileAccessAppendText.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendTextW")
  Global FileAccessAppendUnicodeBOM.cklM = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendUnicodeBOMW")
  Global FileAccessAppendUtf8BOM.cklM = GetFunction(CkFileAccessLibId,"CkFileAccessU_AppendUtf8BOMW")
  Global FileAccessDirAutoCreate.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_DirAutoCreateW")
  Global FileAccessDirCreate.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_DirCreateW")
  Global FileAccessDirDelete.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_DirDeleteW")
  Global FileAccessDirEnsureExists.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_DirEnsureExistsW")
  Global FileAccessFileClose.ckvM = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileCloseW")
  Global FileAccessFileContentsEqual.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileContentsEqualW")
  Global FileAccessFileCopy.cklMssl = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileCopyW")
  Global FileAccessFileDelete.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileDeleteW")
  Global FileAccessFileExists.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileExistsW")
  Global FileAccessFileExists3.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileExists3W")
  Global FileAccessFileOpen.cklMsllll = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileOpenW")
  Global FileAccessFileReadBd.cklMli = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileReadBdW")
  Global FileAccessFileRename.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileRenameW")
  Global FileAccessFileSeek.cklMll = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileSeekW")
  Global FileAccessFileSize.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileSizeW")
  Global FileAccessFileSizeStr.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_fileSizeStrW")
  Global FileAccessFileType.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileTypeW")
  Global FileAccessFileWriteBd.cklMill = GetFunction(CkFileAccessLibId,"CkFileAccessU_FileWriteBdW")
  Global FileAccessGenBlockId.cklMlls = GetFunction(CkFileAccessLibId,"CkFileAccessU_genBlockIdW")
  Global FileAccessGetDirectoryName.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_getDirectoryNameW")
  Global FileAccessGetExtension.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_getExtensionW")
  Global FileAccessGetFileName.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_getFileNameW")
  Global FileAccessGetFileNameWithoutExtension.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_getFileNameWithoutExtensionW")
  Global FileAccessGetFileTime.ckiMsl = GetFunction(CkFileAccessLibId,"CkFileAccessU_GetFileTimeW")
  Global FileAccessGetLastModified.ckiMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_GetLastModifiedW")
  Global FileAccessGetNumBlocks.cklMl = GetFunction(CkFileAccessLibId,"CkFileAccessU_GetNumBlocksW")
  Global FileAccessGetTempFilename.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_getTempFilenameW")
  Global FileAccessOpenForAppend.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_OpenForAppendW")
  Global FileAccessOpenForRead.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_OpenForReadW")
  Global FileAccessOpenForReadWrite.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_OpenForReadWriteW")
  Global FileAccessOpenForWrite.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_OpenForWriteW")
  Global FileAccessReadBinaryToEncoded.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_readBinaryToEncodedW")
  Global FileAccessReadBlockBd.cklMlli = GetFunction(CkFileAccessLibId,"CkFileAccessU_ReadBlockBdW")
  Global FileAccessReadEntireTextFile.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_readEntireTextFileW")
  Global FileAccessReadNextFragment.cklMlsssi = GetFunction(CkFileAccessLibId,"CkFileAccessU_ReadNextFragmentW")
  Global FileAccessReassembleFile.cklMssss = GetFunction(CkFileAccessLibId,"CkFileAccessU_ReassembleFileW")
  Global FileAccessReplaceStrings.cklMssss = GetFunction(CkFileAccessLibId,"CkFileAccessU_ReplaceStringsW")
  Global FileAccessSaveLastError.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_SaveLastErrorW")
  Global FileAccessSetCurrentDir.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_SetCurrentDirW")
  Global FileAccessSetFileTimes.cklMsiii = GetFunction(CkFileAccessLibId,"CkFileAccessU_SetFileTimesW")
  Global FileAccessSetLastModified.cklMsi = GetFunction(CkFileAccessLibId,"CkFileAccessU_SetLastModifiedW")
  Global FileAccessSplitFile.cklMsssls = GetFunction(CkFileAccessLibId,"CkFileAccessU_SplitFileW")
  Global FileAccessSymlinkCreate.cklMss = GetFunction(CkFileAccessLibId,"CkFileAccessU_SymlinkCreateW")
  Global FileAccessSymlinkTarget.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_symlinkTargetW")
  Global FileAccessTreeDelete.cklMs = GetFunction(CkFileAccessLibId,"CkFileAccessU_TreeDeleteW")
  Global FileAccessTruncate.cklM = GetFunction(CkFileAccessLibId,"CkFileAccessU_TruncateW")
  Global FileAccessWriteEntireTextFile.cklMsssl = GetFunction(CkFileAccessLibId,"CkFileAccessU_WriteEntireTextFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn FileAccessCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn FileAccessDispose(obj) : EndProcedure
  Procedure.s ckCurrentDir(obj.i) : ProcedureReturn PeekS(FileAccessCurrentDir(obj)) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(FileAccessDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn FileAccessPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckEndOfFile(obj.i) : ProcedureReturn FileAccessEndOfFile(obj) : EndProcedure
  Procedure.l ckFileOpenError(obj.i) : ProcedureReturn FileAccessFileOpenError(obj) : EndProcedure
  Procedure.s ckFileOpenErrorMsg(obj.i) : ProcedureReturn PeekS(FileAccessFileOpenErrorMsg(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(FileAccessLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(FileAccessLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(FileAccessLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn FileAccessLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn FileAccessPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLockFileOnOpen(obj.i) : ProcedureReturn FileAccessLockFileOnOpen(obj) : EndProcedure
  Procedure setCkLockFileOnOpen(obj.i, value.l) : ProcedureReturn FileAccessPSetLockFileOnOpen(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn FileAccessVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn FileAccessPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(FileAccessVersion(obj)) : EndProcedure
  Procedure.l ckAppendAnsi(obj.i, text.s) :  ProcedureReturn FileAccessAppendAnsi(obj, text) :  EndProcedure
  Procedure.l ckAppendBd(obj.i, bd.i) :  ProcedureReturn FileAccessAppendBd(obj, bd) :  EndProcedure
  Procedure.l ckAppendSb(obj.i, sb.i, charset.s) :  ProcedureReturn FileAccessAppendSb(obj, sb, charset) :  EndProcedure
  Procedure.l ckAppendText(obj.i, str.s, charset.s) :  ProcedureReturn FileAccessAppendText(obj, str, charset) :  EndProcedure
  Procedure.l ckAppendUnicodeBOM(obj.i) :  ProcedureReturn FileAccessAppendUnicodeBOM(obj) :  EndProcedure
  Procedure.l ckAppendUtf8BOM(obj.i) :  ProcedureReturn FileAccessAppendUtf8BOM(obj) :  EndProcedure
  Procedure.l ckDirAutoCreate(obj.i, filePath.s) :  ProcedureReturn FileAccessDirAutoCreate(obj, filePath) :  EndProcedure
  Procedure.l ckDirCreate(obj.i, dirPath.s) :  ProcedureReturn FileAccessDirCreate(obj, dirPath) :  EndProcedure
  Procedure.l ckDirDelete(obj.i, dirPath.s) :  ProcedureReturn FileAccessDirDelete(obj, dirPath) :  EndProcedure
  Procedure.l ckDirEnsureExists(obj.i, dirPath.s) :  ProcedureReturn FileAccessDirEnsureExists(obj, dirPath) :  EndProcedure
  Procedure ckFileClose(obj.i) :  ProcedureReturn FileAccessFileClose(obj) :  EndProcedure
  Procedure.l ckFileContentsEqual(obj.i, filePath1.s, filePath2.s) :  ProcedureReturn FileAccessFileContentsEqual(obj, filePath1, filePath2) :  EndProcedure
  Procedure.l ckFileCopy(obj.i, existingFilepath.s, newFilepath.s, failIfExists.l) :  ProcedureReturn FileAccessFileCopy(obj, existingFilepath, newFilepath, failIfExists) :  EndProcedure
  Procedure.l ckFileDelete(obj.i, filePath.s) :  ProcedureReturn FileAccessFileDelete(obj, filePath) :  EndProcedure
  Procedure.l ckFileExists(obj.i, filePath.s) :  ProcedureReturn FileAccessFileExists(obj, filePath) :  EndProcedure
  Procedure.l ckFileExists3(obj.i, path.s) :  ProcedureReturn FileAccessFileExists3(obj, path) :  EndProcedure
  Procedure.l ckFileOpen(obj.i, filePath.s, accessMode.l, shareMode.l, createDisposition.l, attributes.l) :  ProcedureReturn FileAccessFileOpen(obj, filePath, accessMode, shareMode, createDisposition, attributes) :  EndProcedure
  Procedure.l ckFileReadBd(obj.i, maxNumBytes.l, binData.i) :  ProcedureReturn FileAccessFileReadBd(obj, maxNumBytes, binData) :  EndProcedure
  Procedure.l ckFileRename(obj.i, existingFilepath.s, newFilepath.s) :  ProcedureReturn FileAccessFileRename(obj, existingFilepath, newFilepath) :  EndProcedure
  Procedure.l ckFileSeek(obj.i, offset.l, origin.l) :  ProcedureReturn FileAccessFileSeek(obj, offset, origin) :  EndProcedure
  Procedure.l ckFileSize(obj.i, filePath.s) :  ProcedureReturn FileAccessFileSize(obj, filePath) :  EndProcedure
  Procedure.s ckFileSizeStr(obj.i, filePath.s) :  ProcedureReturn PeekS(FileAccessFileSizeStr(obj, filePath)) :  EndProcedure
  Procedure.l ckFileType(obj.i, path.s) :  ProcedureReturn FileAccessFileType(obj, path) :  EndProcedure
  Procedure.l ckFileWriteBd(obj.i, binData.i, offset.l, numBytes.l) :  ProcedureReturn FileAccessFileWriteBd(obj, binData, offset, numBytes) :  EndProcedure
  Procedure.s ckGenBlockId(obj.i, index.l, length.l, encoding.s) :  ProcedureReturn PeekS(FileAccessGenBlockId(obj, index, length, encoding)) :  EndProcedure
  Procedure.s ckGetDirectoryName(obj.i, path.s) :  ProcedureReturn PeekS(FileAccessGetDirectoryName(obj, path)) :  EndProcedure
  Procedure.s ckGetExtension(obj.i, path.s) :  ProcedureReturn PeekS(FileAccessGetExtension(obj, path)) :  EndProcedure
  Procedure.s ckGetFileName(obj.i, path.s) :  ProcedureReturn PeekS(FileAccessGetFileName(obj, path)) :  EndProcedure
  Procedure.s ckGetFileNameWithoutExtension(obj.i, path.s) :  ProcedureReturn PeekS(FileAccessGetFileNameWithoutExtension(obj, path)) :  EndProcedure
  Procedure.i ckGetFileTime(obj.i, path.s, which.l) :  ProcedureReturn FileAccessGetFileTime(obj, path, which) :  EndProcedure
  Procedure.i ckGetLastModified(obj.i, path.s) :  ProcedureReturn FileAccessGetLastModified(obj, path) :  EndProcedure
  Procedure.l ckGetNumBlocks(obj.i, blockSize.l) :  ProcedureReturn FileAccessGetNumBlocks(obj, blockSize) :  EndProcedure
  Procedure.s ckGetTempFilename(obj.i, dirPath.s, prefix.s) :  ProcedureReturn PeekS(FileAccessGetTempFilename(obj, dirPath, prefix)) :  EndProcedure
  Procedure.l ckOpenForAppend(obj.i, filePath.s) :  ProcedureReturn FileAccessOpenForAppend(obj, filePath) :  EndProcedure
  Procedure.l ckOpenForRead(obj.i, filePath.s) :  ProcedureReturn FileAccessOpenForRead(obj, filePath) :  EndProcedure
  Procedure.l ckOpenForReadWrite(obj.i, filePath.s) :  ProcedureReturn FileAccessOpenForReadWrite(obj, filePath) :  EndProcedure
  Procedure.l ckOpenForWrite(obj.i, filePath.s) :  ProcedureReturn FileAccessOpenForWrite(obj, filePath) :  EndProcedure
  Procedure.s ckReadBinaryToEncoded(obj.i, filePath.s, encoding.s) :  ProcedureReturn PeekS(FileAccessReadBinaryToEncoded(obj, filePath, encoding)) :  EndProcedure
  Procedure.l ckReadBlockBd(obj.i, blockIndex.l, blockSize.l, bd.i) :  ProcedureReturn FileAccessReadBlockBd(obj, blockIndex, blockSize, bd) :  EndProcedure
  Procedure.s ckReadEntireTextFile(obj.i, filePath.s, charset.s) :  ProcedureReturn PeekS(FileAccessReadEntireTextFile(obj, filePath, charset)) :  EndProcedure
  Procedure.l ckReadNextFragment(obj.i, startAtBeginning.l, beginMarker.s, endMarker.s, charset.s, sb.i) :  ProcedureReturn FileAccessReadNextFragment(obj, startAtBeginning, beginMarker, endMarker, charset, sb) :  EndProcedure
  Procedure.l ckReassembleFile(obj.i, partsDirPath.s, partPrefix.s, partExtension.s, reassembledFilename.s) :  ProcedureReturn FileAccessReassembleFile(obj, partsDirPath, partPrefix, partExtension, reassembledFilename) :  EndProcedure
  Procedure.l ckReplaceStrings(obj.i, filePath.s, charset.s, existingString.s, replacementString.s) :  ProcedureReturn FileAccessReplaceStrings(obj, filePath, charset, existingString, replacementString) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn FileAccessSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetCurrentDir(obj.i, dirPath.s) :  ProcedureReturn FileAccessSetCurrentDir(obj, dirPath) :  EndProcedure
  Procedure.l ckSetFileTimes(obj.i, filePath.s, createTime.i, lastAccessTime.i, lastModTime.i) :  ProcedureReturn FileAccessSetFileTimes(obj, filePath, createTime, lastAccessTime, lastModTime) :  EndProcedure
  Procedure.l ckSetLastModified(obj.i, filePath.s, lastModified.i) :  ProcedureReturn FileAccessSetLastModified(obj, filePath, lastModified) :  EndProcedure
  Procedure.l ckSplitFile(obj.i, fileToSplit.s, partPrefix.s, partExtension.s, partSize.l, destDir.s) :  ProcedureReturn FileAccessSplitFile(obj, fileToSplit, partPrefix, partExtension, partSize, destDir) :  EndProcedure
  Procedure.l ckSymlinkCreate(obj.i, targetPath.s, linkPath.s) :  ProcedureReturn FileAccessSymlinkCreate(obj, targetPath, linkPath) :  EndProcedure
  Procedure.s ckSymlinkTarget(obj.i, linkPath.s) :  ProcedureReturn PeekS(FileAccessSymlinkTarget(obj, linkPath)) :  EndProcedure
  Procedure.l ckTreeDelete(obj.i, path.s) :  ProcedureReturn FileAccessTreeDelete(obj, path) :  EndProcedure
  Procedure.l ckTruncate(obj.i) :  ProcedureReturn FileAccessTruncate(obj) :  EndProcedure
  Procedure.l ckWriteEntireTextFile(obj.i, filePath.s, textData.s, charset.s, includedPreamble.l) :  ProcedureReturn FileAccessWriteEntireTextFile(obj, filePath, textData, charset, includedPreamble) :  EndProcedure
EndModule

