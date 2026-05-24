DeclareModule CkSshKey
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckComment(obj.i)
  Declare setCkComment(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckIsDsaKey(obj.i)
  Declare.l ckIsPrivateKey(obj.i)
  Declare.l ckIsRsaKey(obj.i)
  Declare.s ckKeyType(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckPassword(obj.i)
  Declare setCkPassword(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckFromOpenSshPrivateKey(obj.i, keyStr.s)
  Declare.l ckFromOpenSshPublicKey(obj.i, keyStr.s)
  Declare.l ckFromPuttyPrivateKey(obj.i, keyStr.s)
  Declare.l ckFromRfc4716PublicKey(obj.i, keyStr.s)
  Declare.l ckFromXml(obj.i, xmlKey.s)
  Declare.l ckGenerateDsaKey(obj.i, numBits.l)
  Declare.l ckGenerateEcdsaKey(obj.i, curveName.s)
  Declare.l ckGenerateEd25519Key(obj.i)
  Declare.l ckGenerateRsaKey(obj.i, numBits.l, exponent.l)
  Declare.s ckGenFingerprint(obj.i)
  Declare.s ckLoadText(obj.i, filename.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveText(obj.i, strToSave.s, filename.s)
  Declare.s ckToOpenSshPrivateKey(obj.i, bEncrypt.l)
  Declare.s ckToOpenSshPublicKey(obj.i)
  Declare.s ckToPuttyPrivateKey(obj.i, bEncrypt.l)
  Declare.s ckToRfc4716PublicKey(obj.i)
  Declare.s ckToXml(obj.i)
EndDeclareModule

Module CkSshKey
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkSshKeyCreate()
  PrototypeC CkSshKeyDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSshKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSshKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSshKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSshKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SshKeyCreate.CkSshKeyCreate = GetFunction(CkSshKeyLibId,"CkSshKeyU_CreateW")
  Global SshKeyDispose.CkSshKeyDispose = GetFunction(CkSshKeyLibId,"CkSshKeyU_DisposeW")
  Global SshKeyComment.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_commentW")
  Global SshKeyPSetComment.cksPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putCommentW")
  Global SshKeyDebugLogFilePath.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_debugLogFilePathW")
  Global SshKeyPSetDebugLogFilePath.cksPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putDebugLogFilePathW")
  Global SshKeyIsDsaKey.cklPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_getIsDsaKeyW")
  Global SshKeyIsPrivateKey.cklPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_getIsPrivateKeyW")
  Global SshKeyIsRsaKey.cklPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_getIsRsaKeyW")
  Global SshKeyKeyType.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_keyTypeW")
  Global SshKeyLastErrorHtml.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_lastErrorHtmlW")
  Global SshKeyLastErrorText.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_lastErrorTextW")
  Global SshKeyLastErrorXml.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_lastErrorXmlW")
  Global SshKeyLastMethodSuccess.cklPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_getLastMethodSuccessW")
  Global SshKeyPSetLastMethodSuccess.cklPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putLastMethodSuccessW")
  Global SshKeyPassword.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_passwordW")
  Global SshKeyPSetPassword.cksPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putPasswordW")
  Global SshKeyUncommonOptions.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_uncommonOptionsW")
  Global SshKeyPSetUncommonOptions.cksPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putUncommonOptionsW")
  Global SshKeyVerboseLogging.cklPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_getVerboseLoggingW")
  Global SshKeyPSetVerboseLogging.cklPropSet = GetFunction(CkSshKeyLibId,"CkSshKeyU_putVerboseLoggingW")
  Global SshKeyVersion.cksPropGet = GetFunction(CkSshKeyLibId,"CkSshKeyU_versionW")
  Global SshKeyFromOpenSshPrivateKey.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_FromOpenSshPrivateKeyW")
  Global SshKeyFromOpenSshPublicKey.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_FromOpenSshPublicKeyW")
  Global SshKeyFromPuttyPrivateKey.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_FromPuttyPrivateKeyW")
  Global SshKeyFromRfc4716PublicKey.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_FromRfc4716PublicKeyW")
  Global SshKeyFromXml.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_FromXmlW")
  Global SshKeyGenerateDsaKey.cklMl = GetFunction(CkSshKeyLibId,"CkSshKeyU_GenerateDsaKeyW")
  Global SshKeyGenerateEcdsaKey.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_GenerateEcdsaKeyW")
  Global SshKeyGenerateEd25519Key.cklM = GetFunction(CkSshKeyLibId,"CkSshKeyU_GenerateEd25519KeyW")
  Global SshKeyGenerateRsaKey.cklMll = GetFunction(CkSshKeyLibId,"CkSshKeyU_GenerateRsaKeyW")
  Global SshKeyGenFingerprint.cklM = GetFunction(CkSshKeyLibId,"CkSshKeyU_genFingerprintW")
  Global SshKeyLoadText.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_loadTextW")
  Global SshKeySaveLastError.cklMs = GetFunction(CkSshKeyLibId,"CkSshKeyU_SaveLastErrorW")
  Global SshKeySaveText.cklMss = GetFunction(CkSshKeyLibId,"CkSshKeyU_SaveTextW")
  Global SshKeyToOpenSshPrivateKey.cklMl = GetFunction(CkSshKeyLibId,"CkSshKeyU_toOpenSshPrivateKeyW")
  Global SshKeyToOpenSshPublicKey.cklM = GetFunction(CkSshKeyLibId,"CkSshKeyU_toOpenSshPublicKeyW")
  Global SshKeyToPuttyPrivateKey.cklMl = GetFunction(CkSshKeyLibId,"CkSshKeyU_toPuttyPrivateKeyW")
  Global SshKeyToRfc4716PublicKey.cklM = GetFunction(CkSshKeyLibId,"CkSshKeyU_toRfc4716PublicKeyW")
  Global SshKeyToXml.cklM = GetFunction(CkSshKeyLibId,"CkSshKeyU_toXmlW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SshKeyCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SshKeyDispose(obj) : EndProcedure
  Procedure.s ckComment(obj.i) : ProcedureReturn PeekS(SshKeyComment(obj)) : EndProcedure
  Procedure setCkComment(obj.i, value.s) : ProcedureReturn SshKeyPSetComment(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(SshKeyDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn SshKeyPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckIsDsaKey(obj.i) : ProcedureReturn SshKeyIsDsaKey(obj) : EndProcedure
  Procedure.l ckIsPrivateKey(obj.i) : ProcedureReturn SshKeyIsPrivateKey(obj) : EndProcedure
  Procedure.l ckIsRsaKey(obj.i) : ProcedureReturn SshKeyIsRsaKey(obj) : EndProcedure
  Procedure.s ckKeyType(obj.i) : ProcedureReturn PeekS(SshKeyKeyType(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(SshKeyLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(SshKeyLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(SshKeyLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SshKeyLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SshKeyPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(SshKeyPassword(obj)) : EndProcedure
  Procedure setCkPassword(obj.i, value.s) : ProcedureReturn SshKeyPSetPassword(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(SshKeyUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn SshKeyPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn SshKeyVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn SshKeyPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(SshKeyVersion(obj)) : EndProcedure
  Procedure.l ckFromOpenSshPrivateKey(obj.i, keyStr.s) :  ProcedureReturn SshKeyFromOpenSshPrivateKey(obj, keyStr) :  EndProcedure
  Procedure.l ckFromOpenSshPublicKey(obj.i, keyStr.s) :  ProcedureReturn SshKeyFromOpenSshPublicKey(obj, keyStr) :  EndProcedure
  Procedure.l ckFromPuttyPrivateKey(obj.i, keyStr.s) :  ProcedureReturn SshKeyFromPuttyPrivateKey(obj, keyStr) :  EndProcedure
  Procedure.l ckFromRfc4716PublicKey(obj.i, keyStr.s) :  ProcedureReturn SshKeyFromRfc4716PublicKey(obj, keyStr) :  EndProcedure
  Procedure.l ckFromXml(obj.i, xmlKey.s) :  ProcedureReturn SshKeyFromXml(obj, xmlKey) :  EndProcedure
  Procedure.l ckGenerateDsaKey(obj.i, numBits.l) :  ProcedureReturn SshKeyGenerateDsaKey(obj, numBits) :  EndProcedure
  Procedure.l ckGenerateEcdsaKey(obj.i, curveName.s) :  ProcedureReturn SshKeyGenerateEcdsaKey(obj, curveName) :  EndProcedure
  Procedure.l ckGenerateEd25519Key(obj.i) :  ProcedureReturn SshKeyGenerateEd25519Key(obj) :  EndProcedure
  Procedure.l ckGenerateRsaKey(obj.i, numBits.l, exponent.l) :  ProcedureReturn SshKeyGenerateRsaKey(obj, numBits, exponent) :  EndProcedure
  Procedure.s ckGenFingerprint(obj.i) :  ProcedureReturn PeekS(SshKeyGenFingerprint(obj)) :  EndProcedure
  Procedure.s ckLoadText(obj.i, filename.s) :  ProcedureReturn PeekS(SshKeyLoadText(obj, filename)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn SshKeySaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveText(obj.i, strToSave.s, filename.s) :  ProcedureReturn SshKeySaveText(obj, strToSave, filename) :  EndProcedure
  Procedure.s ckToOpenSshPrivateKey(obj.i, bEncrypt.l) :  ProcedureReturn PeekS(SshKeyToOpenSshPrivateKey(obj, bEncrypt)) :  EndProcedure
  Procedure.s ckToOpenSshPublicKey(obj.i) :  ProcedureReturn PeekS(SshKeyToOpenSshPublicKey(obj)) :  EndProcedure
  Procedure.s ckToPuttyPrivateKey(obj.i, bEncrypt.l) :  ProcedureReturn PeekS(SshKeyToPuttyPrivateKey(obj, bEncrypt)) :  EndProcedure
  Procedure.s ckToRfc4716PublicKey(obj.i) :  ProcedureReturn PeekS(SshKeyToRfc4716PublicKey(obj)) :  EndProcedure
  Procedure.s ckToXml(obj.i) :  ProcedureReturn PeekS(SshKeyToXml(obj)) :  EndProcedure
EndModule

