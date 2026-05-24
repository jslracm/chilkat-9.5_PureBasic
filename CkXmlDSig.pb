DeclareModule CkXmlDSig
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckExternalRefDirs(obj.i)
  Declare setCkExternalRefDirs(obj.i, value.s)
  Declare.l ckIgnoreExternalRefs(obj.i)
  Declare setCkIgnoreExternalRefs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumReferences(obj.i)
  Declare.l ckNumSignatures(obj.i)
  Declare.l ckRefFailReason(obj.i)
  Declare.l ckSelector(obj.i)
  Declare setCkSelector(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckWithComments(obj.i)
  Declare setCkWithComments(obj.i, value.l)
  Declare.s ckCanonicalizeFragment(obj.i, xml.s, fragmentId.s, version.s, prefixList.s, withComments.l)
  Declare.s ckCanonicalizeXml(obj.i, xml.s, version.s, withComments.l)
  Declare.l ckGetCerts(obj.i, sa.i)
  Declare.i ckGetKeyInfo(obj.i)
  Declare.i ckGetPublicKey(obj.i)
  Declare.l ckIsReferenceExternal(obj.i, index.l)
  Declare.l ckLoadSignature(obj.i, xmlSig.s)
  Declare.l ckLoadSignatureBd(obj.i, binData.i)
  Declare.l ckLoadSignatureSb(obj.i, sbXmlSig.i)
  Declare.s ckReferenceUri(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetHmacKey(obj.i, key.s, encoding.s)
  Declare.l ckSetPublicKey(obj.i, pubKey.i)
  Declare.l ckSetRefDataBd(obj.i, index.l, binData.i)
  Declare.l ckSetRefDataFile(obj.i, index.l, path.s)
  Declare.l ckSetRefDataSb(obj.i, index.l, sb.i, charset.s)
  Declare.l ckUseCertVault(obj.i, certVault.i)
  Declare.l ckVerifyReferenceDigest(obj.i, index.l)
  Declare.l ckVerifySignature(obj.i, verifyReferenceDigests.l)
EndDeclareModule

Module CkXmlDSig
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMlis(obj.i, arg1.l, arg2.i, arg3.s)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkXmlDSigCreate()
  PrototypeC CkXmlDSigDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlDSigLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkXmlDSigLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkXmlDSigLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlDSigLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkXmlDSigLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global XmlDSigCreate.CkXmlDSigCreate = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_CreateW")
  Global XmlDSigDispose.CkXmlDSigDispose = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_DisposeW")
  Global XmlDSigDebugLogFilePath.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_debugLogFilePathW")
  Global XmlDSigPSetDebugLogFilePath.cksPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putDebugLogFilePathW")
  Global XmlDSigExternalRefDirs.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_externalRefDirsW")
  Global XmlDSigPSetExternalRefDirs.cksPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putExternalRefDirsW")
  Global XmlDSigIgnoreExternalRefs.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getIgnoreExternalRefsW")
  Global XmlDSigPSetIgnoreExternalRefs.cklPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putIgnoreExternalRefsW")
  Global XmlDSigLastErrorHtml.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_lastErrorHtmlW")
  Global XmlDSigLastErrorText.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_lastErrorTextW")
  Global XmlDSigLastErrorXml.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_lastErrorXmlW")
  Global XmlDSigLastMethodSuccess.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getLastMethodSuccessW")
  Global XmlDSigPSetLastMethodSuccess.cklPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putLastMethodSuccessW")
  Global XmlDSigNumReferences.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getNumReferencesW")
  Global XmlDSigNumSignatures.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getNumSignaturesW")
  Global XmlDSigRefFailReason.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getRefFailReasonW")
  Global XmlDSigSelector.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getSelectorW")
  Global XmlDSigPSetSelector.cklPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putSelectorW")
  Global XmlDSigVerboseLogging.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getVerboseLoggingW")
  Global XmlDSigPSetVerboseLogging.cklPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putVerboseLoggingW")
  Global XmlDSigVersion.cksPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_versionW")
  Global XmlDSigWithComments.cklPropGet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_getWithCommentsW")
  Global XmlDSigPSetWithComments.cklPropSet = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_putWithCommentsW")
  Global XmlDSigCanonicalizeFragment.cklMssssl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_canonicalizeFragmentW")
  Global XmlDSigCanonicalizeXml.cklMssl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_canonicalizeXmlW")
  Global XmlDSigGetCerts.cklMi = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_GetCertsW")
  Global XmlDSigGetKeyInfo.ckiM = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_GetKeyInfoW")
  Global XmlDSigGetPublicKey.ckiM = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_GetPublicKeyW")
  Global XmlDSigIsReferenceExternal.cklMl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_IsReferenceExternalW")
  Global XmlDSigLoadSignature.cklMs = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_LoadSignatureW")
  Global XmlDSigLoadSignatureBd.cklMi = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_LoadSignatureBdW")
  Global XmlDSigLoadSignatureSb.cklMi = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_LoadSignatureSbW")
  Global XmlDSigReferenceUri.cklMl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_referenceUriW")
  Global XmlDSigSaveLastError.cklMs = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SaveLastErrorW")
  Global XmlDSigSetHmacKey.cklMss = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SetHmacKeyW")
  Global XmlDSigSetPublicKey.cklMi = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SetPublicKeyW")
  Global XmlDSigSetRefDataBd.cklMli = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SetRefDataBdW")
  Global XmlDSigSetRefDataFile.cklMls = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SetRefDataFileW")
  Global XmlDSigSetRefDataSb.cklMlis = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_SetRefDataSbW")
  Global XmlDSigUseCertVault.cklMi = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_UseCertVaultW")
  Global XmlDSigVerifyReferenceDigest.cklMl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_VerifyReferenceDigestW")
  Global XmlDSigVerifySignature.cklMl = GetFunction(CkXmlDSigLibId,"CkXmlDSigU_VerifySignatureW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn XmlDSigCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn XmlDSigDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(XmlDSigDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn XmlDSigPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckExternalRefDirs(obj.i) : ProcedureReturn PeekS(XmlDSigExternalRefDirs(obj)) : EndProcedure
  Procedure setCkExternalRefDirs(obj.i, value.s) : ProcedureReturn XmlDSigPSetExternalRefDirs(obj,value) : EndProcedure
  Procedure.l ckIgnoreExternalRefs(obj.i) : ProcedureReturn XmlDSigIgnoreExternalRefs(obj) : EndProcedure
  Procedure setCkIgnoreExternalRefs(obj.i, value.l) : ProcedureReturn XmlDSigPSetIgnoreExternalRefs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(XmlDSigLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(XmlDSigLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(XmlDSigLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn XmlDSigLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn XmlDSigPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumReferences(obj.i) : ProcedureReturn XmlDSigNumReferences(obj) : EndProcedure
  Procedure.l ckNumSignatures(obj.i) : ProcedureReturn XmlDSigNumSignatures(obj) : EndProcedure
  Procedure.l ckRefFailReason(obj.i) : ProcedureReturn XmlDSigRefFailReason(obj) : EndProcedure
  Procedure.l ckSelector(obj.i) : ProcedureReturn XmlDSigSelector(obj) : EndProcedure
  Procedure setCkSelector(obj.i, value.l) : ProcedureReturn XmlDSigPSetSelector(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn XmlDSigVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn XmlDSigPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(XmlDSigVersion(obj)) : EndProcedure
  Procedure.l ckWithComments(obj.i) : ProcedureReturn XmlDSigWithComments(obj) : EndProcedure
  Procedure setCkWithComments(obj.i, value.l) : ProcedureReturn XmlDSigPSetWithComments(obj,value) : EndProcedure
  Procedure.s ckCanonicalizeFragment(obj.i, xml.s, fragmentId.s, version.s, prefixList.s, withComments.l) :  ProcedureReturn PeekS(XmlDSigCanonicalizeFragment(obj, xml, fragmentId, version, prefixList, withComments)) :  EndProcedure
  Procedure.s ckCanonicalizeXml(obj.i, xml.s, version.s, withComments.l) :  ProcedureReturn PeekS(XmlDSigCanonicalizeXml(obj, xml, version, withComments)) :  EndProcedure
  Procedure.l ckGetCerts(obj.i, sa.i) :  ProcedureReturn XmlDSigGetCerts(obj, sa) :  EndProcedure
  Procedure.i ckGetKeyInfo(obj.i) :  ProcedureReturn XmlDSigGetKeyInfo(obj) :  EndProcedure
  Procedure.i ckGetPublicKey(obj.i) :  ProcedureReturn XmlDSigGetPublicKey(obj) :  EndProcedure
  Procedure.l ckIsReferenceExternal(obj.i, index.l) :  ProcedureReturn XmlDSigIsReferenceExternal(obj, index) :  EndProcedure
  Procedure.l ckLoadSignature(obj.i, xmlSig.s) :  ProcedureReturn XmlDSigLoadSignature(obj, xmlSig) :  EndProcedure
  Procedure.l ckLoadSignatureBd(obj.i, binData.i) :  ProcedureReturn XmlDSigLoadSignatureBd(obj, binData) :  EndProcedure
  Procedure.l ckLoadSignatureSb(obj.i, sbXmlSig.i) :  ProcedureReturn XmlDSigLoadSignatureSb(obj, sbXmlSig) :  EndProcedure
  Procedure.s ckReferenceUri(obj.i, index.l) :  ProcedureReturn PeekS(XmlDSigReferenceUri(obj, index)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn XmlDSigSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetHmacKey(obj.i, key.s, encoding.s) :  ProcedureReturn XmlDSigSetHmacKey(obj, key, encoding) :  EndProcedure
  Procedure.l ckSetPublicKey(obj.i, pubKey.i) :  ProcedureReturn XmlDSigSetPublicKey(obj, pubKey) :  EndProcedure
  Procedure.l ckSetRefDataBd(obj.i, index.l, binData.i) :  ProcedureReturn XmlDSigSetRefDataBd(obj, index, binData) :  EndProcedure
  Procedure.l ckSetRefDataFile(obj.i, index.l, path.s) :  ProcedureReturn XmlDSigSetRefDataFile(obj, index, path) :  EndProcedure
  Procedure.l ckSetRefDataSb(obj.i, index.l, sb.i, charset.s) :  ProcedureReturn XmlDSigSetRefDataSb(obj, index, sb, charset) :  EndProcedure
  Procedure.l ckUseCertVault(obj.i, certVault.i) :  ProcedureReturn XmlDSigUseCertVault(obj, certVault) :  EndProcedure
  Procedure.l ckVerifyReferenceDigest(obj.i, index.l) :  ProcedureReturn XmlDSigVerifyReferenceDigest(obj, index) :  EndProcedure
  Procedure.l ckVerifySignature(obj.i, verifyReferenceDigests.l) :  ProcedureReturn XmlDSigVerifySignature(obj, verifyReferenceDigests) :  EndProcedure
EndModule

