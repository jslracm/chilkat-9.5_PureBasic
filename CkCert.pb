DeclareModule CkCert
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAuthorityKeyId(obj.i)
  Declare.l ckAvoidWindowsPkAccess(obj.i)
  Declare setCkAvoidWindowsPkAccess(obj.i, value.l)
  Declare.l ckCertVersion(obj.i)
  Declare.s ckCspName(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckExpired(obj.i)
  Declare.s ckExtendedKeyUsage(obj.i)
  Declare.l ckForClientAuthentication(obj.i)
  Declare.l ckForCodeSigning(obj.i)
  Declare.l ckForSecureEmail(obj.i)
  Declare.l ckForServerAuthentication(obj.i)
  Declare.l ckForTimeStamping(obj.i)
  Declare.l ckHasKeyContainer(obj.i)
  Declare.l ckIntendedKeyUsage(obj.i)
  Declare.l ckIsRoot(obj.i)
  Declare.s ckIssuerC(obj.i)
  Declare.s ckIssuerCN(obj.i)
  Declare.s ckIssuerDN(obj.i)
  Declare.s ckIssuerE(obj.i)
  Declare.s ckIssuerL(obj.i)
  Declare.s ckIssuerO(obj.i)
  Declare.s ckIssuerOU(obj.i)
  Declare.s ckIssuerS(obj.i)
  Declare.s ckKeyContainerName(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckMachineKeyset(obj.i)
  Declare.s ckOcspUrl(obj.i)
  Declare.l ckPrivateKeyExportable(obj.i)
  Declare.l ckRevoked(obj.i)
  Declare.s ckRfc822Name(obj.i)
  Declare.l ckSelfSigned(obj.i)
  Declare.s ckSerialDecimal(obj.i)
  Declare.s ckSerialNumber(obj.i)
  Declare.s ckSha1Thumbprint(obj.i)
  Declare.l ckSignatureVerified(obj.i)
  Declare.l ckSilent(obj.i)
  Declare.l ckSmartCardNoDialog(obj.i)
  Declare setCkSmartCardNoDialog(obj.i, value.l)
  Declare.s ckSmartCardPin(obj.i)
  Declare setCkSmartCardPin(obj.i, value.s)
  Declare.s ckSubjectAlternativeName(obj.i)
  Declare.s ckSubjectC(obj.i)
  Declare.s ckSubjectCN(obj.i)
  Declare.s ckSubjectDN(obj.i)
  Declare.s ckSubjectE(obj.i)
  Declare.s ckSubjectKeyId(obj.i)
  Declare.s ckSubjectL(obj.i)
  Declare.s ckSubjectO(obj.i)
  Declare.s ckSubjectOU(obj.i)
  Declare.s ckSubjectS(obj.i)
  Declare.l ckTrustedRoot(obj.i)
  Declare.s ckValidFromStr(obj.i)
  Declare.s ckValidToStr(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckCheckRevoked(obj.i)
  Declare.l ckCheckSmartCardPin(obj.i)
  Declare.l ckExportCertDerBd(obj.i, cerData.i)
  Declare.l ckExportCertDerFile(obj.i, path.s)
  Declare.s ckExportCertPem(obj.i)
  Declare.l ckExportCertPemFile(obj.i, path.s)
  Declare.s ckExportCertXml(obj.i)
  Declare.i ckExportPrivateKey(obj.i)
  Declare.i ckExportPublicKey(obj.i)
  Declare.l ckExportToPfxBd(obj.i, password.s, includeCertChain.l, pfxData.i)
  Declare.l ckExportToPfxFile(obj.i, pfxFilename.s, pfxPassword.s, bIncludeCertChain.l)
  Declare.i ckFindIssuer(obj.i)
  Declare.i ckGetCertChain(obj.i)
  Declare.s ckGetEncoded(obj.i)
  Declare.s ckGetExtensionAsXml(obj.i, oid.s)
  Declare.s ckGetPrivateKeyPem(obj.i)
  Declare.s ckGetSpkiFingerprint(obj.i, hashAlg.s, encoding.s)
  Declare.s ckGetSubjectPart(obj.i, partNameOrOid.s)
  Declare.i ckGetValidFromDt(obj.i)
  Declare.i ckGetValidToDt(obj.i)
  Declare.s ckHashOf(obj.i, part.s, hashAlg.s, encoding.s)
  Declare.l ckHasPrivateKey(obj.i)
  Declare.l ckLoadByCommonName(obj.i, cn.s)
  Declare.l ckLoadByEmailAddress(obj.i, emailAddress.s)
  Declare.l ckLoadByIssuerAndSerialNumber(obj.i, issuerCN.s, serialNumber.s)
  Declare.l ckLoadBySubjectOid(obj.i, oid.s, value.s)
  Declare.l ckLoadByThumbprint(obj.i, thumbprint.s, encoding.s)
  Declare.l ckLoadFromBase64(obj.i, encodedCert.s)
  Declare.l ckLoadFromBd(obj.i, certBytes.i)
  Declare.l ckLoadFromFile(obj.i, path.s)
  Declare.l ckLoadFromSmartcard(obj.i, csp.s)
  Declare.l ckLoadPem(obj.i, strPem.s)
  Declare.l ckLoadPfxBd(obj.i, pfxData.i, password.s)
  Declare.l ckLoadPfxFile(obj.i, pfxPath.s, password.s)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckPemFileToDerFile(obj.i, fromPath.s, toPath.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveToFile(obj.i, path.s)
  Declare.l ckSetFromEncoded(obj.i, encodedCert.s)
  Declare.l ckSetPrivateKey(obj.i, privKey.i)
  Declare.l ckSetPrivateKeyPem(obj.i, privKeyPem.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
  Declare.l ckVerifySignature(obj.i)
  Declare.s ckX509PKIPathv1(obj.i)
EndDeclareModule

Module CkCert
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMsli(obj.i, arg1.s, arg2.l, arg3.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkCertCreate()
  PrototypeC CkCertDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCertLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCertLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCertLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CertCreate.CkCertCreate = GetFunction(CkCertLibId,"CkCertU_CreateW")
  Global CertDispose.CkCertDispose = GetFunction(CkCertLibId,"CkCertU_DisposeW")
  Global CertAuthorityKeyId.cksPropGet = GetFunction(CkCertLibId,"CkCertU_authorityKeyIdW")
  Global CertAvoidWindowsPkAccess.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getAvoidWindowsPkAccessW")
  Global CertPSetAvoidWindowsPkAccess.cklPropSet = GetFunction(CkCertLibId,"CkCertU_putAvoidWindowsPkAccessW")
  Global CertCertVersion.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getCertVersionW")
  Global CertCspName.cksPropGet = GetFunction(CkCertLibId,"CkCertU_cspNameW")
  Global CertDebugLogFilePath.cksPropGet = GetFunction(CkCertLibId,"CkCertU_debugLogFilePathW")
  Global CertPSetDebugLogFilePath.cksPropSet = GetFunction(CkCertLibId,"CkCertU_putDebugLogFilePathW")
  Global CertExpired.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getExpiredW")
  Global CertExtendedKeyUsage.cksPropGet = GetFunction(CkCertLibId,"CkCertU_extendedKeyUsageW")
  Global CertForClientAuthentication.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getForClientAuthenticationW")
  Global CertForCodeSigning.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getForCodeSigningW")
  Global CertForSecureEmail.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getForSecureEmailW")
  Global CertForServerAuthentication.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getForServerAuthenticationW")
  Global CertForTimeStamping.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getForTimeStampingW")
  Global CertHasKeyContainer.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getHasKeyContainerW")
  Global CertIntendedKeyUsage.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getIntendedKeyUsageW")
  Global CertIsRoot.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getIsRootW")
  Global CertIssuerC.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerCW")
  Global CertIssuerCN.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerCNW")
  Global CertIssuerDN.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerDNW")
  Global CertIssuerE.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerEW")
  Global CertIssuerL.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerLW")
  Global CertIssuerO.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerOW")
  Global CertIssuerOU.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerOUW")
  Global CertIssuerS.cksPropGet = GetFunction(CkCertLibId,"CkCertU_issuerSW")
  Global CertKeyContainerName.cksPropGet = GetFunction(CkCertLibId,"CkCertU_keyContainerNameW")
  Global CertLastErrorHtml.cksPropGet = GetFunction(CkCertLibId,"CkCertU_lastErrorHtmlW")
  Global CertLastErrorText.cksPropGet = GetFunction(CkCertLibId,"CkCertU_lastErrorTextW")
  Global CertLastErrorXml.cksPropGet = GetFunction(CkCertLibId,"CkCertU_lastErrorXmlW")
  Global CertLastMethodSuccess.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getLastMethodSuccessW")
  Global CertPSetLastMethodSuccess.cklPropSet = GetFunction(CkCertLibId,"CkCertU_putLastMethodSuccessW")
  Global CertMachineKeyset.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getMachineKeysetW")
  Global CertOcspUrl.cksPropGet = GetFunction(CkCertLibId,"CkCertU_ocspUrlW")
  Global CertPrivateKeyExportable.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getPrivateKeyExportableW")
  Global CertRevoked.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getRevokedW")
  Global CertRfc822Name.cksPropGet = GetFunction(CkCertLibId,"CkCertU_rfc822NameW")
  Global CertSelfSigned.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getSelfSignedW")
  Global CertSerialDecimal.cksPropGet = GetFunction(CkCertLibId,"CkCertU_serialDecimalW")
  Global CertSerialNumber.cksPropGet = GetFunction(CkCertLibId,"CkCertU_serialNumberW")
  Global CertSha1Thumbprint.cksPropGet = GetFunction(CkCertLibId,"CkCertU_sha1ThumbprintW")
  Global CertSignatureVerified.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getSignatureVerifiedW")
  Global CertSilent.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getSilentW")
  Global CertSmartCardNoDialog.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getSmartCardNoDialogW")
  Global CertPSetSmartCardNoDialog.cklPropSet = GetFunction(CkCertLibId,"CkCertU_putSmartCardNoDialogW")
  Global CertSmartCardPin.cksPropGet = GetFunction(CkCertLibId,"CkCertU_smartCardPinW")
  Global CertPSetSmartCardPin.cksPropSet = GetFunction(CkCertLibId,"CkCertU_putSmartCardPinW")
  Global CertSubjectAlternativeName.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectAlternativeNameW")
  Global CertSubjectC.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectCW")
  Global CertSubjectCN.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectCNW")
  Global CertSubjectDN.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectDNW")
  Global CertSubjectE.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectEW")
  Global CertSubjectKeyId.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectKeyIdW")
  Global CertSubjectL.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectLW")
  Global CertSubjectO.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectOW")
  Global CertSubjectOU.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectOUW")
  Global CertSubjectS.cksPropGet = GetFunction(CkCertLibId,"CkCertU_subjectSW")
  Global CertTrustedRoot.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getTrustedRootW")
  Global CertValidFromStr.cksPropGet = GetFunction(CkCertLibId,"CkCertU_validFromStrW")
  Global CertValidToStr.cksPropGet = GetFunction(CkCertLibId,"CkCertU_validToStrW")
  Global CertVerboseLogging.cklPropGet = GetFunction(CkCertLibId,"CkCertU_getVerboseLoggingW")
  Global CertPSetVerboseLogging.cklPropSet = GetFunction(CkCertLibId,"CkCertU_putVerboseLoggingW")
  Global CertVersion.cksPropGet = GetFunction(CkCertLibId,"CkCertU_versionW")
  Global CertCheckRevoked.cklM = GetFunction(CkCertLibId,"CkCertU_CheckRevokedW")
  Global CertCheckSmartCardPin.cklM = GetFunction(CkCertLibId,"CkCertU_CheckSmartCardPinW")
  Global CertExportCertDerBd.cklMi = GetFunction(CkCertLibId,"CkCertU_ExportCertDerBdW")
  Global CertExportCertDerFile.cklMs = GetFunction(CkCertLibId,"CkCertU_ExportCertDerFileW")
  Global CertExportCertPem.cklM = GetFunction(CkCertLibId,"CkCertU_exportCertPemW")
  Global CertExportCertPemFile.cklMs = GetFunction(CkCertLibId,"CkCertU_ExportCertPemFileW")
  Global CertExportCertXml.cklM = GetFunction(CkCertLibId,"CkCertU_exportCertXmlW")
  Global CertExportPrivateKey.ckiM = GetFunction(CkCertLibId,"CkCertU_ExportPrivateKeyW")
  Global CertExportPublicKey.ckiM = GetFunction(CkCertLibId,"CkCertU_ExportPublicKeyW")
  Global CertExportToPfxBd.cklMsli = GetFunction(CkCertLibId,"CkCertU_ExportToPfxBdW")
  Global CertExportToPfxFile.cklMssl = GetFunction(CkCertLibId,"CkCertU_ExportToPfxFileW")
  Global CertFindIssuer.ckiM = GetFunction(CkCertLibId,"CkCertU_FindIssuerW")
  Global CertGetCertChain.ckiM = GetFunction(CkCertLibId,"CkCertU_GetCertChainW")
  Global CertGetEncoded.cklM = GetFunction(CkCertLibId,"CkCertU_getEncodedW")
  Global CertGetExtensionAsXml.cklMs = GetFunction(CkCertLibId,"CkCertU_getExtensionAsXmlW")
  Global CertGetPrivateKeyPem.cklM = GetFunction(CkCertLibId,"CkCertU_getPrivateKeyPemW")
  Global CertGetSpkiFingerprint.cklMss = GetFunction(CkCertLibId,"CkCertU_getSpkiFingerprintW")
  Global CertGetSubjectPart.cklMs = GetFunction(CkCertLibId,"CkCertU_getSubjectPartW")
  Global CertGetValidFromDt.ckiM = GetFunction(CkCertLibId,"CkCertU_GetValidFromDtW")
  Global CertGetValidToDt.ckiM = GetFunction(CkCertLibId,"CkCertU_GetValidToDtW")
  Global CertHashOf.cklMsss = GetFunction(CkCertLibId,"CkCertU_hashOfW")
  Global CertHasPrivateKey.cklM = GetFunction(CkCertLibId,"CkCertU_HasPrivateKeyW")
  Global CertLoadByCommonName.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadByCommonNameW")
  Global CertLoadByEmailAddress.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadByEmailAddressW")
  Global CertLoadByIssuerAndSerialNumber.cklMss = GetFunction(CkCertLibId,"CkCertU_LoadByIssuerAndSerialNumberW")
  Global CertLoadBySubjectOid.cklMss = GetFunction(CkCertLibId,"CkCertU_LoadBySubjectOidW")
  Global CertLoadByThumbprint.cklMss = GetFunction(CkCertLibId,"CkCertU_LoadByThumbprintW")
  Global CertLoadFromBase64.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadFromBase64W")
  Global CertLoadFromBd.cklMi = GetFunction(CkCertLibId,"CkCertU_LoadFromBdW")
  Global CertLoadFromFile.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadFromFileW")
  Global CertLoadFromSmartcard.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadFromSmartcardW")
  Global CertLoadPem.cklMs = GetFunction(CkCertLibId,"CkCertU_LoadPemW")
  Global CertLoadPfxBd.cklMis = GetFunction(CkCertLibId,"CkCertU_LoadPfxBdW")
  Global CertLoadPfxFile.cklMss = GetFunction(CkCertLibId,"CkCertU_LoadPfxFileW")
  Global CertLoadTaskResult.cklMi = GetFunction(CkCertLibId,"CkCertU_LoadTaskResultW")
  Global CertPemFileToDerFile.cklMss = GetFunction(CkCertLibId,"CkCertU_PemFileToDerFileW")
  Global CertSaveLastError.cklMs = GetFunction(CkCertLibId,"CkCertU_SaveLastErrorW")
  Global CertSaveToFile.cklMs = GetFunction(CkCertLibId,"CkCertU_SaveToFileW")
  Global CertSetFromEncoded.cklMs = GetFunction(CkCertLibId,"CkCertU_SetFromEncodedW")
  Global CertSetPrivateKey.cklMi = GetFunction(CkCertLibId,"CkCertU_SetPrivateKeyW")
  Global CertSetPrivateKeyPem.cklMs = GetFunction(CkCertLibId,"CkCertU_SetPrivateKeyPemW")
  Global CertUseCertVault.cklMi = GetFunction(CkCertLibId,"CkCertU_UseCertVaultW")
  Global CertVerifySignature.cklM = GetFunction(CkCertLibId,"CkCertU_VerifySignatureW")
  Global CertX509PKIPathv1.cklM = GetFunction(CkCertLibId,"CkCertU_x509PKIPathv1W")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CertCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CertDispose(obj) : EndProcedure
  Procedure.s ckAuthorityKeyId(obj.i) : ProcedureReturn PeekS(CertAuthorityKeyId(obj)) : EndProcedure
  Procedure.l ckAvoidWindowsPkAccess(obj.i) : ProcedureReturn CertAvoidWindowsPkAccess(obj) : EndProcedure
  Procedure setCkAvoidWindowsPkAccess(obj.i, value.l) : ProcedureReturn CertPSetAvoidWindowsPkAccess(obj,value) : EndProcedure
  Procedure.l ckCertVersion(obj.i) : ProcedureReturn CertCertVersion(obj) : EndProcedure
  Procedure.s ckCspName(obj.i) : ProcedureReturn PeekS(CertCspName(obj)) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CertDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CertPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckExpired(obj.i) : ProcedureReturn CertExpired(obj) : EndProcedure
  Procedure.s ckExtendedKeyUsage(obj.i) : ProcedureReturn PeekS(CertExtendedKeyUsage(obj)) : EndProcedure
  Procedure.l ckForClientAuthentication(obj.i) : ProcedureReturn CertForClientAuthentication(obj) : EndProcedure
  Procedure.l ckForCodeSigning(obj.i) : ProcedureReturn CertForCodeSigning(obj) : EndProcedure
  Procedure.l ckForSecureEmail(obj.i) : ProcedureReturn CertForSecureEmail(obj) : EndProcedure
  Procedure.l ckForServerAuthentication(obj.i) : ProcedureReturn CertForServerAuthentication(obj) : EndProcedure
  Procedure.l ckForTimeStamping(obj.i) : ProcedureReturn CertForTimeStamping(obj) : EndProcedure
  Procedure.l ckHasKeyContainer(obj.i) : ProcedureReturn CertHasKeyContainer(obj) : EndProcedure
  Procedure.l ckIntendedKeyUsage(obj.i) : ProcedureReturn CertIntendedKeyUsage(obj) : EndProcedure
  Procedure.l ckIsRoot(obj.i) : ProcedureReturn CertIsRoot(obj) : EndProcedure
  Procedure.s ckIssuerC(obj.i) : ProcedureReturn PeekS(CertIssuerC(obj)) : EndProcedure
  Procedure.s ckIssuerCN(obj.i) : ProcedureReturn PeekS(CertIssuerCN(obj)) : EndProcedure
  Procedure.s ckIssuerDN(obj.i) : ProcedureReturn PeekS(CertIssuerDN(obj)) : EndProcedure
  Procedure.s ckIssuerE(obj.i) : ProcedureReturn PeekS(CertIssuerE(obj)) : EndProcedure
  Procedure.s ckIssuerL(obj.i) : ProcedureReturn PeekS(CertIssuerL(obj)) : EndProcedure
  Procedure.s ckIssuerO(obj.i) : ProcedureReturn PeekS(CertIssuerO(obj)) : EndProcedure
  Procedure.s ckIssuerOU(obj.i) : ProcedureReturn PeekS(CertIssuerOU(obj)) : EndProcedure
  Procedure.s ckIssuerS(obj.i) : ProcedureReturn PeekS(CertIssuerS(obj)) : EndProcedure
  Procedure.s ckKeyContainerName(obj.i) : ProcedureReturn PeekS(CertKeyContainerName(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CertLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CertLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CertLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CertLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CertPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMachineKeyset(obj.i) : ProcedureReturn CertMachineKeyset(obj) : EndProcedure
  Procedure.s ckOcspUrl(obj.i) : ProcedureReturn PeekS(CertOcspUrl(obj)) : EndProcedure
  Procedure.l ckPrivateKeyExportable(obj.i) : ProcedureReturn CertPrivateKeyExportable(obj) : EndProcedure
  Procedure.l ckRevoked(obj.i) : ProcedureReturn CertRevoked(obj) : EndProcedure
  Procedure.s ckRfc822Name(obj.i) : ProcedureReturn PeekS(CertRfc822Name(obj)) : EndProcedure
  Procedure.l ckSelfSigned(obj.i) : ProcedureReturn CertSelfSigned(obj) : EndProcedure
  Procedure.s ckSerialDecimal(obj.i) : ProcedureReturn PeekS(CertSerialDecimal(obj)) : EndProcedure
  Procedure.s ckSerialNumber(obj.i) : ProcedureReturn PeekS(CertSerialNumber(obj)) : EndProcedure
  Procedure.s ckSha1Thumbprint(obj.i) : ProcedureReturn PeekS(CertSha1Thumbprint(obj)) : EndProcedure
  Procedure.l ckSignatureVerified(obj.i) : ProcedureReturn CertSignatureVerified(obj) : EndProcedure
  Procedure.l ckSilent(obj.i) : ProcedureReturn CertSilent(obj) : EndProcedure
  Procedure.l ckSmartCardNoDialog(obj.i) : ProcedureReturn CertSmartCardNoDialog(obj) : EndProcedure
  Procedure setCkSmartCardNoDialog(obj.i, value.l) : ProcedureReturn CertPSetSmartCardNoDialog(obj,value) : EndProcedure
  Procedure.s ckSmartCardPin(obj.i) : ProcedureReturn PeekS(CertSmartCardPin(obj)) : EndProcedure
  Procedure setCkSmartCardPin(obj.i, value.s) : ProcedureReturn CertPSetSmartCardPin(obj,value) : EndProcedure
  Procedure.s ckSubjectAlternativeName(obj.i) : ProcedureReturn PeekS(CertSubjectAlternativeName(obj)) : EndProcedure
  Procedure.s ckSubjectC(obj.i) : ProcedureReturn PeekS(CertSubjectC(obj)) : EndProcedure
  Procedure.s ckSubjectCN(obj.i) : ProcedureReturn PeekS(CertSubjectCN(obj)) : EndProcedure
  Procedure.s ckSubjectDN(obj.i) : ProcedureReturn PeekS(CertSubjectDN(obj)) : EndProcedure
  Procedure.s ckSubjectE(obj.i) : ProcedureReturn PeekS(CertSubjectE(obj)) : EndProcedure
  Procedure.s ckSubjectKeyId(obj.i) : ProcedureReturn PeekS(CertSubjectKeyId(obj)) : EndProcedure
  Procedure.s ckSubjectL(obj.i) : ProcedureReturn PeekS(CertSubjectL(obj)) : EndProcedure
  Procedure.s ckSubjectO(obj.i) : ProcedureReturn PeekS(CertSubjectO(obj)) : EndProcedure
  Procedure.s ckSubjectOU(obj.i) : ProcedureReturn PeekS(CertSubjectOU(obj)) : EndProcedure
  Procedure.s ckSubjectS(obj.i) : ProcedureReturn PeekS(CertSubjectS(obj)) : EndProcedure
  Procedure.l ckTrustedRoot(obj.i) : ProcedureReturn CertTrustedRoot(obj) : EndProcedure
  Procedure.s ckValidFromStr(obj.i) : ProcedureReturn PeekS(CertValidFromStr(obj)) : EndProcedure
  Procedure.s ckValidToStr(obj.i) : ProcedureReturn PeekS(CertValidToStr(obj)) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CertVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CertPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CertVersion(obj)) : EndProcedure
  Procedure.l ckCheckRevoked(obj.i) :  ProcedureReturn CertCheckRevoked(obj) :  EndProcedure
  Procedure.l ckCheckSmartCardPin(obj.i) :  ProcedureReturn CertCheckSmartCardPin(obj) :  EndProcedure
  Procedure.l ckExportCertDerBd(obj.i, cerData.i) :  ProcedureReturn CertExportCertDerBd(obj, cerData) :  EndProcedure
  Procedure.l ckExportCertDerFile(obj.i, path.s) :  ProcedureReturn CertExportCertDerFile(obj, path) :  EndProcedure
  Procedure.s ckExportCertPem(obj.i) :  ProcedureReturn PeekS(CertExportCertPem(obj)) :  EndProcedure
  Procedure.l ckExportCertPemFile(obj.i, path.s) :  ProcedureReturn CertExportCertPemFile(obj, path) :  EndProcedure
  Procedure.s ckExportCertXml(obj.i) :  ProcedureReturn PeekS(CertExportCertXml(obj)) :  EndProcedure
  Procedure.i ckExportPrivateKey(obj.i) :  ProcedureReturn CertExportPrivateKey(obj) :  EndProcedure
  Procedure.i ckExportPublicKey(obj.i) :  ProcedureReturn CertExportPublicKey(obj) :  EndProcedure
  Procedure.l ckExportToPfxBd(obj.i, password.s, includeCertChain.l, pfxData.i) :  ProcedureReturn CertExportToPfxBd(obj, password, includeCertChain, pfxData) :  EndProcedure
  Procedure.l ckExportToPfxFile(obj.i, pfxFilename.s, pfxPassword.s, bIncludeCertChain.l) :  ProcedureReturn CertExportToPfxFile(obj, pfxFilename, pfxPassword, bIncludeCertChain) :  EndProcedure
  Procedure.i ckFindIssuer(obj.i) :  ProcedureReturn CertFindIssuer(obj) :  EndProcedure
  Procedure.i ckGetCertChain(obj.i) :  ProcedureReturn CertGetCertChain(obj) :  EndProcedure
  Procedure.s ckGetEncoded(obj.i) :  ProcedureReturn PeekS(CertGetEncoded(obj)) :  EndProcedure
  Procedure.s ckGetExtensionAsXml(obj.i, oid.s) :  ProcedureReturn PeekS(CertGetExtensionAsXml(obj, oid)) :  EndProcedure
  Procedure.s ckGetPrivateKeyPem(obj.i) :  ProcedureReturn PeekS(CertGetPrivateKeyPem(obj)) :  EndProcedure
  Procedure.s ckGetSpkiFingerprint(obj.i, hashAlg.s, encoding.s) :  ProcedureReturn PeekS(CertGetSpkiFingerprint(obj, hashAlg, encoding)) :  EndProcedure
  Procedure.s ckGetSubjectPart(obj.i, partNameOrOid.s) :  ProcedureReturn PeekS(CertGetSubjectPart(obj, partNameOrOid)) :  EndProcedure
  Procedure.i ckGetValidFromDt(obj.i) :  ProcedureReturn CertGetValidFromDt(obj) :  EndProcedure
  Procedure.i ckGetValidToDt(obj.i) :  ProcedureReturn CertGetValidToDt(obj) :  EndProcedure
  Procedure.s ckHashOf(obj.i, part.s, hashAlg.s, encoding.s) :  ProcedureReturn PeekS(CertHashOf(obj, part, hashAlg, encoding)) :  EndProcedure
  Procedure.l ckHasPrivateKey(obj.i) :  ProcedureReturn CertHasPrivateKey(obj) :  EndProcedure
  Procedure.l ckLoadByCommonName(obj.i, cn.s) :  ProcedureReturn CertLoadByCommonName(obj, cn) :  EndProcedure
  Procedure.l ckLoadByEmailAddress(obj.i, emailAddress.s) :  ProcedureReturn CertLoadByEmailAddress(obj, emailAddress) :  EndProcedure
  Procedure.l ckLoadByIssuerAndSerialNumber(obj.i, issuerCN.s, serialNumber.s) :  ProcedureReturn CertLoadByIssuerAndSerialNumber(obj, issuerCN, serialNumber) :  EndProcedure
  Procedure.l ckLoadBySubjectOid(obj.i, oid.s, value.s) :  ProcedureReturn CertLoadBySubjectOid(obj, oid, value) :  EndProcedure
  Procedure.l ckLoadByThumbprint(obj.i, thumbprint.s, encoding.s) :  ProcedureReturn CertLoadByThumbprint(obj, thumbprint, encoding) :  EndProcedure
  Procedure.l ckLoadFromBase64(obj.i, encodedCert.s) :  ProcedureReturn CertLoadFromBase64(obj, encodedCert) :  EndProcedure
  Procedure.l ckLoadFromBd(obj.i, certBytes.i) :  ProcedureReturn CertLoadFromBd(obj, certBytes) :  EndProcedure
  Procedure.l ckLoadFromFile(obj.i, path.s) :  ProcedureReturn CertLoadFromFile(obj, path) :  EndProcedure
  Procedure.l ckLoadFromSmartcard(obj.i, csp.s) :  ProcedureReturn CertLoadFromSmartcard(obj, csp) :  EndProcedure
  Procedure.l ckLoadPem(obj.i, strPem.s) :  ProcedureReturn CertLoadPem(obj, strPem) :  EndProcedure
  Procedure.l ckLoadPfxBd(obj.i, pfxData.i, password.s) :  ProcedureReturn CertLoadPfxBd(obj, pfxData, password) :  EndProcedure
  Procedure.l ckLoadPfxFile(obj.i, pfxPath.s, password.s) :  ProcedureReturn CertLoadPfxFile(obj, pfxPath, password) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn CertLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckPemFileToDerFile(obj.i, fromPath.s, toPath.s) :  ProcedureReturn CertPemFileToDerFile(obj, fromPath, toPath) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CertSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveToFile(obj.i, path.s) :  ProcedureReturn CertSaveToFile(obj, path) :  EndProcedure
  Procedure.l ckSetFromEncoded(obj.i, encodedCert.s) :  ProcedureReturn CertSetFromEncoded(obj, encodedCert) :  EndProcedure
  Procedure.l ckSetPrivateKey(obj.i, privKey.i) :  ProcedureReturn CertSetPrivateKey(obj, privKey) :  EndProcedure
  Procedure.l ckSetPrivateKeyPem(obj.i, privKeyPem.s) :  ProcedureReturn CertSetPrivateKeyPem(obj, privKeyPem) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn CertUseCertVault(obj, vault) :  EndProcedure
  Procedure.l ckVerifySignature(obj.i) :  ProcedureReturn CertVerifySignature(obj) :  EndProcedure
  Procedure.s ckX509PKIPathv1(obj.i) :  ProcedureReturn PeekS(CertX509PKIPathv1(obj)) :  EndProcedure
EndModule

