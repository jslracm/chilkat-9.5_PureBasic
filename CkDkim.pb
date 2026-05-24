DeclareModule CkDkim
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDkimAlg(obj.i)
  Declare setCkDkimAlg(obj.i, value.s)
  Declare.l ckDkimBodyLengthCount(obj.i)
  Declare setCkDkimBodyLengthCount(obj.i, value.l)
  Declare.s ckDkimCanon(obj.i)
  Declare setCkDkimCanon(obj.i, value.s)
  Declare.s ckDkimDomain(obj.i)
  Declare setCkDkimDomain(obj.i, value.s)
  Declare.s ckDkimHeaders(obj.i)
  Declare setCkDkimHeaders(obj.i, value.s)
  Declare.s ckDkimSelector(obj.i)
  Declare setCkDkimSelector(obj.i, value.s)
  Declare.s ckDomainKeyAlg(obj.i)
  Declare setCkDomainKeyAlg(obj.i, value.s)
  Declare.s ckDomainKeyCanon(obj.i)
  Declare setCkDomainKeyCanon(obj.i, value.s)
  Declare.s ckDomainKeyDomain(obj.i)
  Declare setCkDomainKeyDomain(obj.i, value.s)
  Declare.s ckDomainKeyHeaders(obj.i)
  Declare setCkDomainKeyHeaders(obj.i, value.s)
  Declare.s ckDomainKeySelector(obj.i)
  Declare setCkDomainKeySelector(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVerifyInfo(obj.i)
  Declare.s ckVersion(obj.i)
  Declare.l ckDkimSign(obj.i, mimeData.i)
  Declare.l ckDkimVerify(obj.i, sigIndex.l, mimeData.i)
  Declare.l ckDomainKeySign(obj.i, mimeData.i)
  Declare.l ckDomainKeyVerify(obj.i, sigIndex.l, mimeData.i)
  Declare.l ckLoadDkimPk(obj.i, privateKey.s, optionalPassword.s)
  Declare.l ckLoadDkimPkFile(obj.i, privateKeyFilePath.s, optionalPassword.s)
  Declare.l ckLoadDomainKeyPk(obj.i, privateKey.s, optionalPassword.s)
  Declare.l ckLoadDomainKeyPkFile(obj.i, privateKeyFilePath.s, optionalPassword.s)
  Declare.l ckLoadPublicKey(obj.i, selector.s, domain.s, publicKey.s)
  Declare.l ckLoadPublicKeyFile(obj.i, selector.s, domain.s, publicKeyFilepath.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckNumDkimSigs(obj.i, mimeData.i)
  Declare.l ckNumDomainKeySigs(obj.i, mimeData.i)
  Declare.l ckPrefetchPublicKey(obj.i, selector.s, domain.s)
  Declare.i ckPrefetchPublicKeyAsync(obj.i, selector.s, domain.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetDkimPrivateKey(obj.i, privateKey.i)
  Declare.l ckSetDomainKeyPrivateKey(obj.i, privateKey.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkDkim
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkDkimCreate()
  PrototypeC CkDkimDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDkimLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDkimLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDkimLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDkimLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDkimLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global DkimCreate.CkDkimCreate = GetFunction(CkDkimLibId,"CkDkimU_CreateW")
  Global DkimDispose.CkDkimDispose = GetFunction(CkDkimLibId,"CkDkimU_DisposeW")
  Global DkimAbortCurrent.cklPropGet = GetFunction(CkDkimLibId,"CkDkimU_getAbortCurrentW")
  Global DkimPSetAbortCurrent.cklPropSet = GetFunction(CkDkimLibId,"CkDkimU_putAbortCurrentW")
  Global DkimDebugLogFilePath.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_debugLogFilePathW")
  Global DkimPSetDebugLogFilePath.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDebugLogFilePathW")
  Global DkimDkimAlg.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_dkimAlgW")
  Global DkimPSetDkimAlg.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimAlgW")
  Global DkimDkimBodyLengthCount.cklPropGet = GetFunction(CkDkimLibId,"CkDkimU_getDkimBodyLengthCountW")
  Global DkimPSetDkimBodyLengthCount.cklPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimBodyLengthCountW")
  Global DkimDkimCanon.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_dkimCanonW")
  Global DkimPSetDkimCanon.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimCanonW")
  Global DkimDkimDomain.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_dkimDomainW")
  Global DkimPSetDkimDomain.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimDomainW")
  Global DkimDkimHeaders.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_dkimHeadersW")
  Global DkimPSetDkimHeaders.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimHeadersW")
  Global DkimDkimSelector.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_dkimSelectorW")
  Global DkimPSetDkimSelector.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDkimSelectorW")
  Global DkimDomainKeyAlg.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_domainKeyAlgW")
  Global DkimPSetDomainKeyAlg.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDomainKeyAlgW")
  Global DkimDomainKeyCanon.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_domainKeyCanonW")
  Global DkimPSetDomainKeyCanon.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDomainKeyCanonW")
  Global DkimDomainKeyDomain.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_domainKeyDomainW")
  Global DkimPSetDomainKeyDomain.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDomainKeyDomainW")
  Global DkimDomainKeyHeaders.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_domainKeyHeadersW")
  Global DkimPSetDomainKeyHeaders.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDomainKeyHeadersW")
  Global DkimDomainKeySelector.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_domainKeySelectorW")
  Global DkimPSetDomainKeySelector.cksPropSet = GetFunction(CkDkimLibId,"CkDkimU_putDomainKeySelectorW")
  Global DkimHeartbeatMs.cklPropGet = GetFunction(CkDkimLibId,"CkDkimU_getHeartbeatMsW")
  Global DkimPSetHeartbeatMs.cklPropSet = GetFunction(CkDkimLibId,"CkDkimU_putHeartbeatMsW")
  Global DkimLastErrorHtml.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_lastErrorHtmlW")
  Global DkimLastErrorText.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_lastErrorTextW")
  Global DkimLastErrorXml.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_lastErrorXmlW")
  Global DkimLastMethodSuccess.cklPropGet = GetFunction(CkDkimLibId,"CkDkimU_getLastMethodSuccessW")
  Global DkimPSetLastMethodSuccess.cklPropSet = GetFunction(CkDkimLibId,"CkDkimU_putLastMethodSuccessW")
  Global DkimVerboseLogging.cklPropGet = GetFunction(CkDkimLibId,"CkDkimU_getVerboseLoggingW")
  Global DkimPSetVerboseLogging.cklPropSet = GetFunction(CkDkimLibId,"CkDkimU_putVerboseLoggingW")
  Global DkimVerifyInfo.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_verifyInfoW")
  Global DkimVersion.cksPropGet = GetFunction(CkDkimLibId,"CkDkimU_versionW")
  Global DkimDkimSign.cklMi = GetFunction(CkDkimLibId,"CkDkimU_DkimSignW")
  Global DkimDkimVerify.cklMli = GetFunction(CkDkimLibId,"CkDkimU_DkimVerifyW")
  Global DkimDomainKeySign.cklMi = GetFunction(CkDkimLibId,"CkDkimU_DomainKeySignW")
  Global DkimDomainKeyVerify.cklMli = GetFunction(CkDkimLibId,"CkDkimU_DomainKeyVerifyW")
  Global DkimLoadDkimPk.cklMss = GetFunction(CkDkimLibId,"CkDkimU_LoadDkimPkW")
  Global DkimLoadDkimPkFile.cklMss = GetFunction(CkDkimLibId,"CkDkimU_LoadDkimPkFileW")
  Global DkimLoadDomainKeyPk.cklMss = GetFunction(CkDkimLibId,"CkDkimU_LoadDomainKeyPkW")
  Global DkimLoadDomainKeyPkFile.cklMss = GetFunction(CkDkimLibId,"CkDkimU_LoadDomainKeyPkFileW")
  Global DkimLoadPublicKey.cklMsss = GetFunction(CkDkimLibId,"CkDkimU_LoadPublicKeyW")
  Global DkimLoadPublicKeyFile.cklMsss = GetFunction(CkDkimLibId,"CkDkimU_LoadPublicKeyFileW")
  Global DkimLoadTaskCaller.cklMi = GetFunction(CkDkimLibId,"CkDkimU_LoadTaskCallerW")
  Global DkimNumDkimSigs.cklMi = GetFunction(CkDkimLibId,"CkDkimU_NumDkimSigsW")
  Global DkimNumDomainKeySigs.cklMi = GetFunction(CkDkimLibId,"CkDkimU_NumDomainKeySigsW")
  Global DkimPrefetchPublicKey.cklMss = GetFunction(CkDkimLibId,"CkDkimU_PrefetchPublicKeyW")
  Global DkimPrefetchPublicKeyAsync.ckiMss = GetFunction(CkDkimLibId,"CkDkimU_PrefetchPublicKeyAsyncW")
  Global DkimSaveLastError.cklMs = GetFunction(CkDkimLibId,"CkDkimU_SaveLastErrorW")
  Global DkimSetDkimPrivateKey.cklMi = GetFunction(CkDkimLibId,"CkDkimU_SetDkimPrivateKeyW")
  Global DkimSetDomainKeyPrivateKey.cklMi = GetFunction(CkDkimLibId,"CkDkimU_SetDomainKeyPrivateKeyW")
  Global DkimUnlockComponent.cklMs = GetFunction(CkDkimLibId,"CkDkimU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn DkimCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn DkimDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn DkimAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn DkimPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(DkimDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn DkimPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDkimAlg(obj.i) : ProcedureReturn PeekS(DkimDkimAlg(obj)) : EndProcedure
  Procedure setCkDkimAlg(obj.i, value.s) : ProcedureReturn DkimPSetDkimAlg(obj,value) : EndProcedure
  Procedure.l ckDkimBodyLengthCount(obj.i) : ProcedureReturn DkimDkimBodyLengthCount(obj) : EndProcedure
  Procedure setCkDkimBodyLengthCount(obj.i, value.l) : ProcedureReturn DkimPSetDkimBodyLengthCount(obj,value) : EndProcedure
  Procedure.s ckDkimCanon(obj.i) : ProcedureReturn PeekS(DkimDkimCanon(obj)) : EndProcedure
  Procedure setCkDkimCanon(obj.i, value.s) : ProcedureReturn DkimPSetDkimCanon(obj,value) : EndProcedure
  Procedure.s ckDkimDomain(obj.i) : ProcedureReturn PeekS(DkimDkimDomain(obj)) : EndProcedure
  Procedure setCkDkimDomain(obj.i, value.s) : ProcedureReturn DkimPSetDkimDomain(obj,value) : EndProcedure
  Procedure.s ckDkimHeaders(obj.i) : ProcedureReturn PeekS(DkimDkimHeaders(obj)) : EndProcedure
  Procedure setCkDkimHeaders(obj.i, value.s) : ProcedureReturn DkimPSetDkimHeaders(obj,value) : EndProcedure
  Procedure.s ckDkimSelector(obj.i) : ProcedureReturn PeekS(DkimDkimSelector(obj)) : EndProcedure
  Procedure setCkDkimSelector(obj.i, value.s) : ProcedureReturn DkimPSetDkimSelector(obj,value) : EndProcedure
  Procedure.s ckDomainKeyAlg(obj.i) : ProcedureReturn PeekS(DkimDomainKeyAlg(obj)) : EndProcedure
  Procedure setCkDomainKeyAlg(obj.i, value.s) : ProcedureReturn DkimPSetDomainKeyAlg(obj,value) : EndProcedure
  Procedure.s ckDomainKeyCanon(obj.i) : ProcedureReturn PeekS(DkimDomainKeyCanon(obj)) : EndProcedure
  Procedure setCkDomainKeyCanon(obj.i, value.s) : ProcedureReturn DkimPSetDomainKeyCanon(obj,value) : EndProcedure
  Procedure.s ckDomainKeyDomain(obj.i) : ProcedureReturn PeekS(DkimDomainKeyDomain(obj)) : EndProcedure
  Procedure setCkDomainKeyDomain(obj.i, value.s) : ProcedureReturn DkimPSetDomainKeyDomain(obj,value) : EndProcedure
  Procedure.s ckDomainKeyHeaders(obj.i) : ProcedureReturn PeekS(DkimDomainKeyHeaders(obj)) : EndProcedure
  Procedure setCkDomainKeyHeaders(obj.i, value.s) : ProcedureReturn DkimPSetDomainKeyHeaders(obj,value) : EndProcedure
  Procedure.s ckDomainKeySelector(obj.i) : ProcedureReturn PeekS(DkimDomainKeySelector(obj)) : EndProcedure
  Procedure setCkDomainKeySelector(obj.i, value.s) : ProcedureReturn DkimPSetDomainKeySelector(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn DkimHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn DkimPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(DkimLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(DkimLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(DkimLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn DkimLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn DkimPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn DkimVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn DkimPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVerifyInfo(obj.i) : ProcedureReturn PeekS(DkimVerifyInfo(obj)) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(DkimVersion(obj)) : EndProcedure
  Procedure.l ckDkimSign(obj.i, mimeData.i) :  ProcedureReturn DkimDkimSign(obj, mimeData) :  EndProcedure
  Procedure.l ckDkimVerify(obj.i, sigIndex.l, mimeData.i) :  ProcedureReturn DkimDkimVerify(obj, sigIndex, mimeData) :  EndProcedure
  Procedure.l ckDomainKeySign(obj.i, mimeData.i) :  ProcedureReturn DkimDomainKeySign(obj, mimeData) :  EndProcedure
  Procedure.l ckDomainKeyVerify(obj.i, sigIndex.l, mimeData.i) :  ProcedureReturn DkimDomainKeyVerify(obj, sigIndex, mimeData) :  EndProcedure
  Procedure.l ckLoadDkimPk(obj.i, privateKey.s, optionalPassword.s) :  ProcedureReturn DkimLoadDkimPk(obj, privateKey, optionalPassword) :  EndProcedure
  Procedure.l ckLoadDkimPkFile(obj.i, privateKeyFilePath.s, optionalPassword.s) :  ProcedureReturn DkimLoadDkimPkFile(obj, privateKeyFilePath, optionalPassword) :  EndProcedure
  Procedure.l ckLoadDomainKeyPk(obj.i, privateKey.s, optionalPassword.s) :  ProcedureReturn DkimLoadDomainKeyPk(obj, privateKey, optionalPassword) :  EndProcedure
  Procedure.l ckLoadDomainKeyPkFile(obj.i, privateKeyFilePath.s, optionalPassword.s) :  ProcedureReturn DkimLoadDomainKeyPkFile(obj, privateKeyFilePath, optionalPassword) :  EndProcedure
  Procedure.l ckLoadPublicKey(obj.i, selector.s, domain.s, publicKey.s) :  ProcedureReturn DkimLoadPublicKey(obj, selector, domain, publicKey) :  EndProcedure
  Procedure.l ckLoadPublicKeyFile(obj.i, selector.s, domain.s, publicKeyFilepath.s) :  ProcedureReturn DkimLoadPublicKeyFile(obj, selector, domain, publicKeyFilepath) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn DkimLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckNumDkimSigs(obj.i, mimeData.i) :  ProcedureReturn DkimNumDkimSigs(obj, mimeData) :  EndProcedure
  Procedure.l ckNumDomainKeySigs(obj.i, mimeData.i) :  ProcedureReturn DkimNumDomainKeySigs(obj, mimeData) :  EndProcedure
  Procedure.l ckPrefetchPublicKey(obj.i, selector.s, domain.s) :  ProcedureReturn DkimPrefetchPublicKey(obj, selector, domain) :  EndProcedure
  Procedure.i ckPrefetchPublicKeyAsync(obj.i, selector.s, domain.s) :  ProcedureReturn DkimPrefetchPublicKeyAsync(obj, selector, domain) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn DkimSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetDkimPrivateKey(obj.i, privateKey.i) :  ProcedureReturn DkimSetDkimPrivateKey(obj, privateKey) :  EndProcedure
  Procedure.l ckSetDomainKeyPrivateKey(obj.i, privateKey.i) :  ProcedureReturn DkimSetDomainKeyPrivateKey(obj, privateKey) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn DkimUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

