DeclareModule CkXmlDSigGen
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBehaviors(obj.i)
  Declare setCkBehaviors(obj.i, value.s)
  Declare.s ckCustomKeyInfoXml(obj.i)
  Declare setCkCustomKeyInfoXml(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckIncNamespacePrefix(obj.i)
  Declare setCkIncNamespacePrefix(obj.i, value.s)
  Declare.s ckIncNamespaceUri(obj.i)
  Declare setCkIncNamespaceUri(obj.i, value.s)
  Declare.s ckKeyInfoId(obj.i)
  Declare setCkKeyInfoId(obj.i, value.s)
  Declare.s ckKeyInfoKeyName(obj.i)
  Declare setCkKeyInfoKeyName(obj.i, value.s)
  Declare.s ckKeyInfoType(obj.i)
  Declare setCkKeyInfoType(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckSigId(obj.i)
  Declare setCkSigId(obj.i, value.s)
  Declare.s ckSigLocation(obj.i)
  Declare setCkSigLocation(obj.i, value.s)
  Declare.l ckSigLocationMod(obj.i)
  Declare setCkSigLocationMod(obj.i, value.l)
  Declare.s ckSigNamespacePrefix(obj.i)
  Declare setCkSigNamespacePrefix(obj.i, value.s)
  Declare.s ckSigNamespaceUri(obj.i)
  Declare setCkSigNamespaceUri(obj.i, value.s)
  Declare.s ckSignedInfoCanonAlg(obj.i)
  Declare setCkSignedInfoCanonAlg(obj.i, value.s)
  Declare.s ckSignedInfoDigestMethod(obj.i)
  Declare setCkSignedInfoDigestMethod(obj.i, value.s)
  Declare.s ckSignedInfoId(obj.i)
  Declare setCkSignedInfoId(obj.i, value.s)
  Declare.s ckSignedInfoPrefixList(obj.i)
  Declare setCkSignedInfoPrefixList(obj.i, value.s)
  Declare.s ckSigningAlg(obj.i)
  Declare setCkSigningAlg(obj.i, value.s)
  Declare.s ckSigValueId(obj.i)
  Declare setCkSigValueId(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckX509Type(obj.i)
  Declare setCkX509Type(obj.i, value.s)
  Declare.l ckAddEnvelopedRef(obj.i, id.s, content.i, digestMethod.s, canonMethod.s, refType.s)
  Declare.l ckAddExternalBinaryRef(obj.i, uri.s, content.i, digestMethod.s, refType.s)
  Declare.l ckAddExternalFileRef(obj.i, uri.s, localFilePath.s, digestMethod.s, refType.s)
  Declare.l ckAddExternalTextRef(obj.i, uri.s, content.i, charset.s, includeBom.l, digestMethod.s, refType.s)
  Declare.l ckAddExternalXmlRef(obj.i, uri.s, content.i, digestMethod.s, canonMethod.s, refType.s)
  Declare.l ckAddObject(obj.i, id.s, content.s, mimeType.s, encoding.s)
  Declare.l ckAddObjectRef(obj.i, id.s, digestMethod.s, canonMethod.s, prefixList.s, refType.s)
  Declare.l ckAddSameDocRef(obj.i, id.s, digestMethod.s, canonMethod.s, prefixList.s, refType.s)
  Declare.l ckAddSignatureNamespace(obj.i, nsPrefix.s, nsUri.s)
  Declare.s ckConstructSignedInfo(obj.i, sbXml.i)
  Declare.s ckCreateXmlDSig(obj.i, inXml.s)
  Declare.l ckCreateXmlDSigSb(obj.i, sbXml.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetHmacKey(obj.i, key.s, encoding.s)
  Declare.l ckSetPrivateKey(obj.i, privKey.i)
  Declare.l ckSetRefIdAttr(obj.i, uri_or_id.s, value.s)
  Declare.l ckSetX509Cert(obj.i, cert.i, usePrivateKey.l)
EndDeclareModule

Module CkXmlDSigGen
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMsiss(obj.i, arg1.s, arg2.i, arg3.s, arg4.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsisss(obj.i, arg1.s, arg2.i, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMsislss(obj.i, arg1.s, arg2.i, arg3.s, arg4.l, arg5.s, arg6.s)
  PrototypeC.i CkXmlDSigGenCreate()
  PrototypeC CkXmlDSigGenDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlDSigGenLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkXmlDSigGenLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkXmlDSigGenLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlDSigGenLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkXmlDSigGenLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global XmlDSigGenCreate.CkXmlDSigGenCreate = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_CreateW")
  Global XmlDSigGenDispose.CkXmlDSigGenDispose = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_DisposeW")
  Global XmlDSigGenBehaviors.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_behaviorsW")
  Global XmlDSigGenPSetBehaviors.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putBehaviorsW")
  Global XmlDSigGenCustomKeyInfoXml.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_customKeyInfoXmlW")
  Global XmlDSigGenPSetCustomKeyInfoXml.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putCustomKeyInfoXmlW")
  Global XmlDSigGenDebugLogFilePath.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_debugLogFilePathW")
  Global XmlDSigGenPSetDebugLogFilePath.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putDebugLogFilePathW")
  Global XmlDSigGenIncNamespacePrefix.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_incNamespacePrefixW")
  Global XmlDSigGenPSetIncNamespacePrefix.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putIncNamespacePrefixW")
  Global XmlDSigGenIncNamespaceUri.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_incNamespaceUriW")
  Global XmlDSigGenPSetIncNamespaceUri.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putIncNamespaceUriW")
  Global XmlDSigGenKeyInfoId.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_keyInfoIdW")
  Global XmlDSigGenPSetKeyInfoId.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putKeyInfoIdW")
  Global XmlDSigGenKeyInfoKeyName.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_keyInfoKeyNameW")
  Global XmlDSigGenPSetKeyInfoKeyName.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putKeyInfoKeyNameW")
  Global XmlDSigGenKeyInfoType.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_keyInfoTypeW")
  Global XmlDSigGenPSetKeyInfoType.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putKeyInfoTypeW")
  Global XmlDSigGenLastErrorHtml.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_lastErrorHtmlW")
  Global XmlDSigGenLastErrorText.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_lastErrorTextW")
  Global XmlDSigGenLastErrorXml.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_lastErrorXmlW")
  Global XmlDSigGenLastMethodSuccess.cklPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_getLastMethodSuccessW")
  Global XmlDSigGenPSetLastMethodSuccess.cklPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putLastMethodSuccessW")
  Global XmlDSigGenSigId.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_sigIdW")
  Global XmlDSigGenPSetSigId.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigIdW")
  Global XmlDSigGenSigLocation.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_sigLocationW")
  Global XmlDSigGenPSetSigLocation.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigLocationW")
  Global XmlDSigGenSigLocationMod.cklPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_getSigLocationModW")
  Global XmlDSigGenPSetSigLocationMod.cklPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigLocationModW")
  Global XmlDSigGenSigNamespacePrefix.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_sigNamespacePrefixW")
  Global XmlDSigGenPSetSigNamespacePrefix.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigNamespacePrefixW")
  Global XmlDSigGenSigNamespaceUri.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_sigNamespaceUriW")
  Global XmlDSigGenPSetSigNamespaceUri.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigNamespaceUriW")
  Global XmlDSigGenSignedInfoCanonAlg.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_signedInfoCanonAlgW")
  Global XmlDSigGenPSetSignedInfoCanonAlg.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSignedInfoCanonAlgW")
  Global XmlDSigGenSignedInfoDigestMethod.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_signedInfoDigestMethodW")
  Global XmlDSigGenPSetSignedInfoDigestMethod.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSignedInfoDigestMethodW")
  Global XmlDSigGenSignedInfoId.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_signedInfoIdW")
  Global XmlDSigGenPSetSignedInfoId.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSignedInfoIdW")
  Global XmlDSigGenSignedInfoPrefixList.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_signedInfoPrefixListW")
  Global XmlDSigGenPSetSignedInfoPrefixList.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSignedInfoPrefixListW")
  Global XmlDSigGenSigningAlg.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_signingAlgW")
  Global XmlDSigGenPSetSigningAlg.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigningAlgW")
  Global XmlDSigGenSigValueId.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_sigValueIdW")
  Global XmlDSigGenPSetSigValueId.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putSigValueIdW")
  Global XmlDSigGenVerboseLogging.cklPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_getVerboseLoggingW")
  Global XmlDSigGenPSetVerboseLogging.cklPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putVerboseLoggingW")
  Global XmlDSigGenVersion.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_versionW")
  Global XmlDSigGenX509Type.cksPropGet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_x509TypeW")
  Global XmlDSigGenPSetX509Type.cksPropSet = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_putX509TypeW")
  Global XmlDSigGenAddEnvelopedRef.cklMsisss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddEnvelopedRefW")
  Global XmlDSigGenAddExternalBinaryRef.cklMsiss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddExternalBinaryRefW")
  Global XmlDSigGenAddExternalFileRef.cklMssss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddExternalFileRefW")
  Global XmlDSigGenAddExternalTextRef.cklMsislss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddExternalTextRefW")
  Global XmlDSigGenAddExternalXmlRef.cklMsisss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddExternalXmlRefW")
  Global XmlDSigGenAddObject.cklMssss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddObjectW")
  Global XmlDSigGenAddObjectRef.cklMsssss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddObjectRefW")
  Global XmlDSigGenAddSameDocRef.cklMsssss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddSameDocRefW")
  Global XmlDSigGenAddSignatureNamespace.cklMss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_AddSignatureNamespaceW")
  Global XmlDSigGenConstructSignedInfo.cklMi = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_constructSignedInfoW")
  Global XmlDSigGenCreateXmlDSig.cklMs = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_createXmlDSigW")
  Global XmlDSigGenCreateXmlDSigSb.cklMi = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_CreateXmlDSigSbW")
  Global XmlDSigGenSaveLastError.cklMs = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_SaveLastErrorW")
  Global XmlDSigGenSetHmacKey.cklMss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_SetHmacKeyW")
  Global XmlDSigGenSetPrivateKey.cklMi = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_SetPrivateKeyW")
  Global XmlDSigGenSetRefIdAttr.cklMss = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_SetRefIdAttrW")
  Global XmlDSigGenSetX509Cert.cklMil = GetFunction(CkXmlDSigGenLibId,"CkXmlDSigGenU_SetX509CertW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn XmlDSigGenCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn XmlDSigGenDispose(obj) : EndProcedure
  Procedure.s ckBehaviors(obj.i) : ProcedureReturn PeekS(XmlDSigGenBehaviors(obj)) : EndProcedure
  Procedure setCkBehaviors(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetBehaviors(obj,value) : EndProcedure
  Procedure.s ckCustomKeyInfoXml(obj.i) : ProcedureReturn PeekS(XmlDSigGenCustomKeyInfoXml(obj)) : EndProcedure
  Procedure setCkCustomKeyInfoXml(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetCustomKeyInfoXml(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(XmlDSigGenDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckIncNamespacePrefix(obj.i) : ProcedureReturn PeekS(XmlDSigGenIncNamespacePrefix(obj)) : EndProcedure
  Procedure setCkIncNamespacePrefix(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetIncNamespacePrefix(obj,value) : EndProcedure
  Procedure.s ckIncNamespaceUri(obj.i) : ProcedureReturn PeekS(XmlDSigGenIncNamespaceUri(obj)) : EndProcedure
  Procedure setCkIncNamespaceUri(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetIncNamespaceUri(obj,value) : EndProcedure
  Procedure.s ckKeyInfoId(obj.i) : ProcedureReturn PeekS(XmlDSigGenKeyInfoId(obj)) : EndProcedure
  Procedure setCkKeyInfoId(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetKeyInfoId(obj,value) : EndProcedure
  Procedure.s ckKeyInfoKeyName(obj.i) : ProcedureReturn PeekS(XmlDSigGenKeyInfoKeyName(obj)) : EndProcedure
  Procedure setCkKeyInfoKeyName(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetKeyInfoKeyName(obj,value) : EndProcedure
  Procedure.s ckKeyInfoType(obj.i) : ProcedureReturn PeekS(XmlDSigGenKeyInfoType(obj)) : EndProcedure
  Procedure setCkKeyInfoType(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetKeyInfoType(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(XmlDSigGenLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(XmlDSigGenLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(XmlDSigGenLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn XmlDSigGenLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn XmlDSigGenPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckSigId(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigId(obj)) : EndProcedure
  Procedure setCkSigId(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigId(obj,value) : EndProcedure
  Procedure.s ckSigLocation(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigLocation(obj)) : EndProcedure
  Procedure setCkSigLocation(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigLocation(obj,value) : EndProcedure
  Procedure.l ckSigLocationMod(obj.i) : ProcedureReturn XmlDSigGenSigLocationMod(obj) : EndProcedure
  Procedure setCkSigLocationMod(obj.i, value.l) : ProcedureReturn XmlDSigGenPSetSigLocationMod(obj,value) : EndProcedure
  Procedure.s ckSigNamespacePrefix(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigNamespacePrefix(obj)) : EndProcedure
  Procedure setCkSigNamespacePrefix(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigNamespacePrefix(obj,value) : EndProcedure
  Procedure.s ckSigNamespaceUri(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigNamespaceUri(obj)) : EndProcedure
  Procedure setCkSigNamespaceUri(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigNamespaceUri(obj,value) : EndProcedure
  Procedure.s ckSignedInfoCanonAlg(obj.i) : ProcedureReturn PeekS(XmlDSigGenSignedInfoCanonAlg(obj)) : EndProcedure
  Procedure setCkSignedInfoCanonAlg(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSignedInfoCanonAlg(obj,value) : EndProcedure
  Procedure.s ckSignedInfoDigestMethod(obj.i) : ProcedureReturn PeekS(XmlDSigGenSignedInfoDigestMethod(obj)) : EndProcedure
  Procedure setCkSignedInfoDigestMethod(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSignedInfoDigestMethod(obj,value) : EndProcedure
  Procedure.s ckSignedInfoId(obj.i) : ProcedureReturn PeekS(XmlDSigGenSignedInfoId(obj)) : EndProcedure
  Procedure setCkSignedInfoId(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSignedInfoId(obj,value) : EndProcedure
  Procedure.s ckSignedInfoPrefixList(obj.i) : ProcedureReturn PeekS(XmlDSigGenSignedInfoPrefixList(obj)) : EndProcedure
  Procedure setCkSignedInfoPrefixList(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSignedInfoPrefixList(obj,value) : EndProcedure
  Procedure.s ckSigningAlg(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigningAlg(obj)) : EndProcedure
  Procedure setCkSigningAlg(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigningAlg(obj,value) : EndProcedure
  Procedure.s ckSigValueId(obj.i) : ProcedureReturn PeekS(XmlDSigGenSigValueId(obj)) : EndProcedure
  Procedure setCkSigValueId(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetSigValueId(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn XmlDSigGenVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn XmlDSigGenPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(XmlDSigGenVersion(obj)) : EndProcedure
  Procedure.s ckX509Type(obj.i) : ProcedureReturn PeekS(XmlDSigGenX509Type(obj)) : EndProcedure
  Procedure setCkX509Type(obj.i, value.s) : ProcedureReturn XmlDSigGenPSetX509Type(obj,value) : EndProcedure
  Procedure.l ckAddEnvelopedRef(obj.i, id.s, content.i, digestMethod.s, canonMethod.s, refType.s) :  ProcedureReturn XmlDSigGenAddEnvelopedRef(obj, id, content, digestMethod, canonMethod, refType) :  EndProcedure
  Procedure.l ckAddExternalBinaryRef(obj.i, uri.s, content.i, digestMethod.s, refType.s) :  ProcedureReturn XmlDSigGenAddExternalBinaryRef(obj, uri, content, digestMethod, refType) :  EndProcedure
  Procedure.l ckAddExternalFileRef(obj.i, uri.s, localFilePath.s, digestMethod.s, refType.s) :  ProcedureReturn XmlDSigGenAddExternalFileRef(obj, uri, localFilePath, digestMethod, refType) :  EndProcedure
  Procedure.l ckAddExternalTextRef(obj.i, uri.s, content.i, charset.s, includeBom.l, digestMethod.s, refType.s) :  ProcedureReturn XmlDSigGenAddExternalTextRef(obj, uri, content, charset, includeBom, digestMethod, refType) :  EndProcedure
  Procedure.l ckAddExternalXmlRef(obj.i, uri.s, content.i, digestMethod.s, canonMethod.s, refType.s) :  ProcedureReturn XmlDSigGenAddExternalXmlRef(obj, uri, content, digestMethod, canonMethod, refType) :  EndProcedure
  Procedure.l ckAddObject(obj.i, id.s, content.s, mimeType.s, encoding.s) :  ProcedureReturn XmlDSigGenAddObject(obj, id, content, mimeType, encoding) :  EndProcedure
  Procedure.l ckAddObjectRef(obj.i, id.s, digestMethod.s, canonMethod.s, prefixList.s, refType.s) :  ProcedureReturn XmlDSigGenAddObjectRef(obj, id, digestMethod, canonMethod, prefixList, refType) :  EndProcedure
  Procedure.l ckAddSameDocRef(obj.i, id.s, digestMethod.s, canonMethod.s, prefixList.s, refType.s) :  ProcedureReturn XmlDSigGenAddSameDocRef(obj, id, digestMethod, canonMethod, prefixList, refType) :  EndProcedure
  Procedure.l ckAddSignatureNamespace(obj.i, nsPrefix.s, nsUri.s) :  ProcedureReturn XmlDSigGenAddSignatureNamespace(obj, nsPrefix, nsUri) :  EndProcedure
  Procedure.s ckConstructSignedInfo(obj.i, sbXml.i) :  ProcedureReturn PeekS(XmlDSigGenConstructSignedInfo(obj, sbXml)) :  EndProcedure
  Procedure.s ckCreateXmlDSig(obj.i, inXml.s) :  ProcedureReturn PeekS(XmlDSigGenCreateXmlDSig(obj, inXml)) :  EndProcedure
  Procedure.l ckCreateXmlDSigSb(obj.i, sbXml.i) :  ProcedureReturn XmlDSigGenCreateXmlDSigSb(obj, sbXml) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn XmlDSigGenSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetHmacKey(obj.i, key.s, encoding.s) :  ProcedureReturn XmlDSigGenSetHmacKey(obj, key, encoding) :  EndProcedure
  Procedure.l ckSetPrivateKey(obj.i, privKey.i) :  ProcedureReturn XmlDSigGenSetPrivateKey(obj, privKey) :  EndProcedure
  Procedure.l ckSetRefIdAttr(obj.i, uri_or_id.s, value.s) :  ProcedureReturn XmlDSigGenSetRefIdAttr(obj, uri_or_id, value) :  EndProcedure
  Procedure.l ckSetX509Cert(obj.i, cert.i, usePrivateKey.l) :  ProcedureReturn XmlDSigGenSetX509Cert(obj, cert, usePrivateKey) :  EndProcedure
EndModule

