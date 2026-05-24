DeclareModule CkJavaKeyStore
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumPrivateKeys(obj.i)
  Declare.l ckNumSecretKeys(obj.i)
  Declare.l ckNumTrustedCerts(obj.i)
  Declare.l ckRequireCompleteChain(obj.i)
  Declare setCkRequireCompleteChain(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.l ckVerifyKeyedDigest(obj.i)
  Declare setCkVerifyKeyedDigest(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddPfx(obj.i, pfx.i, alias.s, password.s)
  Declare.l ckAddPrivateKey(obj.i, cert.i, alias.s, password.s)
  Declare.l ckAddSecretKey(obj.i, encodedKeyBytes.s, encoding.s, algorithm.s, alias.s, password.s)
  Declare.l ckAddTrustedCert(obj.i, cert.i, alias.s)
  Declare.l ckChangePassword(obj.i, index.l, oldPassword.s, newPassword.s)
  Declare.i ckFindCertChain(obj.i, alias.s, caseSensitive.l)
  Declare.i ckFindPrivateKey(obj.i, password.s, alias.s, caseSensitive.l)
  Declare.i ckFindTrustedCert(obj.i, alias.s, caseSensitive.l)
  Declare.i ckGetCertChain(obj.i, index.l)
  Declare.i ckGetPrivateKey(obj.i, password.s, index.l)
  Declare.s ckGetPrivateKeyAlias(obj.i, index.l)
  Declare.s ckGetSecretKey(obj.i, password.s, index.l, encoding.s)
  Declare.s ckGetSecretKeyAlias(obj.i, index.l)
  Declare.i ckGetTrustedCert(obj.i, index.l)
  Declare.s ckGetTrustedCertAlias(obj.i, index.l)
  Declare.l ckLoadBd(obj.i, password.s, bd.i)
  Declare.l ckLoadEncoded(obj.i, password.s, jksEncData.s, encoding.s)
  Declare.l ckLoadFile(obj.i, password.s, path.s)
  Declare.l ckLoadJwkSet(obj.i, password.s, jwkSet.i)
  Declare.l ckRemoveEntry(obj.i, entryType.l, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetAlias(obj.i, entryType.l, index.l, alias.s)
  Declare.s ckToEncodedString(obj.i, password.s, encoding.s)
  Declare.l ckToFile(obj.i, password.s, path.s)
  Declare.l ckToJwkSet(obj.i, password.s, sbJwkSet.i)
  Declare.i ckToPem(obj.i, password.s)
  Declare.i ckToPfx(obj.i, password.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
EndDeclareModule

Module CkJavaKeyStore
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMiss(obj.i, arg1.i, arg2.s, arg3.s)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkJavaKeyStoreCreate()
  PrototypeC CkJavaKeyStoreDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJavaKeyStoreLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJavaKeyStoreLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJavaKeyStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJavaKeyStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJavaKeyStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JavaKeyStoreCreate.CkJavaKeyStoreCreate = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_CreateW")
  Global JavaKeyStoreDispose.CkJavaKeyStoreDispose = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_DisposeW")
  Global JavaKeyStoreDebugLogFilePath.cksPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_debugLogFilePathW")
  Global JavaKeyStorePSetDebugLogFilePath.cksPropSet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_putDebugLogFilePathW")
  Global JavaKeyStoreLastErrorHtml.cksPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_lastErrorHtmlW")
  Global JavaKeyStoreLastErrorText.cksPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_lastErrorTextW")
  Global JavaKeyStoreLastErrorXml.cksPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_lastErrorXmlW")
  Global JavaKeyStoreLastMethodSuccess.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getLastMethodSuccessW")
  Global JavaKeyStorePSetLastMethodSuccess.cklPropSet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_putLastMethodSuccessW")
  Global JavaKeyStoreNumPrivateKeys.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getNumPrivateKeysW")
  Global JavaKeyStoreNumSecretKeys.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getNumSecretKeysW")
  Global JavaKeyStoreNumTrustedCerts.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getNumTrustedCertsW")
  Global JavaKeyStoreRequireCompleteChain.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getRequireCompleteChainW")
  Global JavaKeyStorePSetRequireCompleteChain.cklPropSet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_putRequireCompleteChainW")
  Global JavaKeyStoreVerboseLogging.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getVerboseLoggingW")
  Global JavaKeyStorePSetVerboseLogging.cklPropSet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_putVerboseLoggingW")
  Global JavaKeyStoreVerifyKeyedDigest.cklPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getVerifyKeyedDigestW")
  Global JavaKeyStorePSetVerifyKeyedDigest.cklPropSet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_putVerifyKeyedDigestW")
  Global JavaKeyStoreVersion.cksPropGet = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_versionW")
  Global JavaKeyStoreAddPfx.cklMiss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_AddPfxW")
  Global JavaKeyStoreAddPrivateKey.cklMiss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_AddPrivateKeyW")
  Global JavaKeyStoreAddSecretKey.cklMsssss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_AddSecretKeyW")
  Global JavaKeyStoreAddTrustedCert.cklMis = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_AddTrustedCertW")
  Global JavaKeyStoreChangePassword.cklMlss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_ChangePasswordW")
  Global JavaKeyStoreFindCertChain.ckiMsl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_FindCertChainW")
  Global JavaKeyStoreFindPrivateKey.ckiMssl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_FindPrivateKeyW")
  Global JavaKeyStoreFindTrustedCert.ckiMsl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_FindTrustedCertW")
  Global JavaKeyStoreGetCertChain.ckiMl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_GetCertChainW")
  Global JavaKeyStoreGetPrivateKey.ckiMsl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_GetPrivateKeyW")
  Global JavaKeyStoreGetPrivateKeyAlias.cklMl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getPrivateKeyAliasW")
  Global JavaKeyStoreGetSecretKey.cklMsls = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getSecretKeyW")
  Global JavaKeyStoreGetSecretKeyAlias.cklMl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getSecretKeyAliasW")
  Global JavaKeyStoreGetTrustedCert.ckiMl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_GetTrustedCertW")
  Global JavaKeyStoreGetTrustedCertAlias.cklMl = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_getTrustedCertAliasW")
  Global JavaKeyStoreLoadBd.cklMsi = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_LoadBdW")
  Global JavaKeyStoreLoadEncoded.cklMsss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_LoadEncodedW")
  Global JavaKeyStoreLoadFile.cklMss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_LoadFileW")
  Global JavaKeyStoreLoadJwkSet.cklMsi = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_LoadJwkSetW")
  Global JavaKeyStoreRemoveEntry.cklMll = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_RemoveEntryW")
  Global JavaKeyStoreSaveLastError.cklMs = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_SaveLastErrorW")
  Global JavaKeyStoreSetAlias.cklMlls = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_SetAliasW")
  Global JavaKeyStoreToEncodedString.cklMss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_toEncodedStringW")
  Global JavaKeyStoreToFile.cklMss = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_ToFileW")
  Global JavaKeyStoreToJwkSet.cklMsi = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_ToJwkSetW")
  Global JavaKeyStoreToPem.ckiMs = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_ToPemW")
  Global JavaKeyStoreToPfx.ckiMs = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_ToPfxW")
  Global JavaKeyStoreUnlockComponent.cklMs = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_UnlockComponentW")
  Global JavaKeyStoreUseCertVault.cklMi = GetFunction(CkJavaKeyStoreLibId,"CkJavaKeyStoreU_UseCertVaultW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JavaKeyStoreCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JavaKeyStoreDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JavaKeyStoreDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JavaKeyStorePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JavaKeyStoreLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JavaKeyStoreLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JavaKeyStoreLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JavaKeyStoreLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JavaKeyStorePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumPrivateKeys(obj.i) : ProcedureReturn JavaKeyStoreNumPrivateKeys(obj) : EndProcedure
  Procedure.l ckNumSecretKeys(obj.i) : ProcedureReturn JavaKeyStoreNumSecretKeys(obj) : EndProcedure
  Procedure.l ckNumTrustedCerts(obj.i) : ProcedureReturn JavaKeyStoreNumTrustedCerts(obj) : EndProcedure
  Procedure.l ckRequireCompleteChain(obj.i) : ProcedureReturn JavaKeyStoreRequireCompleteChain(obj) : EndProcedure
  Procedure setCkRequireCompleteChain(obj.i, value.l) : ProcedureReturn JavaKeyStorePSetRequireCompleteChain(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JavaKeyStoreVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JavaKeyStorePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.l ckVerifyKeyedDigest(obj.i) : ProcedureReturn JavaKeyStoreVerifyKeyedDigest(obj) : EndProcedure
  Procedure setCkVerifyKeyedDigest(obj.i, value.l) : ProcedureReturn JavaKeyStorePSetVerifyKeyedDigest(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JavaKeyStoreVersion(obj)) : EndProcedure
  Procedure.l ckAddPfx(obj.i, pfx.i, alias.s, password.s) :  ProcedureReturn JavaKeyStoreAddPfx(obj, pfx, alias, password) :  EndProcedure
  Procedure.l ckAddPrivateKey(obj.i, cert.i, alias.s, password.s) :  ProcedureReturn JavaKeyStoreAddPrivateKey(obj, cert, alias, password) :  EndProcedure
  Procedure.l ckAddSecretKey(obj.i, encodedKeyBytes.s, encoding.s, algorithm.s, alias.s, password.s) :  ProcedureReturn JavaKeyStoreAddSecretKey(obj, encodedKeyBytes, encoding, algorithm, alias, password) :  EndProcedure
  Procedure.l ckAddTrustedCert(obj.i, cert.i, alias.s) :  ProcedureReturn JavaKeyStoreAddTrustedCert(obj, cert, alias) :  EndProcedure
  Procedure.l ckChangePassword(obj.i, index.l, oldPassword.s, newPassword.s) :  ProcedureReturn JavaKeyStoreChangePassword(obj, index, oldPassword, newPassword) :  EndProcedure
  Procedure.i ckFindCertChain(obj.i, alias.s, caseSensitive.l) :  ProcedureReturn JavaKeyStoreFindCertChain(obj, alias, caseSensitive) :  EndProcedure
  Procedure.i ckFindPrivateKey(obj.i, password.s, alias.s, caseSensitive.l) :  ProcedureReturn JavaKeyStoreFindPrivateKey(obj, password, alias, caseSensitive) :  EndProcedure
  Procedure.i ckFindTrustedCert(obj.i, alias.s, caseSensitive.l) :  ProcedureReturn JavaKeyStoreFindTrustedCert(obj, alias, caseSensitive) :  EndProcedure
  Procedure.i ckGetCertChain(obj.i, index.l) :  ProcedureReturn JavaKeyStoreGetCertChain(obj, index) :  EndProcedure
  Procedure.i ckGetPrivateKey(obj.i, password.s, index.l) :  ProcedureReturn JavaKeyStoreGetPrivateKey(obj, password, index) :  EndProcedure
  Procedure.s ckGetPrivateKeyAlias(obj.i, index.l) :  ProcedureReturn PeekS(JavaKeyStoreGetPrivateKeyAlias(obj, index)) :  EndProcedure
  Procedure.s ckGetSecretKey(obj.i, password.s, index.l, encoding.s) :  ProcedureReturn PeekS(JavaKeyStoreGetSecretKey(obj, password, index, encoding)) :  EndProcedure
  Procedure.s ckGetSecretKeyAlias(obj.i, index.l) :  ProcedureReturn PeekS(JavaKeyStoreGetSecretKeyAlias(obj, index)) :  EndProcedure
  Procedure.i ckGetTrustedCert(obj.i, index.l) :  ProcedureReturn JavaKeyStoreGetTrustedCert(obj, index) :  EndProcedure
  Procedure.s ckGetTrustedCertAlias(obj.i, index.l) :  ProcedureReturn PeekS(JavaKeyStoreGetTrustedCertAlias(obj, index)) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, password.s, bd.i) :  ProcedureReturn JavaKeyStoreLoadBd(obj, password, bd) :  EndProcedure
  Procedure.l ckLoadEncoded(obj.i, password.s, jksEncData.s, encoding.s) :  ProcedureReturn JavaKeyStoreLoadEncoded(obj, password, jksEncData, encoding) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, password.s, path.s) :  ProcedureReturn JavaKeyStoreLoadFile(obj, password, path) :  EndProcedure
  Procedure.l ckLoadJwkSet(obj.i, password.s, jwkSet.i) :  ProcedureReturn JavaKeyStoreLoadJwkSet(obj, password, jwkSet) :  EndProcedure
  Procedure.l ckRemoveEntry(obj.i, entryType.l, index.l) :  ProcedureReturn JavaKeyStoreRemoveEntry(obj, entryType, index) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JavaKeyStoreSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetAlias(obj.i, entryType.l, index.l, alias.s) :  ProcedureReturn JavaKeyStoreSetAlias(obj, entryType, index, alias) :  EndProcedure
  Procedure.s ckToEncodedString(obj.i, password.s, encoding.s) :  ProcedureReturn PeekS(JavaKeyStoreToEncodedString(obj, password, encoding)) :  EndProcedure
  Procedure.l ckToFile(obj.i, password.s, path.s) :  ProcedureReturn JavaKeyStoreToFile(obj, password, path) :  EndProcedure
  Procedure.l ckToJwkSet(obj.i, password.s, sbJwkSet.i) :  ProcedureReturn JavaKeyStoreToJwkSet(obj, password, sbJwkSet) :  EndProcedure
  Procedure.i ckToPem(obj.i, password.s) :  ProcedureReturn JavaKeyStoreToPem(obj, password) :  EndProcedure
  Procedure.i ckToPfx(obj.i, password.s) :  ProcedureReturn JavaKeyStoreToPfx(obj, password) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn JavaKeyStoreUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn JavaKeyStoreUseCertVault(obj, vault) :  EndProcedure
EndModule

