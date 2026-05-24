DeclareModule CkPem
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAppendMode(obj.i)
  Declare setCkAppendMode(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumCerts(obj.i)
  Declare.l ckNumCrls(obj.i)
  Declare.l ckNumCsrs(obj.i)
  Declare.l ckNumPrivateKeys(obj.i)
  Declare.l ckNumPublicKeys(obj.i)
  Declare.s ckPrivateKeyFormat(obj.i)
  Declare setCkPrivateKeyFormat(obj.i, value.s)
  Declare.s ckPublicKeyFormat(obj.i)
  Declare setCkPublicKeyFormat(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddCert(obj.i, cert.i, includeChain.l)
  Declare.l ckAddItem(obj.i, itemType.s, encoding.s, itemData.s)
  Declare.l ckAddPrivateKey(obj.i, privateKey.i)
  Declare.l ckAddPrivateKey2(obj.i, privKey.i, certChain.i)
  Declare.l ckAddPublicKey(obj.i, pubkey.i)
  Declare.l ckClear(obj.i)
  Declare.i ckGetCert(obj.i, index.l)
  Declare.s ckGetEncodedItem(obj.i, itemType.s, itemSubType.s, encoding.s, index.l)
  Declare.i ckGetPrivateKey(obj.i, index.l)
  Declare.i ckGetPublicKey(obj.i, index.l)
  Declare.l ckLoadP7bFile(obj.i, path.s)
  Declare.i ckLoadP7bFileAsync(obj.i, path.s)
  Declare.l ckLoadPem(obj.i, pemContent.s, password.s)
  Declare.i ckLoadPemAsync(obj.i, pemContent.s, password.s)
  Declare.l ckLoadPemFile(obj.i, path.s, password.s)
  Declare.i ckLoadPemFileAsync(obj.i, path.s, password.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckRemoveCert(obj.i, index.l)
  Declare.l ckRemovePrivateKey(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.i ckToJks(obj.i, alias.s, password.s)
  Declare.s ckToPem(obj.i)
  Declare.s ckToPemEx(obj.i, extendedAttrs.l, noKeys.l, noCerts.l, noCaCerts.l, encryptAlg.s, password.s)
  Declare.i ckToPfx(obj.i)
EndDeclareModule

Module CkPem
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMllllss(obj.i, arg1.l, arg2.l, arg3.l, arg4.l, arg5.s, arg6.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC.i CkPemCreate()
  PrototypeC CkPemDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPemLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPemLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPemLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPemLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPemLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PemCreate.CkPemCreate = GetFunction(CkPemLibId,"CkPemU_CreateW")
  Global PemDispose.CkPemDispose = GetFunction(CkPemLibId,"CkPemU_DisposeW")
  Global PemAppendMode.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getAppendModeW")
  Global PemPSetAppendMode.cklPropSet = GetFunction(CkPemLibId,"CkPemU_putAppendModeW")
  Global PemDebugLogFilePath.cksPropGet = GetFunction(CkPemLibId,"CkPemU_debugLogFilePathW")
  Global PemPSetDebugLogFilePath.cksPropSet = GetFunction(CkPemLibId,"CkPemU_putDebugLogFilePathW")
  Global PemHeartbeatMs.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getHeartbeatMsW")
  Global PemPSetHeartbeatMs.cklPropSet = GetFunction(CkPemLibId,"CkPemU_putHeartbeatMsW")
  Global PemLastErrorHtml.cksPropGet = GetFunction(CkPemLibId,"CkPemU_lastErrorHtmlW")
  Global PemLastErrorText.cksPropGet = GetFunction(CkPemLibId,"CkPemU_lastErrorTextW")
  Global PemLastErrorXml.cksPropGet = GetFunction(CkPemLibId,"CkPemU_lastErrorXmlW")
  Global PemLastMethodSuccess.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getLastMethodSuccessW")
  Global PemPSetLastMethodSuccess.cklPropSet = GetFunction(CkPemLibId,"CkPemU_putLastMethodSuccessW")
  Global PemNumCerts.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getNumCertsW")
  Global PemNumCrls.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getNumCrlsW")
  Global PemNumCsrs.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getNumCsrsW")
  Global PemNumPrivateKeys.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getNumPrivateKeysW")
  Global PemNumPublicKeys.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getNumPublicKeysW")
  Global PemPrivateKeyFormat.cksPropGet = GetFunction(CkPemLibId,"CkPemU_privateKeyFormatW")
  Global PemPSetPrivateKeyFormat.cksPropSet = GetFunction(CkPemLibId,"CkPemU_putPrivateKeyFormatW")
  Global PemPublicKeyFormat.cksPropGet = GetFunction(CkPemLibId,"CkPemU_publicKeyFormatW")
  Global PemPSetPublicKeyFormat.cksPropSet = GetFunction(CkPemLibId,"CkPemU_putPublicKeyFormatW")
  Global PemVerboseLogging.cklPropGet = GetFunction(CkPemLibId,"CkPemU_getVerboseLoggingW")
  Global PemPSetVerboseLogging.cklPropSet = GetFunction(CkPemLibId,"CkPemU_putVerboseLoggingW")
  Global PemVersion.cksPropGet = GetFunction(CkPemLibId,"CkPemU_versionW")
  Global PemAddCert.cklMil = GetFunction(CkPemLibId,"CkPemU_AddCertW")
  Global PemAddItem.cklMsss = GetFunction(CkPemLibId,"CkPemU_AddItemW")
  Global PemAddPrivateKey.cklMi = GetFunction(CkPemLibId,"CkPemU_AddPrivateKeyW")
  Global PemAddPrivateKey2.cklMii = GetFunction(CkPemLibId,"CkPemU_AddPrivateKey2W")
  Global PemAddPublicKey.cklMi = GetFunction(CkPemLibId,"CkPemU_AddPublicKeyW")
  Global PemClear.cklM = GetFunction(CkPemLibId,"CkPemU_ClearW")
  Global PemGetCert.ckiMl = GetFunction(CkPemLibId,"CkPemU_GetCertW")
  Global PemGetEncodedItem.cklMsssl = GetFunction(CkPemLibId,"CkPemU_getEncodedItemW")
  Global PemGetPrivateKey.ckiMl = GetFunction(CkPemLibId,"CkPemU_GetPrivateKeyW")
  Global PemGetPublicKey.ckiMl = GetFunction(CkPemLibId,"CkPemU_GetPublicKeyW")
  Global PemLoadP7bFile.cklMs = GetFunction(CkPemLibId,"CkPemU_LoadP7bFileW")
  Global PemLoadP7bFileAsync.ckiMs = GetFunction(CkPemLibId,"CkPemU_LoadP7bFileAsyncW")
  Global PemLoadPem.cklMss = GetFunction(CkPemLibId,"CkPemU_LoadPemW")
  Global PemLoadPemAsync.ckiMss = GetFunction(CkPemLibId,"CkPemU_LoadPemAsyncW")
  Global PemLoadPemFile.cklMss = GetFunction(CkPemLibId,"CkPemU_LoadPemFileW")
  Global PemLoadPemFileAsync.ckiMss = GetFunction(CkPemLibId,"CkPemU_LoadPemFileAsyncW")
  Global PemLoadTaskCaller.cklMi = GetFunction(CkPemLibId,"CkPemU_LoadTaskCallerW")
  Global PemRemoveCert.cklMl = GetFunction(CkPemLibId,"CkPemU_RemoveCertW")
  Global PemRemovePrivateKey.cklMl = GetFunction(CkPemLibId,"CkPemU_RemovePrivateKeyW")
  Global PemSaveLastError.cklMs = GetFunction(CkPemLibId,"CkPemU_SaveLastErrorW")
  Global PemToJks.ckiMss = GetFunction(CkPemLibId,"CkPemU_ToJksW")
  Global PemToPem.cklM = GetFunction(CkPemLibId,"CkPemU_toPemW")
  Global PemToPemEx.cklMllllss = GetFunction(CkPemLibId,"CkPemU_toPemExW")
  Global PemToPfx.ckiM = GetFunction(CkPemLibId,"CkPemU_ToPfxW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PemCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PemDispose(obj) : EndProcedure
  Procedure.l ckAppendMode(obj.i) : ProcedureReturn PemAppendMode(obj) : EndProcedure
  Procedure setCkAppendMode(obj.i, value.l) : ProcedureReturn PemPSetAppendMode(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PemDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PemPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn PemHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn PemPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PemLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PemLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PemLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PemLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PemPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCerts(obj.i) : ProcedureReturn PemNumCerts(obj) : EndProcedure
  Procedure.l ckNumCrls(obj.i) : ProcedureReturn PemNumCrls(obj) : EndProcedure
  Procedure.l ckNumCsrs(obj.i) : ProcedureReturn PemNumCsrs(obj) : EndProcedure
  Procedure.l ckNumPrivateKeys(obj.i) : ProcedureReturn PemNumPrivateKeys(obj) : EndProcedure
  Procedure.l ckNumPublicKeys(obj.i) : ProcedureReturn PemNumPublicKeys(obj) : EndProcedure
  Procedure.s ckPrivateKeyFormat(obj.i) : ProcedureReturn PeekS(PemPrivateKeyFormat(obj)) : EndProcedure
  Procedure setCkPrivateKeyFormat(obj.i, value.s) : ProcedureReturn PemPSetPrivateKeyFormat(obj,value) : EndProcedure
  Procedure.s ckPublicKeyFormat(obj.i) : ProcedureReturn PeekS(PemPublicKeyFormat(obj)) : EndProcedure
  Procedure setCkPublicKeyFormat(obj.i, value.s) : ProcedureReturn PemPSetPublicKeyFormat(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PemVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PemPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PemVersion(obj)) : EndProcedure
  Procedure.l ckAddCert(obj.i, cert.i, includeChain.l) :  ProcedureReturn PemAddCert(obj, cert, includeChain) :  EndProcedure
  Procedure.l ckAddItem(obj.i, itemType.s, encoding.s, itemData.s) :  ProcedureReturn PemAddItem(obj, itemType, encoding, itemData) :  EndProcedure
  Procedure.l ckAddPrivateKey(obj.i, privateKey.i) :  ProcedureReturn PemAddPrivateKey(obj, privateKey) :  EndProcedure
  Procedure.l ckAddPrivateKey2(obj.i, privKey.i, certChain.i) :  ProcedureReturn PemAddPrivateKey2(obj, privKey, certChain) :  EndProcedure
  Procedure.l ckAddPublicKey(obj.i, pubkey.i) :  ProcedureReturn PemAddPublicKey(obj, pubkey) :  EndProcedure
  Procedure.l ckClear(obj.i) :  ProcedureReturn PemClear(obj) :  EndProcedure
  Procedure.i ckGetCert(obj.i, index.l) :  ProcedureReturn PemGetCert(obj, index) :  EndProcedure
  Procedure.s ckGetEncodedItem(obj.i, itemType.s, itemSubType.s, encoding.s, index.l) :  ProcedureReturn PeekS(PemGetEncodedItem(obj, itemType, itemSubType, encoding, index)) :  EndProcedure
  Procedure.i ckGetPrivateKey(obj.i, index.l) :  ProcedureReturn PemGetPrivateKey(obj, index) :  EndProcedure
  Procedure.i ckGetPublicKey(obj.i, index.l) :  ProcedureReturn PemGetPublicKey(obj, index) :  EndProcedure
  Procedure.l ckLoadP7bFile(obj.i, path.s) :  ProcedureReturn PemLoadP7bFile(obj, path) :  EndProcedure
  Procedure.i ckLoadP7bFileAsync(obj.i, path.s) :  ProcedureReturn PemLoadP7bFileAsync(obj, path) :  EndProcedure
  Procedure.l ckLoadPem(obj.i, pemContent.s, password.s) :  ProcedureReturn PemLoadPem(obj, pemContent, password) :  EndProcedure
  Procedure.i ckLoadPemAsync(obj.i, pemContent.s, password.s) :  ProcedureReturn PemLoadPemAsync(obj, pemContent, password) :  EndProcedure
  Procedure.l ckLoadPemFile(obj.i, path.s, password.s) :  ProcedureReturn PemLoadPemFile(obj, path, password) :  EndProcedure
  Procedure.i ckLoadPemFileAsync(obj.i, path.s, password.s) :  ProcedureReturn PemLoadPemFileAsync(obj, path, password) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn PemLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckRemoveCert(obj.i, index.l) :  ProcedureReturn PemRemoveCert(obj, index) :  EndProcedure
  Procedure.l ckRemovePrivateKey(obj.i, index.l) :  ProcedureReturn PemRemovePrivateKey(obj, index) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PemSaveLastError(obj, path) :  EndProcedure
  Procedure.i ckToJks(obj.i, alias.s, password.s) :  ProcedureReturn PemToJks(obj, alias, password) :  EndProcedure
  Procedure.s ckToPem(obj.i) :  ProcedureReturn PeekS(PemToPem(obj)) :  EndProcedure
  Procedure.s ckToPemEx(obj.i, extendedAttrs.l, noKeys.l, noCerts.l, noCaCerts.l, encryptAlg.s, password.s) :  ProcedureReturn PeekS(PemToPemEx(obj, extendedAttrs, noKeys, noCerts, noCaCerts, encryptAlg, password)) :  EndProcedure
  Procedure.i ckToPfx(obj.i) :  ProcedureReturn PemToPfx(obj) :  EndProcedure
EndModule

