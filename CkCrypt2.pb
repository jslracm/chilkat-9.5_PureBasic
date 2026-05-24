DeclareModule CkCrypt2
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.l ckBCryptWorkFactor(obj.i)
  Declare setCkBCryptWorkFactor(obj.i, value.l)
  Declare.l ckBlockSize(obj.i)
  Declare.l ckCadesEnabled(obj.i)
  Declare setCkCadesEnabled(obj.i, value.l)
  Declare.s ckCadesSigPolicyHash(obj.i)
  Declare setCkCadesSigPolicyHash(obj.i, value.s)
  Declare.s ckCadesSigPolicyId(obj.i)
  Declare setCkCadesSigPolicyId(obj.i, value.s)
  Declare.s ckCadesSigPolicyUri(obj.i)
  Declare setCkCadesSigPolicyUri(obj.i, value.s)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckCipherMode(obj.i)
  Declare setCkCipherMode(obj.i, value.s)
  Declare.s ckCmsOptions(obj.i)
  Declare setCkCmsOptions(obj.i, value.s)
  Declare.s ckCompressionAlgorithm(obj.i)
  Declare setCkCompressionAlgorithm(obj.i, value.s)
  Declare.s ckCryptAlgorithm(obj.i)
  Declare setCkCryptAlgorithm(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEncodingMode(obj.i)
  Declare setCkEncodingMode(obj.i, value.s)
  Declare.l ckFirstChunk(obj.i)
  Declare setCkFirstChunk(obj.i, value.l)
  Declare.s ckHashAlgorithm(obj.i)
  Declare setCkHashAlgorithm(obj.i, value.s)
  Declare.l ckHavalRounds(obj.i)
  Declare setCkHavalRounds(obj.i, value.l)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckIncludeCertChain(obj.i)
  Declare setCkIncludeCertChain(obj.i, value.l)
  Declare.l ckInitialCount(obj.i)
  Declare setCkInitialCount(obj.i, value.l)
  Declare.l ckIterationCount(obj.i)
  Declare setCkIterationCount(obj.i, value.l)
  Declare.l ckKeyLength(obj.i)
  Declare setCkKeyLength(obj.i, value.l)
  Declare.l ckLastChunk(obj.i)
  Declare setCkLastChunk(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckMacAlgorithm(obj.i)
  Declare setCkMacAlgorithm(obj.i, value.s)
  Declare.l ckNumSignerCerts(obj.i)
  Declare.s ckOaepHash(obj.i)
  Declare setCkOaepHash(obj.i, value.s)
  Declare.s ckOaepMgfHash(obj.i)
  Declare setCkOaepMgfHash(obj.i, value.s)
  Declare.l ckOaepPadding(obj.i)
  Declare setCkOaepPadding(obj.i, value.l)
  Declare.l ckPaddingScheme(obj.i)
  Declare setCkPaddingScheme(obj.i, value.l)
  Declare.s ckPbesAlgorithm(obj.i)
  Declare setCkPbesAlgorithm(obj.i, value.s)
  Declare.s ckPbesPassword(obj.i)
  Declare setCkPbesPassword(obj.i, value.s)
  Declare.s ckPkcs7CryptAlg(obj.i)
  Declare setCkPkcs7CryptAlg(obj.i, value.s)
  Declare.l ckRc2EffectiveKeyLength(obj.i)
  Declare setCkRc2EffectiveKeyLength(obj.i, value.l)
  Declare.s ckSigningAlg(obj.i)
  Declare setCkSigningAlg(obj.i, value.s)
  Declare.s ckSigningAttributes(obj.i)
  Declare setCkSigningAttributes(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.s ckUuFilename(obj.i)
  Declare setCkUuFilename(obj.i, value.s)
  Declare.s ckUuMode(obj.i)
  Declare setCkUuMode(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckAddEncryptCert(obj.i, cert.i)
  Declare.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s)
  Declare.l ckAddSigningCert(obj.i, cert.i)
  Declare.s ckAesKeyUnwrap(obj.i, kek.s, wrappedKeyData.s, encoding.s)
  Declare.s ckAesKeyWrap(obj.i, kek.s, keyData.s, encoding.s)
  Declare.s ckBCryptHash(obj.i, password.s)
  Declare.l ckBCryptVerify(obj.i, password.s, bcryptHash.s)
  Declare.l ckCkDecryptFile(obj.i, srcFile.s, destFile.s)
  Declare.i ckCkDecryptFileAsync(obj.i, srcFile.s, destFile.s)
  Declare.l ckCkEncryptFile(obj.i, srcFile.s, destFile.s)
  Declare.i ckCkEncryptFileAsync(obj.i, srcFile.s, destFile.s)
  Declare ckClearEncryptCerts(obj.i)
  Declare ckClearSigningCerts(obj.i)
  Declare.s ckCompressStringENC(obj.i, str.s)
  Declare.l ckCrcFile(obj.i, crcAlg.s, path.s)
  Declare.i ckCrcFileAsync(obj.i, crcAlg.s, path.s)
  Declare.l ckCreateDetachedSignature(obj.i, inFilePath.s, sigFilePath.s)
  Declare.l ckCreateP7M(obj.i, inFilename.s, p7mPath.s)
  Declare.i ckCreateP7MAsync(obj.i, inFilename.s, p7mPath.s)
  Declare.l ckCreateP7S(obj.i, inFilename.s, p7sPath.s)
  Declare.i ckCreateP7SAsync(obj.i, inFilename.s, p7sPath.s)
  Declare.s ckDecodeString(obj.i, inStr.s, charset.s, encoding.s)
  Declare.l ckDecryptBd(obj.i, bd.i)
  Declare.s ckDecryptEncoded(obj.i, encodedEncryptedData.s)
  Declare.l ckDecryptSb(obj.i, bdIn.i, sbOut.i)
  Declare.l ckDecryptSecureENC(obj.i, cipherText.s, secureStr.i)
  Declare.l ckDecryptStream(obj.i, strm.i)
  Declare.i ckDecryptStreamAsync(obj.i, strm.i)
  Declare.s ckDecryptStringENC(obj.i, str.s)
  Declare.s ckEncodeInt(obj.i, value.l, numBytes.l, littleEndian.l, encoding.s)
  Declare.s ckEncodeString(obj.i, strToEncode.s, charsetName.s, toEncodingName.s)
  Declare.l ckEncryptBd(obj.i, bd.i)
  Declare.s ckEncryptEncoded(obj.i, str.s)
  Declare.l ckEncryptSb(obj.i, sbIn.i, bdOut.i)
  Declare.s ckEncryptSecureENC(obj.i, secureStr.i)
  Declare.l ckEncryptStream(obj.i, strm.i)
  Declare.i ckEncryptStreamAsync(obj.i, strm.i)
  Declare.s ckEncryptStringENC(obj.i, str.s)
  Declare.s ckGenEncodedSecretKey(obj.i, password.s, encoding.s)
  Declare.s ckGenerateUuid(obj.i)
  Declare.s ckGenRandomBytesENC(obj.i, numBytes.l)
  Declare.i ckGetDecryptCert(obj.i)
  Declare.s ckGetEncodedAad(obj.i, encoding.s)
  Declare.s ckGetEncodedAuthTag(obj.i, encoding.s)
  Declare.s ckGetEncodedIV(obj.i, encoding.s)
  Declare.s ckGetEncodedKey(obj.i, encoding.s)
  Declare.s ckGetEncodedSalt(obj.i, encoding.s)
  Declare.i ckGetLastCert(obj.i)
  Declare.s ckGetSignatureSigningTimeStr(obj.i, index.l)
  Declare.l ckGetSignedAttributes(obj.i, signerIndex.l, pkcs7Der.i, sbJson.i)
  Declare.i ckGetSignerCert(obj.i, index.l)
  Declare.i ckGetSignerCertChain(obj.i, index.l)
  Declare.s ckHashBdENC(obj.i, bd.i)
  Declare.l ckHashBeginString(obj.i, strData.s)
  Declare.s ckHashFileENC(obj.i, path.s)
  Declare.i ckHashFileENCAsync(obj.i, path.s)
  Declare.s ckHashFinalENC(obj.i)
  Declare.l ckHashMoreString(obj.i, strData.s)
  Declare.s ckHashStringENC(obj.i, str.s)
  Declare.l ckHasSignatureSigningTime(obj.i, index.l)
  Declare.s ckHmacStringENC(obj.i, inText.s)
  Declare.s ckHotp(obj.i, secret.s, secretEnc.s, counterHex.s, numDigits.l, truncOffset.l, hashAlg.s)
  Declare.s ckInflateStringENC(obj.i, str.s)
  Declare.l ckIsUnlocked(obj.i)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.s ckMacBdENC(obj.i, bd.i)
  Declare.s ckMacStringENC(obj.i, inText.s)
  Declare.s ckMySqlAesDecrypt(obj.i, strEncryptedHex.s, strPassword.s)
  Declare.s ckMySqlAesEncrypt(obj.i, strData.s, strPassword.s)
  Declare.l ckOpaqueSignBd(obj.i, bd.i)
  Declare.i ckOpaqueSignBdAsync(obj.i, bd.i)
  Declare.s ckOpaqueSignStringENC(obj.i, str.s)
  Declare.i ckOpaqueSignStringENCAsync(obj.i, str.s)
  Declare.l ckOpaqueVerifyBd(obj.i, bd.i)
  Declare.s ckOpaqueVerifyStringENC(obj.i, p7s.s)
  Declare.s ckPbkdf1(obj.i, password.s, charset.s, hashAlg.s, salt.s, iterationCount.l, outputKeyBitLen.l, encoding.s)
  Declare.s ckPbkdf2(obj.i, password.s, charset.s, hashAlg.s, salt.s, iterationCount.l, outputKeyBitLen.l, encoding.s)
  Declare.s ckPkcs7ExtractDigest(obj.i, signerIndex.l, pkcs7.s)
  Declare ckRandomizeIV(obj.i)
  Declare ckRandomizeKey(obj.i)
  Declare.s ckReEncode(obj.i, encodedData.s, fromEncoding.s, toEncoding.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetDecryptCert(obj.i, cert.i)
  Declare.l ckSetDecryptCert2(obj.i, cert.i, key.i)
  Declare.l ckSetEncodedAad(obj.i, aadStr.s, encoding.s)
  Declare.l ckSetEncodedAuthTag(obj.i, authTagStr.s, encoding.s)
  Declare ckSetEncodedIV(obj.i, ivStr.s, encoding.s)
  Declare ckSetEncodedKey(obj.i, keyStr.s, encoding.s)
  Declare ckSetEncodedSalt(obj.i, saltStr.s, encoding.s)
  Declare.l ckSetEncryptCert(obj.i, cert.i)
  Declare ckSetHmacKeyEncoded(obj.i, key.s, encoding.s)
  Declare ckSetHmacKeyString(obj.i, key.s)
  Declare.l ckSetMacKeyEncoded(obj.i, key.s, encoding.s)
  Declare.l ckSetMacKeyString(obj.i, key.s)
  Declare ckSetSecretKeyViaPassword(obj.i, password.s)
  Declare.l ckSetSigningCert(obj.i, cert.i)
  Declare.l ckSetSigningCert2(obj.i, cert.i, privateKey.i)
  Declare ckSetTsaHttpObj(obj.i, http.i)
  Declare.l ckSetVerifyCert(obj.i, cert.i)
  Declare.s ckSignBdENC(obj.i, dataToSign.i)
  Declare.i ckSignBdENCAsync(obj.i, dataToSign.i)
  Declare.s ckSignSbENC(obj.i, sb.i)
  Declare.i ckSignSbENCAsync(obj.i, sb.i)
  Declare.s ckSignStringENC(obj.i, str.s)
  Declare.i ckSignStringENCAsync(obj.i, str.s)
  Declare.s ckTotp(obj.i, secret.s, secretEnc.s, t0.s, tNow.s, tStep.l, numDigits.l, truncOffset.l, hashAlg.s)
  Declare.s ckTrimEndingWith(obj.i, inStr.s, ending.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckVerifyBdENC(obj.i, argData.i, encodedSig.s)
  Declare.l ckVerifyDetachedSignature(obj.i, inFilename.s, p7sFilename.s)
  Declare.l ckVerifyP7M(obj.i, p7mPath.s, destPath.s)
  Declare.l ckVerifyP7S(obj.i, inFilename.s, p7sFilename.s)
  Declare.l ckVerifySbENC(obj.i, sb.i, encodedSig.s)
  Declare.l ckVerifyStringENC(obj.i, str.s, encodedSig.s)
EndDeclareModule

Module CkCrypt2
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMssssllls(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.l, arg6.l, arg7.l, arg8.s)
  PrototypeC ckvM(obj.i)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMsssslls(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.l, arg6.l, arg7.s)
  PrototypeC.l cklMllls(obj.i, arg1.l, arg2.l, arg3.l, arg4.s)
  PrototypeC.l cklMlii(obj.i, arg1.l, arg2.i, arg3.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssslls(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.l, arg6.s)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i CkCrypt2Create()
  PrototypeC CkCrypt2Dispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCrypt2LibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCrypt2LibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCrypt2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCrypt2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCrypt2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global Crypt2Create.CkCrypt2Create = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateW")
  Global Crypt2Dispose.CkCrypt2Dispose = GetFunction(CkCrypt2LibId,"CkCrypt2U_DisposeW")
  Global Crypt2AbortCurrent.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getAbortCurrentW")
  Global Crypt2PSetAbortCurrent.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putAbortCurrentW")
  Global Crypt2BCryptWorkFactor.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getBCryptWorkFactorW")
  Global Crypt2PSetBCryptWorkFactor.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putBCryptWorkFactorW")
  Global Crypt2BlockSize.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getBlockSizeW")
  Global Crypt2CadesEnabled.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getCadesEnabledW")
  Global Crypt2PSetCadesEnabled.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCadesEnabledW")
  Global Crypt2CadesSigPolicyHash.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cadesSigPolicyHashW")
  Global Crypt2PSetCadesSigPolicyHash.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCadesSigPolicyHashW")
  Global Crypt2CadesSigPolicyId.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cadesSigPolicyIdW")
  Global Crypt2PSetCadesSigPolicyId.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCadesSigPolicyIdW")
  Global Crypt2CadesSigPolicyUri.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cadesSigPolicyUriW")
  Global Crypt2PSetCadesSigPolicyUri.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCadesSigPolicyUriW")
  Global Crypt2Charset.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_charsetW")
  Global Crypt2PSetCharset.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCharsetW")
  Global Crypt2CipherMode.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cipherModeW")
  Global Crypt2PSetCipherMode.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCipherModeW")
  Global Crypt2CmsOptions.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cmsOptionsW")
  Global Crypt2PSetCmsOptions.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCmsOptionsW")
  Global Crypt2CompressionAlgorithm.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_compressionAlgorithmW")
  Global Crypt2PSetCompressionAlgorithm.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCompressionAlgorithmW")
  Global Crypt2CryptAlgorithm.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_cryptAlgorithmW")
  Global Crypt2PSetCryptAlgorithm.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putCryptAlgorithmW")
  Global Crypt2DebugLogFilePath.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_debugLogFilePathW")
  Global Crypt2PSetDebugLogFilePath.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putDebugLogFilePathW")
  Global Crypt2EncodingMode.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_encodingModeW")
  Global Crypt2PSetEncodingMode.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putEncodingModeW")
  Global Crypt2FirstChunk.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getFirstChunkW")
  Global Crypt2PSetFirstChunk.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putFirstChunkW")
  Global Crypt2HashAlgorithm.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_hashAlgorithmW")
  Global Crypt2PSetHashAlgorithm.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putHashAlgorithmW")
  Global Crypt2HavalRounds.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getHavalRoundsW")
  Global Crypt2PSetHavalRounds.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putHavalRoundsW")
  Global Crypt2HeartbeatMs.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getHeartbeatMsW")
  Global Crypt2PSetHeartbeatMs.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putHeartbeatMsW")
  Global Crypt2IncludeCertChain.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getIncludeCertChainW")
  Global Crypt2PSetIncludeCertChain.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putIncludeCertChainW")
  Global Crypt2InitialCount.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getInitialCountW")
  Global Crypt2PSetInitialCount.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putInitialCountW")
  Global Crypt2IterationCount.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getIterationCountW")
  Global Crypt2PSetIterationCount.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putIterationCountW")
  Global Crypt2KeyLength.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getKeyLengthW")
  Global Crypt2PSetKeyLength.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putKeyLengthW")
  Global Crypt2LastChunk.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getLastChunkW")
  Global Crypt2PSetLastChunk.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putLastChunkW")
  Global Crypt2LastErrorHtml.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_lastErrorHtmlW")
  Global Crypt2LastErrorText.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_lastErrorTextW")
  Global Crypt2LastErrorXml.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_lastErrorXmlW")
  Global Crypt2LastMethodSuccess.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getLastMethodSuccessW")
  Global Crypt2PSetLastMethodSuccess.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putLastMethodSuccessW")
  Global Crypt2MacAlgorithm.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_macAlgorithmW")
  Global Crypt2PSetMacAlgorithm.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putMacAlgorithmW")
  Global Crypt2NumSignerCerts.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getNumSignerCertsW")
  Global Crypt2OaepHash.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_oaepHashW")
  Global Crypt2PSetOaepHash.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putOaepHashW")
  Global Crypt2OaepMgfHash.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_oaepMgfHashW")
  Global Crypt2PSetOaepMgfHash.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putOaepMgfHashW")
  Global Crypt2OaepPadding.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getOaepPaddingW")
  Global Crypt2PSetOaepPadding.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putOaepPaddingW")
  Global Crypt2PaddingScheme.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getPaddingSchemeW")
  Global Crypt2PSetPaddingScheme.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putPaddingSchemeW")
  Global Crypt2PbesAlgorithm.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_pbesAlgorithmW")
  Global Crypt2PSetPbesAlgorithm.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putPbesAlgorithmW")
  Global Crypt2PbesPassword.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_pbesPasswordW")
  Global Crypt2PSetPbesPassword.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putPbesPasswordW")
  Global Crypt2Pkcs7CryptAlg.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_pkcs7CryptAlgW")
  Global Crypt2PSetPkcs7CryptAlg.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putPkcs7CryptAlgW")
  Global Crypt2Rc2EffectiveKeyLength.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getRc2EffectiveKeyLengthW")
  Global Crypt2PSetRc2EffectiveKeyLength.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putRc2EffectiveKeyLengthW")
  Global Crypt2SigningAlg.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_signingAlgW")
  Global Crypt2PSetSigningAlg.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putSigningAlgW")
  Global Crypt2SigningAttributes.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_signingAttributesW")
  Global Crypt2PSetSigningAttributes.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putSigningAttributesW")
  Global Crypt2UncommonOptions.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_uncommonOptionsW")
  Global Crypt2PSetUncommonOptions.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putUncommonOptionsW")
  Global Crypt2UuFilename.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_uuFilenameW")
  Global Crypt2PSetUuFilename.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putUuFilenameW")
  Global Crypt2UuMode.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_uuModeW")
  Global Crypt2PSetUuMode.cksPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putUuModeW")
  Global Crypt2VerboseLogging.cklPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_getVerboseLoggingW")
  Global Crypt2PSetVerboseLogging.cklPropSet = GetFunction(CkCrypt2LibId,"CkCrypt2U_putVerboseLoggingW")
  Global Crypt2Version.cksPropGet = GetFunction(CkCrypt2LibId,"CkCrypt2U_versionW")
  Global Crypt2AddEncryptCert.ckvMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_AddEncryptCertW")
  Global Crypt2AddPfxSourceFile.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_AddPfxSourceFileW")
  Global Crypt2AddSigningCert.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_AddSigningCertW")
  Global Crypt2AesKeyUnwrap.cklMsss = GetFunction(CkCrypt2LibId,"CkCrypt2U_aesKeyUnwrapW")
  Global Crypt2AesKeyWrap.cklMsss = GetFunction(CkCrypt2LibId,"CkCrypt2U_aesKeyWrapW")
  Global Crypt2BCryptHash.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_bCryptHashW")
  Global Crypt2BCryptVerify.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_BCryptVerifyW")
  Global Crypt2CkDecryptFile.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CkDecryptFileW")
  Global Crypt2CkDecryptFileAsync.ckiMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CkDecryptFileAsyncW")
  Global Crypt2CkEncryptFile.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CkEncryptFileW")
  Global Crypt2CkEncryptFileAsync.ckiMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CkEncryptFileAsyncW")
  Global Crypt2ClearEncryptCerts.ckvM = GetFunction(CkCrypt2LibId,"CkCrypt2U_ClearEncryptCertsW")
  Global Crypt2ClearSigningCerts.ckvM = GetFunction(CkCrypt2LibId,"CkCrypt2U_ClearSigningCertsW")
  Global Crypt2CompressStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_compressStringENCW")
  Global Crypt2CrcFile.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CrcFileW")
  Global Crypt2CrcFileAsync.ckiMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CrcFileAsyncW")
  Global Crypt2CreateDetachedSignature.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateDetachedSignatureW")
  Global Crypt2CreateP7M.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateP7MW")
  Global Crypt2CreateP7MAsync.ckiMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateP7MAsyncW")
  Global Crypt2CreateP7S.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateP7SW")
  Global Crypt2CreateP7SAsync.ckiMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_CreateP7SAsyncW")
  Global Crypt2DecodeString.cklMsss = GetFunction(CkCrypt2LibId,"CkCrypt2U_decodeStringW")
  Global Crypt2DecryptBd.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_DecryptBdW")
  Global Crypt2DecryptEncoded.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_decryptEncodedW")
  Global Crypt2DecryptSb.cklMii = GetFunction(CkCrypt2LibId,"CkCrypt2U_DecryptSbW")
  Global Crypt2DecryptSecureENC.cklMsi = GetFunction(CkCrypt2LibId,"CkCrypt2U_DecryptSecureENCW")
  Global Crypt2DecryptStream.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_DecryptStreamW")
  Global Crypt2DecryptStreamAsync.ckiMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_DecryptStreamAsyncW")
  Global Crypt2DecryptStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_decryptStringENCW")
  Global Crypt2EncodeInt.cklMllls = GetFunction(CkCrypt2LibId,"CkCrypt2U_encodeIntW")
  Global Crypt2EncodeString.cklMsss = GetFunction(CkCrypt2LibId,"CkCrypt2U_encodeStringW")
  Global Crypt2EncryptBd.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_EncryptBdW")
  Global Crypt2EncryptEncoded.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_encryptEncodedW")
  Global Crypt2EncryptSb.cklMii = GetFunction(CkCrypt2LibId,"CkCrypt2U_EncryptSbW")
  Global Crypt2EncryptSecureENC.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_encryptSecureENCW")
  Global Crypt2EncryptStream.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_EncryptStreamW")
  Global Crypt2EncryptStreamAsync.ckiMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_EncryptStreamAsyncW")
  Global Crypt2EncryptStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_encryptStringENCW")
  Global Crypt2GenEncodedSecretKey.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_genEncodedSecretKeyW")
  Global Crypt2GenerateUuid.cklM = GetFunction(CkCrypt2LibId,"CkCrypt2U_generateUuidW")
  Global Crypt2GenRandomBytesENC.cklMl = GetFunction(CkCrypt2LibId,"CkCrypt2U_genRandomBytesENCW")
  Global Crypt2GetDecryptCert.ckiM = GetFunction(CkCrypt2LibId,"CkCrypt2U_GetDecryptCertW")
  Global Crypt2GetEncodedAad.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_getEncodedAadW")
  Global Crypt2GetEncodedAuthTag.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_getEncodedAuthTagW")
  Global Crypt2GetEncodedIV.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_getEncodedIVW")
  Global Crypt2GetEncodedKey.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_getEncodedKeyW")
  Global Crypt2GetEncodedSalt.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_getEncodedSaltW")
  Global Crypt2GetLastCert.ckiM = GetFunction(CkCrypt2LibId,"CkCrypt2U_GetLastCertW")
  Global Crypt2GetSignatureSigningTimeStr.cklMl = GetFunction(CkCrypt2LibId,"CkCrypt2U_getSignatureSigningTimeStrW")
  Global Crypt2GetSignedAttributes.cklMlii = GetFunction(CkCrypt2LibId,"CkCrypt2U_GetSignedAttributesW")
  Global Crypt2GetSignerCert.ckiMl = GetFunction(CkCrypt2LibId,"CkCrypt2U_GetSignerCertW")
  Global Crypt2GetSignerCertChain.ckiMl = GetFunction(CkCrypt2LibId,"CkCrypt2U_GetSignerCertChainW")
  Global Crypt2HashBdENC.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_hashBdENCW")
  Global Crypt2HashBeginString.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_HashBeginStringW")
  Global Crypt2HashFileENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_hashFileENCW")
  Global Crypt2HashFileENCAsync.ckiMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_HashFileENCAsyncW")
  Global Crypt2HashFinalENC.cklM = GetFunction(CkCrypt2LibId,"CkCrypt2U_hashFinalENCW")
  Global Crypt2HashMoreString.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_HashMoreStringW")
  Global Crypt2HashStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_hashStringENCW")
  Global Crypt2HasSignatureSigningTime.cklMl = GetFunction(CkCrypt2LibId,"CkCrypt2U_HasSignatureSigningTimeW")
  Global Crypt2HmacStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_hmacStringENCW")
  Global Crypt2Hotp.cklMssslls = GetFunction(CkCrypt2LibId,"CkCrypt2U_hotpW")
  Global Crypt2InflateStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_inflateStringENCW")
  Global Crypt2IsUnlocked.cklM = GetFunction(CkCrypt2LibId,"CkCrypt2U_IsUnlockedW")
  Global Crypt2LastJsonData.ckiM = GetFunction(CkCrypt2LibId,"CkCrypt2U_LastJsonDataW")
  Global Crypt2LoadTaskCaller.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_LoadTaskCallerW")
  Global Crypt2MacBdENC.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_macBdENCW")
  Global Crypt2MacStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_macStringENCW")
  Global Crypt2MySqlAesDecrypt.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_mySqlAesDecryptW")
  Global Crypt2MySqlAesEncrypt.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_mySqlAesEncryptW")
  Global Crypt2OpaqueSignBd.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_OpaqueSignBdW")
  Global Crypt2OpaqueSignBdAsync.ckiMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_OpaqueSignBdAsyncW")
  Global Crypt2OpaqueSignStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_opaqueSignStringENCW")
  Global Crypt2OpaqueSignStringENCAsync.ckiMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_OpaqueSignStringENCAsyncW")
  Global Crypt2OpaqueVerifyBd.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_OpaqueVerifyBdW")
  Global Crypt2OpaqueVerifyStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_opaqueVerifyStringENCW")
  Global Crypt2Pbkdf1.cklMsssslls = GetFunction(CkCrypt2LibId,"CkCrypt2U_pbkdf1W")
  Global Crypt2Pbkdf2.cklMsssslls = GetFunction(CkCrypt2LibId,"CkCrypt2U_pbkdf2W")
  Global Crypt2Pkcs7ExtractDigest.cklMls = GetFunction(CkCrypt2LibId,"CkCrypt2U_pkcs7ExtractDigestW")
  Global Crypt2RandomizeIV.ckvM = GetFunction(CkCrypt2LibId,"CkCrypt2U_RandomizeIVW")
  Global Crypt2RandomizeKey.ckvM = GetFunction(CkCrypt2LibId,"CkCrypt2U_RandomizeKeyW")
  Global Crypt2ReEncode.cklMsss = GetFunction(CkCrypt2LibId,"CkCrypt2U_reEncodeW")
  Global Crypt2SaveLastError.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_SaveLastErrorW")
  Global Crypt2SetDecryptCert.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetDecryptCertW")
  Global Crypt2SetDecryptCert2.cklMii = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetDecryptCert2W")
  Global Crypt2SetEncodedAad.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncodedAadW")
  Global Crypt2SetEncodedAuthTag.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncodedAuthTagW")
  Global Crypt2SetEncodedIV.ckvMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncodedIVW")
  Global Crypt2SetEncodedKey.ckvMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncodedKeyW")
  Global Crypt2SetEncodedSalt.ckvMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncodedSaltW")
  Global Crypt2SetEncryptCert.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetEncryptCertW")
  Global Crypt2SetHmacKeyEncoded.ckvMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetHmacKeyEncodedW")
  Global Crypt2SetHmacKeyString.ckvMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetHmacKeyStringW")
  Global Crypt2SetMacKeyEncoded.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetMacKeyEncodedW")
  Global Crypt2SetMacKeyString.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetMacKeyStringW")
  Global Crypt2SetSecretKeyViaPassword.ckvMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetSecretKeyViaPasswordW")
  Global Crypt2SetSigningCert.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetSigningCertW")
  Global Crypt2SetSigningCert2.cklMii = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetSigningCert2W")
  Global Crypt2SetTsaHttpObj.ckvMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetTsaHttpObjW")
  Global Crypt2SetVerifyCert.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SetVerifyCertW")
  Global Crypt2SignBdENC.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_signBdENCW")
  Global Crypt2SignBdENCAsync.ckiMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SignBdENCAsyncW")
  Global Crypt2SignSbENC.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_signSbENCW")
  Global Crypt2SignSbENCAsync.ckiMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_SignSbENCAsyncW")
  Global Crypt2SignStringENC.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_signStringENCW")
  Global Crypt2SignStringENCAsync.ckiMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_SignStringENCAsyncW")
  Global Crypt2Totp.cklMssssllls = GetFunction(CkCrypt2LibId,"CkCrypt2U_totpW")
  Global Crypt2TrimEndingWith.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_trimEndingWithW")
  Global Crypt2UnlockComponent.cklMs = GetFunction(CkCrypt2LibId,"CkCrypt2U_UnlockComponentW")
  Global Crypt2UseCertVault.cklMi = GetFunction(CkCrypt2LibId,"CkCrypt2U_UseCertVaultW")
  Global Crypt2VerifyBdENC.cklMis = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifyBdENCW")
  Global Crypt2VerifyDetachedSignature.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifyDetachedSignatureW")
  Global Crypt2VerifyP7M.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifyP7MW")
  Global Crypt2VerifyP7S.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifyP7SW")
  Global Crypt2VerifySbENC.cklMis = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifySbENCW")
  Global Crypt2VerifyStringENC.cklMss = GetFunction(CkCrypt2LibId,"CkCrypt2U_VerifyStringENCW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn Crypt2Create() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn Crypt2Dispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn Crypt2AbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn Crypt2PSetAbortCurrent(obj,value) : EndProcedure
  Procedure.l ckBCryptWorkFactor(obj.i) : ProcedureReturn Crypt2BCryptWorkFactor(obj) : EndProcedure
  Procedure setCkBCryptWorkFactor(obj.i, value.l) : ProcedureReturn Crypt2PSetBCryptWorkFactor(obj,value) : EndProcedure
  Procedure.l ckBlockSize(obj.i) : ProcedureReturn Crypt2BlockSize(obj) : EndProcedure
  Procedure.l ckCadesEnabled(obj.i) : ProcedureReturn Crypt2CadesEnabled(obj) : EndProcedure
  Procedure setCkCadesEnabled(obj.i, value.l) : ProcedureReturn Crypt2PSetCadesEnabled(obj,value) : EndProcedure
  Procedure.s ckCadesSigPolicyHash(obj.i) : ProcedureReturn PeekS(Crypt2CadesSigPolicyHash(obj)) : EndProcedure
  Procedure setCkCadesSigPolicyHash(obj.i, value.s) : ProcedureReturn Crypt2PSetCadesSigPolicyHash(obj,value) : EndProcedure
  Procedure.s ckCadesSigPolicyId(obj.i) : ProcedureReturn PeekS(Crypt2CadesSigPolicyId(obj)) : EndProcedure
  Procedure setCkCadesSigPolicyId(obj.i, value.s) : ProcedureReturn Crypt2PSetCadesSigPolicyId(obj,value) : EndProcedure
  Procedure.s ckCadesSigPolicyUri(obj.i) : ProcedureReturn PeekS(Crypt2CadesSigPolicyUri(obj)) : EndProcedure
  Procedure setCkCadesSigPolicyUri(obj.i, value.s) : ProcedureReturn Crypt2PSetCadesSigPolicyUri(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(Crypt2Charset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn Crypt2PSetCharset(obj,value) : EndProcedure
  Procedure.s ckCipherMode(obj.i) : ProcedureReturn PeekS(Crypt2CipherMode(obj)) : EndProcedure
  Procedure setCkCipherMode(obj.i, value.s) : ProcedureReturn Crypt2PSetCipherMode(obj,value) : EndProcedure
  Procedure.s ckCmsOptions(obj.i) : ProcedureReturn PeekS(Crypt2CmsOptions(obj)) : EndProcedure
  Procedure setCkCmsOptions(obj.i, value.s) : ProcedureReturn Crypt2PSetCmsOptions(obj,value) : EndProcedure
  Procedure.s ckCompressionAlgorithm(obj.i) : ProcedureReturn PeekS(Crypt2CompressionAlgorithm(obj)) : EndProcedure
  Procedure setCkCompressionAlgorithm(obj.i, value.s) : ProcedureReturn Crypt2PSetCompressionAlgorithm(obj,value) : EndProcedure
  Procedure.s ckCryptAlgorithm(obj.i) : ProcedureReturn PeekS(Crypt2CryptAlgorithm(obj)) : EndProcedure
  Procedure setCkCryptAlgorithm(obj.i, value.s) : ProcedureReturn Crypt2PSetCryptAlgorithm(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(Crypt2DebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn Crypt2PSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEncodingMode(obj.i) : ProcedureReturn PeekS(Crypt2EncodingMode(obj)) : EndProcedure
  Procedure setCkEncodingMode(obj.i, value.s) : ProcedureReturn Crypt2PSetEncodingMode(obj,value) : EndProcedure
  Procedure.l ckFirstChunk(obj.i) : ProcedureReturn Crypt2FirstChunk(obj) : EndProcedure
  Procedure setCkFirstChunk(obj.i, value.l) : ProcedureReturn Crypt2PSetFirstChunk(obj,value) : EndProcedure
  Procedure.s ckHashAlgorithm(obj.i) : ProcedureReturn PeekS(Crypt2HashAlgorithm(obj)) : EndProcedure
  Procedure setCkHashAlgorithm(obj.i, value.s) : ProcedureReturn Crypt2PSetHashAlgorithm(obj,value) : EndProcedure
  Procedure.l ckHavalRounds(obj.i) : ProcedureReturn Crypt2HavalRounds(obj) : EndProcedure
  Procedure setCkHavalRounds(obj.i, value.l) : ProcedureReturn Crypt2PSetHavalRounds(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn Crypt2HeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn Crypt2PSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckIncludeCertChain(obj.i) : ProcedureReturn Crypt2IncludeCertChain(obj) : EndProcedure
  Procedure setCkIncludeCertChain(obj.i, value.l) : ProcedureReturn Crypt2PSetIncludeCertChain(obj,value) : EndProcedure
  Procedure.l ckInitialCount(obj.i) : ProcedureReturn Crypt2InitialCount(obj) : EndProcedure
  Procedure setCkInitialCount(obj.i, value.l) : ProcedureReturn Crypt2PSetInitialCount(obj,value) : EndProcedure
  Procedure.l ckIterationCount(obj.i) : ProcedureReturn Crypt2IterationCount(obj) : EndProcedure
  Procedure setCkIterationCount(obj.i, value.l) : ProcedureReturn Crypt2PSetIterationCount(obj,value) : EndProcedure
  Procedure.l ckKeyLength(obj.i) : ProcedureReturn Crypt2KeyLength(obj) : EndProcedure
  Procedure setCkKeyLength(obj.i, value.l) : ProcedureReturn Crypt2PSetKeyLength(obj,value) : EndProcedure
  Procedure.l ckLastChunk(obj.i) : ProcedureReturn Crypt2LastChunk(obj) : EndProcedure
  Procedure setCkLastChunk(obj.i, value.l) : ProcedureReturn Crypt2PSetLastChunk(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(Crypt2LastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(Crypt2LastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(Crypt2LastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn Crypt2LastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn Crypt2PSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckMacAlgorithm(obj.i) : ProcedureReturn PeekS(Crypt2MacAlgorithm(obj)) : EndProcedure
  Procedure setCkMacAlgorithm(obj.i, value.s) : ProcedureReturn Crypt2PSetMacAlgorithm(obj,value) : EndProcedure
  Procedure.l ckNumSignerCerts(obj.i) : ProcedureReturn Crypt2NumSignerCerts(obj) : EndProcedure
  Procedure.s ckOaepHash(obj.i) : ProcedureReturn PeekS(Crypt2OaepHash(obj)) : EndProcedure
  Procedure setCkOaepHash(obj.i, value.s) : ProcedureReturn Crypt2PSetOaepHash(obj,value) : EndProcedure
  Procedure.s ckOaepMgfHash(obj.i) : ProcedureReturn PeekS(Crypt2OaepMgfHash(obj)) : EndProcedure
  Procedure setCkOaepMgfHash(obj.i, value.s) : ProcedureReturn Crypt2PSetOaepMgfHash(obj,value) : EndProcedure
  Procedure.l ckOaepPadding(obj.i) : ProcedureReturn Crypt2OaepPadding(obj) : EndProcedure
  Procedure setCkOaepPadding(obj.i, value.l) : ProcedureReturn Crypt2PSetOaepPadding(obj,value) : EndProcedure
  Procedure.l ckPaddingScheme(obj.i) : ProcedureReturn Crypt2PaddingScheme(obj) : EndProcedure
  Procedure setCkPaddingScheme(obj.i, value.l) : ProcedureReturn Crypt2PSetPaddingScheme(obj,value) : EndProcedure
  Procedure.s ckPbesAlgorithm(obj.i) : ProcedureReturn PeekS(Crypt2PbesAlgorithm(obj)) : EndProcedure
  Procedure setCkPbesAlgorithm(obj.i, value.s) : ProcedureReturn Crypt2PSetPbesAlgorithm(obj,value) : EndProcedure
  Procedure.s ckPbesPassword(obj.i) : ProcedureReturn PeekS(Crypt2PbesPassword(obj)) : EndProcedure
  Procedure setCkPbesPassword(obj.i, value.s) : ProcedureReturn Crypt2PSetPbesPassword(obj,value) : EndProcedure
  Procedure.s ckPkcs7CryptAlg(obj.i) : ProcedureReturn PeekS(Crypt2Pkcs7CryptAlg(obj)) : EndProcedure
  Procedure setCkPkcs7CryptAlg(obj.i, value.s) : ProcedureReturn Crypt2PSetPkcs7CryptAlg(obj,value) : EndProcedure
  Procedure.l ckRc2EffectiveKeyLength(obj.i) : ProcedureReturn Crypt2Rc2EffectiveKeyLength(obj) : EndProcedure
  Procedure setCkRc2EffectiveKeyLength(obj.i, value.l) : ProcedureReturn Crypt2PSetRc2EffectiveKeyLength(obj,value) : EndProcedure
  Procedure.s ckSigningAlg(obj.i) : ProcedureReturn PeekS(Crypt2SigningAlg(obj)) : EndProcedure
  Procedure setCkSigningAlg(obj.i, value.s) : ProcedureReturn Crypt2PSetSigningAlg(obj,value) : EndProcedure
  Procedure.s ckSigningAttributes(obj.i) : ProcedureReturn PeekS(Crypt2SigningAttributes(obj)) : EndProcedure
  Procedure setCkSigningAttributes(obj.i, value.s) : ProcedureReturn Crypt2PSetSigningAttributes(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(Crypt2UncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn Crypt2PSetUncommonOptions(obj,value) : EndProcedure
  Procedure.s ckUuFilename(obj.i) : ProcedureReturn PeekS(Crypt2UuFilename(obj)) : EndProcedure
  Procedure setCkUuFilename(obj.i, value.s) : ProcedureReturn Crypt2PSetUuFilename(obj,value) : EndProcedure
  Procedure.s ckUuMode(obj.i) : ProcedureReturn PeekS(Crypt2UuMode(obj)) : EndProcedure
  Procedure setCkUuMode(obj.i, value.s) : ProcedureReturn Crypt2PSetUuMode(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn Crypt2VerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn Crypt2PSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(Crypt2Version(obj)) : EndProcedure
  Procedure ckAddEncryptCert(obj.i, cert.i) :  ProcedureReturn Crypt2AddEncryptCert(obj, cert) :  EndProcedure
  Procedure.l ckAddPfxSourceFile(obj.i, pfxFilePath.s, pfxPassword.s) :  ProcedureReturn Crypt2AddPfxSourceFile(obj, pfxFilePath, pfxPassword) :  EndProcedure
  Procedure.l ckAddSigningCert(obj.i, cert.i) :  ProcedureReturn Crypt2AddSigningCert(obj, cert) :  EndProcedure
  Procedure.s ckAesKeyUnwrap(obj.i, kek.s, wrappedKeyData.s, encoding.s) :  ProcedureReturn PeekS(Crypt2AesKeyUnwrap(obj, kek, wrappedKeyData, encoding)) :  EndProcedure
  Procedure.s ckAesKeyWrap(obj.i, kek.s, keyData.s, encoding.s) :  ProcedureReturn PeekS(Crypt2AesKeyWrap(obj, kek, keyData, encoding)) :  EndProcedure
  Procedure.s ckBCryptHash(obj.i, password.s) :  ProcedureReturn PeekS(Crypt2BCryptHash(obj, password)) :  EndProcedure
  Procedure.l ckBCryptVerify(obj.i, password.s, bcryptHash.s) :  ProcedureReturn Crypt2BCryptVerify(obj, password, bcryptHash) :  EndProcedure
  Procedure.l ckCkDecryptFile(obj.i, srcFile.s, destFile.s) :  ProcedureReturn Crypt2CkDecryptFile(obj, srcFile, destFile) :  EndProcedure
  Procedure.i ckCkDecryptFileAsync(obj.i, srcFile.s, destFile.s) :  ProcedureReturn Crypt2CkDecryptFileAsync(obj, srcFile, destFile) :  EndProcedure
  Procedure.l ckCkEncryptFile(obj.i, srcFile.s, destFile.s) :  ProcedureReturn Crypt2CkEncryptFile(obj, srcFile, destFile) :  EndProcedure
  Procedure.i ckCkEncryptFileAsync(obj.i, srcFile.s, destFile.s) :  ProcedureReturn Crypt2CkEncryptFileAsync(obj, srcFile, destFile) :  EndProcedure
  Procedure ckClearEncryptCerts(obj.i) :  ProcedureReturn Crypt2ClearEncryptCerts(obj) :  EndProcedure
  Procedure ckClearSigningCerts(obj.i) :  ProcedureReturn Crypt2ClearSigningCerts(obj) :  EndProcedure
  Procedure.s ckCompressStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2CompressStringENC(obj, str)) :  EndProcedure
  Procedure.l ckCrcFile(obj.i, crcAlg.s, path.s) :  ProcedureReturn Crypt2CrcFile(obj, crcAlg, path) :  EndProcedure
  Procedure.i ckCrcFileAsync(obj.i, crcAlg.s, path.s) :  ProcedureReturn Crypt2CrcFileAsync(obj, crcAlg, path) :  EndProcedure
  Procedure.l ckCreateDetachedSignature(obj.i, inFilePath.s, sigFilePath.s) :  ProcedureReturn Crypt2CreateDetachedSignature(obj, inFilePath, sigFilePath) :  EndProcedure
  Procedure.l ckCreateP7M(obj.i, inFilename.s, p7mPath.s) :  ProcedureReturn Crypt2CreateP7M(obj, inFilename, p7mPath) :  EndProcedure
  Procedure.i ckCreateP7MAsync(obj.i, inFilename.s, p7mPath.s) :  ProcedureReturn Crypt2CreateP7MAsync(obj, inFilename, p7mPath) :  EndProcedure
  Procedure.l ckCreateP7S(obj.i, inFilename.s, p7sPath.s) :  ProcedureReturn Crypt2CreateP7S(obj, inFilename, p7sPath) :  EndProcedure
  Procedure.i ckCreateP7SAsync(obj.i, inFilename.s, p7sPath.s) :  ProcedureReturn Crypt2CreateP7SAsync(obj, inFilename, p7sPath) :  EndProcedure
  Procedure.s ckDecodeString(obj.i, inStr.s, charset.s, encoding.s) :  ProcedureReturn PeekS(Crypt2DecodeString(obj, inStr, charset, encoding)) :  EndProcedure
  Procedure.l ckDecryptBd(obj.i, bd.i) :  ProcedureReturn Crypt2DecryptBd(obj, bd) :  EndProcedure
  Procedure.s ckDecryptEncoded(obj.i, encodedEncryptedData.s) :  ProcedureReturn PeekS(Crypt2DecryptEncoded(obj, encodedEncryptedData)) :  EndProcedure
  Procedure.l ckDecryptSb(obj.i, bdIn.i, sbOut.i) :  ProcedureReturn Crypt2DecryptSb(obj, bdIn, sbOut) :  EndProcedure
  Procedure.l ckDecryptSecureENC(obj.i, cipherText.s, secureStr.i) :  ProcedureReturn Crypt2DecryptSecureENC(obj, cipherText, secureStr) :  EndProcedure
  Procedure.l ckDecryptStream(obj.i, strm.i) :  ProcedureReturn Crypt2DecryptStream(obj, strm) :  EndProcedure
  Procedure.i ckDecryptStreamAsync(obj.i, strm.i) :  ProcedureReturn Crypt2DecryptStreamAsync(obj, strm) :  EndProcedure
  Procedure.s ckDecryptStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2DecryptStringENC(obj, str)) :  EndProcedure
  Procedure.s ckEncodeInt(obj.i, value.l, numBytes.l, littleEndian.l, encoding.s) :  ProcedureReturn PeekS(Crypt2EncodeInt(obj, value, numBytes, littleEndian, encoding)) :  EndProcedure
  Procedure.s ckEncodeString(obj.i, strToEncode.s, charsetName.s, toEncodingName.s) :  ProcedureReturn PeekS(Crypt2EncodeString(obj, strToEncode, charsetName, toEncodingName)) :  EndProcedure
  Procedure.l ckEncryptBd(obj.i, bd.i) :  ProcedureReturn Crypt2EncryptBd(obj, bd) :  EndProcedure
  Procedure.s ckEncryptEncoded(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2EncryptEncoded(obj, str)) :  EndProcedure
  Procedure.l ckEncryptSb(obj.i, sbIn.i, bdOut.i) :  ProcedureReturn Crypt2EncryptSb(obj, sbIn, bdOut) :  EndProcedure
  Procedure.s ckEncryptSecureENC(obj.i, secureStr.i) :  ProcedureReturn PeekS(Crypt2EncryptSecureENC(obj, secureStr)) :  EndProcedure
  Procedure.l ckEncryptStream(obj.i, strm.i) :  ProcedureReturn Crypt2EncryptStream(obj, strm) :  EndProcedure
  Procedure.i ckEncryptStreamAsync(obj.i, strm.i) :  ProcedureReturn Crypt2EncryptStreamAsync(obj, strm) :  EndProcedure
  Procedure.s ckEncryptStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2EncryptStringENC(obj, str)) :  EndProcedure
  Procedure.s ckGenEncodedSecretKey(obj.i, password.s, encoding.s) :  ProcedureReturn PeekS(Crypt2GenEncodedSecretKey(obj, password, encoding)) :  EndProcedure
  Procedure.s ckGenerateUuid(obj.i) :  ProcedureReturn PeekS(Crypt2GenerateUuid(obj)) :  EndProcedure
  Procedure.s ckGenRandomBytesENC(obj.i, numBytes.l) :  ProcedureReturn PeekS(Crypt2GenRandomBytesENC(obj, numBytes)) :  EndProcedure
  Procedure.i ckGetDecryptCert(obj.i) :  ProcedureReturn Crypt2GetDecryptCert(obj) :  EndProcedure
  Procedure.s ckGetEncodedAad(obj.i, encoding.s) :  ProcedureReturn PeekS(Crypt2GetEncodedAad(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedAuthTag(obj.i, encoding.s) :  ProcedureReturn PeekS(Crypt2GetEncodedAuthTag(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedIV(obj.i, encoding.s) :  ProcedureReturn PeekS(Crypt2GetEncodedIV(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedKey(obj.i, encoding.s) :  ProcedureReturn PeekS(Crypt2GetEncodedKey(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedSalt(obj.i, encoding.s) :  ProcedureReturn PeekS(Crypt2GetEncodedSalt(obj, encoding)) :  EndProcedure
  Procedure.i ckGetLastCert(obj.i) :  ProcedureReturn Crypt2GetLastCert(obj) :  EndProcedure
  Procedure.s ckGetSignatureSigningTimeStr(obj.i, index.l) :  ProcedureReturn PeekS(Crypt2GetSignatureSigningTimeStr(obj, index)) :  EndProcedure
  Procedure.l ckGetSignedAttributes(obj.i, signerIndex.l, pkcs7Der.i, sbJson.i) :  ProcedureReturn Crypt2GetSignedAttributes(obj, signerIndex, pkcs7Der, sbJson) :  EndProcedure
  Procedure.i ckGetSignerCert(obj.i, index.l) :  ProcedureReturn Crypt2GetSignerCert(obj, index) :  EndProcedure
  Procedure.i ckGetSignerCertChain(obj.i, index.l) :  ProcedureReturn Crypt2GetSignerCertChain(obj, index) :  EndProcedure
  Procedure.s ckHashBdENC(obj.i, bd.i) :  ProcedureReturn PeekS(Crypt2HashBdENC(obj, bd)) :  EndProcedure
  Procedure.l ckHashBeginString(obj.i, strData.s) :  ProcedureReturn Crypt2HashBeginString(obj, strData) :  EndProcedure
  Procedure.s ckHashFileENC(obj.i, path.s) :  ProcedureReturn PeekS(Crypt2HashFileENC(obj, path)) :  EndProcedure
  Procedure.i ckHashFileENCAsync(obj.i, path.s) :  ProcedureReturn Crypt2HashFileENCAsync(obj, path) :  EndProcedure
  Procedure.s ckHashFinalENC(obj.i) :  ProcedureReturn PeekS(Crypt2HashFinalENC(obj)) :  EndProcedure
  Procedure.l ckHashMoreString(obj.i, strData.s) :  ProcedureReturn Crypt2HashMoreString(obj, strData) :  EndProcedure
  Procedure.s ckHashStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2HashStringENC(obj, str)) :  EndProcedure
  Procedure.l ckHasSignatureSigningTime(obj.i, index.l) :  ProcedureReturn Crypt2HasSignatureSigningTime(obj, index) :  EndProcedure
  Procedure.s ckHmacStringENC(obj.i, inText.s) :  ProcedureReturn PeekS(Crypt2HmacStringENC(obj, inText)) :  EndProcedure
  Procedure.s ckHotp(obj.i, secret.s, secretEnc.s, counterHex.s, numDigits.l, truncOffset.l, hashAlg.s) :  ProcedureReturn PeekS(Crypt2Hotp(obj, secret, secretEnc, counterHex, numDigits, truncOffset, hashAlg)) :  EndProcedure
  Procedure.s ckInflateStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2InflateStringENC(obj, str)) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn Crypt2IsUnlocked(obj) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn Crypt2LastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn Crypt2LoadTaskCaller(obj, task) :  EndProcedure
  Procedure.s ckMacBdENC(obj.i, bd.i) :  ProcedureReturn PeekS(Crypt2MacBdENC(obj, bd)) :  EndProcedure
  Procedure.s ckMacStringENC(obj.i, inText.s) :  ProcedureReturn PeekS(Crypt2MacStringENC(obj, inText)) :  EndProcedure
  Procedure.s ckMySqlAesDecrypt(obj.i, strEncryptedHex.s, strPassword.s) :  ProcedureReturn PeekS(Crypt2MySqlAesDecrypt(obj, strEncryptedHex, strPassword)) :  EndProcedure
  Procedure.s ckMySqlAesEncrypt(obj.i, strData.s, strPassword.s) :  ProcedureReturn PeekS(Crypt2MySqlAesEncrypt(obj, strData, strPassword)) :  EndProcedure
  Procedure.l ckOpaqueSignBd(obj.i, bd.i) :  ProcedureReturn Crypt2OpaqueSignBd(obj, bd) :  EndProcedure
  Procedure.i ckOpaqueSignBdAsync(obj.i, bd.i) :  ProcedureReturn Crypt2OpaqueSignBdAsync(obj, bd) :  EndProcedure
  Procedure.s ckOpaqueSignStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2OpaqueSignStringENC(obj, str)) :  EndProcedure
  Procedure.i ckOpaqueSignStringENCAsync(obj.i, str.s) :  ProcedureReturn Crypt2OpaqueSignStringENCAsync(obj, str) :  EndProcedure
  Procedure.l ckOpaqueVerifyBd(obj.i, bd.i) :  ProcedureReturn Crypt2OpaqueVerifyBd(obj, bd) :  EndProcedure
  Procedure.s ckOpaqueVerifyStringENC(obj.i, p7s.s) :  ProcedureReturn PeekS(Crypt2OpaqueVerifyStringENC(obj, p7s)) :  EndProcedure
  Procedure.s ckPbkdf1(obj.i, password.s, charset.s, hashAlg.s, salt.s, iterationCount.l, outputKeyBitLen.l, encoding.s) :  ProcedureReturn PeekS(Crypt2Pbkdf1(obj, password, charset, hashAlg, salt, iterationCount, outputKeyBitLen, encoding)) :  EndProcedure
  Procedure.s ckPbkdf2(obj.i, password.s, charset.s, hashAlg.s, salt.s, iterationCount.l, outputKeyBitLen.l, encoding.s) :  ProcedureReturn PeekS(Crypt2Pbkdf2(obj, password, charset, hashAlg, salt, iterationCount, outputKeyBitLen, encoding)) :  EndProcedure
  Procedure.s ckPkcs7ExtractDigest(obj.i, signerIndex.l, pkcs7.s) :  ProcedureReturn PeekS(Crypt2Pkcs7ExtractDigest(obj, signerIndex, pkcs7)) :  EndProcedure
  Procedure ckRandomizeIV(obj.i) :  ProcedureReturn Crypt2RandomizeIV(obj) :  EndProcedure
  Procedure ckRandomizeKey(obj.i) :  ProcedureReturn Crypt2RandomizeKey(obj) :  EndProcedure
  Procedure.s ckReEncode(obj.i, encodedData.s, fromEncoding.s, toEncoding.s) :  ProcedureReturn PeekS(Crypt2ReEncode(obj, encodedData, fromEncoding, toEncoding)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn Crypt2SaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetDecryptCert(obj.i, cert.i) :  ProcedureReturn Crypt2SetDecryptCert(obj, cert) :  EndProcedure
  Procedure.l ckSetDecryptCert2(obj.i, cert.i, key.i) :  ProcedureReturn Crypt2SetDecryptCert2(obj, cert, key) :  EndProcedure
  Procedure.l ckSetEncodedAad(obj.i, aadStr.s, encoding.s) :  ProcedureReturn Crypt2SetEncodedAad(obj, aadStr, encoding) :  EndProcedure
  Procedure.l ckSetEncodedAuthTag(obj.i, authTagStr.s, encoding.s) :  ProcedureReturn Crypt2SetEncodedAuthTag(obj, authTagStr, encoding) :  EndProcedure
  Procedure ckSetEncodedIV(obj.i, ivStr.s, encoding.s) :  ProcedureReturn Crypt2SetEncodedIV(obj, ivStr, encoding) :  EndProcedure
  Procedure ckSetEncodedKey(obj.i, keyStr.s, encoding.s) :  ProcedureReturn Crypt2SetEncodedKey(obj, keyStr, encoding) :  EndProcedure
  Procedure ckSetEncodedSalt(obj.i, saltStr.s, encoding.s) :  ProcedureReturn Crypt2SetEncodedSalt(obj, saltStr, encoding) :  EndProcedure
  Procedure.l ckSetEncryptCert(obj.i, cert.i) :  ProcedureReturn Crypt2SetEncryptCert(obj, cert) :  EndProcedure
  Procedure ckSetHmacKeyEncoded(obj.i, key.s, encoding.s) :  ProcedureReturn Crypt2SetHmacKeyEncoded(obj, key, encoding) :  EndProcedure
  Procedure ckSetHmacKeyString(obj.i, key.s) :  ProcedureReturn Crypt2SetHmacKeyString(obj, key) :  EndProcedure
  Procedure.l ckSetMacKeyEncoded(obj.i, key.s, encoding.s) :  ProcedureReturn Crypt2SetMacKeyEncoded(obj, key, encoding) :  EndProcedure
  Procedure.l ckSetMacKeyString(obj.i, key.s) :  ProcedureReturn Crypt2SetMacKeyString(obj, key) :  EndProcedure
  Procedure ckSetSecretKeyViaPassword(obj.i, password.s) :  ProcedureReturn Crypt2SetSecretKeyViaPassword(obj, password) :  EndProcedure
  Procedure.l ckSetSigningCert(obj.i, cert.i) :  ProcedureReturn Crypt2SetSigningCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSigningCert2(obj.i, cert.i, privateKey.i) :  ProcedureReturn Crypt2SetSigningCert2(obj, cert, privateKey) :  EndProcedure
  Procedure ckSetTsaHttpObj(obj.i, http.i) :  ProcedureReturn Crypt2SetTsaHttpObj(obj, http) :  EndProcedure
  Procedure.l ckSetVerifyCert(obj.i, cert.i) :  ProcedureReturn Crypt2SetVerifyCert(obj, cert) :  EndProcedure
  Procedure.s ckSignBdENC(obj.i, dataToSign.i) :  ProcedureReturn PeekS(Crypt2SignBdENC(obj, dataToSign)) :  EndProcedure
  Procedure.i ckSignBdENCAsync(obj.i, dataToSign.i) :  ProcedureReturn Crypt2SignBdENCAsync(obj, dataToSign) :  EndProcedure
  Procedure.s ckSignSbENC(obj.i, sb.i) :  ProcedureReturn PeekS(Crypt2SignSbENC(obj, sb)) :  EndProcedure
  Procedure.i ckSignSbENCAsync(obj.i, sb.i) :  ProcedureReturn Crypt2SignSbENCAsync(obj, sb) :  EndProcedure
  Procedure.s ckSignStringENC(obj.i, str.s) :  ProcedureReturn PeekS(Crypt2SignStringENC(obj, str)) :  EndProcedure
  Procedure.i ckSignStringENCAsync(obj.i, str.s) :  ProcedureReturn Crypt2SignStringENCAsync(obj, str) :  EndProcedure
  Procedure.s ckTotp(obj.i, secret.s, secretEnc.s, t0.s, tNow.s, tStep.l, numDigits.l, truncOffset.l, hashAlg.s) :  ProcedureReturn PeekS(Crypt2Totp(obj, secret, secretEnc, t0, tNow, tStep, numDigits, truncOffset, hashAlg)) :  EndProcedure
  Procedure.s ckTrimEndingWith(obj.i, inStr.s, ending.s) :  ProcedureReturn PeekS(Crypt2TrimEndingWith(obj, inStr, ending)) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn Crypt2UnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn Crypt2UseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckVerifyBdENC(obj.i, argData.i, encodedSig.s) :  ProcedureReturn Crypt2VerifyBdENC(obj, argData, encodedSig) :  EndProcedure
  Procedure.l ckVerifyDetachedSignature(obj.i, inFilename.s, p7sFilename.s) :  ProcedureReturn Crypt2VerifyDetachedSignature(obj, inFilename, p7sFilename) :  EndProcedure
  Procedure.l ckVerifyP7M(obj.i, p7mPath.s, destPath.s) :  ProcedureReturn Crypt2VerifyP7M(obj, p7mPath, destPath) :  EndProcedure
  Procedure.l ckVerifyP7S(obj.i, inFilename.s, p7sFilename.s) :  ProcedureReturn Crypt2VerifyP7S(obj, inFilename, p7sFilename) :  EndProcedure
  Procedure.l ckVerifySbENC(obj.i, sb.i, encodedSig.s) :  ProcedureReturn Crypt2VerifySbENC(obj, sb, encodedSig) :  EndProcedure
  Procedure.l ckVerifyStringENC(obj.i, str.s, encodedSig.s) :  ProcedureReturn Crypt2VerifyStringENC(obj, str, encodedSig) :  EndProcedure
EndModule

