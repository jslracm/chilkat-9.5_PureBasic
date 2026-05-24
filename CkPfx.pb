DeclareModule CkPfx
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAlgorithmId(obj.i)
  Declare setCkAlgorithmId(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumCerts(obj.i)
  Declare.l ckNumPrivateKeys(obj.i)
  Declare.s ckPbes2CryptAlg(obj.i)
  Declare setCkPbes2CryptAlg(obj.i, value.s)
  Declare.s ckPbes2HmacAlg(obj.i)
  Declare setCkPbes2HmacAlg(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddCert(obj.i, cert.i, includeChain.l)
  Declare.l ckAddPrivateKey(obj.i, privKey.i, certChain.i)
  Declare.i ckFindCertByLocalKeyId(obj.i, localKeyId.s, encoding.s)
  Declare.i ckGetCert(obj.i, index.l)
  Declare.i ckGetPrivateKey(obj.i, index.l)
  Declare.s ckGetSafeBagAttr(obj.i, forPrivateKey.l, index.l, attrName.s)
  Declare.l ckImportToWindows(obj.i, exportable.l, userProtected.l, machineKeyset.l, allowOverwriteKey.l, allowExport.l, leafStore.s, intermediateStore.s, rootStore.s, extraOptions.s)
  Declare.i ckLastJsonData(obj.i)
  Declare.l ckLoadPem(obj.i, pemStr.s, password.s)
  Declare.l ckLoadPfxEncoded(obj.i, encodedData.s, encoding.s, password.s)
  Declare.l ckLoadPfxFile(obj.i, path.s, password.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetSafeBagAttr(obj.i, forPrivateKey.l, index.l, name.s, value.s, encoding.s)
  Declare.s ckToEncodedString(obj.i, password.s, encoding.s)
  Declare.l ckToFile(obj.i, password.s, path.s)
  Declare.i ckToJavaKeyStore(obj.i, alias.s, password.s)
  Declare.s ckToPem(obj.i)
  Declare.s ckToPemEx(obj.i, extendedAttrs.l, noKeys.l, noCerts.l, noCaCerts.l, encryptAlg.s, password.s)
  Declare.l ckUseCertVault(obj.i, vault.i)
EndDeclareModule

Module CkPfx
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMllllss(obj.i, arg1.l, arg2.l, arg3.l, arg4.l, arg5.s, arg6.s)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMllsss(obj.i, arg1.l, arg2.l, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMlllllssss(obj.i, arg1.l, arg2.l, arg3.l, arg4.l, arg5.l, arg6.s, arg7.s, arg8.s, arg9.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.i CkPfxCreate()
  PrototypeC CkPfxDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPfxLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPfxLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPfxLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPfxLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPfxLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PfxCreate.CkPfxCreate = GetFunction(CkPfxLibId,"CkPfxU_CreateW")
  Global PfxDispose.CkPfxDispose = GetFunction(CkPfxLibId,"CkPfxU_DisposeW")
  Global PfxAlgorithmId.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_algorithmIdW")
  Global PfxPSetAlgorithmId.cksPropSet = GetFunction(CkPfxLibId,"CkPfxU_putAlgorithmIdW")
  Global PfxDebugLogFilePath.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_debugLogFilePathW")
  Global PfxPSetDebugLogFilePath.cksPropSet = GetFunction(CkPfxLibId,"CkPfxU_putDebugLogFilePathW")
  Global PfxLastErrorHtml.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_lastErrorHtmlW")
  Global PfxLastErrorText.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_lastErrorTextW")
  Global PfxLastErrorXml.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_lastErrorXmlW")
  Global PfxLastMethodSuccess.cklPropGet = GetFunction(CkPfxLibId,"CkPfxU_getLastMethodSuccessW")
  Global PfxPSetLastMethodSuccess.cklPropSet = GetFunction(CkPfxLibId,"CkPfxU_putLastMethodSuccessW")
  Global PfxNumCerts.cklPropGet = GetFunction(CkPfxLibId,"CkPfxU_getNumCertsW")
  Global PfxNumPrivateKeys.cklPropGet = GetFunction(CkPfxLibId,"CkPfxU_getNumPrivateKeysW")
  Global PfxPbes2CryptAlg.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_pbes2CryptAlgW")
  Global PfxPSetPbes2CryptAlg.cksPropSet = GetFunction(CkPfxLibId,"CkPfxU_putPbes2CryptAlgW")
  Global PfxPbes2HmacAlg.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_pbes2HmacAlgW")
  Global PfxPSetPbes2HmacAlg.cksPropSet = GetFunction(CkPfxLibId,"CkPfxU_putPbes2HmacAlgW")
  Global PfxUncommonOptions.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_uncommonOptionsW")
  Global PfxPSetUncommonOptions.cksPropSet = GetFunction(CkPfxLibId,"CkPfxU_putUncommonOptionsW")
  Global PfxVerboseLogging.cklPropGet = GetFunction(CkPfxLibId,"CkPfxU_getVerboseLoggingW")
  Global PfxPSetVerboseLogging.cklPropSet = GetFunction(CkPfxLibId,"CkPfxU_putVerboseLoggingW")
  Global PfxVersion.cksPropGet = GetFunction(CkPfxLibId,"CkPfxU_versionW")
  Global PfxAddCert.cklMil = GetFunction(CkPfxLibId,"CkPfxU_AddCertW")
  Global PfxAddPrivateKey.cklMii = GetFunction(CkPfxLibId,"CkPfxU_AddPrivateKeyW")
  Global PfxFindCertByLocalKeyId.ckiMss = GetFunction(CkPfxLibId,"CkPfxU_FindCertByLocalKeyIdW")
  Global PfxGetCert.ckiMl = GetFunction(CkPfxLibId,"CkPfxU_GetCertW")
  Global PfxGetPrivateKey.ckiMl = GetFunction(CkPfxLibId,"CkPfxU_GetPrivateKeyW")
  Global PfxGetSafeBagAttr.cklMlls = GetFunction(CkPfxLibId,"CkPfxU_getSafeBagAttrW")
  Global PfxImportToWindows.cklMlllllssss = GetFunction(CkPfxLibId,"CkPfxU_ImportToWindowsW")
  Global PfxLastJsonData.ckiM = GetFunction(CkPfxLibId,"CkPfxU_LastJsonDataW")
  Global PfxLoadPem.cklMss = GetFunction(CkPfxLibId,"CkPfxU_LoadPemW")
  Global PfxLoadPfxEncoded.cklMsss = GetFunction(CkPfxLibId,"CkPfxU_LoadPfxEncodedW")
  Global PfxLoadPfxFile.cklMss = GetFunction(CkPfxLibId,"CkPfxU_LoadPfxFileW")
  Global PfxSaveLastError.cklMs = GetFunction(CkPfxLibId,"CkPfxU_SaveLastErrorW")
  Global PfxSetSafeBagAttr.cklMllsss = GetFunction(CkPfxLibId,"CkPfxU_SetSafeBagAttrW")
  Global PfxToEncodedString.cklMss = GetFunction(CkPfxLibId,"CkPfxU_toEncodedStringW")
  Global PfxToFile.cklMss = GetFunction(CkPfxLibId,"CkPfxU_ToFileW")
  Global PfxToJavaKeyStore.ckiMss = GetFunction(CkPfxLibId,"CkPfxU_ToJavaKeyStoreW")
  Global PfxToPem.cklM = GetFunction(CkPfxLibId,"CkPfxU_toPemW")
  Global PfxToPemEx.cklMllllss = GetFunction(CkPfxLibId,"CkPfxU_toPemExW")
  Global PfxUseCertVault.cklMi = GetFunction(CkPfxLibId,"CkPfxU_UseCertVaultW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PfxCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PfxDispose(obj) : EndProcedure
  Procedure.s ckAlgorithmId(obj.i) : ProcedureReturn PeekS(PfxAlgorithmId(obj)) : EndProcedure
  Procedure setCkAlgorithmId(obj.i, value.s) : ProcedureReturn PfxPSetAlgorithmId(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PfxDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PfxPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PfxLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PfxLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PfxLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PfxLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PfxPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCerts(obj.i) : ProcedureReturn PfxNumCerts(obj) : EndProcedure
  Procedure.l ckNumPrivateKeys(obj.i) : ProcedureReturn PfxNumPrivateKeys(obj) : EndProcedure
  Procedure.s ckPbes2CryptAlg(obj.i) : ProcedureReturn PeekS(PfxPbes2CryptAlg(obj)) : EndProcedure
  Procedure setCkPbes2CryptAlg(obj.i, value.s) : ProcedureReturn PfxPSetPbes2CryptAlg(obj,value) : EndProcedure
  Procedure.s ckPbes2HmacAlg(obj.i) : ProcedureReturn PeekS(PfxPbes2HmacAlg(obj)) : EndProcedure
  Procedure setCkPbes2HmacAlg(obj.i, value.s) : ProcedureReturn PfxPSetPbes2HmacAlg(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(PfxUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn PfxPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PfxVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PfxPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PfxVersion(obj)) : EndProcedure
  Procedure.l ckAddCert(obj.i, cert.i, includeChain.l) :  ProcedureReturn PfxAddCert(obj, cert, includeChain) :  EndProcedure
  Procedure.l ckAddPrivateKey(obj.i, privKey.i, certChain.i) :  ProcedureReturn PfxAddPrivateKey(obj, privKey, certChain) :  EndProcedure
  Procedure.i ckFindCertByLocalKeyId(obj.i, localKeyId.s, encoding.s) :  ProcedureReturn PfxFindCertByLocalKeyId(obj, localKeyId, encoding) :  EndProcedure
  Procedure.i ckGetCert(obj.i, index.l) :  ProcedureReturn PfxGetCert(obj, index) :  EndProcedure
  Procedure.i ckGetPrivateKey(obj.i, index.l) :  ProcedureReturn PfxGetPrivateKey(obj, index) :  EndProcedure
  Procedure.s ckGetSafeBagAttr(obj.i, forPrivateKey.l, index.l, attrName.s) :  ProcedureReturn PeekS(PfxGetSafeBagAttr(obj, forPrivateKey, index, attrName)) :  EndProcedure
  Procedure.l ckImportToWindows(obj.i, exportable.l, userProtected.l, machineKeyset.l, allowOverwriteKey.l, allowExport.l, leafStore.s, intermediateStore.s, rootStore.s, extraOptions.s) :  ProcedureReturn PfxImportToWindows(obj, exportable, userProtected, machineKeyset, allowOverwriteKey, allowExport, leafStore, intermediateStore, rootStore, extraOptions) :  EndProcedure
  Procedure.i ckLastJsonData(obj.i) :  ProcedureReturn PfxLastJsonData(obj) :  EndProcedure
  Procedure.l ckLoadPem(obj.i, pemStr.s, password.s) :  ProcedureReturn PfxLoadPem(obj, pemStr, password) :  EndProcedure
  Procedure.l ckLoadPfxEncoded(obj.i, encodedData.s, encoding.s, password.s) :  ProcedureReturn PfxLoadPfxEncoded(obj, encodedData, encoding, password) :  EndProcedure
  Procedure.l ckLoadPfxFile(obj.i, path.s, password.s) :  ProcedureReturn PfxLoadPfxFile(obj, path, password) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PfxSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetSafeBagAttr(obj.i, forPrivateKey.l, index.l, name.s, value.s, encoding.s) :  ProcedureReturn PfxSetSafeBagAttr(obj, forPrivateKey, index, name, value, encoding) :  EndProcedure
  Procedure.s ckToEncodedString(obj.i, password.s, encoding.s) :  ProcedureReturn PeekS(PfxToEncodedString(obj, password, encoding)) :  EndProcedure
  Procedure.l ckToFile(obj.i, password.s, path.s) :  ProcedureReturn PfxToFile(obj, password, path) :  EndProcedure
  Procedure.i ckToJavaKeyStore(obj.i, alias.s, password.s) :  ProcedureReturn PfxToJavaKeyStore(obj, alias, password) :  EndProcedure
  Procedure.s ckToPem(obj.i) :  ProcedureReturn PeekS(PfxToPem(obj)) :  EndProcedure
  Procedure.s ckToPemEx(obj.i, extendedAttrs.l, noKeys.l, noCerts.l, noCaCerts.l, encryptAlg.s, password.s) :  ProcedureReturn PeekS(PfxToPemEx(obj, extendedAttrs, noKeys, noCerts, noCaCerts, encryptAlg, password)) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, vault.i) :  ProcedureReturn PfxUseCertVault(obj, vault) :  EndProcedure
EndModule

