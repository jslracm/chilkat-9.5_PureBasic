DeclareModule CkEmail
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBody(obj.i)
  Declare setCkBody(obj.i, value.s)
  Declare.s ckBounceAddress(obj.i)
  Declare setCkBounceAddress(obj.i, value.s)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDecrypted(obj.i)
  Declare.s ckEmailDateStr(obj.i)
  Declare setCkEmailDateStr(obj.i, value.s)
  Declare.s ckEncryptedBy(obj.i)
  Declare.s ckFileDistList(obj.i)
  Declare setCkFileDistList(obj.i, value.s)
  Declare.s ckFrom(obj.i)
  Declare setCkFrom(obj.i, value.s)
  Declare.s ckFromAddress(obj.i)
  Declare setCkFromAddress(obj.i, value.s)
  Declare.s ckFromName(obj.i)
  Declare setCkFromName(obj.i, value.s)
  Declare.s ckHeader(obj.i)
  Declare.s ckLanguage(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLocalDateStr(obj.i)
  Declare setCkLocalDateStr(obj.i, value.s)
  Declare.s ckMailer(obj.i)
  Declare setCkMailer(obj.i, value.s)
  Declare.l ckNumAlternatives(obj.i)
  Declare.l ckNumAttachedMessages(obj.i)
  Declare.l ckNumAttachments(obj.i)
  Declare.l ckNumBcc(obj.i)
  Declare.l ckNumCC(obj.i)
  Declare.l ckNumDaysOld(obj.i)
  Declare.l ckNumDigests(obj.i)
  Declare.l ckNumHeaderFields(obj.i)
  Declare.l ckNumRelatedItems(obj.i)
  Declare.l ckNumReplacePatterns(obj.i)
  Declare.l ckNumReports(obj.i)
  Declare.l ckNumTo(obj.i)
  Declare.s ckOaepHash(obj.i)
  Declare setCkOaepHash(obj.i, value.s)
  Declare.s ckOaepMgfHash(obj.i)
  Declare setCkOaepMgfHash(obj.i, value.s)
  Declare.l ckOaepPadding(obj.i)
  Declare setCkOaepPadding(obj.i, value.l)
  Declare.l ckOverwriteExisting(obj.i)
  Declare setCkOverwriteExisting(obj.i, value.l)
  Declare.s ckPkcs7CryptAlg(obj.i)
  Declare setCkPkcs7CryptAlg(obj.i, value.s)
  Declare.l ckPkcs7KeyLength(obj.i)
  Declare setCkPkcs7KeyLength(obj.i, value.l)
  Declare.s ckPreferredCharset(obj.i)
  Declare setCkPreferredCharset(obj.i, value.s)
  Declare.l ckPrependHeaders(obj.i)
  Declare setCkPrependHeaders(obj.i, value.l)
  Declare.l ckReceivedEncrypted(obj.i)
  Declare.l ckReceivedSigned(obj.i)
  Declare.s ckReplyTo(obj.i)
  Declare setCkReplyTo(obj.i, value.s)
  Declare.l ckReturnReceipt(obj.i)
  Declare setCkReturnReceipt(obj.i, value.l)
  Declare.l ckSendEncrypted(obj.i)
  Declare setCkSendEncrypted(obj.i, value.l)
  Declare.s ckSender(obj.i)
  Declare setCkSender(obj.i, value.s)
  Declare.l ckSendSigned(obj.i)
  Declare setCkSendSigned(obj.i, value.l)
  Declare.l ckSignaturesValid(obj.i)
  Declare.s ckSignedBy(obj.i)
  Declare.s ckSigningAlg(obj.i)
  Declare setCkSigningAlg(obj.i, value.s)
  Declare.s ckSigningHashAlg(obj.i)
  Declare setCkSigningHashAlg(obj.i, value.s)
  Declare.l ckSize(obj.i)
  Declare.s ckSubject(obj.i)
  Declare setCkSubject(obj.i, value.s)
  Declare.s ckUidl(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckUnpackUseRelPaths(obj.i)
  Declare setCkUnpackUseRelPaths(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddAttachmentBd(obj.i, filename.s, binData.i, contentType.s)
  Declare ckAddAttachmentHeader(obj.i, index.l, fieldName.s, fieldValue.s)
  Declare.l ckAddBcc(obj.i, friendlyName.s, emailAddress.s)
  Declare.l ckAddCC(obj.i, friendlyName.s, emailAddress.s)
  Declare.l ckAddEncryptCert(obj.i, cert.i)
  Declare.s ckAddFileAttachment(obj.i, path.s)
  Declare.l ckAddFileAttachment2(obj.i, path.s, contentType.s)
  Declare ckAddHeaderField(obj.i, fieldName.s, fieldValue.s)
  Declare ckAddHeaderField2(obj.i, fieldName.s, fieldValue.s)
  Declare.l ckAddHtmlAlternativeBody(obj.i, body.s)
  Declare.l ckAddiCalendarAlternativeBody(obj.i, icalContent.s, methodName.s)
  Declare.l ckAddMultipleBcc(obj.i, commaSeparatedAddresses.s)
  Declare.l ckAddMultipleCC(obj.i, commaSeparatedAddresses.s)
  Declare.l ckAddMultipleTo(obj.i, commaSeparatedAddresses.s)
  Declare.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s)
  Declare.l ckAddPlainTextAlternativeBody(obj.i, body.s)
  Declare.s ckAddRelatedBd(obj.i, filename.s, binData.i)
  Declare.l ckAddRelatedBd2(obj.i, binData.i, fileNameInHtml.s)
  Declare.s ckAddRelatedFile(obj.i, path.s)
  Declare.l ckAddRelatedFile2(obj.i, filenameOnDisk.s, filenameInHtml.s)
  Declare ckAddRelatedHeader(obj.i, index.l, fieldName.s, fieldValue.s)
  Declare.s ckAddRelatedString(obj.i, nameInHtml.s, str.s, charset.s)
  Declare ckAddRelatedString2(obj.i, fileNameInHtml.s, content.s, charset.s)
  Declare.l ckAddStringAttachment(obj.i, path.s, content.s)
  Declare.l ckAddStringAttachment2(obj.i, path.s, content.s, charset.s)
  Declare.l ckAddTo(obj.i, friendlyName.s, emailAddress.s)
  Declare.l ckAesDecrypt(obj.i, password.s)
  Declare.l ckAesEncrypt(obj.i, password.s)
  Declare ckAppendToBody(obj.i, str.s)
  Declare.l ckApplyFixups(obj.i, fixups.s)
  Declare.l ckAspUnpack(obj.i, prefix.s, saveDir.s, urlPath.s, cleanFiles.l)
  Declare.s ckBEncodeString(obj.i, str.s, charset.s)
  Declare ckClear(obj.i)
  Declare ckClearBcc(obj.i)
  Declare ckClearCC(obj.i)
  Declare ckClearEncryptCerts(obj.i)
  Declare ckClearTo(obj.i)
  Declare.i ckClone(obj.i)
  Declare.s ckComputeGlobalKey(obj.i, encoding.s, bFold.l)
  Declare.s ckComputeGlobalKey2(obj.i, encoding.s, bFold.l)
  Declare.l ckConvertInlineImages(obj.i)
  Declare.i ckCreateDsn(obj.i, humanReadableMessage.s, xmlStatusFields.s, bHeaderOnly.l)
  Declare.i ckCreateForward(obj.i)
  Declare.i ckCreateMdn(obj.i, humanReadableMessage.s, xmlStatusFields.s, bHeaderOnly.l)
  Declare.i ckCreateReply(obj.i)
  Declare.s ckCreateTempMht(obj.i, inFilename.s)
  Declare ckDropAttachments(obj.i)
  Declare ckDropRelatedItem(obj.i, index.l)
  Declare ckDropRelatedItems(obj.i)
  Declare.l ckDropSingleAttachment(obj.i, index.l)
  Declare.i ckFindIssuer(obj.i, cert.i)
  Declare.s ckGenerateFilename(obj.i)
  Declare.s ckGetAlternativeBody(obj.i, index.l)
  Declare.l ckGetAlternativeBodyBd(obj.i, index.l, binData.i)
  Declare.s ckGetAlternativeBodyByContentType(obj.i, contentType.s)
  Declare.s ckGetAlternativeContentType(obj.i, index.l)
  Declare.s ckGetAltHeaderField(obj.i, index.l, fieldName.s)
  Declare.i ckGetAttachedMessage(obj.i, index.l)
  Declare.s ckGetAttachedMessageAttr(obj.i, index.l, fieldName.s, attrName.s)
  Declare.s ckGetAttachedMessageFilename(obj.i, index.l)
  Declare.s ckGetAttachmentAttr(obj.i, index.l, fieldName.s, attrName.s)
  Declare.l ckGetAttachmentBd(obj.i, index.l, binData.i)
  Declare.s ckGetAttachmentContentID(obj.i, index.l)
  Declare.s ckGetAttachmentContentType(obj.i, index.l)
  Declare.s ckGetAttachmentFilename(obj.i, index.l)
  Declare.s ckGetAttachmentHeader(obj.i, attachIndex.l, fieldName.s)
  Declare.l ckGetAttachmentSize(obj.i, index.l)
  Declare.s ckGetAttachmentString(obj.i, index.l, charset.s)
  Declare.s ckGetAttachmentStringCrLf(obj.i, index.l, charset.s)
  Declare.s ckGetBcc(obj.i, index.l)
  Declare.s ckGetBccAddr(obj.i, index.l)
  Declare.s ckGetBccName(obj.i, index.l)
  Declare.s ckGetCC(obj.i, index.l)
  Declare.s ckGetCcAddr(obj.i, index.l)
  Declare.s ckGetCcName(obj.i, index.l)
  Declare.s ckGetDeliveryStatusInfo(obj.i, fieldName.s)
  Declare.i ckGetDigest(obj.i, index.l)
  Declare.i ckGetDsnFinalRecipients(obj.i)
  Declare.i ckGetDt(obj.i)
  Declare.i ckGetEncryptCert(obj.i)
  Declare.i ckGetEncryptedByCert(obj.i)
  Declare.s ckGetHeaderField(obj.i, fieldName.s)
  Declare.s ckGetHeaderFieldName(obj.i, index.l)
  Declare.s ckGetHeaderFieldValue(obj.i, index.l)
  Declare.s ckGetHtmlBody(obj.i)
  Declare.l ckGetImapUid(obj.i)
  Declare.i ckGetLinkedDomains(obj.i)
  Declare.s ckGetMime(obj.i)
  Declare.l ckGetMimeBd(obj.i, bindat.i)
  Declare.l ckGetMimeSb(obj.i, sb.i)
  Declare.s ckGetNthTextPartOfType(obj.i, index.l, contentType.s, inlineOnly.l, excludeAttachments.l)
  Declare.l ckGetNumPartsOfType(obj.i, contentType.s, inlineOnly.l, excludeAttachments.l)
  Declare.s ckGetPlainTextBody(obj.i)
  Declare.s ckGetRelatedAttr(obj.i, index.l, fieldName.s, attrName.s)
  Declare.s ckGetRelatedContentID(obj.i, index.l)
  Declare.s ckGetRelatedContentLocation(obj.i, index.l)
  Declare.s ckGetRelatedContentType(obj.i, index.l)
  Declare.s ckGetRelatedFilename(obj.i, index.l)
  Declare.s ckGetRelatedString(obj.i, index.l, charset.s)
  Declare.s ckGetRelatedStringCrLf(obj.i, index.l, charset.s)
  Declare.s ckGetReplacePattern(obj.i, index.l)
  Declare.s ckGetReplaceString(obj.i, index.l)
  Declare.s ckGetReplaceString2(obj.i, pattern.s)
  Declare.s ckGetReport(obj.i, index.l)
  Declare.i ckGetSignedByCert(obj.i)
  Declare.i ckGetSignedByCertChain(obj.i)
  Declare.i ckGetSigningCert(obj.i)
  Declare.s ckGetTo(obj.i, index.l)
  Declare.s ckGetToAddr(obj.i, index.l)
  Declare.s ckGetToName(obj.i, index.l)
  Declare.s ckGetXml(obj.i)
  Declare.l ckHasHeaderMatching(obj.i, fieldName.s, valuePattern.s, caseSensitive.l)
  Declare.l ckHasHtmlBody(obj.i)
  Declare.l ckHasPlainTextBody(obj.i)
  Declare.l ckIsMultipartReport(obj.i)
  Declare.l ckLoadEml(obj.i, mimePath.s)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckLoadXml(obj.i, xmlPath.s)
  Declare.l ckLoadXmlString(obj.i, xmlStr.s)
  Declare.s ckQEncodeString(obj.i, str.s, charset.s)
  Declare ckRemoveAttachedMessage(obj.i, idx.l)
  Declare ckRemoveAttachedMessages(obj.i)
  Declare ckRemoveAttachmentPaths(obj.i)
  Declare ckRemoveHeaderField(obj.i, fieldName.s)
  Declare ckRemoveHtmlAlternative(obj.i)
  Declare ckRemovePlainTextAlternative(obj.i)
  Declare.l ckSaveAllAttachments(obj.i, dirPath.s)
  Declare.l ckSaveAttachedFile(obj.i, index.l, dirPath.s)
  Declare.l ckSaveEml(obj.i, emlFilePath.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveRelatedItem(obj.i, index.l, dirPath.s)
  Declare.l ckSaveXml(obj.i, path.s)
  Declare.l ckSetAttachmentCharset(obj.i, index.l, charset.s)
  Declare.l ckSetAttachmentDisposition(obj.i, index.l, disposition.s)
  Declare.l ckSetAttachmentFilename(obj.i, index.l, filename.s)
  Declare.l ckSetDecryptCert(obj.i, cert.i)
  Declare.l ckSetDecryptCert2(obj.i, cert.i, key.i)
  Declare.l ckSetDt(obj.i, dt.i)
  Declare ckSetEdifactBody(obj.i, message.s, name.s, filename.s, charset.s)
  Declare.l ckSetEncryptCert(obj.i, cert.i)
  Declare.l ckSetFromMimeBd(obj.i, bindat.i)
  Declare.l ckSetFromMimeSb(obj.i, sb.i)
  Declare.l ckSetFromMimeText(obj.i, mimeText.s)
  Declare.l ckSetFromXmlText(obj.i, xmlStr.s)
  Declare ckSetHtmlBody(obj.i, html.s)
  Declare.l ckSetRelatedFilename(obj.i, index.l, path.s)
  Declare.l ckSetReplacePattern(obj.i, pattern.s, replaceString.s)
  Declare.l ckSetSigningCert(obj.i, cert.i)
  Declare.l ckSetSigningCert2(obj.i, cert.i, key.i)
  Declare ckSetTextBody(obj.i, bodyText.s, contentType.s)
  Declare.l ckUidlEquals(obj.i, e.i)
  Declare.l ckUnpackHtml(obj.i, unpackDir.s, htmlFilename.s, partsSubdir.s)
  Declare ckUnSpamify(obj.i)
  Declare.l ckUnzipAttachments(obj.i)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckZipAttachments(obj.i, zipFilename.s)
EndDeclareModule

Module CkEmail
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMsis(obj.i, arg1.s, arg2.i, arg3.s)
  PrototypeC.l cklMsll(obj.i, arg1.s, arg2.l, arg3.l)
  PrototypeC.l cklMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC ckvMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC ckvMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMlsll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  ; --- 64-bit return variants for string-returning methods (x64 fix) ---
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.i ckiMlsll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l)
  PrototypeC ckvMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.i CkEmailCreate()
  PrototypeC CkEmailDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEmailLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkEmailLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkEmailLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEmailLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkEmailLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global EmailCreate.CkEmailCreate = GetFunction(CkEmailLibId,"CkEmailU_CreateW")
  Global EmailDispose.CkEmailDispose = GetFunction(CkEmailLibId,"CkEmailU_DisposeW")
  Global EmailBody.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_bodyW")
  Global EmailPSetBody.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putBodyW")
  Global EmailBounceAddress.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_bounceAddressW")
  Global EmailPSetBounceAddress.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putBounceAddressW")
  Global EmailCharset.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_charsetW")
  Global EmailPSetCharset.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putCharsetW")
  Global EmailDebugLogFilePath.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_debugLogFilePathW")
  Global EmailPSetDebugLogFilePath.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putDebugLogFilePathW")
  Global EmailDecrypted.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getDecryptedW")
  Global EmailEmailDateStr.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_emailDateStrW")
  Global EmailPSetEmailDateStr.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putEmailDateStrW")
  Global EmailEncryptedBy.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_encryptedByW")
  Global EmailFileDistList.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_fileDistListW")
  Global EmailPSetFileDistList.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putFileDistListW")
  Global EmailFrom.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_fromW")
  Global EmailPSetFrom.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putFromW")
  Global EmailFromAddress.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_fromAddressW")
  Global EmailPSetFromAddress.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putFromAddressW")
  Global EmailFromName.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_fromNameW")
  Global EmailPSetFromName.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putFromNameW")
  Global EmailHeader.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_headerW")
  Global EmailLanguage.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_languageW")
  Global EmailLastErrorHtml.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_lastErrorHtmlW")
  Global EmailLastErrorText.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_lastErrorTextW")
  Global EmailLastErrorXml.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_lastErrorXmlW")
  Global EmailLastMethodSuccess.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getLastMethodSuccessW")
  Global EmailPSetLastMethodSuccess.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putLastMethodSuccessW")
  Global EmailLocalDateStr.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_localDateStrW")
  Global EmailPSetLocalDateStr.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putLocalDateStrW")
  Global EmailMailer.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_mailerW")
  Global EmailPSetMailer.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putMailerW")
  Global EmailNumAlternatives.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumAlternativesW")
  Global EmailNumAttachedMessages.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumAttachedMessagesW")
  Global EmailNumAttachments.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumAttachmentsW")
  Global EmailNumBcc.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumBccW")
  Global EmailNumCC.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumCCW")
  Global EmailNumDaysOld.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumDaysOldW")
  Global EmailNumDigests.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumDigestsW")
  Global EmailNumHeaderFields.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumHeaderFieldsW")
  Global EmailNumRelatedItems.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumRelatedItemsW")
  Global EmailNumReplacePatterns.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumReplacePatternsW")
  Global EmailNumReports.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumReportsW")
  Global EmailNumTo.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getNumToW")
  Global EmailOaepHash.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_oaepHashW")
  Global EmailPSetOaepHash.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putOaepHashW")
  Global EmailOaepMgfHash.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_oaepMgfHashW")
  Global EmailPSetOaepMgfHash.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putOaepMgfHashW")
  Global EmailOaepPadding.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getOaepPaddingW")
  Global EmailPSetOaepPadding.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putOaepPaddingW")
  Global EmailOverwriteExisting.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getOverwriteExistingW")
  Global EmailPSetOverwriteExisting.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putOverwriteExistingW")
  Global EmailPkcs7CryptAlg.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_pkcs7CryptAlgW")
  Global EmailPSetPkcs7CryptAlg.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putPkcs7CryptAlgW")
  Global EmailPkcs7KeyLength.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getPkcs7KeyLengthW")
  Global EmailPSetPkcs7KeyLength.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putPkcs7KeyLengthW")
  Global EmailPreferredCharset.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_preferredCharsetW")
  Global EmailPSetPreferredCharset.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putPreferredCharsetW")
  Global EmailPrependHeaders.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getPrependHeadersW")
  Global EmailPSetPrependHeaders.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putPrependHeadersW")
  Global EmailReceivedEncrypted.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getReceivedEncryptedW")
  Global EmailReceivedSigned.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getReceivedSignedW")
  Global EmailReplyTo.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_replyToW")
  Global EmailPSetReplyTo.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putReplyToW")
  Global EmailReturnReceipt.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getReturnReceiptW")
  Global EmailPSetReturnReceipt.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putReturnReceiptW")
  Global EmailSendEncrypted.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getSendEncryptedW")
  Global EmailPSetSendEncrypted.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSendEncryptedW")
  Global EmailSender.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_senderW")
  Global EmailPSetSender.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSenderW")
  Global EmailSendSigned.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getSendSignedW")
  Global EmailPSetSendSigned.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSendSignedW")
  Global EmailSignaturesValid.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getSignaturesValidW")
  Global EmailSignedBy.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_signedByW")
  Global EmailSigningAlg.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_signingAlgW")
  Global EmailPSetSigningAlg.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSigningAlgW")
  Global EmailSigningHashAlg.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_signingHashAlgW")
  Global EmailPSetSigningHashAlg.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSigningHashAlgW")
  Global EmailSize.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getSizeW")
  Global EmailSubject.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_subjectW")
  Global EmailPSetSubject.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putSubjectW")
  Global EmailUidl.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_uidlW")
  Global EmailUncommonOptions.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_uncommonOptionsW")
  Global EmailPSetUncommonOptions.cksPropSet = GetFunction(CkEmailLibId,"CkEmailU_putUncommonOptionsW")
  Global EmailUnpackUseRelPaths.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getUnpackUseRelPathsW")
  Global EmailPSetUnpackUseRelPaths.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putUnpackUseRelPathsW")
  Global EmailVerboseLogging.cklPropGet = GetFunction(CkEmailLibId,"CkEmailU_getVerboseLoggingW")
  Global EmailPSetVerboseLogging.cklPropSet = GetFunction(CkEmailLibId,"CkEmailU_putVerboseLoggingW")
  Global EmailVersion.cksPropGet = GetFunction(CkEmailLibId,"CkEmailU_versionW")
  Global EmailAddAttachmentBd.cklMsis = GetFunction(CkEmailLibId,"CkEmailU_AddAttachmentBdW")
  Global EmailAddAttachmentHeader.ckvMlss = GetFunction(CkEmailLibId,"CkEmailU_AddAttachmentHeaderW")
  Global EmailAddBcc.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddBccW")
  Global EmailAddCC.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddCCW")
  Global EmailAddEncryptCert.cklMi = GetFunction(CkEmailLibId,"CkEmailU_AddEncryptCertW")
  Global EmailAddFileAttachment.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_addFileAttachmentW")
  Global EmailAddFileAttachment2.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddFileAttachment2W")
  Global EmailAddHeaderField.ckvMss = GetFunction(CkEmailLibId,"CkEmailU_AddHeaderFieldW")
  Global EmailAddHeaderField2.ckvMss = GetFunction(CkEmailLibId,"CkEmailU_AddHeaderField2W")
  Global EmailAddHtmlAlternativeBody.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AddHtmlAlternativeBodyW")
  Global EmailAddiCalendarAlternativeBody.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddiCalendarAlternativeBodyW")
  Global EmailAddMultipleBcc.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AddMultipleBccW")
  Global EmailAddMultipleCC.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AddMultipleCCW")
  Global EmailAddMultipleTo.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AddMultipleToW")
  Global EmailAddPfxSourceFile.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddPfxSourceFileW")
  Global EmailAddPlainTextAlternativeBody.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AddPlainTextAlternativeBodyW")
  Global EmailAddRelatedBd.ckiMsi = GetFunction(CkEmailLibId,"CkEmailU_addRelatedBdW")
  Global EmailAddRelatedBd2.cklMis = GetFunction(CkEmailLibId,"CkEmailU_AddRelatedBd2W")
  Global EmailAddRelatedFile.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_addRelatedFileW")
  Global EmailAddRelatedFile2.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddRelatedFile2W")
  Global EmailAddRelatedHeader.ckvMlss = GetFunction(CkEmailLibId,"CkEmailU_AddRelatedHeaderW")
  Global EmailAddRelatedString.ckiMsss = GetFunction(CkEmailLibId,"CkEmailU_addRelatedStringW")
  Global EmailAddRelatedString2.ckvMsss = GetFunction(CkEmailLibId,"CkEmailU_AddRelatedString2W")
  Global EmailAddStringAttachment.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddStringAttachmentW")
  Global EmailAddStringAttachment2.cklMsss = GetFunction(CkEmailLibId,"CkEmailU_AddStringAttachment2W")
  Global EmailAddTo.cklMss = GetFunction(CkEmailLibId,"CkEmailU_AddToW")
  Global EmailAesDecrypt.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AesDecryptW")
  Global EmailAesEncrypt.cklMs = GetFunction(CkEmailLibId,"CkEmailU_AesEncryptW")
  Global EmailAppendToBody.ckvMs = GetFunction(CkEmailLibId,"CkEmailU_AppendToBodyW")
  Global EmailApplyFixups.cklMs = GetFunction(CkEmailLibId,"CkEmailU_ApplyFixupsW")
  Global EmailAspUnpack.cklMsssl = GetFunction(CkEmailLibId,"CkEmailU_AspUnpackW")
  Global EmailBEncodeString.ckiMss = GetFunction(CkEmailLibId,"CkEmailU_bEncodeStringW")
  Global EmailClear.ckvM = GetFunction(CkEmailLibId,"CkEmailU_ClearW")
  Global EmailClearBcc.ckvM = GetFunction(CkEmailLibId,"CkEmailU_ClearBccW")
  Global EmailClearCC.ckvM = GetFunction(CkEmailLibId,"CkEmailU_ClearCCW")
  Global EmailClearEncryptCerts.ckvM = GetFunction(CkEmailLibId,"CkEmailU_ClearEncryptCertsW")
  Global EmailClearTo.ckvM = GetFunction(CkEmailLibId,"CkEmailU_ClearToW")
  Global EmailClone.ckiM = GetFunction(CkEmailLibId,"CkEmailU_CloneW")
  Global EmailComputeGlobalKey.ckiMsl = GetFunction(CkEmailLibId,"CkEmailU_computeGlobalKeyW")
  Global EmailComputeGlobalKey2.ckiMsl = GetFunction(CkEmailLibId,"CkEmailU_computeGlobalKey2W")
  Global EmailConvertInlineImages.cklM = GetFunction(CkEmailLibId,"CkEmailU_ConvertInlineImagesW")
  Global EmailCreateDsn.ckiMssl = GetFunction(CkEmailLibId,"CkEmailU_CreateDsnW")
  Global EmailCreateForward.ckiM = GetFunction(CkEmailLibId,"CkEmailU_CreateForwardW")
  Global EmailCreateMdn.ckiMssl = GetFunction(CkEmailLibId,"CkEmailU_CreateMdnW")
  Global EmailCreateReply.ckiM = GetFunction(CkEmailLibId,"CkEmailU_CreateReplyW")
  Global EmailCreateTempMht.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_createTempMhtW")
  Global EmailDropAttachments.ckvM = GetFunction(CkEmailLibId,"CkEmailU_DropAttachmentsW")
  Global EmailDropRelatedItem.ckvMl = GetFunction(CkEmailLibId,"CkEmailU_DropRelatedItemW")
  Global EmailDropRelatedItems.ckvM = GetFunction(CkEmailLibId,"CkEmailU_DropRelatedItemsW")
  Global EmailDropSingleAttachment.cklMl = GetFunction(CkEmailLibId,"CkEmailU_DropSingleAttachmentW")
  Global EmailFindIssuer.ckiMi = GetFunction(CkEmailLibId,"CkEmailU_FindIssuerW")
  Global EmailGenerateFilename.ckiM = GetFunction(CkEmailLibId,"CkEmailU_generateFilenameW")
  Global EmailGetAlternativeBody.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAlternativeBodyW")
  Global EmailGetAlternativeBodyBd.cklMli = GetFunction(CkEmailLibId,"CkEmailU_GetAlternativeBodyBdW")
  Global EmailGetAlternativeBodyByContentType.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_getAlternativeBodyByContentTypeW")
  Global EmailGetAlternativeContentType.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAlternativeContentTypeW")
  Global EmailGetAltHeaderField.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getAltHeaderFieldW")
  Global EmailGetAttachedMessage.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_GetAttachedMessageW")
  Global EmailGetAttachedMessageAttr.ckiMlss = GetFunction(CkEmailLibId,"CkEmailU_getAttachedMessageAttrW")
  Global EmailGetAttachedMessageFilename.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAttachedMessageFilenameW")
  Global EmailGetAttachmentAttr.ckiMlss = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentAttrW")
  Global EmailGetAttachmentBd.cklMli = GetFunction(CkEmailLibId,"CkEmailU_GetAttachmentBdW")
  Global EmailGetAttachmentContentID.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentContentIDW")
  Global EmailGetAttachmentContentType.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentContentTypeW")
  Global EmailGetAttachmentFilename.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentFilenameW")
  Global EmailGetAttachmentHeader.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentHeaderW")
  Global EmailGetAttachmentSize.cklMl = GetFunction(CkEmailLibId,"CkEmailU_GetAttachmentSizeW")
  Global EmailGetAttachmentString.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentStringW")
  Global EmailGetAttachmentStringCrLf.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getAttachmentStringCrLfW")
  Global EmailGetBcc.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getBccW")
  Global EmailGetBccAddr.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getBccAddrW")
  Global EmailGetBccName.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getBccNameW")
  Global EmailGetCC.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getCCW")
  Global EmailGetCcAddr.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getCcAddrW")
  Global EmailGetCcName.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getCcNameW")
  Global EmailGetDeliveryStatusInfo.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_getDeliveryStatusInfoW")
  Global EmailGetDigest.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_GetDigestW")
  Global EmailGetDsnFinalRecipients.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetDsnFinalRecipientsW")
  Global EmailGetDt.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetDtW")
  Global EmailGetEncryptCert.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetEncryptCertW")
  Global EmailGetEncryptedByCert.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetEncryptedByCertW")
  Global EmailGetHeaderField.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_getHeaderFieldW")
  Global EmailGetHeaderFieldName.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getHeaderFieldNameW")
  Global EmailGetHeaderFieldValue.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getHeaderFieldValueW")
  Global EmailGetHtmlBody.ckiM = GetFunction(CkEmailLibId,"CkEmailU_getHtmlBodyW")
  Global EmailGetImapUid.cklM = GetFunction(CkEmailLibId,"CkEmailU_GetImapUidW")
  Global EmailGetLinkedDomains.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetLinkedDomainsW")
  Global EmailGetMime.ckiM = GetFunction(CkEmailLibId,"CkEmailU_getMimeW")
  Global EmailGetMimeBd.cklMi = GetFunction(CkEmailLibId,"CkEmailU_GetMimeBdW")
  Global EmailGetMimeSb.cklMi = GetFunction(CkEmailLibId,"CkEmailU_GetMimeSbW")
  Global EmailGetNthTextPartOfType.ckiMlsll = GetFunction(CkEmailLibId,"CkEmailU_getNthTextPartOfTypeW")
  Global EmailGetNumPartsOfType.cklMsll = GetFunction(CkEmailLibId,"CkEmailU_GetNumPartsOfTypeW")
  Global EmailGetPlainTextBody.ckiM = GetFunction(CkEmailLibId,"CkEmailU_getPlainTextBodyW")
  Global EmailGetRelatedAttr.ckiMlss = GetFunction(CkEmailLibId,"CkEmailU_getRelatedAttrW")
  Global EmailGetRelatedContentID.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getRelatedContentIDW")
  Global EmailGetRelatedContentLocation.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getRelatedContentLocationW")
  Global EmailGetRelatedContentType.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getRelatedContentTypeW")
  Global EmailGetRelatedFilename.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getRelatedFilenameW")
  Global EmailGetRelatedString.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getRelatedStringW")
  Global EmailGetRelatedStringCrLf.ckiMls = GetFunction(CkEmailLibId,"CkEmailU_getRelatedStringCrLfW")
  Global EmailGetReplacePattern.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getReplacePatternW")
  Global EmailGetReplaceString.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getReplaceStringW")
  Global EmailGetReplaceString2.ckiMs = GetFunction(CkEmailLibId,"CkEmailU_getReplaceString2W")
  Global EmailGetReport.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getReportW")
  Global EmailGetSignedByCert.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetSignedByCertW")
  Global EmailGetSignedByCertChain.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetSignedByCertChainW")
  Global EmailGetSigningCert.ckiM = GetFunction(CkEmailLibId,"CkEmailU_GetSigningCertW")
  Global EmailGetTo.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getToW")
  Global EmailGetToAddr.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getToAddrW")
  Global EmailGetToName.ckiMl = GetFunction(CkEmailLibId,"CkEmailU_getToNameW")
  Global EmailGetXml.ckiM = GetFunction(CkEmailLibId,"CkEmailU_getXmlW")
  Global EmailHasHeaderMatching.cklMssl = GetFunction(CkEmailLibId,"CkEmailU_HasHeaderMatchingW")
  Global EmailHasHtmlBody.cklM = GetFunction(CkEmailLibId,"CkEmailU_HasHtmlBodyW")
  Global EmailHasPlainTextBody.cklM = GetFunction(CkEmailLibId,"CkEmailU_HasPlainTextBodyW")
  Global EmailIsMultipartReport.cklM = GetFunction(CkEmailLibId,"CkEmailU_IsMultipartReportW")
  Global EmailLoadEml.cklMs = GetFunction(CkEmailLibId,"CkEmailU_LoadEmlW")
  Global EmailLoadTaskResult.cklMi = GetFunction(CkEmailLibId,"CkEmailU_LoadTaskResultW")
  Global EmailLoadXml.cklMs = GetFunction(CkEmailLibId,"CkEmailU_LoadXmlW")
  Global EmailLoadXmlString.cklMs = GetFunction(CkEmailLibId,"CkEmailU_LoadXmlStringW")
  Global EmailQEncodeString.ckiMss = GetFunction(CkEmailLibId,"CkEmailU_qEncodeStringW")
  Global EmailRemoveAttachedMessage.ckvMl = GetFunction(CkEmailLibId,"CkEmailU_RemoveAttachedMessageW")
  Global EmailRemoveAttachedMessages.ckvM = GetFunction(CkEmailLibId,"CkEmailU_RemoveAttachedMessagesW")
  Global EmailRemoveAttachmentPaths.ckvM = GetFunction(CkEmailLibId,"CkEmailU_RemoveAttachmentPathsW")
  Global EmailRemoveHeaderField.ckvMs = GetFunction(CkEmailLibId,"CkEmailU_RemoveHeaderFieldW")
  Global EmailRemoveHtmlAlternative.ckvM = GetFunction(CkEmailLibId,"CkEmailU_RemoveHtmlAlternativeW")
  Global EmailRemovePlainTextAlternative.ckvM = GetFunction(CkEmailLibId,"CkEmailU_RemovePlainTextAlternativeW")
  Global EmailSaveAllAttachments.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SaveAllAttachmentsW")
  Global EmailSaveAttachedFile.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SaveAttachedFileW")
  Global EmailSaveEml.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SaveEmlW")
  Global EmailSaveLastError.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SaveLastErrorW")
  Global EmailSaveRelatedItem.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SaveRelatedItemW")
  Global EmailSaveXml.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SaveXmlW")
  Global EmailSetAttachmentCharset.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SetAttachmentCharsetW")
  Global EmailSetAttachmentDisposition.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SetAttachmentDispositionW")
  Global EmailSetAttachmentFilename.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SetAttachmentFilenameW")
  Global EmailSetDecryptCert.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetDecryptCertW")
  Global EmailSetDecryptCert2.cklMii = GetFunction(CkEmailLibId,"CkEmailU_SetDecryptCert2W")
  Global EmailSetDt.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetDtW")
  Global EmailSetEdifactBody.ckvMssss = GetFunction(CkEmailLibId,"CkEmailU_SetEdifactBodyW")
  Global EmailSetEncryptCert.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetEncryptCertW")
  Global EmailSetFromMimeBd.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetFromMimeBdW")
  Global EmailSetFromMimeSb.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetFromMimeSbW")
  Global EmailSetFromMimeText.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SetFromMimeTextW")
  Global EmailSetFromXmlText.cklMs = GetFunction(CkEmailLibId,"CkEmailU_SetFromXmlTextW")
  Global EmailSetHtmlBody.ckvMs = GetFunction(CkEmailLibId,"CkEmailU_SetHtmlBodyW")
  Global EmailSetRelatedFilename.cklMls = GetFunction(CkEmailLibId,"CkEmailU_SetRelatedFilenameW")
  Global EmailSetReplacePattern.cklMss = GetFunction(CkEmailLibId,"CkEmailU_SetReplacePatternW")
  Global EmailSetSigningCert.cklMi = GetFunction(CkEmailLibId,"CkEmailU_SetSigningCertW")
  Global EmailSetSigningCert2.cklMii = GetFunction(CkEmailLibId,"CkEmailU_SetSigningCert2W")
  Global EmailSetTextBody.ckvMss = GetFunction(CkEmailLibId,"CkEmailU_SetTextBodyW")
  Global EmailUidlEquals.cklMi = GetFunction(CkEmailLibId,"CkEmailU_UidlEqualsW")
  Global EmailUnpackHtml.cklMsss = GetFunction(CkEmailLibId,"CkEmailU_UnpackHtmlW")
  Global EmailUnSpamify.ckvM = GetFunction(CkEmailLibId,"CkEmailU_UnSpamifyW")
  Global EmailUnzipAttachments.cklM = GetFunction(CkEmailLibId,"CkEmailU_UnzipAttachmentsW")
  Global EmailUseCertVault.cklMi = GetFunction(CkEmailLibId,"CkEmailU_UseCertVaultW")
  Global EmailZipAttachments.cklMs = GetFunction(CkEmailLibId,"CkEmailU_ZipAttachmentsW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn EmailCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn EmailDispose(obj) : EndProcedure
  Procedure.s ckBody(obj.i) : ProcedureReturn PeekS(EmailBody(obj)) : EndProcedure
  Procedure setCkBody(obj.i, value.s) : ProcedureReturn EmailPSetBody(obj,value) : EndProcedure
  Procedure.s ckBounceAddress(obj.i) : ProcedureReturn PeekS(EmailBounceAddress(obj)) : EndProcedure
  Procedure setCkBounceAddress(obj.i, value.s) : ProcedureReturn EmailPSetBounceAddress(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(EmailCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn EmailPSetCharset(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(EmailDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn EmailPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDecrypted(obj.i) : ProcedureReturn EmailDecrypted(obj) : EndProcedure
  Procedure.s ckEmailDateStr(obj.i) : ProcedureReturn PeekS(EmailEmailDateStr(obj)) : EndProcedure
  Procedure setCkEmailDateStr(obj.i, value.s) : ProcedureReturn EmailPSetEmailDateStr(obj,value) : EndProcedure
  Procedure.s ckEncryptedBy(obj.i) : ProcedureReturn PeekS(EmailEncryptedBy(obj)) : EndProcedure
  Procedure.s ckFileDistList(obj.i) : ProcedureReturn PeekS(EmailFileDistList(obj)) : EndProcedure
  Procedure setCkFileDistList(obj.i, value.s) : ProcedureReturn EmailPSetFileDistList(obj,value) : EndProcedure
  Procedure.s ckFrom(obj.i) : ProcedureReturn PeekS(EmailFrom(obj)) : EndProcedure
  Procedure setCkFrom(obj.i, value.s) : ProcedureReturn EmailPSetFrom(obj,value) : EndProcedure
  Procedure.s ckFromAddress(obj.i) : ProcedureReturn PeekS(EmailFromAddress(obj)) : EndProcedure
  Procedure setCkFromAddress(obj.i, value.s) : ProcedureReturn EmailPSetFromAddress(obj,value) : EndProcedure
  Procedure.s ckFromName(obj.i) : ProcedureReturn PeekS(EmailFromName(obj)) : EndProcedure
  Procedure setCkFromName(obj.i, value.s) : ProcedureReturn EmailPSetFromName(obj,value) : EndProcedure
  Procedure.s ckHeader(obj.i) : ProcedureReturn PeekS(EmailHeader(obj)) : EndProcedure
  Procedure.s ckLanguage(obj.i) : ProcedureReturn PeekS(EmailLanguage(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(EmailLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(EmailLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(EmailLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn EmailLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn EmailPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLocalDateStr(obj.i) : ProcedureReturn PeekS(EmailLocalDateStr(obj)) : EndProcedure
  Procedure setCkLocalDateStr(obj.i, value.s) : ProcedureReturn EmailPSetLocalDateStr(obj,value) : EndProcedure
  Procedure.s ckMailer(obj.i) : ProcedureReturn PeekS(EmailMailer(obj)) : EndProcedure
  Procedure setCkMailer(obj.i, value.s) : ProcedureReturn EmailPSetMailer(obj,value) : EndProcedure
  Procedure.l ckNumAlternatives(obj.i) : ProcedureReturn EmailNumAlternatives(obj) : EndProcedure
  Procedure.l ckNumAttachedMessages(obj.i) : ProcedureReturn EmailNumAttachedMessages(obj) : EndProcedure
  Procedure.l ckNumAttachments(obj.i) : ProcedureReturn EmailNumAttachments(obj) : EndProcedure
  Procedure.l ckNumBcc(obj.i) : ProcedureReturn EmailNumBcc(obj) : EndProcedure
  Procedure.l ckNumCC(obj.i) : ProcedureReturn EmailNumCC(obj) : EndProcedure
  Procedure.l ckNumDaysOld(obj.i) : ProcedureReturn EmailNumDaysOld(obj) : EndProcedure
  Procedure.l ckNumDigests(obj.i) : ProcedureReturn EmailNumDigests(obj) : EndProcedure
  Procedure.l ckNumHeaderFields(obj.i) : ProcedureReturn EmailNumHeaderFields(obj) : EndProcedure
  Procedure.l ckNumRelatedItems(obj.i) : ProcedureReturn EmailNumRelatedItems(obj) : EndProcedure
  Procedure.l ckNumReplacePatterns(obj.i) : ProcedureReturn EmailNumReplacePatterns(obj) : EndProcedure
  Procedure.l ckNumReports(obj.i) : ProcedureReturn EmailNumReports(obj) : EndProcedure
  Procedure.l ckNumTo(obj.i) : ProcedureReturn EmailNumTo(obj) : EndProcedure
  Procedure.s ckOaepHash(obj.i) : ProcedureReturn PeekS(EmailOaepHash(obj)) : EndProcedure
  Procedure setCkOaepHash(obj.i, value.s) : ProcedureReturn EmailPSetOaepHash(obj,value) : EndProcedure
  Procedure.s ckOaepMgfHash(obj.i) : ProcedureReturn PeekS(EmailOaepMgfHash(obj)) : EndProcedure
  Procedure setCkOaepMgfHash(obj.i, value.s) : ProcedureReturn EmailPSetOaepMgfHash(obj,value) : EndProcedure
  Procedure.l ckOaepPadding(obj.i) : ProcedureReturn EmailOaepPadding(obj) : EndProcedure
  Procedure setCkOaepPadding(obj.i, value.l) : ProcedureReturn EmailPSetOaepPadding(obj,value) : EndProcedure
  Procedure.l ckOverwriteExisting(obj.i) : ProcedureReturn EmailOverwriteExisting(obj) : EndProcedure
  Procedure setCkOverwriteExisting(obj.i, value.l) : ProcedureReturn EmailPSetOverwriteExisting(obj,value) : EndProcedure
  Procedure.s ckPkcs7CryptAlg(obj.i) : ProcedureReturn PeekS(EmailPkcs7CryptAlg(obj)) : EndProcedure
  Procedure setCkPkcs7CryptAlg(obj.i, value.s) : ProcedureReturn EmailPSetPkcs7CryptAlg(obj,value) : EndProcedure
  Procedure.l ckPkcs7KeyLength(obj.i) : ProcedureReturn EmailPkcs7KeyLength(obj) : EndProcedure
  Procedure setCkPkcs7KeyLength(obj.i, value.l) : ProcedureReturn EmailPSetPkcs7KeyLength(obj,value) : EndProcedure
  Procedure.s ckPreferredCharset(obj.i) : ProcedureReturn PeekS(EmailPreferredCharset(obj)) : EndProcedure
  Procedure setCkPreferredCharset(obj.i, value.s) : ProcedureReturn EmailPSetPreferredCharset(obj,value) : EndProcedure
  Procedure.l ckPrependHeaders(obj.i) : ProcedureReturn EmailPrependHeaders(obj) : EndProcedure
  Procedure setCkPrependHeaders(obj.i, value.l) : ProcedureReturn EmailPSetPrependHeaders(obj,value) : EndProcedure
  Procedure.l ckReceivedEncrypted(obj.i) : ProcedureReturn EmailReceivedEncrypted(obj) : EndProcedure
  Procedure.l ckReceivedSigned(obj.i) : ProcedureReturn EmailReceivedSigned(obj) : EndProcedure
  Procedure.s ckReplyTo(obj.i) : ProcedureReturn PeekS(EmailReplyTo(obj)) : EndProcedure
  Procedure setCkReplyTo(obj.i, value.s) : ProcedureReturn EmailPSetReplyTo(obj,value) : EndProcedure
  Procedure.l ckReturnReceipt(obj.i) : ProcedureReturn EmailReturnReceipt(obj) : EndProcedure
  Procedure setCkReturnReceipt(obj.i, value.l) : ProcedureReturn EmailPSetReturnReceipt(obj,value) : EndProcedure
  Procedure.l ckSendEncrypted(obj.i) : ProcedureReturn EmailSendEncrypted(obj) : EndProcedure
  Procedure setCkSendEncrypted(obj.i, value.l) : ProcedureReturn EmailPSetSendEncrypted(obj,value) : EndProcedure
  Procedure.s ckSender(obj.i) : ProcedureReturn PeekS(EmailSender(obj)) : EndProcedure
  Procedure setCkSender(obj.i, value.s) : ProcedureReturn EmailPSetSender(obj,value) : EndProcedure
  Procedure.l ckSendSigned(obj.i) : ProcedureReturn EmailSendSigned(obj) : EndProcedure
  Procedure setCkSendSigned(obj.i, value.l) : ProcedureReturn EmailPSetSendSigned(obj,value) : EndProcedure
  Procedure.l ckSignaturesValid(obj.i) : ProcedureReturn EmailSignaturesValid(obj) : EndProcedure
  Procedure.s ckSignedBy(obj.i) : ProcedureReturn PeekS(EmailSignedBy(obj)) : EndProcedure
  Procedure.s ckSigningAlg(obj.i) : ProcedureReturn PeekS(EmailSigningAlg(obj)) : EndProcedure
  Procedure setCkSigningAlg(obj.i, value.s) : ProcedureReturn EmailPSetSigningAlg(obj,value) : EndProcedure
  Procedure.s ckSigningHashAlg(obj.i) : ProcedureReturn PeekS(EmailSigningHashAlg(obj)) : EndProcedure
  Procedure setCkSigningHashAlg(obj.i, value.s) : ProcedureReturn EmailPSetSigningHashAlg(obj,value) : EndProcedure
  Procedure.l ckSize(obj.i) : ProcedureReturn EmailSize(obj) : EndProcedure
  Procedure.s ckSubject(obj.i) : ProcedureReturn PeekS(EmailSubject(obj)) : EndProcedure
  Procedure setCkSubject(obj.i, value.s) : ProcedureReturn EmailPSetSubject(obj,value) : EndProcedure
  Procedure.s ckUidl(obj.i) : ProcedureReturn PeekS(EmailUidl(obj)) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(EmailUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn EmailPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckUnpackUseRelPaths(obj.i) : ProcedureReturn EmailUnpackUseRelPaths(obj) : EndProcedure
  Procedure setCkUnpackUseRelPaths(obj.i, value.l) : ProcedureReturn EmailPSetUnpackUseRelPaths(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn EmailVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn EmailPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(EmailVersion(obj)) : EndProcedure
  Procedure.l ckAddAttachmentBd(obj.i, filename.s, binData.i, contentType.s) :  ProcedureReturn EmailAddAttachmentBd(obj, filename, binData, contentType) :  EndProcedure
  Procedure ckAddAttachmentHeader(obj.i, index.l, fieldName.s, fieldValue.s) :  ProcedureReturn EmailAddAttachmentHeader(obj, index, fieldName, fieldValue) :  EndProcedure
  Procedure.l ckAddBcc(obj.i, friendlyName.s, emailAddress.s) :  ProcedureReturn EmailAddBcc(obj, friendlyName, emailAddress) :  EndProcedure
  Procedure.l ckAddCC(obj.i, friendlyName.s, emailAddress.s) :  ProcedureReturn EmailAddCC(obj, friendlyName, emailAddress) :  EndProcedure
  Procedure.l ckAddEncryptCert(obj.i, cert.i) :  ProcedureReturn EmailAddEncryptCert(obj, cert) :  EndProcedure
  Procedure.s ckAddFileAttachment(obj.i, path.s) :  ProcedureReturn PeekS(EmailAddFileAttachment(obj, path)) :  EndProcedure
  Procedure.l ckAddFileAttachment2(obj.i, path.s, contentType.s) :  ProcedureReturn EmailAddFileAttachment2(obj, path, contentType) :  EndProcedure
  Procedure ckAddHeaderField(obj.i, fieldName.s, fieldValue.s) :  ProcedureReturn EmailAddHeaderField(obj, fieldName, fieldValue) :  EndProcedure
  Procedure ckAddHeaderField2(obj.i, fieldName.s, fieldValue.s) :  ProcedureReturn EmailAddHeaderField2(obj, fieldName, fieldValue) :  EndProcedure
  Procedure.l ckAddHtmlAlternativeBody(obj.i, body.s) :  ProcedureReturn EmailAddHtmlAlternativeBody(obj, body) :  EndProcedure
  Procedure.l ckAddiCalendarAlternativeBody(obj.i, icalContent.s, methodName.s) :  ProcedureReturn EmailAddiCalendarAlternativeBody(obj, icalContent, methodName) :  EndProcedure
  Procedure.l ckAddMultipleBcc(obj.i, commaSeparatedAddresses.s) :  ProcedureReturn EmailAddMultipleBcc(obj, commaSeparatedAddresses) :  EndProcedure
  Procedure.l ckAddMultipleCC(obj.i, commaSeparatedAddresses.s) :  ProcedureReturn EmailAddMultipleCC(obj, commaSeparatedAddresses) :  EndProcedure
  Procedure.l ckAddMultipleTo(obj.i, commaSeparatedAddresses.s) :  ProcedureReturn EmailAddMultipleTo(obj, commaSeparatedAddresses) :  EndProcedure
  Procedure.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s) :  ProcedureReturn EmailAddPfxSourceFile(obj, pfxFilePath, pfxPassword) :  EndProcedure
  Procedure.l ckAddPlainTextAlternativeBody(obj.i, body.s) :  ProcedureReturn EmailAddPlainTextAlternativeBody(obj, body) :  EndProcedure
  Procedure.s ckAddRelatedBd(obj.i, filename.s, binData.i) :  ProcedureReturn PeekS(EmailAddRelatedBd(obj, filename, binData)) :  EndProcedure
  Procedure.l ckAddRelatedBd2(obj.i, binData.i, fileNameInHtml.s) :  ProcedureReturn EmailAddRelatedBd2(obj, binData, fileNameInHtml) :  EndProcedure
  Procedure.s ckAddRelatedFile(obj.i, path.s) :  ProcedureReturn PeekS(EmailAddRelatedFile(obj, path)) :  EndProcedure
  Procedure.l ckAddRelatedFile2(obj.i, filenameOnDisk.s, filenameInHtml.s) :  ProcedureReturn EmailAddRelatedFile2(obj, filenameOnDisk, filenameInHtml) :  EndProcedure
  Procedure ckAddRelatedHeader(obj.i, index.l, fieldName.s, fieldValue.s) :  ProcedureReturn EmailAddRelatedHeader(obj, index, fieldName, fieldValue) :  EndProcedure
  Procedure.s ckAddRelatedString(obj.i, nameInHtml.s, str.s, charset.s) :  ProcedureReturn PeekS(EmailAddRelatedString(obj, nameInHtml, str, charset)) :  EndProcedure
  Procedure ckAddRelatedString2(obj.i, fileNameInHtml.s, content.s, charset.s) :  ProcedureReturn EmailAddRelatedString2(obj, fileNameInHtml, content, charset) :  EndProcedure
  Procedure.l ckAddStringAttachment(obj.i, path.s, content.s) :  ProcedureReturn EmailAddStringAttachment(obj, path, content) :  EndProcedure
  Procedure.l ckAddStringAttachment2(obj.i, path.s, content.s, charset.s) :  ProcedureReturn EmailAddStringAttachment2(obj, path, content, charset) :  EndProcedure
  Procedure.l ckAddTo(obj.i, friendlyName.s, emailAddress.s) :  ProcedureReturn EmailAddTo(obj, friendlyName, emailAddress) :  EndProcedure
  Procedure.l ckAesDecrypt(obj.i, password.s) :  ProcedureReturn EmailAesDecrypt(obj, password) :  EndProcedure
  Procedure.l ckAesEncrypt(obj.i, password.s) :  ProcedureReturn EmailAesEncrypt(obj, password) :  EndProcedure
  Procedure ckAppendToBody(obj.i, str.s) :  ProcedureReturn EmailAppendToBody(obj, str) :  EndProcedure
  Procedure.l ckApplyFixups(obj.i, fixups.s) :  ProcedureReturn EmailApplyFixups(obj, fixups) :  EndProcedure
  Procedure.l ckAspUnpack(obj.i, prefix.s, saveDir.s, urlPath.s, cleanFiles.l) :  ProcedureReturn EmailAspUnpack(obj, prefix, saveDir, urlPath, cleanFiles) :  EndProcedure
  Procedure.s ckBEncodeString(obj.i, str.s, charset.s) :  ProcedureReturn PeekS(EmailBEncodeString(obj, str, charset)) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn EmailClear(obj) :  EndProcedure
  Procedure ckClearBcc(obj.i) :  ProcedureReturn EmailClearBcc(obj) :  EndProcedure
  Procedure ckClearCC(obj.i) :  ProcedureReturn EmailClearCC(obj) :  EndProcedure
  Procedure ckClearEncryptCerts(obj.i) :  ProcedureReturn EmailClearEncryptCerts(obj) :  EndProcedure
  Procedure ckClearTo(obj.i) :  ProcedureReturn EmailClearTo(obj) :  EndProcedure
  Procedure.i ckClone(obj.i) :  ProcedureReturn EmailClone(obj) :  EndProcedure
  Procedure.s ckComputeGlobalKey(obj.i, encoding.s, bFold.l) :  ProcedureReturn PeekS(EmailComputeGlobalKey(obj, encoding, bFold)) :  EndProcedure
  Procedure.s ckComputeGlobalKey2(obj.i, encoding.s, bFold.l) :  ProcedureReturn PeekS(EmailComputeGlobalKey2(obj, encoding, bFold)) :  EndProcedure
  Procedure.l ckConvertInlineImages(obj.i) :  ProcedureReturn EmailConvertInlineImages(obj) :  EndProcedure
  Procedure.i ckCreateDsn(obj.i, humanReadableMessage.s, xmlStatusFields.s, bHeaderOnly.l) :  ProcedureReturn EmailCreateDsn(obj, humanReadableMessage, xmlStatusFields, bHeaderOnly) :  EndProcedure
  Procedure.i ckCreateForward(obj.i) :  ProcedureReturn EmailCreateForward(obj) :  EndProcedure
  Procedure.i ckCreateMdn(obj.i, humanReadableMessage.s, xmlStatusFields.s, bHeaderOnly.l) :  ProcedureReturn EmailCreateMdn(obj, humanReadableMessage, xmlStatusFields, bHeaderOnly) :  EndProcedure
  Procedure.i ckCreateReply(obj.i) :  ProcedureReturn EmailCreateReply(obj) :  EndProcedure
  Procedure.s ckCreateTempMht(obj.i, inFilename.s) :  ProcedureReturn PeekS(EmailCreateTempMht(obj, inFilename)) :  EndProcedure
  Procedure ckDropAttachments(obj.i) :  ProcedureReturn EmailDropAttachments(obj) :  EndProcedure
  Procedure ckDropRelatedItem(obj.i, index.l) :  ProcedureReturn EmailDropRelatedItem(obj, index) :  EndProcedure
  Procedure ckDropRelatedItems(obj.i) :  ProcedureReturn EmailDropRelatedItems(obj) :  EndProcedure
  Procedure.l ckDropSingleAttachment(obj.i, index.l) :  ProcedureReturn EmailDropSingleAttachment(obj, index) :  EndProcedure
  Procedure.i ckFindIssuer(obj.i, cert.i) :  ProcedureReturn EmailFindIssuer(obj, cert) :  EndProcedure
  Procedure.s ckGenerateFilename(obj.i) :  ProcedureReturn PeekS(EmailGenerateFilename(obj)) :  EndProcedure
  Procedure.s ckGetAlternativeBody(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAlternativeBody(obj, index)) :  EndProcedure
  Procedure.l ckGetAlternativeBodyBd(obj.i, index.l, binData.i) :  ProcedureReturn EmailGetAlternativeBodyBd(obj, index, binData) :  EndProcedure
  Procedure.s ckGetAlternativeBodyByContentType(obj.i, contentType.s) :  ProcedureReturn PeekS(EmailGetAlternativeBodyByContentType(obj, contentType)) :  EndProcedure
  Procedure.s ckGetAlternativeContentType(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAlternativeContentType(obj, index)) :  EndProcedure
  Procedure.s ckGetAltHeaderField(obj.i, index.l, fieldName.s) :  ProcedureReturn PeekS(EmailGetAltHeaderField(obj, index, fieldName)) :  EndProcedure
  Procedure.i ckGetAttachedMessage(obj.i, index.l) :  ProcedureReturn EmailGetAttachedMessage(obj, index) :  EndProcedure
  Procedure.s ckGetAttachedMessageAttr(obj.i, index.l, fieldName.s, attrName.s) :  ProcedureReturn PeekS(EmailGetAttachedMessageAttr(obj, index, fieldName, attrName)) :  EndProcedure
  Procedure.s ckGetAttachedMessageFilename(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAttachedMessageFilename(obj, index)) :  EndProcedure
  Procedure.s ckGetAttachmentAttr(obj.i, index.l, fieldName.s, attrName.s) :  ProcedureReturn PeekS(EmailGetAttachmentAttr(obj, index, fieldName, attrName)) :  EndProcedure
  Procedure.l ckGetAttachmentBd(obj.i, index.l, binData.i) :  ProcedureReturn EmailGetAttachmentBd(obj, index, binData) :  EndProcedure
  Procedure.s ckGetAttachmentContentID(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAttachmentContentID(obj, index)) :  EndProcedure
  Procedure.s ckGetAttachmentContentType(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAttachmentContentType(obj, index)) :  EndProcedure
  Procedure.s ckGetAttachmentFilename(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetAttachmentFilename(obj, index)) :  EndProcedure
  Procedure.s ckGetAttachmentHeader(obj.i, attachIndex.l, fieldName.s) :  ProcedureReturn PeekS(EmailGetAttachmentHeader(obj, attachIndex, fieldName)) :  EndProcedure
  Procedure.l ckGetAttachmentSize(obj.i, index.l) :  ProcedureReturn EmailGetAttachmentSize(obj, index) :  EndProcedure
  Procedure.s ckGetAttachmentString(obj.i, index.l, charset.s) :  ProcedureReturn PeekS(EmailGetAttachmentString(obj, index, charset)) :  EndProcedure
  Procedure.s ckGetAttachmentStringCrLf(obj.i, index.l, charset.s) :  ProcedureReturn PeekS(EmailGetAttachmentStringCrLf(obj, index, charset)) :  EndProcedure
  Procedure.s ckGetBcc(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetBcc(obj, index)) :  EndProcedure
  Procedure.s ckGetBccAddr(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetBccAddr(obj, index)) :  EndProcedure
  Procedure.s ckGetBccName(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetBccName(obj, index)) :  EndProcedure
  Procedure.s ckGetCC(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetCC(obj, index)) :  EndProcedure
  Procedure.s ckGetCcAddr(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetCcAddr(obj, index)) :  EndProcedure
  Procedure.s ckGetCcName(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetCcName(obj, index)) :  EndProcedure
  Procedure.s ckGetDeliveryStatusInfo(obj.i, fieldName.s) :  ProcedureReturn PeekS(EmailGetDeliveryStatusInfo(obj, fieldName)) :  EndProcedure
  Procedure.i ckGetDigest(obj.i, index.l) :  ProcedureReturn EmailGetDigest(obj, index) :  EndProcedure
  Procedure.i ckGetDsnFinalRecipients(obj.i) :  ProcedureReturn EmailGetDsnFinalRecipients(obj) :  EndProcedure
  Procedure.i ckGetDt(obj.i) :  ProcedureReturn EmailGetDt(obj) :  EndProcedure
  Procedure.i ckGetEncryptCert(obj.i) :  ProcedureReturn EmailGetEncryptCert(obj) :  EndProcedure
  Procedure.i ckGetEncryptedByCert(obj.i) :  ProcedureReturn EmailGetEncryptedByCert(obj) :  EndProcedure
  Procedure.s ckGetHeaderField(obj.i, fieldName.s) :  ProcedureReturn PeekS(EmailGetHeaderField(obj, fieldName)) :  EndProcedure
  Procedure.s ckGetHeaderFieldName(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetHeaderFieldName(obj, index)) :  EndProcedure
  Procedure.s ckGetHeaderFieldValue(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetHeaderFieldValue(obj, index)) :  EndProcedure
  Procedure.s ckGetHtmlBody(obj.i) :  ProcedureReturn PeekS(EmailGetHtmlBody(obj)) :  EndProcedure
  Procedure.l ckGetImapUid(obj.i) :  ProcedureReturn EmailGetImapUid(obj) :  EndProcedure
  Procedure.i ckGetLinkedDomains(obj.i) :  ProcedureReturn EmailGetLinkedDomains(obj) :  EndProcedure
  Procedure.s ckGetMime(obj.i) :  ProcedureReturn PeekS(EmailGetMime(obj)) :  EndProcedure
  Procedure.l ckGetMimeBd(obj.i, bindat.i) :  ProcedureReturn EmailGetMimeBd(obj, bindat) :  EndProcedure
  Procedure.l ckGetMimeSb(obj.i, sb.i) :  ProcedureReturn EmailGetMimeSb(obj, sb) :  EndProcedure
  Procedure.s ckGetNthTextPartOfType(obj.i, index.l, contentType.s, inlineOnly.l, excludeAttachments.l) :  ProcedureReturn PeekS(EmailGetNthTextPartOfType(obj, index, contentType, inlineOnly, excludeAttachments)) :  EndProcedure
  Procedure.l ckGetNumPartsOfType(obj.i, contentType.s, inlineOnly.l, excludeAttachments.l) :  ProcedureReturn EmailGetNumPartsOfType(obj, contentType, inlineOnly, excludeAttachments) :  EndProcedure
  Procedure.s ckGetPlainTextBody(obj.i) :  ProcedureReturn PeekS(EmailGetPlainTextBody(obj)) :  EndProcedure
  Procedure.s ckGetRelatedAttr(obj.i, index.l, fieldName.s, attrName.s) :  ProcedureReturn PeekS(EmailGetRelatedAttr(obj, index, fieldName, attrName)) :  EndProcedure
  Procedure.s ckGetRelatedContentID(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetRelatedContentID(obj, index)) :  EndProcedure
  Procedure.s ckGetRelatedContentLocation(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetRelatedContentLocation(obj, index)) :  EndProcedure
  Procedure.s ckGetRelatedContentType(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetRelatedContentType(obj, index)) :  EndProcedure
  Procedure.s ckGetRelatedFilename(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetRelatedFilename(obj, index)) :  EndProcedure
  Procedure.s ckGetRelatedString(obj.i, index.l, charset.s) :  ProcedureReturn PeekS(EmailGetRelatedString(obj, index, charset)) :  EndProcedure
  Procedure.s ckGetRelatedStringCrLf(obj.i, index.l, charset.s) :  ProcedureReturn PeekS(EmailGetRelatedStringCrLf(obj, index, charset)) :  EndProcedure
  Procedure.s ckGetReplacePattern(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetReplacePattern(obj, index)) :  EndProcedure
  Procedure.s ckGetReplaceString(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetReplaceString(obj, index)) :  EndProcedure
  Procedure.s ckGetReplaceString2(obj.i, pattern.s) :  ProcedureReturn PeekS(EmailGetReplaceString2(obj, pattern)) :  EndProcedure
  Procedure.s ckGetReport(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetReport(obj, index)) :  EndProcedure
  Procedure.i ckGetSignedByCert(obj.i) :  ProcedureReturn EmailGetSignedByCert(obj) :  EndProcedure
  Procedure.i ckGetSignedByCertChain(obj.i) :  ProcedureReturn EmailGetSignedByCertChain(obj) :  EndProcedure
  Procedure.i ckGetSigningCert(obj.i) :  ProcedureReturn EmailGetSigningCert(obj) :  EndProcedure
  Procedure.s ckGetTo(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetTo(obj, index)) :  EndProcedure
  Procedure.s ckGetToAddr(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetToAddr(obj, index)) :  EndProcedure
  Procedure.s ckGetToName(obj.i, index.l) :  ProcedureReturn PeekS(EmailGetToName(obj, index)) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(EmailGetXml(obj)) :  EndProcedure
  Procedure.l ckHasHeaderMatching(obj.i, fieldName.s, valuePattern.s, caseSensitive.l) :  ProcedureReturn EmailHasHeaderMatching(obj, fieldName, valuePattern, caseSensitive) :  EndProcedure
  Procedure.l ckHasHtmlBody(obj.i) :  ProcedureReturn EmailHasHtmlBody(obj) :  EndProcedure
  Procedure.l ckHasPlainTextBody(obj.i) :  ProcedureReturn EmailHasPlainTextBody(obj) :  EndProcedure
  Procedure.l ckIsMultipartReport(obj.i) :  ProcedureReturn EmailIsMultipartReport(obj) :  EndProcedure
  Procedure.l ckLoadEml(obj.i, mimePath.s) :  ProcedureReturn EmailLoadEml(obj, mimePath) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn EmailLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xmlPath.s) :  ProcedureReturn EmailLoadXml(obj, xmlPath) :  EndProcedure
  Procedure.l ckLoadXmlString(obj.i, xmlStr.s) :  ProcedureReturn EmailLoadXmlString(obj, xmlStr) :  EndProcedure
  Procedure.s ckQEncodeString(obj.i, str.s, charset.s) :  ProcedureReturn PeekS(EmailQEncodeString(obj, str, charset)) :  EndProcedure
  Procedure ckRemoveAttachedMessage(obj.i, idx.l) :  ProcedureReturn EmailRemoveAttachedMessage(obj, idx) :  EndProcedure
  Procedure ckRemoveAttachedMessages(obj.i) :  ProcedureReturn EmailRemoveAttachedMessages(obj) :  EndProcedure
  Procedure ckRemoveAttachmentPaths(obj.i) :  ProcedureReturn EmailRemoveAttachmentPaths(obj) :  EndProcedure
  Procedure ckRemoveHeaderField(obj.i, fieldName.s) :  ProcedureReturn EmailRemoveHeaderField(obj, fieldName) :  EndProcedure
  Procedure ckRemoveHtmlAlternative(obj.i) :  ProcedureReturn EmailRemoveHtmlAlternative(obj) :  EndProcedure
  Procedure ckRemovePlainTextAlternative(obj.i) :  ProcedureReturn EmailRemovePlainTextAlternative(obj) :  EndProcedure
  Procedure.l ckSaveAllAttachments(obj.i, dirPath.s) :  ProcedureReturn EmailSaveAllAttachments(obj, dirPath) :  EndProcedure
  Procedure.l ckSaveAttachedFile(obj.i, index.l, dirPath.s) :  ProcedureReturn EmailSaveAttachedFile(obj, index, dirPath) :  EndProcedure
  Procedure.l ckSaveEml(obj.i, emlFilePath.s) :  ProcedureReturn EmailSaveEml(obj, emlFilePath) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn EmailSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveRelatedItem(obj.i, index.l, dirPath.s) :  ProcedureReturn EmailSaveRelatedItem(obj, index, dirPath) :  EndProcedure
  Procedure.l ckSaveXml(obj.i, path.s) :  ProcedureReturn EmailSaveXml(obj, path) :  EndProcedure
  Procedure.l ckSetAttachmentCharset(obj.i, index.l, charset.s) :  ProcedureReturn EmailSetAttachmentCharset(obj, index, charset) :  EndProcedure
  Procedure.l ckSetAttachmentDisposition(obj.i, index.l, disposition.s) :  ProcedureReturn EmailSetAttachmentDisposition(obj, index, disposition) :  EndProcedure
  Procedure.l ckSetAttachmentFilename(obj.i, index.l, filename.s) :  ProcedureReturn EmailSetAttachmentFilename(obj, index, filename) :  EndProcedure
  Procedure.l ckSetDecryptCert(obj.i, cert.i) :  ProcedureReturn EmailSetDecryptCert(obj, cert) :  EndProcedure
  Procedure.l ckSetDecryptCert2(obj.i, cert.i, key.i) :  ProcedureReturn EmailSetDecryptCert2(obj, cert, key) :  EndProcedure
  Procedure.l ckSetDt(obj.i, dt.i) :  ProcedureReturn EmailSetDt(obj, dt) :  EndProcedure
  Procedure ckSetEdifactBody(obj.i, message.s, name.s, filename.s, charset.s) :  ProcedureReturn EmailSetEdifactBody(obj, message, name, filename, charset) :  EndProcedure
  Procedure.l ckSetEncryptCert(obj.i, cert.i) :  ProcedureReturn EmailSetEncryptCert(obj, cert) :  EndProcedure
  Procedure.l ckSetFromMimeBd(obj.i, bindat.i) :  ProcedureReturn EmailSetFromMimeBd(obj, bindat) :  EndProcedure
  Procedure.l ckSetFromMimeSb(obj.i, sb.i) :  ProcedureReturn EmailSetFromMimeSb(obj, sb) :  EndProcedure
  Procedure.l ckSetFromMimeText(obj.i, mimeText.s) :  ProcedureReturn EmailSetFromMimeText(obj, mimeText) :  EndProcedure
  Procedure.l ckSetFromXmlText(obj.i, xmlStr.s) :  ProcedureReturn EmailSetFromXmlText(obj, xmlStr) :  EndProcedure
  Procedure ckSetHtmlBody(obj.i, html.s) :  ProcedureReturn EmailSetHtmlBody(obj, html) :  EndProcedure
  Procedure.l ckSetRelatedFilename(obj.i, index.l, path.s) :  ProcedureReturn EmailSetRelatedFilename(obj, index, path) :  EndProcedure
  Procedure.l ckSetReplacePattern(obj.i, pattern.s, replaceString.s) :  ProcedureReturn EmailSetReplacePattern(obj, pattern, replaceString) :  EndProcedure
  Procedure.l ckSetSigningCert(obj.i, cert.i) :  ProcedureReturn EmailSetSigningCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSigningCert2(obj.i, cert.i, key.i) :  ProcedureReturn EmailSetSigningCert2(obj, cert, key) :  EndProcedure
  Procedure ckSetTextBody(obj.i, bodyText.s, contentType.s) :  ProcedureReturn EmailSetTextBody(obj, bodyText, contentType) :  EndProcedure
  Procedure.l ckUidlEquals(obj.i, e.i) :  ProcedureReturn EmailUidlEquals(obj, e) :  EndProcedure
  Procedure.l ckUnpackHtml(obj.i, unpackDir.s, htmlFilename.s, partsSubdir.s) :  ProcedureReturn EmailUnpackHtml(obj, unpackDir, htmlFilename, partsSubdir) :  EndProcedure
  Procedure ckUnSpamify(obj.i) :  ProcedureReturn EmailUnSpamify(obj) :  EndProcedure
  Procedure.l ckUnzipAttachments(obj.i) :  ProcedureReturn EmailUnzipAttachments(obj) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn EmailUseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckZipAttachments(obj.i, zipFilename.s) :  ProcedureReturn EmailZipAttachments(obj, zipFilename) :  EndProcedure
EndModule


; IDE Options = PureBasic 6.40 (Windows - x64)
; CursorPosition = 12
; Folding = -------------------------------------------
; EnableThread
; EnableXP
; DPIAware