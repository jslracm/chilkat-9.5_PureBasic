DeclareModule CkJwe
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
  Declare.l ckNumRecipients(obj.i)
  Declare.l ckPreferCompact(obj.i)
  Declare setCkPreferCompact(obj.i, value.l)
  Declare.l ckPreferFlattened(obj.i)
  Declare setCkPreferFlattened(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckDecrypt(obj.i, index.l, charset.s)
  Declare.l ckDecryptBd(obj.i, index.l, bd.i)
  Declare.l ckDecryptSb(obj.i, index.l, charset.s, contentSb.i)
  Declare.s ckEncrypt(obj.i, content.s, charset.s)
  Declare.l ckEncryptBd(obj.i, contentBd.i, jweSb.i)
  Declare.l ckEncryptSb(obj.i, contentSb.i, charset.s, jweSb.i)
  Declare.l ckFindRecipient(obj.i, paramName.s, paramValue.s, caseSensitive.l)
  Declare.l ckLoadJwe(obj.i, jwe.s)
  Declare.l ckLoadJweSb(obj.i, sb.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetAad(obj.i, aad.s, charset.s)
  Declare.l ckSetAadBd(obj.i, aad.i)
  Declare.l ckSetPassword(obj.i, index.l, password.s)
  Declare.l ckSetPrivateKey(obj.i, index.l, privKey.i)
  Declare.l ckSetProtectedHeader(obj.i, json.i)
  Declare.l ckSetPublicKey(obj.i, index.l, pubKey.i)
  Declare.l ckSetRecipientHeader(obj.i, index.l, json.i)
  Declare.l ckSetUnprotectedHeader(obj.i, json.i)
  Declare.l ckSetWrappingKey(obj.i, index.l, encodedKey.s, encoding.s)
EndDeclareModule

Module CkJwe
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMlsi(obj.i, arg1.l, arg2.s, arg3.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMisi(obj.i, arg1.i, arg2.s, arg3.i)
  PrototypeC.i CkJweCreate()
  PrototypeC CkJweDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJweLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJweLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJweLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJweLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJweLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JweCreate.CkJweCreate = GetFunction(CkJweLibId,"CkJweU_CreateW")
  Global JweDispose.CkJweDispose = GetFunction(CkJweLibId,"CkJweU_DisposeW")
  Global JweDebugLogFilePath.cksPropGet = GetFunction(CkJweLibId,"CkJweU_debugLogFilePathW")
  Global JwePSetDebugLogFilePath.cksPropSet = GetFunction(CkJweLibId,"CkJweU_putDebugLogFilePathW")
  Global JweLastErrorHtml.cksPropGet = GetFunction(CkJweLibId,"CkJweU_lastErrorHtmlW")
  Global JweLastErrorText.cksPropGet = GetFunction(CkJweLibId,"CkJweU_lastErrorTextW")
  Global JweLastErrorXml.cksPropGet = GetFunction(CkJweLibId,"CkJweU_lastErrorXmlW")
  Global JweLastMethodSuccess.cklPropGet = GetFunction(CkJweLibId,"CkJweU_getLastMethodSuccessW")
  Global JwePSetLastMethodSuccess.cklPropSet = GetFunction(CkJweLibId,"CkJweU_putLastMethodSuccessW")
  Global JweNumRecipients.cklPropGet = GetFunction(CkJweLibId,"CkJweU_getNumRecipientsW")
  Global JwePreferCompact.cklPropGet = GetFunction(CkJweLibId,"CkJweU_getPreferCompactW")
  Global JwePSetPreferCompact.cklPropSet = GetFunction(CkJweLibId,"CkJweU_putPreferCompactW")
  Global JwePreferFlattened.cklPropGet = GetFunction(CkJweLibId,"CkJweU_getPreferFlattenedW")
  Global JwePSetPreferFlattened.cklPropSet = GetFunction(CkJweLibId,"CkJweU_putPreferFlattenedW")
  Global JweVerboseLogging.cklPropGet = GetFunction(CkJweLibId,"CkJweU_getVerboseLoggingW")
  Global JwePSetVerboseLogging.cklPropSet = GetFunction(CkJweLibId,"CkJweU_putVerboseLoggingW")
  Global JweVersion.cksPropGet = GetFunction(CkJweLibId,"CkJweU_versionW")
  Global JweDecrypt.cklMls = GetFunction(CkJweLibId,"CkJweU_decryptW")
  Global JweDecryptBd.cklMli = GetFunction(CkJweLibId,"CkJweU_DecryptBdW")
  Global JweDecryptSb.cklMlsi = GetFunction(CkJweLibId,"CkJweU_DecryptSbW")
  Global JweEncrypt.cklMss = GetFunction(CkJweLibId,"CkJweU_encryptW")
  Global JweEncryptBd.cklMii = GetFunction(CkJweLibId,"CkJweU_EncryptBdW")
  Global JweEncryptSb.cklMisi = GetFunction(CkJweLibId,"CkJweU_EncryptSbW")
  Global JweFindRecipient.cklMssl = GetFunction(CkJweLibId,"CkJweU_FindRecipientW")
  Global JweLoadJwe.cklMs = GetFunction(CkJweLibId,"CkJweU_LoadJweW")
  Global JweLoadJweSb.cklMi = GetFunction(CkJweLibId,"CkJweU_LoadJweSbW")
  Global JweSaveLastError.cklMs = GetFunction(CkJweLibId,"CkJweU_SaveLastErrorW")
  Global JweSetAad.cklMss = GetFunction(CkJweLibId,"CkJweU_SetAadW")
  Global JweSetAadBd.cklMi = GetFunction(CkJweLibId,"CkJweU_SetAadBdW")
  Global JweSetPassword.cklMls = GetFunction(CkJweLibId,"CkJweU_SetPasswordW")
  Global JweSetPrivateKey.cklMli = GetFunction(CkJweLibId,"CkJweU_SetPrivateKeyW")
  Global JweSetProtectedHeader.cklMi = GetFunction(CkJweLibId,"CkJweU_SetProtectedHeaderW")
  Global JweSetPublicKey.cklMli = GetFunction(CkJweLibId,"CkJweU_SetPublicKeyW")
  Global JweSetRecipientHeader.cklMli = GetFunction(CkJweLibId,"CkJweU_SetRecipientHeaderW")
  Global JweSetUnprotectedHeader.cklMi = GetFunction(CkJweLibId,"CkJweU_SetUnprotectedHeaderW")
  Global JweSetWrappingKey.cklMlss = GetFunction(CkJweLibId,"CkJweU_SetWrappingKeyW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JweCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JweDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JweDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JwePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JweLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JweLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JweLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JweLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JwePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumRecipients(obj.i) : ProcedureReturn JweNumRecipients(obj) : EndProcedure
  Procedure.l ckPreferCompact(obj.i) : ProcedureReturn JwePreferCompact(obj) : EndProcedure
  Procedure setCkPreferCompact(obj.i, value.l) : ProcedureReturn JwePSetPreferCompact(obj,value) : EndProcedure
  Procedure.l ckPreferFlattened(obj.i) : ProcedureReturn JwePreferFlattened(obj) : EndProcedure
  Procedure setCkPreferFlattened(obj.i, value.l) : ProcedureReturn JwePSetPreferFlattened(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JweVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JwePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JweVersion(obj)) : EndProcedure
  Procedure.s ckDecrypt(obj.i, index.l, charset.s) :  ProcedureReturn PeekS(JweDecrypt(obj, index, charset)) :  EndProcedure
  Procedure.l ckDecryptBd(obj.i, index.l, bd.i) :  ProcedureReturn JweDecryptBd(obj, index, bd) :  EndProcedure
  Procedure.l ckDecryptSb(obj.i, index.l, charset.s, contentSb.i) :  ProcedureReturn JweDecryptSb(obj, index, charset, contentSb) :  EndProcedure
  Procedure.s ckEncrypt(obj.i, content.s, charset.s) :  ProcedureReturn PeekS(JweEncrypt(obj, content, charset)) :  EndProcedure
  Procedure.l ckEncryptBd(obj.i, contentBd.i, jweSb.i) :  ProcedureReturn JweEncryptBd(obj, contentBd, jweSb) :  EndProcedure
  Procedure.l ckEncryptSb(obj.i, contentSb.i, charset.s, jweSb.i) :  ProcedureReturn JweEncryptSb(obj, contentSb, charset, jweSb) :  EndProcedure
  Procedure.l ckFindRecipient(obj.i, paramName.s, paramValue.s, caseSensitive.l) :  ProcedureReturn JweFindRecipient(obj, paramName, paramValue, caseSensitive) :  EndProcedure
  Procedure.l ckLoadJwe(obj.i, jwe.s) :  ProcedureReturn JweLoadJwe(obj, jwe) :  EndProcedure
  Procedure.l ckLoadJweSb(obj.i, sb.i) :  ProcedureReturn JweLoadJweSb(obj, sb) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JweSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetAad(obj.i, aad.s, charset.s) :  ProcedureReturn JweSetAad(obj, aad, charset) :  EndProcedure
  Procedure.l ckSetAadBd(obj.i, aad.i) :  ProcedureReturn JweSetAadBd(obj, aad) :  EndProcedure
  Procedure.l ckSetPassword(obj.i, index.l, password.s) :  ProcedureReturn JweSetPassword(obj, index, password) :  EndProcedure
  Procedure.l ckSetPrivateKey(obj.i, index.l, privKey.i) :  ProcedureReturn JweSetPrivateKey(obj, index, privKey) :  EndProcedure
  Procedure.l ckSetProtectedHeader(obj.i, json.i) :  ProcedureReturn JweSetProtectedHeader(obj, json) :  EndProcedure
  Procedure.l ckSetPublicKey(obj.i, index.l, pubKey.i) :  ProcedureReturn JweSetPublicKey(obj, index, pubKey) :  EndProcedure
  Procedure.l ckSetRecipientHeader(obj.i, index.l, json.i) :  ProcedureReturn JweSetRecipientHeader(obj, index, json) :  EndProcedure
  Procedure.l ckSetUnprotectedHeader(obj.i, json.i) :  ProcedureReturn JweSetUnprotectedHeader(obj, json) :  EndProcedure
  Procedure.l ckSetWrappingKey(obj.i, index.l, encodedKey.s, encoding.s) :  ProcedureReturn JweSetWrappingKey(obj, index, encodedKey, encoding) :  EndProcedure
EndModule

