DeclareModule CkMime
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBoundary(obj.i)
  Declare setCkBoundary(obj.i, value.s)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckCmsOptions(obj.i)
  Declare setCkCmsOptions(obj.i, value.s)
  Declare.s ckContentType(obj.i)
  Declare setCkContentType(obj.i, value.s)
  Declare.s ckCurrentDateTime(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDisposition(obj.i)
  Declare setCkDisposition(obj.i, value.s)
  Declare.s ckEncoding(obj.i)
  Declare setCkEncoding(obj.i, value.s)
  Declare.s ckFilename(obj.i)
  Declare setCkFilename(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckMicalg(obj.i)
  Declare setCkMicalg(obj.i, value.s)
  Declare.s ckName(obj.i)
  Declare setCkName(obj.i, value.s)
  Declare.l ckNumEncryptCerts(obj.i)
  Declare.l ckNumHeaderFields(obj.i)
  Declare.l ckNumParts(obj.i)
  Declare.l ckNumSignerCerts(obj.i)
  Declare.s ckOaepHash(obj.i)
  Declare setCkOaepHash(obj.i, value.s)
  Declare.s ckOaepMgfHash(obj.i)
  Declare setCkOaepMgfHash(obj.i, value.s)
  Declare.l ckOaepPadding(obj.i)
  Declare setCkOaepPadding(obj.i, value.l)
  Declare.s ckPkcs7CryptAlg(obj.i)
  Declare setCkPkcs7CryptAlg(obj.i, value.s)
  Declare.l ckPkcs7KeyLength(obj.i)
  Declare setCkPkcs7KeyLength(obj.i, value.l)
  Declare.s ckProtocol(obj.i)
  Declare setCkProtocol(obj.i, value.s)
  Declare.s ckSigningAlg(obj.i)
  Declare setCkSigningAlg(obj.i, value.s)
  Declare.s ckSigningHashAlg(obj.i)
  Declare setCkSigningHashAlg(obj.i, value.s)
  Declare.l ckUnwrapExtras(obj.i)
  Declare setCkUnwrapExtras(obj.i, value.l)
  Declare.l ckUseMmDescription(obj.i)
  Declare setCkUseMmDescription(obj.i, value.l)
  Declare.l ckUseXPkcs7(obj.i)
  Declare setCkUseXPkcs7(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckAddContentLength(obj.i)
  Declare.l ckAddDecryptCert(obj.i, cert.i)
  Declare.l ckAddDetachedSignature(obj.i, cert.i)
  Declare.l ckAddDetachedSignature2(obj.i, cert.i, transferHeaderFields.l)
  Declare.l ckAddDetachedSignaturePk(obj.i, cert.i, privateKey.i)
  Declare.l ckAddDetachedSignaturePk2(obj.i, cert.i, privateKey.i, transferHeaderFields.l)
  Declare.l ckAddEncryptCert(obj.i, cert.i)
  Declare.l ckAddHeaderField(obj.i, name.s, value.s)
  Declare.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, password.s)
  Declare.l ckAppendPart(obj.i, mime.i)
  Declare.l ckAppendPartFromFile(obj.i, filename.s)
  Declare.s ckAsnBodyToXml(obj.i)
  Declare ckClearEncryptCerts(obj.i)
  Declare.l ckContainsEncryptedParts(obj.i)
  Declare.l ckContainsSignedParts(obj.i)
  Declare ckConvert8Bit(obj.i)
  Declare.l ckConvertToMultipartAlt(obj.i)
  Declare.l ckConvertToMultipartMixed(obj.i)
  Declare.l ckConvertToSigned(obj.i, cert.i)
  Declare.l ckConvertToSignedPk(obj.i, cert.i, privateKey.i)
  Declare.l ckDecrypt(obj.i)
  Declare.l ckDecrypt2(obj.i, cert.i, privateKey.i)
  Declare.l ckDecryptUsingCert(obj.i, cert.i)
  Declare.l ckDecryptUsingPfxFile(obj.i, pfxFilePath.s, pfxPassword.s)
  Declare.l ckEncrypt(obj.i, cert.i)
  Declare.l ckEncryptN(obj.i)
  Declare.i ckExtractPartsToFiles(obj.i, dirPath.s)
  Declare.i ckFindIssuer(obj.i, cert.i)
  Declare.l ckGetBodyBd(obj.i, binDat.i)
  Declare.s ckGetBodyDecoded(obj.i)
  Declare.s ckGetBodyEncoded(obj.i)
  Declare.i ckGetEncryptCert(obj.i, index.l)
  Declare.s ckGetEntireBody(obj.i)
  Declare.s ckGetEntireHead(obj.i)
  Declare.s ckGetHeaderField(obj.i, fieldName.s)
  Declare.s ckGetHeaderFieldAttribute(obj.i, name.s, attrName.s)
  Declare.s ckGetHeaderFieldName(obj.i, index.l)
  Declare.s ckGetHeaderFieldValue(obj.i, index.l)
  Declare.s ckGetMime(obj.i)
  Declare.l ckGetMimeBd(obj.i, bindat.i)
  Declare.l ckGetMimeSb(obj.i, sb.i)
  Declare.i ckGetPart(obj.i, index.l)
  Declare.s ckGetSignatureSigningTimeStr(obj.i, index.l)
  Declare.i ckGetSignerCert(obj.i, index.l)
  Declare.i ckGetSignerCertChain(obj.i, index.l)
  Declare.s ckGetStructure(obj.i, fmt.s)
  Declare.s ckGetXml(obj.i)
  Declare.l ckHasSignatureSigningTime(obj.i, index.l)
  Declare.l ckIsApplicationData(obj.i)
  Declare.l ckIsAttachment(obj.i)
  Declare.l ckIsAudio(obj.i)
  Declare.l ckIsEncrypted(obj.i)
  Declare.l ckIsHtml(obj.i)
  Declare.l ckIsImage(obj.i)
  Declare.l ckIsMultipart(obj.i)
  Declare.l ckIsMultipartAlternative(obj.i)
  Declare.l ckIsMultipartMixed(obj.i)
  Declare.l ckIsMultipartRelated(obj.i)
  Declare.l ckIsPlainText(obj.i)
  Declare.l ckIsSigned(obj.i)
  Declare.l ckIsText(obj.i)
  Declare.l ckIsUnlocked(obj.i)
  Declare.l ckIsVideo(obj.i)
  Declare.l ckIsXml(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadMime(obj.i, mimeMsg.s)
  Declare.l ckLoadMimeBd(obj.i, bindat.i)
  Declare.l ckLoadMimeFile(obj.i, fileName.s)
  Declare.l ckLoadMimeSb(obj.i, sb.i)
  Declare.l ckLoadXml(obj.i, xml.s)
  Declare.l ckLoadXmlFile(obj.i, fileName.s)
  Declare.l ckNewMessageRfc822(obj.i, mimeObject.i)
  Declare.l ckNewMultipartAlternative(obj.i)
  Declare.l ckNewMultipartMixed(obj.i)
  Declare.l ckNewMultipartRelated(obj.i)
  Declare ckRemoveHeaderField(obj.i, fieldName.s, bAllOccurrences.l)
  Declare.l ckRemovePart(obj.i, index.l)
  Declare.l ckSaveBody(obj.i, filename.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveMime(obj.i, filename.s)
  Declare.l ckSaveXml(obj.i, filename.s)
  Declare ckSetBody(obj.i, str.s)
  Declare.l ckSetBodyFromEncoded(obj.i, encoding.s, str.s)
  Declare.l ckSetBodyFromFile(obj.i, fileName.s)
  Declare.l ckSetBodyFromHtml(obj.i, str.s)
  Declare.l ckSetBodyFromPlainText(obj.i, str.s)
  Declare.l ckSetBodyFromXml(obj.i, str.s)
  Declare.l ckSetHeaderField(obj.i, name.s, value.s)
  Declare.l ckSetVerifyCert(obj.i, cert.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUnwrapSecurity(obj.i)
  Declare ckUrlEncodeBody(obj.i, charset.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckVerify(obj.i)
EndDeclareModule

Module CkMime
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
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMiil(obj.i, arg1.i, arg2.i, arg3.l)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i CkMimeCreate()
  PrototypeC CkMimeDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMimeLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkMimeLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkMimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkMimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global MimeCreate.CkMimeCreate = GetFunction(CkMimeLibId,"CkMimeU_CreateW")
  Global MimeDispose.CkMimeDispose = GetFunction(CkMimeLibId,"CkMimeU_DisposeW")
  Global MimeBoundary.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_boundaryW")
  Global MimePSetBoundary.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putBoundaryW")
  Global MimeCharset.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_charsetW")
  Global MimePSetCharset.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putCharsetW")
  Global MimeCmsOptions.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_cmsOptionsW")
  Global MimePSetCmsOptions.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putCmsOptionsW")
  Global MimeContentType.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_contentTypeW")
  Global MimePSetContentType.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putContentTypeW")
  Global MimeCurrentDateTime.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_currentDateTimeW")
  Global MimeDebugLogFilePath.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_debugLogFilePathW")
  Global MimePSetDebugLogFilePath.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putDebugLogFilePathW")
  Global MimeDisposition.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_dispositionW")
  Global MimePSetDisposition.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putDispositionW")
  Global MimeEncoding.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_encodingW")
  Global MimePSetEncoding.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putEncodingW")
  Global MimeFilename.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_filenameW")
  Global MimePSetFilename.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putFilenameW")
  Global MimeLastErrorHtml.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_lastErrorHtmlW")
  Global MimeLastErrorText.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_lastErrorTextW")
  Global MimeLastErrorXml.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_lastErrorXmlW")
  Global MimeLastMethodSuccess.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getLastMethodSuccessW")
  Global MimePSetLastMethodSuccess.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putLastMethodSuccessW")
  Global MimeMicalg.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_micalgW")
  Global MimePSetMicalg.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putMicalgW")
  Global MimeName.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_nameW")
  Global MimePSetName.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putNameW")
  Global MimeNumEncryptCerts.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getNumEncryptCertsW")
  Global MimeNumHeaderFields.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getNumHeaderFieldsW")
  Global MimeNumParts.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getNumPartsW")
  Global MimeNumSignerCerts.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getNumSignerCertsW")
  Global MimeOaepHash.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_oaepHashW")
  Global MimePSetOaepHash.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putOaepHashW")
  Global MimeOaepMgfHash.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_oaepMgfHashW")
  Global MimePSetOaepMgfHash.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putOaepMgfHashW")
  Global MimeOaepPadding.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getOaepPaddingW")
  Global MimePSetOaepPadding.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putOaepPaddingW")
  Global MimePkcs7CryptAlg.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_pkcs7CryptAlgW")
  Global MimePSetPkcs7CryptAlg.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putPkcs7CryptAlgW")
  Global MimePkcs7KeyLength.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getPkcs7KeyLengthW")
  Global MimePSetPkcs7KeyLength.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putPkcs7KeyLengthW")
  Global MimeProtocol.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_protocolW")
  Global MimePSetProtocol.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putProtocolW")
  Global MimeSigningAlg.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_signingAlgW")
  Global MimePSetSigningAlg.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putSigningAlgW")
  Global MimeSigningHashAlg.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_signingHashAlgW")
  Global MimePSetSigningHashAlg.cksPropSet = GetFunction(CkMimeLibId,"CkMimeU_putSigningHashAlgW")
  Global MimeUnwrapExtras.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getUnwrapExtrasW")
  Global MimePSetUnwrapExtras.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putUnwrapExtrasW")
  Global MimeUseMmDescription.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getUseMmDescriptionW")
  Global MimePSetUseMmDescription.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putUseMmDescriptionW")
  Global MimeUseXPkcs7.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getUseXPkcs7W")
  Global MimePSetUseXPkcs7.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putUseXPkcs7W")
  Global MimeVerboseLogging.cklPropGet = GetFunction(CkMimeLibId,"CkMimeU_getVerboseLoggingW")
  Global MimePSetVerboseLogging.cklPropSet = GetFunction(CkMimeLibId,"CkMimeU_putVerboseLoggingW")
  Global MimeVersion.cksPropGet = GetFunction(CkMimeLibId,"CkMimeU_versionW")
  Global MimeAddContentLength.ckvM = GetFunction(CkMimeLibId,"CkMimeU_AddContentLengthW")
  Global MimeAddDecryptCert.cklMi = GetFunction(CkMimeLibId,"CkMimeU_AddDecryptCertW")
  Global MimeAddDetachedSignature.cklMi = GetFunction(CkMimeLibId,"CkMimeU_AddDetachedSignatureW")
  Global MimeAddDetachedSignature2.cklMil = GetFunction(CkMimeLibId,"CkMimeU_AddDetachedSignature2W")
  Global MimeAddDetachedSignaturePk.cklMii = GetFunction(CkMimeLibId,"CkMimeU_AddDetachedSignaturePkW")
  Global MimeAddDetachedSignaturePk2.cklMiil = GetFunction(CkMimeLibId,"CkMimeU_AddDetachedSignaturePk2W")
  Global MimeAddEncryptCert.cklMi = GetFunction(CkMimeLibId,"CkMimeU_AddEncryptCertW")
  Global MimeAddHeaderField.cklMss = GetFunction(CkMimeLibId,"CkMimeU_AddHeaderFieldW")
  Global MimeAddPfxSourceFile.cklMss = GetFunction(CkMimeLibId,"CkMimeU_AddPfxSourceFileW")
  Global MimeAppendPart.cklMi = GetFunction(CkMimeLibId,"CkMimeU_AppendPartW")
  Global MimeAppendPartFromFile.cklMs = GetFunction(CkMimeLibId,"CkMimeU_AppendPartFromFileW")
  Global MimeAsnBodyToXml.cklM = GetFunction(CkMimeLibId,"CkMimeU_asnBodyToXmlW")
  Global MimeClearEncryptCerts.ckvM = GetFunction(CkMimeLibId,"CkMimeU_ClearEncryptCertsW")
  Global MimeContainsEncryptedParts.cklM = GetFunction(CkMimeLibId,"CkMimeU_ContainsEncryptedPartsW")
  Global MimeContainsSignedParts.cklM = GetFunction(CkMimeLibId,"CkMimeU_ContainsSignedPartsW")
  Global MimeConvert8Bit.ckvM = GetFunction(CkMimeLibId,"CkMimeU_Convert8BitW")
  Global MimeConvertToMultipartAlt.cklM = GetFunction(CkMimeLibId,"CkMimeU_ConvertToMultipartAltW")
  Global MimeConvertToMultipartMixed.cklM = GetFunction(CkMimeLibId,"CkMimeU_ConvertToMultipartMixedW")
  Global MimeConvertToSigned.cklMi = GetFunction(CkMimeLibId,"CkMimeU_ConvertToSignedW")
  Global MimeConvertToSignedPk.cklMii = GetFunction(CkMimeLibId,"CkMimeU_ConvertToSignedPkW")
  Global MimeDecrypt.cklM = GetFunction(CkMimeLibId,"CkMimeU_DecryptW")
  Global MimeDecrypt2.cklMii = GetFunction(CkMimeLibId,"CkMimeU_Decrypt2W")
  Global MimeDecryptUsingCert.cklMi = GetFunction(CkMimeLibId,"CkMimeU_DecryptUsingCertW")
  Global MimeDecryptUsingPfxFile.cklMss = GetFunction(CkMimeLibId,"CkMimeU_DecryptUsingPfxFileW")
  Global MimeEncrypt.cklMi = GetFunction(CkMimeLibId,"CkMimeU_EncryptW")
  Global MimeEncryptN.cklM = GetFunction(CkMimeLibId,"CkMimeU_EncryptNW")
  Global MimeExtractPartsToFiles.ckiMs = GetFunction(CkMimeLibId,"CkMimeU_ExtractPartsToFilesW")
  Global MimeFindIssuer.ckiMi = GetFunction(CkMimeLibId,"CkMimeU_FindIssuerW")
  Global MimeGetBodyBd.cklMi = GetFunction(CkMimeLibId,"CkMimeU_GetBodyBdW")
  Global MimeGetBodyDecoded.cklM = GetFunction(CkMimeLibId,"CkMimeU_getBodyDecodedW")
  Global MimeGetBodyEncoded.cklM = GetFunction(CkMimeLibId,"CkMimeU_getBodyEncodedW")
  Global MimeGetEncryptCert.ckiMl = GetFunction(CkMimeLibId,"CkMimeU_GetEncryptCertW")
  Global MimeGetEntireBody.cklM = GetFunction(CkMimeLibId,"CkMimeU_getEntireBodyW")
  Global MimeGetEntireHead.cklM = GetFunction(CkMimeLibId,"CkMimeU_getEntireHeadW")
  Global MimeGetHeaderField.cklMs = GetFunction(CkMimeLibId,"CkMimeU_getHeaderFieldW")
  Global MimeGetHeaderFieldAttribute.cklMss = GetFunction(CkMimeLibId,"CkMimeU_getHeaderFieldAttributeW")
  Global MimeGetHeaderFieldName.cklMl = GetFunction(CkMimeLibId,"CkMimeU_getHeaderFieldNameW")
  Global MimeGetHeaderFieldValue.cklMl = GetFunction(CkMimeLibId,"CkMimeU_getHeaderFieldValueW")
  Global MimeGetMime.cklM = GetFunction(CkMimeLibId,"CkMimeU_getMimeW")
  Global MimeGetMimeBd.cklMi = GetFunction(CkMimeLibId,"CkMimeU_GetMimeBdW")
  Global MimeGetMimeSb.cklMi = GetFunction(CkMimeLibId,"CkMimeU_GetMimeSbW")
  Global MimeGetPart.ckiMl = GetFunction(CkMimeLibId,"CkMimeU_GetPartW")
  Global MimeGetSignatureSigningTimeStr.cklMl = GetFunction(CkMimeLibId,"CkMimeU_getSignatureSigningTimeStrW")
  Global MimeGetSignerCert.ckiMl = GetFunction(CkMimeLibId,"CkMimeU_GetSignerCertW")
  Global MimeGetSignerCertChain.ckiMl = GetFunction(CkMimeLibId,"CkMimeU_GetSignerCertChainW")
  Global MimeGetStructure.cklMs = GetFunction(CkMimeLibId,"CkMimeU_getStructureW")
  Global MimeGetXml.cklM = GetFunction(CkMimeLibId,"CkMimeU_getXmlW")
  Global MimeHasSignatureSigningTime.cklMl = GetFunction(CkMimeLibId,"CkMimeU_HasSignatureSigningTimeW")
  Global MimeIsApplicationData.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsApplicationDataW")
  Global MimeIsAttachment.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsAttachmentW")
  Global MimeIsAudio.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsAudioW")
  Global MimeIsEncrypted.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsEncryptedW")
  Global MimeIsHtml.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsHtmlW")
  Global MimeIsImage.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsImageW")
  Global MimeIsMultipart.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsMultipartW")
  Global MimeIsMultipartAlternative.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsMultipartAlternativeW")
  Global MimeIsMultipartMixed.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsMultipartMixedW")
  Global MimeIsMultipartRelated.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsMultipartRelatedW")
  Global MimeIsPlainText.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsPlainTextW")
  Global MimeIsSigned.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsSignedW")
  Global MimeIsText.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsTextW")
  Global MimeIsUnlocked.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsUnlockedW")
  Global MimeIsVideo.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsVideoW")
  Global MimeIsXml.cklM = GetFunction(CkMimeLibId,"CkMimeU_IsXmlW")
  Global MimeLastJsonData.ckiM = GetFunction(CkMimeLibId,"CkMimeU_LastJsonDataW")
  Global MimeLoadMime.cklMs = GetFunction(CkMimeLibId,"CkMimeU_LoadMimeW")
  Global MimeLoadMimeBd.cklMi = GetFunction(CkMimeLibId,"CkMimeU_LoadMimeBdW")
  Global MimeLoadMimeFile.cklMs = GetFunction(CkMimeLibId,"CkMimeU_LoadMimeFileW")
  Global MimeLoadMimeSb.cklMi = GetFunction(CkMimeLibId,"CkMimeU_LoadMimeSbW")
  Global MimeLoadXml.cklMs = GetFunction(CkMimeLibId,"CkMimeU_LoadXmlW")
  Global MimeLoadXmlFile.cklMs = GetFunction(CkMimeLibId,"CkMimeU_LoadXmlFileW")
  Global MimeNewMessageRfc822.cklMi = GetFunction(CkMimeLibId,"CkMimeU_NewMessageRfc822W")
  Global MimeNewMultipartAlternative.cklM = GetFunction(CkMimeLibId,"CkMimeU_NewMultipartAlternativeW")
  Global MimeNewMultipartMixed.cklM = GetFunction(CkMimeLibId,"CkMimeU_NewMultipartMixedW")
  Global MimeNewMultipartRelated.cklM = GetFunction(CkMimeLibId,"CkMimeU_NewMultipartRelatedW")
  Global MimeRemoveHeaderField.ckvMsl = GetFunction(CkMimeLibId,"CkMimeU_RemoveHeaderFieldW")
  Global MimeRemovePart.cklMl = GetFunction(CkMimeLibId,"CkMimeU_RemovePartW")
  Global MimeSaveBody.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SaveBodyW")
  Global MimeSaveLastError.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SaveLastErrorW")
  Global MimeSaveMime.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SaveMimeW")
  Global MimeSaveXml.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SaveXmlW")
  Global MimeSetBody.ckvMs = GetFunction(CkMimeLibId,"CkMimeU_SetBodyW")
  Global MimeSetBodyFromEncoded.cklMss = GetFunction(CkMimeLibId,"CkMimeU_SetBodyFromEncodedW")
  Global MimeSetBodyFromFile.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SetBodyFromFileW")
  Global MimeSetBodyFromHtml.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SetBodyFromHtmlW")
  Global MimeSetBodyFromPlainText.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SetBodyFromPlainTextW")
  Global MimeSetBodyFromXml.cklMs = GetFunction(CkMimeLibId,"CkMimeU_SetBodyFromXmlW")
  Global MimeSetHeaderField.cklMss = GetFunction(CkMimeLibId,"CkMimeU_SetHeaderFieldW")
  Global MimeSetVerifyCert.cklMi = GetFunction(CkMimeLibId,"CkMimeU_SetVerifyCertW")
  Global MimeUnlockComponent.cklMs = GetFunction(CkMimeLibId,"CkMimeU_UnlockComponentW")
  Global MimeUnwrapSecurity.cklM = GetFunction(CkMimeLibId,"CkMimeU_UnwrapSecurityW")
  Global MimeUrlEncodeBody.ckvMs = GetFunction(CkMimeLibId,"CkMimeU_UrlEncodeBodyW")
  Global MimeUseCertVault.cklMi = GetFunction(CkMimeLibId,"CkMimeU_UseCertVaultW")
  Global MimeVerify.cklM = GetFunction(CkMimeLibId,"CkMimeU_VerifyW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn MimeCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn MimeDispose(obj) : EndProcedure
  Procedure.s ckBoundary(obj.i) : ProcedureReturn PeekS(MimeBoundary(obj)) : EndProcedure
  Procedure setCkBoundary(obj.i, value.s) : ProcedureReturn MimePSetBoundary(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(MimeCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn MimePSetCharset(obj,value) : EndProcedure
  Procedure.s ckCmsOptions(obj.i) : ProcedureReturn PeekS(MimeCmsOptions(obj)) : EndProcedure
  Procedure setCkCmsOptions(obj.i, value.s) : ProcedureReturn MimePSetCmsOptions(obj,value) : EndProcedure
  Procedure.s ckContentType(obj.i) : ProcedureReturn PeekS(MimeContentType(obj)) : EndProcedure
  Procedure setCkContentType(obj.i, value.s) : ProcedureReturn MimePSetContentType(obj,value) : EndProcedure
  Procedure.s ckCurrentDateTime(obj.i) : ProcedureReturn PeekS(MimeCurrentDateTime(obj)) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(MimeDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn MimePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDisposition(obj.i) : ProcedureReturn PeekS(MimeDisposition(obj)) : EndProcedure
  Procedure setCkDisposition(obj.i, value.s) : ProcedureReturn MimePSetDisposition(obj,value) : EndProcedure
  Procedure.s ckEncoding(obj.i) : ProcedureReturn PeekS(MimeEncoding(obj)) : EndProcedure
  Procedure setCkEncoding(obj.i, value.s) : ProcedureReturn MimePSetEncoding(obj,value) : EndProcedure
  Procedure.s ckFilename(obj.i) : ProcedureReturn PeekS(MimeFilename(obj)) : EndProcedure
  Procedure setCkFilename(obj.i, value.s) : ProcedureReturn MimePSetFilename(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(MimeLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(MimeLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(MimeLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn MimeLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn MimePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckMicalg(obj.i) : ProcedureReturn PeekS(MimeMicalg(obj)) : EndProcedure
  Procedure setCkMicalg(obj.i, value.s) : ProcedureReturn MimePSetMicalg(obj,value) : EndProcedure
  Procedure.s ckName(obj.i) : ProcedureReturn PeekS(MimeName(obj)) : EndProcedure
  Procedure setCkName(obj.i, value.s) : ProcedureReturn MimePSetName(obj,value) : EndProcedure
  Procedure.l ckNumEncryptCerts(obj.i) : ProcedureReturn MimeNumEncryptCerts(obj) : EndProcedure
  Procedure.l ckNumHeaderFields(obj.i) : ProcedureReturn MimeNumHeaderFields(obj) : EndProcedure
  Procedure.l ckNumParts(obj.i) : ProcedureReturn MimeNumParts(obj) : EndProcedure
  Procedure.l ckNumSignerCerts(obj.i) : ProcedureReturn MimeNumSignerCerts(obj) : EndProcedure
  Procedure.s ckOaepHash(obj.i) : ProcedureReturn PeekS(MimeOaepHash(obj)) : EndProcedure
  Procedure setCkOaepHash(obj.i, value.s) : ProcedureReturn MimePSetOaepHash(obj,value) : EndProcedure
  Procedure.s ckOaepMgfHash(obj.i) : ProcedureReturn PeekS(MimeOaepMgfHash(obj)) : EndProcedure
  Procedure setCkOaepMgfHash(obj.i, value.s) : ProcedureReturn MimePSetOaepMgfHash(obj,value) : EndProcedure
  Procedure.l ckOaepPadding(obj.i) : ProcedureReturn MimeOaepPadding(obj) : EndProcedure
  Procedure setCkOaepPadding(obj.i, value.l) : ProcedureReturn MimePSetOaepPadding(obj,value) : EndProcedure
  Procedure.s ckPkcs7CryptAlg(obj.i) : ProcedureReturn PeekS(MimePkcs7CryptAlg(obj)) : EndProcedure
  Procedure setCkPkcs7CryptAlg(obj.i, value.s) : ProcedureReturn MimePSetPkcs7CryptAlg(obj,value) : EndProcedure
  Procedure.l ckPkcs7KeyLength(obj.i) : ProcedureReturn MimePkcs7KeyLength(obj) : EndProcedure
  Procedure setCkPkcs7KeyLength(obj.i, value.l) : ProcedureReturn MimePSetPkcs7KeyLength(obj,value) : EndProcedure
  Procedure.s ckProtocol(obj.i) : ProcedureReturn PeekS(MimeProtocol(obj)) : EndProcedure
  Procedure setCkProtocol(obj.i, value.s) : ProcedureReturn MimePSetProtocol(obj,value) : EndProcedure
  Procedure.s ckSigningAlg(obj.i) : ProcedureReturn PeekS(MimeSigningAlg(obj)) : EndProcedure
  Procedure setCkSigningAlg(obj.i, value.s) : ProcedureReturn MimePSetSigningAlg(obj,value) : EndProcedure
  Procedure.s ckSigningHashAlg(obj.i) : ProcedureReturn PeekS(MimeSigningHashAlg(obj)) : EndProcedure
  Procedure setCkSigningHashAlg(obj.i, value.s) : ProcedureReturn MimePSetSigningHashAlg(obj,value) : EndProcedure
  Procedure.l ckUnwrapExtras(obj.i) : ProcedureReturn MimeUnwrapExtras(obj) : EndProcedure
  Procedure setCkUnwrapExtras(obj.i, value.l) : ProcedureReturn MimePSetUnwrapExtras(obj,value) : EndProcedure
  Procedure.l ckUseMmDescription(obj.i) : ProcedureReturn MimeUseMmDescription(obj) : EndProcedure
  Procedure setCkUseMmDescription(obj.i, value.l) : ProcedureReturn MimePSetUseMmDescription(obj,value) : EndProcedure
  Procedure.l ckUseXPkcs7(obj.i) : ProcedureReturn MimeUseXPkcs7(obj) : EndProcedure
  Procedure setCkUseXPkcs7(obj.i, value.l) : ProcedureReturn MimePSetUseXPkcs7(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn MimeVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn MimePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(MimeVersion(obj)) : EndProcedure
  Procedure ckAddContentLength(obj.i) :  ProcedureReturn MimeAddContentLength(obj) :  EndProcedure
  Procedure.l ckAddDecryptCert(obj.i, cert.i) :  ProcedureReturn MimeAddDecryptCert(obj, cert) :  EndProcedure
  Procedure.l ckAddDetachedSignature(obj.i, cert.i) :  ProcedureReturn MimeAddDetachedSignature(obj, cert) :  EndProcedure
  Procedure.l ckAddDetachedSignature2(obj.i, cert.i, transferHeaderFields.l) :  ProcedureReturn MimeAddDetachedSignature2(obj, cert, transferHeaderFields) :  EndProcedure
  Procedure.l ckAddDetachedSignaturePk(obj.i, cert.i, privateKey.i) :  ProcedureReturn MimeAddDetachedSignaturePk(obj, cert, privateKey) :  EndProcedure
  Procedure.l ckAddDetachedSignaturePk2(obj.i, cert.i, privateKey.i, transferHeaderFields.l) :  ProcedureReturn MimeAddDetachedSignaturePk2(obj, cert, privateKey, transferHeaderFields) :  EndProcedure
  Procedure.l ckAddEncryptCert(obj.i, cert.i) :  ProcedureReturn MimeAddEncryptCert(obj, cert) :  EndProcedure
  Procedure.l ckAddHeaderField(obj.i, name.s, value.s) :  ProcedureReturn MimeAddHeaderField(obj, name, value) :  EndProcedure
  Procedure.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, password.s) :  ProcedureReturn MimeAddPfxSourceFile(obj, pfxFilePath, password) :  EndProcedure
  Procedure.l ckAppendPart(obj.i, mime.i) :  ProcedureReturn MimeAppendPart(obj, mime) :  EndProcedure
  Procedure.l ckAppendPartFromFile(obj.i, filename.s) :  ProcedureReturn MimeAppendPartFromFile(obj, filename) :  EndProcedure
  Procedure.s ckAsnBodyToXml(obj.i) :  ProcedureReturn PeekS(MimeAsnBodyToXml(obj)) :  EndProcedure
  Procedure ckClearEncryptCerts(obj.i) :  ProcedureReturn MimeClearEncryptCerts(obj) :  EndProcedure
  Procedure.l ckContainsEncryptedParts(obj.i) :  ProcedureReturn MimeContainsEncryptedParts(obj) :  EndProcedure
  Procedure.l ckContainsSignedParts(obj.i) :  ProcedureReturn MimeContainsSignedParts(obj) :  EndProcedure
  Procedure ckConvert8Bit(obj.i) :  ProcedureReturn MimeConvert8Bit(obj) :  EndProcedure
  Procedure.l ckConvertToMultipartAlt(obj.i) :  ProcedureReturn MimeConvertToMultipartAlt(obj) :  EndProcedure
  Procedure.l ckConvertToMultipartMixed(obj.i) :  ProcedureReturn MimeConvertToMultipartMixed(obj) :  EndProcedure
  Procedure.l ckConvertToSigned(obj.i, cert.i) :  ProcedureReturn MimeConvertToSigned(obj, cert) :  EndProcedure
  Procedure.l ckConvertToSignedPk(obj.i, cert.i, privateKey.i) :  ProcedureReturn MimeConvertToSignedPk(obj, cert, privateKey) :  EndProcedure
  Procedure.l ckDecrypt(obj.i) :  ProcedureReturn MimeDecrypt(obj) :  EndProcedure
  Procedure.l ckDecrypt2(obj.i, cert.i, privateKey.i) :  ProcedureReturn MimeDecrypt2(obj, cert, privateKey) :  EndProcedure
  Procedure.l ckDecryptUsingCert(obj.i, cert.i) :  ProcedureReturn MimeDecryptUsingCert(obj, cert) :  EndProcedure
  Procedure.l ckDecryptUsingPfxFile(obj.i, pfxFilePath.s, pfxPassword.s) :  ProcedureReturn MimeDecryptUsingPfxFile(obj, pfxFilePath, pfxPassword) :  EndProcedure
  Procedure.l ckEncrypt(obj.i, cert.i) :  ProcedureReturn MimeEncrypt(obj, cert) :  EndProcedure
  Procedure.l ckEncryptN(obj.i) :  ProcedureReturn MimeEncryptN(obj) :  EndProcedure
  Procedure.i ckExtractPartsToFiles(obj.i, dirPath.s) :  ProcedureReturn MimeExtractPartsToFiles(obj, dirPath) :  EndProcedure
  Procedure.i ckFindIssuer(obj.i, cert.i) :  ProcedureReturn MimeFindIssuer(obj, cert) :  EndProcedure
  Procedure.l ckGetBodyBd(obj.i, binDat.i) :  ProcedureReturn MimeGetBodyBd(obj, binDat) :  EndProcedure
  Procedure.s ckGetBodyDecoded(obj.i) :  ProcedureReturn PeekS(MimeGetBodyDecoded(obj)) :  EndProcedure
  Procedure.s ckGetBodyEncoded(obj.i) :  ProcedureReturn PeekS(MimeGetBodyEncoded(obj)) :  EndProcedure
  Procedure.i ckGetEncryptCert(obj.i, index.l) :  ProcedureReturn MimeGetEncryptCert(obj, index) :  EndProcedure
  Procedure.s ckGetEntireBody(obj.i) :  ProcedureReturn PeekS(MimeGetEntireBody(obj)) :  EndProcedure
  Procedure.s ckGetEntireHead(obj.i) :  ProcedureReturn PeekS(MimeGetEntireHead(obj)) :  EndProcedure
  Procedure.s ckGetHeaderField(obj.i, fieldName.s) :  ProcedureReturn PeekS(MimeGetHeaderField(obj, fieldName)) :  EndProcedure
  Procedure.s ckGetHeaderFieldAttribute(obj.i, name.s, attrName.s) :  ProcedureReturn PeekS(MimeGetHeaderFieldAttribute(obj, name, attrName)) :  EndProcedure
  Procedure.s ckGetHeaderFieldName(obj.i, index.l) :  ProcedureReturn PeekS(MimeGetHeaderFieldName(obj, index)) :  EndProcedure
  Procedure.s ckGetHeaderFieldValue(obj.i, index.l) :  ProcedureReturn PeekS(MimeGetHeaderFieldValue(obj, index)) :  EndProcedure
  Procedure.s ckGetMime(obj.i) :  ProcedureReturn PeekS(MimeGetMime(obj)) :  EndProcedure
  Procedure.l ckGetMimeBd(obj.i, bindat.i) :  ProcedureReturn MimeGetMimeBd(obj, bindat) :  EndProcedure
  Procedure.l ckGetMimeSb(obj.i, sb.i) :  ProcedureReturn MimeGetMimeSb(obj, sb) :  EndProcedure
  Procedure.i ckGetPart(obj.i, index.l) :  ProcedureReturn MimeGetPart(obj, index) :  EndProcedure
  Procedure.s ckGetSignatureSigningTimeStr(obj.i, index.l) :  ProcedureReturn PeekS(MimeGetSignatureSigningTimeStr(obj, index)) :  EndProcedure
  Procedure.i ckGetSignerCert(obj.i, index.l) :  ProcedureReturn MimeGetSignerCert(obj, index) :  EndProcedure
  Procedure.i ckGetSignerCertChain(obj.i, index.l) :  ProcedureReturn MimeGetSignerCertChain(obj, index) :  EndProcedure
  Procedure.s ckGetStructure(obj.i, fmt.s) :  ProcedureReturn PeekS(MimeGetStructure(obj, fmt)) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(MimeGetXml(obj)) :  EndProcedure
  Procedure.l ckHasSignatureSigningTime(obj.i, index.l) :  ProcedureReturn MimeHasSignatureSigningTime(obj, index) :  EndProcedure
  Procedure.l ckIsApplicationData(obj.i) :  ProcedureReturn MimeIsApplicationData(obj) :  EndProcedure
  Procedure.l ckIsAttachment(obj.i) :  ProcedureReturn MimeIsAttachment(obj) :  EndProcedure
  Procedure.l ckIsAudio(obj.i) :  ProcedureReturn MimeIsAudio(obj) :  EndProcedure
  Procedure.l ckIsEncrypted(obj.i) :  ProcedureReturn MimeIsEncrypted(obj) :  EndProcedure
  Procedure.l ckIsHtml(obj.i) :  ProcedureReturn MimeIsHtml(obj) :  EndProcedure
  Procedure.l ckIsImage(obj.i) :  ProcedureReturn MimeIsImage(obj) :  EndProcedure
  Procedure.l ckIsMultipart(obj.i) :  ProcedureReturn MimeIsMultipart(obj) :  EndProcedure
  Procedure.l ckIsMultipartAlternative(obj.i) :  ProcedureReturn MimeIsMultipartAlternative(obj) :  EndProcedure
  Procedure.l ckIsMultipartMixed(obj.i) :  ProcedureReturn MimeIsMultipartMixed(obj) :  EndProcedure
  Procedure.l ckIsMultipartRelated(obj.i) :  ProcedureReturn MimeIsMultipartRelated(obj) :  EndProcedure
  Procedure.l ckIsPlainText(obj.i) :  ProcedureReturn MimeIsPlainText(obj) :  EndProcedure
  Procedure.l ckIsSigned(obj.i) :  ProcedureReturn MimeIsSigned(obj) :  EndProcedure
  Procedure.l ckIsText(obj.i) :  ProcedureReturn MimeIsText(obj) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn MimeIsUnlocked(obj) :  EndProcedure
  Procedure.l ckIsVideo(obj.i) :  ProcedureReturn MimeIsVideo(obj) :  EndProcedure
  Procedure.l ckIsXml(obj.i) :  ProcedureReturn MimeIsXml(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn MimeLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadMime(obj.i, mimeMsg.s) :  ProcedureReturn MimeLoadMime(obj, mimeMsg) :  EndProcedure
  Procedure.l ckLoadMimeBd(obj.i, bindat.i) :  ProcedureReturn MimeLoadMimeBd(obj, bindat) :  EndProcedure
  Procedure.l ckLoadMimeFile(obj.i, fileName.s) :  ProcedureReturn MimeLoadMimeFile(obj, fileName) :  EndProcedure
  Procedure.l ckLoadMimeSb(obj.i, sb.i) :  ProcedureReturn MimeLoadMimeSb(obj, sb) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xml.s) :  ProcedureReturn MimeLoadXml(obj, xml) :  EndProcedure
  Procedure.l ckLoadXmlFile(obj.i, fileName.s) :  ProcedureReturn MimeLoadXmlFile(obj, fileName) :  EndProcedure
  Procedure.l ckNewMessageRfc822(obj.i, mimeObject.i) :  ProcedureReturn MimeNewMessageRfc822(obj, mimeObject) :  EndProcedure
  Procedure.l ckNewMultipartAlternative(obj.i) :  ProcedureReturn MimeNewMultipartAlternative(obj) :  EndProcedure
  Procedure.l ckNewMultipartMixed(obj.i) :  ProcedureReturn MimeNewMultipartMixed(obj) :  EndProcedure
  Procedure.l ckNewMultipartRelated(obj.i) :  ProcedureReturn MimeNewMultipartRelated(obj) :  EndProcedure
  Procedure ckRemoveHeaderField(obj.i, fieldName.s, bAllOccurrences.l) :  ProcedureReturn MimeRemoveHeaderField(obj, fieldName, bAllOccurrences) :  EndProcedure
  Procedure.l ckRemovePart(obj.i, index.l) :  ProcedureReturn MimeRemovePart(obj, index) :  EndProcedure
  Procedure.l ckSaveBody(obj.i, filename.s) :  ProcedureReturn MimeSaveBody(obj, filename) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn MimeSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveMime(obj.i, filename.s) :  ProcedureReturn MimeSaveMime(obj, filename) :  EndProcedure
  Procedure.l ckSaveXml(obj.i, filename.s) :  ProcedureReturn MimeSaveXml(obj, filename) :  EndProcedure
  Procedure ckSetBody(obj.i, str.s) :  ProcedureReturn MimeSetBody(obj, str) :  EndProcedure
  Procedure.l ckSetBodyFromEncoded(obj.i, encoding.s, str.s) :  ProcedureReturn MimeSetBodyFromEncoded(obj, encoding, str) :  EndProcedure
  Procedure.l ckSetBodyFromFile(obj.i, fileName.s) :  ProcedureReturn MimeSetBodyFromFile(obj, fileName) :  EndProcedure
  Procedure.l ckSetBodyFromHtml(obj.i, str.s) :  ProcedureReturn MimeSetBodyFromHtml(obj, str) :  EndProcedure
  Procedure.l ckSetBodyFromPlainText(obj.i, str.s) :  ProcedureReturn MimeSetBodyFromPlainText(obj, str) :  EndProcedure
  Procedure.l ckSetBodyFromXml(obj.i, str.s) :  ProcedureReturn MimeSetBodyFromXml(obj, str) :  EndProcedure
  Procedure.l ckSetHeaderField(obj.i, name.s, value.s) :  ProcedureReturn MimeSetHeaderField(obj, name, value) :  EndProcedure
  Procedure.l ckSetVerifyCert(obj.i, cert.i) :  ProcedureReturn MimeSetVerifyCert(obj, cert) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn MimeUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUnwrapSecurity(obj.i) :  ProcedureReturn MimeUnwrapSecurity(obj) :  EndProcedure
  Procedure ckUrlEncodeBody(obj.i, charset.s) :  ProcedureReturn MimeUrlEncodeBody(obj, charset) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn MimeUseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckVerify(obj.i) :  ProcedureReturn MimeVerify(obj) :  EndProcedure
EndModule

