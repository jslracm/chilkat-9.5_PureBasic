DeclareModule CkZip
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckAppendFromDir(obj.i)
  Declare setCkAppendFromDir(obj.i, value.s)
  Declare.s ckAutoRun(obj.i)
  Declare setCkAutoRun(obj.i, value.s)
  Declare.s ckAutoRunParams(obj.i)
  Declare setCkAutoRunParams(obj.i, value.s)
  Declare.l ckAutoTemp(obj.i)
  Declare setCkAutoTemp(obj.i, value.l)
  Declare.l ckCaseSensitive(obj.i)
  Declare setCkCaseSensitive(obj.i, value.l)
  Declare.l ckClearArchiveAttribute(obj.i)
  Declare setCkClearArchiveAttribute(obj.i, value.l)
  Declare.l ckClearReadOnlyAttr(obj.i)
  Declare setCkClearReadOnlyAttr(obj.i, value.l)
  Declare.s ckComment(obj.i)
  Declare setCkComment(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDecryptPassword(obj.i)
  Declare setCkDecryptPassword(obj.i, value.s)
  Declare.l ckDiscardPaths(obj.i)
  Declare setCkDiscardPaths(obj.i, value.l)
  Declare.l ckEncryption(obj.i)
  Declare setCkEncryption(obj.i, value.l)
  Declare.l ckEncryptKeyLength(obj.i)
  Declare setCkEncryptKeyLength(obj.i, value.l)
  Declare.s ckEncryptPassword(obj.i)
  Declare setCkEncryptPassword(obj.i, value.s)
  Declare.s ckExeDefaultDir(obj.i)
  Declare setCkExeDefaultDir(obj.i, value.s)
  Declare.l ckExeFinishNotifier(obj.i)
  Declare setCkExeFinishNotifier(obj.i, value.l)
  Declare.s ckExeIconFile(obj.i)
  Declare setCkExeIconFile(obj.i, value.s)
  Declare.l ckExeNoInterface(obj.i)
  Declare setCkExeNoInterface(obj.i, value.l)
  Declare.l ckExeSilentProgress(obj.i)
  Declare setCkExeSilentProgress(obj.i, value.l)
  Declare.s ckExeTitle(obj.i)
  Declare setCkExeTitle(obj.i, value.s)
  Declare.s ckExeUnzipCaption(obj.i)
  Declare setCkExeUnzipCaption(obj.i, value.s)
  Declare.s ckExeUnzipDir(obj.i)
  Declare setCkExeUnzipDir(obj.i, value.s)
  Declare.l ckExeWaitForSetup(obj.i)
  Declare setCkExeWaitForSetup(obj.i, value.l)
  Declare.s ckExeXmlConfig(obj.i)
  Declare setCkExeXmlConfig(obj.i, value.s)
  Declare.l ckFileCount(obj.i)
  Declare.s ckFileName(obj.i)
  Declare setCkFileName(obj.i, value.s)
  Declare.l ckHasZipFormatErrors(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckIgnoreAccessDenied(obj.i)
  Declare setCkIgnoreAccessDenied(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumEntries(obj.i)
  Declare.l ckOemCodePage(obj.i)
  Declare setCkOemCodePage(obj.i, value.l)
  Declare.l ckOverwriteExisting(obj.i)
  Declare setCkOverwriteExisting(obj.i, value.l)
  Declare.l ckPasswordProtect(obj.i)
  Declare setCkPasswordProtect(obj.i, value.l)
  Declare.s ckPathPrefix(obj.i)
  Declare setCkPathPrefix(obj.i, value.s)
  Declare.l ckPercentDoneScale(obj.i)
  Declare setCkPercentDoneScale(obj.i, value.l)
  Declare.s ckPwdProtCharset(obj.i)
  Declare setCkPwdProtCharset(obj.i, value.s)
  Declare.s ckTempDir(obj.i)
  Declare setCkTempDir(obj.i, value.s)
  Declare.l ckTextFlag(obj.i)
  Declare setCkTextFlag(obj.i, value.l)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckZipx(obj.i)
  Declare setCkZipx(obj.i, value.l)
  Declare.s ckZipxDefaultAlg(obj.i)
  Declare setCkZipxDefaultAlg(obj.i, value.s)
  Declare.l ckAddEmbedded(obj.i, exeFilename.s, resourceName.s, zipFilename.s)
  Declare ckAddNoCompressExtension(obj.i, fileExtension.s)
  Declare.i ckAppendBase64(obj.i, fileName.s, encodedCompressedData.s)
  Declare.i ckAppendBd(obj.i, pathInZip.s, byteData.i)
  Declare.i ckAppendDataEncoded(obj.i, filename.s, encoding.s, argData.s)
  Declare.l ckAppendFiles(obj.i, filePattern.s, recurse.l)
  Declare.i ckAppendFilesAsync(obj.i, filePattern.s, recurse.l)
  Declare.l ckAppendFilesEx(obj.i, filePattern.s, recurse.l, saveExtraPath.l, archiveOnly.l, includeHidden.l, includeSystem.l)
  Declare.i ckAppendFilesExAsync(obj.i, filePattern.s, recurse.l, saveExtraPath.l, archiveOnly.l, includeHidden.l, includeSystem.l)
  Declare.i ckAppendHex(obj.i, fileName.s, encodedCompressedData.s)
  Declare.l ckAppendMultiple(obj.i, fileSpecs.i, recurse.l)
  Declare.i ckAppendMultipleAsync(obj.i, fileSpecs.i, recurse.l)
  Declare.i ckAppendNew(obj.i, fileName.s)
  Declare.i ckAppendNewDir(obj.i, dirName.s)
  Declare.l ckAppendOneFileOrDir(obj.i, fileOrDirPath.s, saveExtraPath.l)
  Declare.i ckAppendOneFileOrDirAsync(obj.i, fileOrDirPath.s, saveExtraPath.l)
  Declare.i ckAppendString(obj.i, internalZipFilepath.s, textData.s)
  Declare.i ckAppendString2(obj.i, internalZipFilepath.s, textData.s, charset.s)
  Declare.l ckAppendZip(obj.i, zipFileName.s)
  Declare ckCloseZip(obj.i)
  Declare.l ckDeleteEntry(obj.i, entry.i)
  Declare ckExcludeDir(obj.i, dirName.s)
  Declare.l ckExtract(obj.i, dirPath.s)
  Declare.i ckExtractAsync(obj.i, dirPath.s)
  Declare.l ckExtractExe(obj.i, exePath.s, dirPath.s)
  Declare.i ckExtractExeAsync(obj.i, exePath.s, dirPath.s)
  Declare.l ckExtractInto(obj.i, dirPath.s)
  Declare.l ckExtractMatching(obj.i, dirPath.s, pattern.s)
  Declare.l ckExtractNewer(obj.i, dirPath.s)
  Declare.l ckExtractOne(obj.i, entry.i, dirPath.s)
  Declare.i ckFirstEntry(obj.i)
  Declare.i ckFirstMatchingEntry(obj.i, pattern.s)
  Declare.s ckGetDirectoryAsXML(obj.i)
  Declare.i ckGetEntryByID(obj.i, entryID.l)
  Declare.i ckGetEntryByIndex(obj.i, index.l)
  Declare.i ckGetEntryByName(obj.i, entryName.s)
  Declare.i ckGetExclusions(obj.i)
  Declare.s ckGetExeConfigParam(obj.i, name.s)
  Declare.i ckInsertNew(obj.i, fileName.s, beforeIndex.l)
  Declare.l ckIsNoCompressExtension(obj.i, fileExtension.s)
  Declare.l ckIsPasswordProtected(obj.i, zipFilename.s)
  Declare.l ckIsUnlocked(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckNewZip(obj.i, zipFilePath.s)
  Declare.l ckOpenBd(obj.i, binData.i)
  Declare.l ckOpenEmbedded(obj.i, exeFilename.s, resourceName.s)
  Declare.l ckOpenMyEmbedded(obj.i, resourceName.s)
  Declare.l ckOpenZip(obj.i, zipPath.s)
  Declare.i ckOpenZipAsync(obj.i, zipPath.s)
  Declare.l ckQuickAppend(obj.i, ZipFileName.s)
  Declare.i ckQuickAppendAsync(obj.i, ZipFileName.s)
  Declare.l ckRemoveEmbedded(obj.i, exeFilename.s, resourceName.s)
  Declare ckRemoveNoCompressExtension(obj.i, fileExtension.s)
  Declare.l ckReplaceEmbedded(obj.i, exeFilename.s, resourceName.s, zipFilename.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetCompressionLevel(obj.i, level.l)
  Declare ckSetExclusions(obj.i, excludePatterns.i)
  Declare ckSetExeConfigParam(obj.i, paramName.s, paramValue.s)
  Declare ckSetPassword(obj.i, password.s)
  Declare.l ckUnlockComponent(obj.i, regCode.s)
  Declare.l ckUnzip(obj.i, dirPath.s)
  Declare.i ckUnzipAsync(obj.i, dirPath.s)
  Declare.l ckUnzipInto(obj.i, dirPath.s)
  Declare.i ckUnzipIntoAsync(obj.i, dirPath.s)
  Declare.l ckUnzipMatching(obj.i, dirPath.s, pattern.s, verbose.l)
  Declare.i ckUnzipMatchingAsync(obj.i, dirPath.s, pattern.s, verbose.l)
  Declare.l ckUnzipMatchingInto(obj.i, dirPath.s, pattern.s, verbose.l)
  Declare.i ckUnzipMatchingIntoAsync(obj.i, dirPath.s, pattern.s, verbose.l)
  Declare.l ckUnzipNewer(obj.i, dirPath.s)
  Declare.i ckUnzipNewerAsync(obj.i, dirPath.s)
  Declare.l ckVerifyPassword(obj.i)
  Declare.l ckWriteBd(obj.i, binData.i)
  Declare.i ckWriteBdAsync(obj.i, binData.i)
  Declare.l ckWriteExe(obj.i, exeFilename.s)
  Declare.l ckWriteZip(obj.i)
  Declare.i ckWriteZipAsync(obj.i)
  Declare.l ckWriteZipAndClose(obj.i)
  Declare.i ckWriteZipAndCloseAsync(obj.i)
EndDeclareModule

Module CkZip
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMslllll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMslllll(obj.i, arg1.s, arg2.l, arg3.l, arg4.l, arg5.l, arg6.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.i CkZipCreate()
  PrototypeC CkZipDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkZipLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkZipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkZipLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ZipCreate.CkZipCreate = GetFunction(CkZipLibId,"CkZipU_CreateW")
  Global ZipDispose.CkZipDispose = GetFunction(CkZipLibId,"CkZipU_DisposeW")
  Global ZipAbortCurrent.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getAbortCurrentW")
  Global ZipPSetAbortCurrent.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putAbortCurrentW")
  Global ZipAppendFromDir.cksPropGet = GetFunction(CkZipLibId,"CkZipU_appendFromDirW")
  Global ZipPSetAppendFromDir.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putAppendFromDirW")
  Global ZipAutoRun.cksPropGet = GetFunction(CkZipLibId,"CkZipU_autoRunW")
  Global ZipPSetAutoRun.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putAutoRunW")
  Global ZipAutoRunParams.cksPropGet = GetFunction(CkZipLibId,"CkZipU_autoRunParamsW")
  Global ZipPSetAutoRunParams.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putAutoRunParamsW")
  Global ZipAutoTemp.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getAutoTempW")
  Global ZipPSetAutoTemp.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putAutoTempW")
  Global ZipCaseSensitive.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getCaseSensitiveW")
  Global ZipPSetCaseSensitive.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putCaseSensitiveW")
  Global ZipClearArchiveAttribute.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getClearArchiveAttributeW")
  Global ZipPSetClearArchiveAttribute.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putClearArchiveAttributeW")
  Global ZipClearReadOnlyAttr.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getClearReadOnlyAttrW")
  Global ZipPSetClearReadOnlyAttr.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putClearReadOnlyAttrW")
  Global ZipComment.cksPropGet = GetFunction(CkZipLibId,"CkZipU_commentW")
  Global ZipPSetComment.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putCommentW")
  Global ZipDebugLogFilePath.cksPropGet = GetFunction(CkZipLibId,"CkZipU_debugLogFilePathW")
  Global ZipPSetDebugLogFilePath.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putDebugLogFilePathW")
  Global ZipDecryptPassword.cksPropGet = GetFunction(CkZipLibId,"CkZipU_decryptPasswordW")
  Global ZipPSetDecryptPassword.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putDecryptPasswordW")
  Global ZipDiscardPaths.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getDiscardPathsW")
  Global ZipPSetDiscardPaths.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putDiscardPathsW")
  Global ZipEncryption.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getEncryptionW")
  Global ZipPSetEncryption.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putEncryptionW")
  Global ZipEncryptKeyLength.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getEncryptKeyLengthW")
  Global ZipPSetEncryptKeyLength.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putEncryptKeyLengthW")
  Global ZipEncryptPassword.cksPropGet = GetFunction(CkZipLibId,"CkZipU_encryptPasswordW")
  Global ZipPSetEncryptPassword.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putEncryptPasswordW")
  Global ZipExeDefaultDir.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeDefaultDirW")
  Global ZipPSetExeDefaultDir.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeDefaultDirW")
  Global ZipExeFinishNotifier.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getExeFinishNotifierW")
  Global ZipPSetExeFinishNotifier.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putExeFinishNotifierW")
  Global ZipExeIconFile.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeIconFileW")
  Global ZipPSetExeIconFile.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeIconFileW")
  Global ZipExeNoInterface.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getExeNoInterfaceW")
  Global ZipPSetExeNoInterface.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putExeNoInterfaceW")
  Global ZipExeSilentProgress.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getExeSilentProgressW")
  Global ZipPSetExeSilentProgress.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putExeSilentProgressW")
  Global ZipExeTitle.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeTitleW")
  Global ZipPSetExeTitle.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeTitleW")
  Global ZipExeUnzipCaption.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeUnzipCaptionW")
  Global ZipPSetExeUnzipCaption.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeUnzipCaptionW")
  Global ZipExeUnzipDir.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeUnzipDirW")
  Global ZipPSetExeUnzipDir.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeUnzipDirW")
  Global ZipExeWaitForSetup.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getExeWaitForSetupW")
  Global ZipPSetExeWaitForSetup.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putExeWaitForSetupW")
  Global ZipExeXmlConfig.cksPropGet = GetFunction(CkZipLibId,"CkZipU_exeXmlConfigW")
  Global ZipPSetExeXmlConfig.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putExeXmlConfigW")
  Global ZipFileCount.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getFileCountW")
  Global ZipFileName.cksPropGet = GetFunction(CkZipLibId,"CkZipU_fileNameW")
  Global ZipPSetFileName.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putFileNameW")
  Global ZipHasZipFormatErrors.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getHasZipFormatErrorsW")
  Global ZipHeartbeatMs.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getHeartbeatMsW")
  Global ZipPSetHeartbeatMs.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putHeartbeatMsW")
  Global ZipIgnoreAccessDenied.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getIgnoreAccessDeniedW")
  Global ZipPSetIgnoreAccessDenied.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putIgnoreAccessDeniedW")
  Global ZipLastErrorHtml.cksPropGet = GetFunction(CkZipLibId,"CkZipU_lastErrorHtmlW")
  Global ZipLastErrorText.cksPropGet = GetFunction(CkZipLibId,"CkZipU_lastErrorTextW")
  Global ZipLastErrorXml.cksPropGet = GetFunction(CkZipLibId,"CkZipU_lastErrorXmlW")
  Global ZipLastMethodSuccess.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getLastMethodSuccessW")
  Global ZipPSetLastMethodSuccess.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putLastMethodSuccessW")
  Global ZipNumEntries.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getNumEntriesW")
  Global ZipOemCodePage.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getOemCodePageW")
  Global ZipPSetOemCodePage.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putOemCodePageW")
  Global ZipOverwriteExisting.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getOverwriteExistingW")
  Global ZipPSetOverwriteExisting.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putOverwriteExistingW")
  Global ZipPasswordProtect.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getPasswordProtectW")
  Global ZipPSetPasswordProtect.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putPasswordProtectW")
  Global ZipPathPrefix.cksPropGet = GetFunction(CkZipLibId,"CkZipU_pathPrefixW")
  Global ZipPSetPathPrefix.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putPathPrefixW")
  Global ZipPercentDoneScale.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getPercentDoneScaleW")
  Global ZipPSetPercentDoneScale.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putPercentDoneScaleW")
  Global ZipPwdProtCharset.cksPropGet = GetFunction(CkZipLibId,"CkZipU_pwdProtCharsetW")
  Global ZipPSetPwdProtCharset.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putPwdProtCharsetW")
  Global ZipTempDir.cksPropGet = GetFunction(CkZipLibId,"CkZipU_tempDirW")
  Global ZipPSetTempDir.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putTempDirW")
  Global ZipTextFlag.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getTextFlagW")
  Global ZipPSetTextFlag.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putTextFlagW")
  Global ZipUncommonOptions.cksPropGet = GetFunction(CkZipLibId,"CkZipU_uncommonOptionsW")
  Global ZipPSetUncommonOptions.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putUncommonOptionsW")
  Global ZipVerboseLogging.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getVerboseLoggingW")
  Global ZipPSetVerboseLogging.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putVerboseLoggingW")
  Global ZipVersion.cksPropGet = GetFunction(CkZipLibId,"CkZipU_versionW")
  Global ZipZipx.cklPropGet = GetFunction(CkZipLibId,"CkZipU_getZipxW")
  Global ZipPSetZipx.cklPropSet = GetFunction(CkZipLibId,"CkZipU_putZipxW")
  Global ZipZipxDefaultAlg.cksPropGet = GetFunction(CkZipLibId,"CkZipU_zipxDefaultAlgW")
  Global ZipPSetZipxDefaultAlg.cksPropSet = GetFunction(CkZipLibId,"CkZipU_putZipxDefaultAlgW")
  Global ZipAddEmbedded.cklMsss = GetFunction(CkZipLibId,"CkZipU_AddEmbeddedW")
  Global ZipAddNoCompressExtension.ckvMs = GetFunction(CkZipLibId,"CkZipU_AddNoCompressExtensionW")
  Global ZipAppendBase64.ckiMss = GetFunction(CkZipLibId,"CkZipU_AppendBase64W")
  Global ZipAppendBd.ckiMsi = GetFunction(CkZipLibId,"CkZipU_AppendBdW")
  Global ZipAppendDataEncoded.ckiMsss = GetFunction(CkZipLibId,"CkZipU_AppendDataEncodedW")
  Global ZipAppendFiles.cklMsl = GetFunction(CkZipLibId,"CkZipU_AppendFilesW")
  Global ZipAppendFilesAsync.ckiMsl = GetFunction(CkZipLibId,"CkZipU_AppendFilesAsyncW")
  Global ZipAppendFilesEx.cklMslllll = GetFunction(CkZipLibId,"CkZipU_AppendFilesExW")
  Global ZipAppendFilesExAsync.ckiMslllll = GetFunction(CkZipLibId,"CkZipU_AppendFilesExAsyncW")
  Global ZipAppendHex.ckiMss = GetFunction(CkZipLibId,"CkZipU_AppendHexW")
  Global ZipAppendMultiple.cklMil = GetFunction(CkZipLibId,"CkZipU_AppendMultipleW")
  Global ZipAppendMultipleAsync.ckiMil = GetFunction(CkZipLibId,"CkZipU_AppendMultipleAsyncW")
  Global ZipAppendNew.ckiMs = GetFunction(CkZipLibId,"CkZipU_AppendNewW")
  Global ZipAppendNewDir.ckiMs = GetFunction(CkZipLibId,"CkZipU_AppendNewDirW")
  Global ZipAppendOneFileOrDir.cklMsl = GetFunction(CkZipLibId,"CkZipU_AppendOneFileOrDirW")
  Global ZipAppendOneFileOrDirAsync.ckiMsl = GetFunction(CkZipLibId,"CkZipU_AppendOneFileOrDirAsyncW")
  Global ZipAppendString.ckiMss = GetFunction(CkZipLibId,"CkZipU_AppendStringW")
  Global ZipAppendString2.ckiMsss = GetFunction(CkZipLibId,"CkZipU_AppendString2W")
  Global ZipAppendZip.cklMs = GetFunction(CkZipLibId,"CkZipU_AppendZipW")
  Global ZipCloseZip.ckvM = GetFunction(CkZipLibId,"CkZipU_CloseZipW")
  Global ZipDeleteEntry.cklMi = GetFunction(CkZipLibId,"CkZipU_DeleteEntryW")
  Global ZipExcludeDir.ckvMs = GetFunction(CkZipLibId,"CkZipU_ExcludeDirW")
  Global ZipExtract.cklMs = GetFunction(CkZipLibId,"CkZipU_ExtractW")
  Global ZipExtractAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_ExtractAsyncW")
  Global ZipExtractExe.cklMss = GetFunction(CkZipLibId,"CkZipU_ExtractExeW")
  Global ZipExtractExeAsync.ckiMss = GetFunction(CkZipLibId,"CkZipU_ExtractExeAsyncW")
  Global ZipExtractInto.cklMs = GetFunction(CkZipLibId,"CkZipU_ExtractIntoW")
  Global ZipExtractMatching.cklMss = GetFunction(CkZipLibId,"CkZipU_ExtractMatchingW")
  Global ZipExtractNewer.cklMs = GetFunction(CkZipLibId,"CkZipU_ExtractNewerW")
  Global ZipExtractOne.cklMis = GetFunction(CkZipLibId,"CkZipU_ExtractOneW")
  Global ZipFirstEntry.ckiM = GetFunction(CkZipLibId,"CkZipU_FirstEntryW")
  Global ZipFirstMatchingEntry.ckiMs = GetFunction(CkZipLibId,"CkZipU_FirstMatchingEntryW")
  Global ZipGetDirectoryAsXML.cklM = GetFunction(CkZipLibId,"CkZipU_getDirectoryAsXMLW")
  Global ZipGetEntryByID.ckiMl = GetFunction(CkZipLibId,"CkZipU_GetEntryByIDW")
  Global ZipGetEntryByIndex.ckiMl = GetFunction(CkZipLibId,"CkZipU_GetEntryByIndexW")
  Global ZipGetEntryByName.ckiMs = GetFunction(CkZipLibId,"CkZipU_GetEntryByNameW")
  Global ZipGetExclusions.ckiM = GetFunction(CkZipLibId,"CkZipU_GetExclusionsW")
  Global ZipGetExeConfigParam.cklMs = GetFunction(CkZipLibId,"CkZipU_getExeConfigParamW")
  Global ZipInsertNew.ckiMsl = GetFunction(CkZipLibId,"CkZipU_InsertNewW")
  Global ZipIsNoCompressExtension.cklMs = GetFunction(CkZipLibId,"CkZipU_IsNoCompressExtensionW")
  Global ZipIsPasswordProtected.cklMs = GetFunction(CkZipLibId,"CkZipU_IsPasswordProtectedW")
  Global ZipIsUnlocked.cklM = GetFunction(CkZipLibId,"CkZipU_IsUnlockedW")
  Global ZipLoadTaskCaller.cklMi = GetFunction(CkZipLibId,"CkZipU_LoadTaskCallerW")
  Global ZipNewZip.cklMs = GetFunction(CkZipLibId,"CkZipU_NewZipW")
  Global ZipOpenBd.cklMi = GetFunction(CkZipLibId,"CkZipU_OpenBdW")
  Global ZipOpenEmbedded.cklMss = GetFunction(CkZipLibId,"CkZipU_OpenEmbeddedW")
  Global ZipOpenMyEmbedded.cklMs = GetFunction(CkZipLibId,"CkZipU_OpenMyEmbeddedW")
  Global ZipOpenZip.cklMs = GetFunction(CkZipLibId,"CkZipU_OpenZipW")
  Global ZipOpenZipAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_OpenZipAsyncW")
  Global ZipQuickAppend.cklMs = GetFunction(CkZipLibId,"CkZipU_QuickAppendW")
  Global ZipQuickAppendAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_QuickAppendAsyncW")
  Global ZipRemoveEmbedded.cklMss = GetFunction(CkZipLibId,"CkZipU_RemoveEmbeddedW")
  Global ZipRemoveNoCompressExtension.ckvMs = GetFunction(CkZipLibId,"CkZipU_RemoveNoCompressExtensionW")
  Global ZipReplaceEmbedded.cklMsss = GetFunction(CkZipLibId,"CkZipU_ReplaceEmbeddedW")
  Global ZipSaveLastError.cklMs = GetFunction(CkZipLibId,"CkZipU_SaveLastErrorW")
  Global ZipSetCompressionLevel.ckvMl = GetFunction(CkZipLibId,"CkZipU_SetCompressionLevelW")
  Global ZipSetExclusions.ckvMi = GetFunction(CkZipLibId,"CkZipU_SetExclusionsW")
  Global ZipSetExeConfigParam.ckvMss = GetFunction(CkZipLibId,"CkZipU_SetExeConfigParamW")
  Global ZipSetPassword.ckvMs = GetFunction(CkZipLibId,"CkZipU_SetPasswordW")
  Global ZipUnlockComponent.cklMs = GetFunction(CkZipLibId,"CkZipU_UnlockComponentW")
  Global ZipUnzip.cklMs = GetFunction(CkZipLibId,"CkZipU_UnzipW")
  Global ZipUnzipAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_UnzipAsyncW")
  Global ZipUnzipInto.cklMs = GetFunction(CkZipLibId,"CkZipU_UnzipIntoW")
  Global ZipUnzipIntoAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_UnzipIntoAsyncW")
  Global ZipUnzipMatching.cklMssl = GetFunction(CkZipLibId,"CkZipU_UnzipMatchingW")
  Global ZipUnzipMatchingAsync.ckiMssl = GetFunction(CkZipLibId,"CkZipU_UnzipMatchingAsyncW")
  Global ZipUnzipMatchingInto.cklMssl = GetFunction(CkZipLibId,"CkZipU_UnzipMatchingIntoW")
  Global ZipUnzipMatchingIntoAsync.ckiMssl = GetFunction(CkZipLibId,"CkZipU_UnzipMatchingIntoAsyncW")
  Global ZipUnzipNewer.cklMs = GetFunction(CkZipLibId,"CkZipU_UnzipNewerW")
  Global ZipUnzipNewerAsync.ckiMs = GetFunction(CkZipLibId,"CkZipU_UnzipNewerAsyncW")
  Global ZipVerifyPassword.cklM = GetFunction(CkZipLibId,"CkZipU_VerifyPasswordW")
  Global ZipWriteBd.cklMi = GetFunction(CkZipLibId,"CkZipU_WriteBdW")
  Global ZipWriteBdAsync.ckiMi = GetFunction(CkZipLibId,"CkZipU_WriteBdAsyncW")
  Global ZipWriteExe.cklMs = GetFunction(CkZipLibId,"CkZipU_WriteExeW")
  Global ZipWriteZip.cklM = GetFunction(CkZipLibId,"CkZipU_WriteZipW")
  Global ZipWriteZipAsync.ckiM = GetFunction(CkZipLibId,"CkZipU_WriteZipAsyncW")
  Global ZipWriteZipAndClose.cklM = GetFunction(CkZipLibId,"CkZipU_WriteZipAndCloseW")
  Global ZipWriteZipAndCloseAsync.ckiM = GetFunction(CkZipLibId,"CkZipU_WriteZipAndCloseAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ZipCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ZipDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn ZipAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn ZipPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckAppendFromDir(obj.i) : ProcedureReturn PeekS(ZipAppendFromDir(obj)) : EndProcedure
  Procedure setCkAppendFromDir(obj.i, value.s) : ProcedureReturn ZipPSetAppendFromDir(obj,value) : EndProcedure
  Procedure.s ckAutoRun(obj.i) : ProcedureReturn PeekS(ZipAutoRun(obj)) : EndProcedure
  Procedure setCkAutoRun(obj.i, value.s) : ProcedureReturn ZipPSetAutoRun(obj,value) : EndProcedure
  Procedure.s ckAutoRunParams(obj.i) : ProcedureReturn PeekS(ZipAutoRunParams(obj)) : EndProcedure
  Procedure setCkAutoRunParams(obj.i, value.s) : ProcedureReturn ZipPSetAutoRunParams(obj,value) : EndProcedure
  Procedure.l ckAutoTemp(obj.i) : ProcedureReturn ZipAutoTemp(obj) : EndProcedure
  Procedure setCkAutoTemp(obj.i, value.l) : ProcedureReturn ZipPSetAutoTemp(obj,value) : EndProcedure
  Procedure.l ckCaseSensitive(obj.i) : ProcedureReturn ZipCaseSensitive(obj) : EndProcedure
  Procedure setCkCaseSensitive(obj.i, value.l) : ProcedureReturn ZipPSetCaseSensitive(obj,value) : EndProcedure
  Procedure.l ckClearArchiveAttribute(obj.i) : ProcedureReturn ZipClearArchiveAttribute(obj) : EndProcedure
  Procedure setCkClearArchiveAttribute(obj.i, value.l) : ProcedureReturn ZipPSetClearArchiveAttribute(obj,value) : EndProcedure
  Procedure.l ckClearReadOnlyAttr(obj.i) : ProcedureReturn ZipClearReadOnlyAttr(obj) : EndProcedure
  Procedure setCkClearReadOnlyAttr(obj.i, value.l) : ProcedureReturn ZipPSetClearReadOnlyAttr(obj,value) : EndProcedure
  Procedure.s ckComment(obj.i) : ProcedureReturn PeekS(ZipComment(obj)) : EndProcedure
  Procedure setCkComment(obj.i, value.s) : ProcedureReturn ZipPSetComment(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(ZipDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn ZipPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDecryptPassword(obj.i) : ProcedureReturn PeekS(ZipDecryptPassword(obj)) : EndProcedure
  Procedure setCkDecryptPassword(obj.i, value.s) : ProcedureReturn ZipPSetDecryptPassword(obj,value) : EndProcedure
  Procedure.l ckDiscardPaths(obj.i) : ProcedureReturn ZipDiscardPaths(obj) : EndProcedure
  Procedure setCkDiscardPaths(obj.i, value.l) : ProcedureReturn ZipPSetDiscardPaths(obj,value) : EndProcedure
  Procedure.l ckEncryption(obj.i) : ProcedureReturn ZipEncryption(obj) : EndProcedure
  Procedure setCkEncryption(obj.i, value.l) : ProcedureReturn ZipPSetEncryption(obj,value) : EndProcedure
  Procedure.l ckEncryptKeyLength(obj.i) : ProcedureReturn ZipEncryptKeyLength(obj) : EndProcedure
  Procedure setCkEncryptKeyLength(obj.i, value.l) : ProcedureReturn ZipPSetEncryptKeyLength(obj,value) : EndProcedure
  Procedure.s ckEncryptPassword(obj.i) : ProcedureReturn PeekS(ZipEncryptPassword(obj)) : EndProcedure
  Procedure setCkEncryptPassword(obj.i, value.s) : ProcedureReturn ZipPSetEncryptPassword(obj,value) : EndProcedure
  Procedure.s ckExeDefaultDir(obj.i) : ProcedureReturn PeekS(ZipExeDefaultDir(obj)) : EndProcedure
  Procedure setCkExeDefaultDir(obj.i, value.s) : ProcedureReturn ZipPSetExeDefaultDir(obj,value) : EndProcedure
  Procedure.l ckExeFinishNotifier(obj.i) : ProcedureReturn ZipExeFinishNotifier(obj) : EndProcedure
  Procedure setCkExeFinishNotifier(obj.i, value.l) : ProcedureReturn ZipPSetExeFinishNotifier(obj,value) : EndProcedure
  Procedure.s ckExeIconFile(obj.i) : ProcedureReturn PeekS(ZipExeIconFile(obj)) : EndProcedure
  Procedure setCkExeIconFile(obj.i, value.s) : ProcedureReturn ZipPSetExeIconFile(obj,value) : EndProcedure
  Procedure.l ckExeNoInterface(obj.i) : ProcedureReturn ZipExeNoInterface(obj) : EndProcedure
  Procedure setCkExeNoInterface(obj.i, value.l) : ProcedureReturn ZipPSetExeNoInterface(obj,value) : EndProcedure
  Procedure.l ckExeSilentProgress(obj.i) : ProcedureReturn ZipExeSilentProgress(obj) : EndProcedure
  Procedure setCkExeSilentProgress(obj.i, value.l) : ProcedureReturn ZipPSetExeSilentProgress(obj,value) : EndProcedure
  Procedure.s ckExeTitle(obj.i) : ProcedureReturn PeekS(ZipExeTitle(obj)) : EndProcedure
  Procedure setCkExeTitle(obj.i, value.s) : ProcedureReturn ZipPSetExeTitle(obj,value) : EndProcedure
  Procedure.s ckExeUnzipCaption(obj.i) : ProcedureReturn PeekS(ZipExeUnzipCaption(obj)) : EndProcedure
  Procedure setCkExeUnzipCaption(obj.i, value.s) : ProcedureReturn ZipPSetExeUnzipCaption(obj,value) : EndProcedure
  Procedure.s ckExeUnzipDir(obj.i) : ProcedureReturn PeekS(ZipExeUnzipDir(obj)) : EndProcedure
  Procedure setCkExeUnzipDir(obj.i, value.s) : ProcedureReturn ZipPSetExeUnzipDir(obj,value) : EndProcedure
  Procedure.l ckExeWaitForSetup(obj.i) : ProcedureReturn ZipExeWaitForSetup(obj) : EndProcedure
  Procedure setCkExeWaitForSetup(obj.i, value.l) : ProcedureReturn ZipPSetExeWaitForSetup(obj,value) : EndProcedure
  Procedure.s ckExeXmlConfig(obj.i) : ProcedureReturn PeekS(ZipExeXmlConfig(obj)) : EndProcedure
  Procedure setCkExeXmlConfig(obj.i, value.s) : ProcedureReturn ZipPSetExeXmlConfig(obj,value) : EndProcedure
  Procedure.l ckFileCount(obj.i) : ProcedureReturn ZipFileCount(obj) : EndProcedure
  Procedure.s ckFileName(obj.i) : ProcedureReturn PeekS(ZipFileName(obj)) : EndProcedure
  Procedure setCkFileName(obj.i, value.s) : ProcedureReturn ZipPSetFileName(obj,value) : EndProcedure
  Procedure.l ckHasZipFormatErrors(obj.i) : ProcedureReturn ZipHasZipFormatErrors(obj) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn ZipHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn ZipPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckIgnoreAccessDenied(obj.i) : ProcedureReturn ZipIgnoreAccessDenied(obj) : EndProcedure
  Procedure setCkIgnoreAccessDenied(obj.i, value.l) : ProcedureReturn ZipPSetIgnoreAccessDenied(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(ZipLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(ZipLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(ZipLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ZipLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ZipPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumEntries(obj.i) : ProcedureReturn ZipNumEntries(obj) : EndProcedure
  Procedure.l ckOemCodePage(obj.i) : ProcedureReturn ZipOemCodePage(obj) : EndProcedure
  Procedure setCkOemCodePage(obj.i, value.l) : ProcedureReturn ZipPSetOemCodePage(obj,value) : EndProcedure
  Procedure.l ckOverwriteExisting(obj.i) : ProcedureReturn ZipOverwriteExisting(obj) : EndProcedure
  Procedure setCkOverwriteExisting(obj.i, value.l) : ProcedureReturn ZipPSetOverwriteExisting(obj,value) : EndProcedure
  Procedure.l ckPasswordProtect(obj.i) : ProcedureReturn ZipPasswordProtect(obj) : EndProcedure
  Procedure setCkPasswordProtect(obj.i, value.l) : ProcedureReturn ZipPSetPasswordProtect(obj,value) : EndProcedure
  Procedure.s ckPathPrefix(obj.i) : ProcedureReturn PeekS(ZipPathPrefix(obj)) : EndProcedure
  Procedure setCkPathPrefix(obj.i, value.s) : ProcedureReturn ZipPSetPathPrefix(obj,value) : EndProcedure
  Procedure.l ckPercentDoneScale(obj.i) : ProcedureReturn ZipPercentDoneScale(obj) : EndProcedure
  Procedure setCkPercentDoneScale(obj.i, value.l) : ProcedureReturn ZipPSetPercentDoneScale(obj,value) : EndProcedure
  Procedure.s ckPwdProtCharset(obj.i) : ProcedureReturn PeekS(ZipPwdProtCharset(obj)) : EndProcedure
  Procedure setCkPwdProtCharset(obj.i, value.s) : ProcedureReturn ZipPSetPwdProtCharset(obj,value) : EndProcedure
  Procedure.s ckTempDir(obj.i) : ProcedureReturn PeekS(ZipTempDir(obj)) : EndProcedure
  Procedure setCkTempDir(obj.i, value.s) : ProcedureReturn ZipPSetTempDir(obj,value) : EndProcedure
  Procedure.l ckTextFlag(obj.i) : ProcedureReturn ZipTextFlag(obj) : EndProcedure
  Procedure setCkTextFlag(obj.i, value.l) : ProcedureReturn ZipPSetTextFlag(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(ZipUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn ZipPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn ZipVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn ZipPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(ZipVersion(obj)) : EndProcedure
  Procedure.l ckZipx(obj.i) : ProcedureReturn ZipZipx(obj) : EndProcedure
  Procedure setCkZipx(obj.i, value.l) : ProcedureReturn ZipPSetZipx(obj,value) : EndProcedure
  Procedure.s ckZipxDefaultAlg(obj.i) : ProcedureReturn PeekS(ZipZipxDefaultAlg(obj)) : EndProcedure
  Procedure setCkZipxDefaultAlg(obj.i, value.s) : ProcedureReturn ZipPSetZipxDefaultAlg(obj,value) : EndProcedure
  Procedure.l ckAddEmbedded(obj.i, exeFilename.s, resourceName.s, zipFilename.s) :  ProcedureReturn ZipAddEmbedded(obj, exeFilename, resourceName, zipFilename) :  EndProcedure
  Procedure ckAddNoCompressExtension(obj.i, fileExtension.s) :  ProcedureReturn ZipAddNoCompressExtension(obj, fileExtension) :  EndProcedure
  Procedure.i ckAppendBase64(obj.i, fileName.s, encodedCompressedData.s) :  ProcedureReturn ZipAppendBase64(obj, fileName, encodedCompressedData) :  EndProcedure
  Procedure.i ckAppendBd(obj.i, pathInZip.s, byteData.i) :  ProcedureReturn ZipAppendBd(obj, pathInZip, byteData) :  EndProcedure
  Procedure.i ckAppendDataEncoded(obj.i, filename.s, encoding.s, argData.s) :  ProcedureReturn ZipAppendDataEncoded(obj, filename, encoding, argData) :  EndProcedure
  Procedure.l ckAppendFiles(obj.i, filePattern.s, recurse.l) :  ProcedureReturn ZipAppendFiles(obj, filePattern, recurse) :  EndProcedure
  Procedure.i ckAppendFilesAsync(obj.i, filePattern.s, recurse.l) :  ProcedureReturn ZipAppendFilesAsync(obj, filePattern, recurse) :  EndProcedure
  Procedure.l ckAppendFilesEx(obj.i, filePattern.s, recurse.l, saveExtraPath.l, archiveOnly.l, includeHidden.l, includeSystem.l) :  ProcedureReturn ZipAppendFilesEx(obj, filePattern, recurse, saveExtraPath, archiveOnly, includeHidden, includeSystem) :  EndProcedure
  Procedure.i ckAppendFilesExAsync(obj.i, filePattern.s, recurse.l, saveExtraPath.l, archiveOnly.l, includeHidden.l, includeSystem.l) :  ProcedureReturn ZipAppendFilesExAsync(obj, filePattern, recurse, saveExtraPath, archiveOnly, includeHidden, includeSystem) :  EndProcedure
  Procedure.i ckAppendHex(obj.i, fileName.s, encodedCompressedData.s) :  ProcedureReturn ZipAppendHex(obj, fileName, encodedCompressedData) :  EndProcedure
  Procedure.l ckAppendMultiple(obj.i, fileSpecs.i, recurse.l) :  ProcedureReturn ZipAppendMultiple(obj, fileSpecs, recurse) :  EndProcedure
  Procedure.i ckAppendMultipleAsync(obj.i, fileSpecs.i, recurse.l) :  ProcedureReturn ZipAppendMultipleAsync(obj, fileSpecs, recurse) :  EndProcedure
  Procedure.i ckAppendNew(obj.i, fileName.s) :  ProcedureReturn ZipAppendNew(obj, fileName) :  EndProcedure
  Procedure.i ckAppendNewDir(obj.i, dirName.s) :  ProcedureReturn ZipAppendNewDir(obj, dirName) :  EndProcedure
  Procedure.l ckAppendOneFileOrDir(obj.i, fileOrDirPath.s, saveExtraPath.l) :  ProcedureReturn ZipAppendOneFileOrDir(obj, fileOrDirPath, saveExtraPath) :  EndProcedure
  Procedure.i ckAppendOneFileOrDirAsync(obj.i, fileOrDirPath.s, saveExtraPath.l) :  ProcedureReturn ZipAppendOneFileOrDirAsync(obj, fileOrDirPath, saveExtraPath) :  EndProcedure
  Procedure.i ckAppendString(obj.i, internalZipFilepath.s, textData.s) :  ProcedureReturn ZipAppendString(obj, internalZipFilepath, textData) :  EndProcedure
  Procedure.i ckAppendString2(obj.i, internalZipFilepath.s, textData.s, charset.s) :  ProcedureReturn ZipAppendString2(obj, internalZipFilepath, textData, charset) :  EndProcedure
  Procedure.l ckAppendZip(obj.i, zipFileName.s) :  ProcedureReturn ZipAppendZip(obj, zipFileName) :  EndProcedure
  Procedure ckCloseZip(obj.i) :  ProcedureReturn ZipCloseZip(obj) :  EndProcedure
  Procedure.l ckDeleteEntry(obj.i, entry.i) :  ProcedureReturn ZipDeleteEntry(obj, entry) :  EndProcedure
  Procedure ckExcludeDir(obj.i, dirName.s) :  ProcedureReturn ZipExcludeDir(obj, dirName) :  EndProcedure
  Procedure.l ckExtract(obj.i, dirPath.s) :  ProcedureReturn ZipExtract(obj, dirPath) :  EndProcedure
  Procedure.i ckExtractAsync(obj.i, dirPath.s) :  ProcedureReturn ZipExtractAsync(obj, dirPath) :  EndProcedure
  Procedure.l ckExtractExe(obj.i, exePath.s, dirPath.s) :  ProcedureReturn ZipExtractExe(obj, exePath, dirPath) :  EndProcedure
  Procedure.i ckExtractExeAsync(obj.i, exePath.s, dirPath.s) :  ProcedureReturn ZipExtractExeAsync(obj, exePath, dirPath) :  EndProcedure
  Procedure.l ckExtractInto(obj.i, dirPath.s) :  ProcedureReturn ZipExtractInto(obj, dirPath) :  EndProcedure
  Procedure.l ckExtractMatching(obj.i, dirPath.s, pattern.s) :  ProcedureReturn ZipExtractMatching(obj, dirPath, pattern) :  EndProcedure
  Procedure.l ckExtractNewer(obj.i, dirPath.s) :  ProcedureReturn ZipExtractNewer(obj, dirPath) :  EndProcedure
  Procedure.l ckExtractOne(obj.i, entry.i, dirPath.s) :  ProcedureReturn ZipExtractOne(obj, entry, dirPath) :  EndProcedure
  Procedure.i ckFirstEntry(obj.i) :  ProcedureReturn ZipFirstEntry(obj) :  EndProcedure
  Procedure.i ckFirstMatchingEntry(obj.i, pattern.s) :  ProcedureReturn ZipFirstMatchingEntry(obj, pattern) :  EndProcedure
  Procedure.s ckGetDirectoryAsXML(obj.i) :  ProcedureReturn PeekS(ZipGetDirectoryAsXML(obj)) :  EndProcedure
  Procedure.i ckGetEntryByID(obj.i, entryID.l) :  ProcedureReturn ZipGetEntryByID(obj, entryID) :  EndProcedure
  Procedure.i ckGetEntryByIndex(obj.i, index.l) :  ProcedureReturn ZipGetEntryByIndex(obj, index) :  EndProcedure
  Procedure.i ckGetEntryByName(obj.i, entryName.s) :  ProcedureReturn ZipGetEntryByName(obj, entryName) :  EndProcedure
  Procedure.i ckGetExclusions(obj.i) :  ProcedureReturn ZipGetExclusions(obj) :  EndProcedure
  Procedure.s ckGetExeConfigParam(obj.i, name.s) :  ProcedureReturn PeekS(ZipGetExeConfigParam(obj, name)) :  EndProcedure
  Procedure.i ckInsertNew(obj.i, fileName.s, beforeIndex.l) :  ProcedureReturn ZipInsertNew(obj, fileName, beforeIndex) :  EndProcedure
  Procedure.l ckIsNoCompressExtension(obj.i, fileExtension.s) :  ProcedureReturn ZipIsNoCompressExtension(obj, fileExtension) :  EndProcedure
  Procedure.l ckIsPasswordProtected(obj.i, zipFilename.s) :  ProcedureReturn ZipIsPasswordProtected(obj, zipFilename) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn ZipIsUnlocked(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn ZipLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckNewZip(obj.i, zipFilePath.s) :  ProcedureReturn ZipNewZip(obj, zipFilePath) :  EndProcedure
  Procedure.l ckOpenBd(obj.i, binData.i) :  ProcedureReturn ZipOpenBd(obj, binData) :  EndProcedure
  Procedure.l ckOpenEmbedded(obj.i, exeFilename.s, resourceName.s) :  ProcedureReturn ZipOpenEmbedded(obj, exeFilename, resourceName) :  EndProcedure
  Procedure.l ckOpenMyEmbedded(obj.i, resourceName.s) :  ProcedureReturn ZipOpenMyEmbedded(obj, resourceName) :  EndProcedure
  Procedure.l ckOpenZip(obj.i, zipPath.s) :  ProcedureReturn ZipOpenZip(obj, zipPath) :  EndProcedure
  Procedure.i ckOpenZipAsync(obj.i, zipPath.s) :  ProcedureReturn ZipOpenZipAsync(obj, zipPath) :  EndProcedure
  Procedure.l ckQuickAppend(obj.i, ZipFileName.s) :  ProcedureReturn ZipQuickAppend(obj, ZipFileName) :  EndProcedure
  Procedure.i ckQuickAppendAsync(obj.i, ZipFileName.s) :  ProcedureReturn ZipQuickAppendAsync(obj, ZipFileName) :  EndProcedure
  Procedure.l ckRemoveEmbedded(obj.i, exeFilename.s, resourceName.s) :  ProcedureReturn ZipRemoveEmbedded(obj, exeFilename, resourceName) :  EndProcedure
  Procedure ckRemoveNoCompressExtension(obj.i, fileExtension.s) :  ProcedureReturn ZipRemoveNoCompressExtension(obj, fileExtension) :  EndProcedure
  Procedure.l ckReplaceEmbedded(obj.i, exeFilename.s, resourceName.s, zipFilename.s) :  ProcedureReturn ZipReplaceEmbedded(obj, exeFilename, resourceName, zipFilename) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn ZipSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetCompressionLevel(obj.i, level.l) :  ProcedureReturn ZipSetCompressionLevel(obj, level) :  EndProcedure
  Procedure ckSetExclusions(obj.i, excludePatterns.i) :  ProcedureReturn ZipSetExclusions(obj, excludePatterns) :  EndProcedure
  Procedure ckSetExeConfigParam(obj.i, paramName.s, paramValue.s) :  ProcedureReturn ZipSetExeConfigParam(obj, paramName, paramValue) :  EndProcedure
  Procedure ckSetPassword(obj.i, password.s) :  ProcedureReturn ZipSetPassword(obj, password) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, regCode.s) :  ProcedureReturn ZipUnlockComponent(obj, regCode) :  EndProcedure
  Procedure.l ckUnzip(obj.i, dirPath.s) :  ProcedureReturn ZipUnzip(obj, dirPath) :  EndProcedure
  Procedure.i ckUnzipAsync(obj.i, dirPath.s) :  ProcedureReturn ZipUnzipAsync(obj, dirPath) :  EndProcedure
  Procedure.l ckUnzipInto(obj.i, dirPath.s) :  ProcedureReturn ZipUnzipInto(obj, dirPath) :  EndProcedure
  Procedure.i ckUnzipIntoAsync(obj.i, dirPath.s) :  ProcedureReturn ZipUnzipIntoAsync(obj, dirPath) :  EndProcedure
  Procedure.l ckUnzipMatching(obj.i, dirPath.s, pattern.s, verbose.l) :  ProcedureReturn ZipUnzipMatching(obj, dirPath, pattern, verbose) :  EndProcedure
  Procedure.i ckUnzipMatchingAsync(obj.i, dirPath.s, pattern.s, verbose.l) :  ProcedureReturn ZipUnzipMatchingAsync(obj, dirPath, pattern, verbose) :  EndProcedure
  Procedure.l ckUnzipMatchingInto(obj.i, dirPath.s, pattern.s, verbose.l) :  ProcedureReturn ZipUnzipMatchingInto(obj, dirPath, pattern, verbose) :  EndProcedure
  Procedure.i ckUnzipMatchingIntoAsync(obj.i, dirPath.s, pattern.s, verbose.l) :  ProcedureReturn ZipUnzipMatchingIntoAsync(obj, dirPath, pattern, verbose) :  EndProcedure
  Procedure.l ckUnzipNewer(obj.i, dirPath.s) :  ProcedureReturn ZipUnzipNewer(obj, dirPath) :  EndProcedure
  Procedure.i ckUnzipNewerAsync(obj.i, dirPath.s) :  ProcedureReturn ZipUnzipNewerAsync(obj, dirPath) :  EndProcedure
  Procedure.l ckVerifyPassword(obj.i) :  ProcedureReturn ZipVerifyPassword(obj) :  EndProcedure
  Procedure.l ckWriteBd(obj.i, binData.i) :  ProcedureReturn ZipWriteBd(obj, binData) :  EndProcedure
  Procedure.i ckWriteBdAsync(obj.i, binData.i) :  ProcedureReturn ZipWriteBdAsync(obj, binData) :  EndProcedure
  Procedure.l ckWriteExe(obj.i, exeFilename.s) :  ProcedureReturn ZipWriteExe(obj, exeFilename) :  EndProcedure
  Procedure.l ckWriteZip(obj.i) :  ProcedureReturn ZipWriteZip(obj) :  EndProcedure
  Procedure.i ckWriteZipAsync(obj.i) :  ProcedureReturn ZipWriteZipAsync(obj) :  EndProcedure
  Procedure.l ckWriteZipAndClose(obj.i) :  ProcedureReturn ZipWriteZipAndClose(obj) :  EndProcedure
  Procedure.i ckWriteZipAndCloseAsync(obj.i) :  ProcedureReturn ZipWriteZipAndCloseAsync(obj) :  EndProcedure
EndModule

