DeclareModule CkPrivateKey
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckBitLength(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckKeyType(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckPkcs8EncryptAlg(obj.i)
  Declare setCkPkcs8EncryptAlg(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckGetJwk(obj.i)
  Declare.s ckGetJwkThumbprint(obj.i, hashAlg.s)
  Declare.s ckGetPkcs1ENC(obj.i, encoding.s)
  Declare.s ckGetPkcs1Pem(obj.i)
  Declare.s ckGetPkcs8ENC(obj.i, encoding.s)
  Declare.s ckGetPkcs8EncryptedENC(obj.i, encoding.s, password.s)
  Declare.s ckGetPkcs8EncryptedPem(obj.i, password.s)
  Declare.s ckGetPkcs8Pem(obj.i)
  Declare.i ckGetPublicKey(obj.i)
  Declare.s ckGetRawHex(obj.i, pubKey.i)
  Declare.s ckGetRsaPem(obj.i)
  Declare.s ckGetXml(obj.i)
  Declare.l ckLoadAnyFormat(obj.i, privKeyData.i, password.s)
  Declare.l ckLoadAnyFormatFile(obj.i, path.s, password.s)
  Declare.l ckLoadEd25519(obj.i, privKey.s, pubKey.s)
  Declare.l ckLoadEncryptedPem(obj.i, pemStr.s, password.s)
  Declare.l ckLoadEncryptedPemFile(obj.i, path.s, password.s)
  Declare.l ckLoadJwk(obj.i, jsonStr.s)
  Declare.l ckLoadPem(obj.i, str.s)
  Declare.l ckLoadPemFile(obj.i, path.s)
  Declare.l ckLoadPkcs1File(obj.i, path.s)
  Declare.l ckLoadPkcs8EncryptedFile(obj.i, path.s, password.s)
  Declare.l ckLoadPkcs8File(obj.i, path.s)
  Declare.l ckLoadPvkFile(obj.i, path.s, password.s)
  Declare.l ckLoadRsaDerFile(obj.i, path.s)
  Declare.l ckLoadXml(obj.i, xml.s)
  Declare.l ckLoadXmlFile(obj.i, path.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSavePemFile(obj.i, path.s)
  Declare.l ckSavePkcs1File(obj.i, path.s)
  Declare.l ckSavePkcs8EncryptedFile(obj.i, password.s, path.s)
  Declare.l ckSavePkcs8EncryptedPemFile(obj.i, password.s, path.s)
  Declare.l ckSavePkcs8File(obj.i, path.s)
  Declare.l ckSavePkcs8PemFile(obj.i, path.s)
  Declare.l ckSaveRsaDerFile(obj.i, path.s)
  Declare.l ckSaveRsaPemFile(obj.i, path.s)
  Declare.l ckSaveXmlFile(obj.i, path.s)
EndDeclareModule

Module CkPrivateKey
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkPrivateKeyCreate()
  PrototypeC CkPrivateKeyDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPrivateKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPrivateKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPrivateKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPrivateKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPrivateKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PrivateKeyCreate.CkPrivateKeyCreate = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_CreateW")
  Global PrivateKeyDispose.CkPrivateKeyDispose = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_DisposeW")
  Global PrivateKeyBitLength.cklPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getBitLengthW")
  Global PrivateKeyDebugLogFilePath.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_debugLogFilePathW")
  Global PrivateKeyPSetDebugLogFilePath.cksPropSet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_putDebugLogFilePathW")
  Global PrivateKeyKeyType.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_keyTypeW")
  Global PrivateKeyLastErrorHtml.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_lastErrorHtmlW")
  Global PrivateKeyLastErrorText.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_lastErrorTextW")
  Global PrivateKeyLastErrorXml.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_lastErrorXmlW")
  Global PrivateKeyLastMethodSuccess.cklPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getLastMethodSuccessW")
  Global PrivateKeyPSetLastMethodSuccess.cklPropSet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_putLastMethodSuccessW")
  Global PrivateKeyPkcs8EncryptAlg.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_pkcs8EncryptAlgW")
  Global PrivateKeyPSetPkcs8EncryptAlg.cksPropSet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_putPkcs8EncryptAlgW")
  Global PrivateKeyVerboseLogging.cklPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getVerboseLoggingW")
  Global PrivateKeyPSetVerboseLogging.cklPropSet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_putVerboseLoggingW")
  Global PrivateKeyVersion.cksPropGet = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_versionW")
  Global PrivateKeyGetJwk.cklM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getJwkW")
  Global PrivateKeyGetJwkThumbprint.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getJwkThumbprintW")
  Global PrivateKeyGetPkcs1ENC.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs1ENCW")
  Global PrivateKeyGetPkcs1Pem.cklM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs1PemW")
  Global PrivateKeyGetPkcs8ENC.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs8ENCW")
  Global PrivateKeyGetPkcs8EncryptedENC.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs8EncryptedENCW")
  Global PrivateKeyGetPkcs8EncryptedPem.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs8EncryptedPemW")
  Global PrivateKeyGetPkcs8Pem.cklM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getPkcs8PemW")
  Global PrivateKeyGetPublicKey.ckiM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_GetPublicKeyW")
  Global PrivateKeyGetRawHex.cklMi = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getRawHexW")
  Global PrivateKeyGetRsaPem.cklM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getRsaPemW")
  Global PrivateKeyGetXml.cklM = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_getXmlW")
  Global PrivateKeyLoadAnyFormat.cklMis = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadAnyFormatW")
  Global PrivateKeyLoadAnyFormatFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadAnyFormatFileW")
  Global PrivateKeyLoadEd25519.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadEd25519W")
  Global PrivateKeyLoadEncryptedPem.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadEncryptedPemW")
  Global PrivateKeyLoadEncryptedPemFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadEncryptedPemFileW")
  Global PrivateKeyLoadJwk.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadJwkW")
  Global PrivateKeyLoadPem.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPemW")
  Global PrivateKeyLoadPemFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPemFileW")
  Global PrivateKeyLoadPkcs1File.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPkcs1FileW")
  Global PrivateKeyLoadPkcs8EncryptedFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPkcs8EncryptedFileW")
  Global PrivateKeyLoadPkcs8File.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPkcs8FileW")
  Global PrivateKeyLoadPvkFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadPvkFileW")
  Global PrivateKeyLoadRsaDerFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadRsaDerFileW")
  Global PrivateKeyLoadXml.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadXmlW")
  Global PrivateKeyLoadXmlFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_LoadXmlFileW")
  Global PrivateKeySaveLastError.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SaveLastErrorW")
  Global PrivateKeySavePemFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePemFileW")
  Global PrivateKeySavePkcs1File.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePkcs1FileW")
  Global PrivateKeySavePkcs8EncryptedFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePkcs8EncryptedFileW")
  Global PrivateKeySavePkcs8EncryptedPemFile.cklMss = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePkcs8EncryptedPemFileW")
  Global PrivateKeySavePkcs8File.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePkcs8FileW")
  Global PrivateKeySavePkcs8PemFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SavePkcs8PemFileW")
  Global PrivateKeySaveRsaDerFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SaveRsaDerFileW")
  Global PrivateKeySaveRsaPemFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SaveRsaPemFileW")
  Global PrivateKeySaveXmlFile.cklMs = GetFunction(CkPrivateKeyLibId,"CkPrivateKeyU_SaveXmlFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PrivateKeyCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PrivateKeyDispose(obj) : EndProcedure
  Procedure.l ckBitLength(obj.i) : ProcedureReturn PrivateKeyBitLength(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PrivateKeyDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PrivateKeyPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckKeyType(obj.i) : ProcedureReturn PeekS(PrivateKeyKeyType(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PrivateKeyLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PrivateKeyLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PrivateKeyLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PrivateKeyLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PrivateKeyPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckPkcs8EncryptAlg(obj.i) : ProcedureReturn PeekS(PrivateKeyPkcs8EncryptAlg(obj)) : EndProcedure
  Procedure setCkPkcs8EncryptAlg(obj.i, value.s) : ProcedureReturn PrivateKeyPSetPkcs8EncryptAlg(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PrivateKeyVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PrivateKeyPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PrivateKeyVersion(obj)) : EndProcedure
  Procedure.s ckGetJwk(obj.i) :  ProcedureReturn PeekS(PrivateKeyGetJwk(obj)) :  EndProcedure
  Procedure.s ckGetJwkThumbprint(obj.i, hashAlg.s) :  ProcedureReturn PeekS(PrivateKeyGetJwkThumbprint(obj, hashAlg)) :  EndProcedure
  Procedure.s ckGetPkcs1ENC(obj.i, encoding.s) :  ProcedureReturn PeekS(PrivateKeyGetPkcs1ENC(obj, encoding)) :  EndProcedure
  Procedure.s ckGetPkcs1Pem(obj.i) :  ProcedureReturn PeekS(PrivateKeyGetPkcs1Pem(obj)) :  EndProcedure
  Procedure.s ckGetPkcs8ENC(obj.i, encoding.s) :  ProcedureReturn PeekS(PrivateKeyGetPkcs8ENC(obj, encoding)) :  EndProcedure
  Procedure.s ckGetPkcs8EncryptedENC(obj.i, encoding.s, password.s) :  ProcedureReturn PeekS(PrivateKeyGetPkcs8EncryptedENC(obj, encoding, password)) :  EndProcedure
  Procedure.s ckGetPkcs8EncryptedPem(obj.i, password.s) :  ProcedureReturn PeekS(PrivateKeyGetPkcs8EncryptedPem(obj, password)) :  EndProcedure
  Procedure.s ckGetPkcs8Pem(obj.i) :  ProcedureReturn PeekS(PrivateKeyGetPkcs8Pem(obj)) :  EndProcedure
  Procedure.i ckGetPublicKey(obj.i) :  ProcedureReturn PrivateKeyGetPublicKey(obj) :  EndProcedure
  Procedure.s ckGetRawHex(obj.i, pubKey.i) :  ProcedureReturn PeekS(PrivateKeyGetRawHex(obj, pubKey)) :  EndProcedure
  Procedure.s ckGetRsaPem(obj.i) :  ProcedureReturn PeekS(PrivateKeyGetRsaPem(obj)) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(PrivateKeyGetXml(obj)) :  EndProcedure
  Procedure.l ckLoadAnyFormat(obj.i, privKeyData.i, password.s) :  ProcedureReturn PrivateKeyLoadAnyFormat(obj, privKeyData, password) :  EndProcedure
  Procedure.l ckLoadAnyFormatFile(obj.i, path.s, password.s) :  ProcedureReturn PrivateKeyLoadAnyFormatFile(obj, path, password) :  EndProcedure
  Procedure.l ckLoadEd25519(obj.i, privKey.s, pubKey.s) :  ProcedureReturn PrivateKeyLoadEd25519(obj, privKey, pubKey) :  EndProcedure
  Procedure.l ckLoadEncryptedPem(obj.i, pemStr.s, password.s) :  ProcedureReturn PrivateKeyLoadEncryptedPem(obj, pemStr, password) :  EndProcedure
  Procedure.l ckLoadEncryptedPemFile(obj.i, path.s, password.s) :  ProcedureReturn PrivateKeyLoadEncryptedPemFile(obj, path, password) :  EndProcedure
  Procedure.l ckLoadJwk(obj.i, jsonStr.s) :  ProcedureReturn PrivateKeyLoadJwk(obj, jsonStr) :  EndProcedure
  Procedure.l ckLoadPem(obj.i, str.s) :  ProcedureReturn PrivateKeyLoadPem(obj, str) :  EndProcedure
  Procedure.l ckLoadPemFile(obj.i, path.s) :  ProcedureReturn PrivateKeyLoadPemFile(obj, path) :  EndProcedure
  Procedure.l ckLoadPkcs1File(obj.i, path.s) :  ProcedureReturn PrivateKeyLoadPkcs1File(obj, path) :  EndProcedure
  Procedure.l ckLoadPkcs8EncryptedFile(obj.i, path.s, password.s) :  ProcedureReturn PrivateKeyLoadPkcs8EncryptedFile(obj, path, password) :  EndProcedure
  Procedure.l ckLoadPkcs8File(obj.i, path.s) :  ProcedureReturn PrivateKeyLoadPkcs8File(obj, path) :  EndProcedure
  Procedure.l ckLoadPvkFile(obj.i, path.s, password.s) :  ProcedureReturn PrivateKeyLoadPvkFile(obj, path, password) :  EndProcedure
  Procedure.l ckLoadRsaDerFile(obj.i, path.s) :  ProcedureReturn PrivateKeyLoadRsaDerFile(obj, path) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xml.s) :  ProcedureReturn PrivateKeyLoadXml(obj, xml) :  EndProcedure
  Procedure.l ckLoadXmlFile(obj.i, path.s) :  ProcedureReturn PrivateKeyLoadXmlFile(obj, path) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PrivateKeySaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSavePemFile(obj.i, path.s) :  ProcedureReturn PrivateKeySavePemFile(obj, path) :  EndProcedure
  Procedure.l ckSavePkcs1File(obj.i, path.s) :  ProcedureReturn PrivateKeySavePkcs1File(obj, path) :  EndProcedure
  Procedure.l ckSavePkcs8EncryptedFile(obj.i, password.s, path.s) :  ProcedureReturn PrivateKeySavePkcs8EncryptedFile(obj, password, path) :  EndProcedure
  Procedure.l ckSavePkcs8EncryptedPemFile(obj.i, password.s, path.s) :  ProcedureReturn PrivateKeySavePkcs8EncryptedPemFile(obj, password, path) :  EndProcedure
  Procedure.l ckSavePkcs8File(obj.i, path.s) :  ProcedureReturn PrivateKeySavePkcs8File(obj, path) :  EndProcedure
  Procedure.l ckSavePkcs8PemFile(obj.i, path.s) :  ProcedureReturn PrivateKeySavePkcs8PemFile(obj, path) :  EndProcedure
  Procedure.l ckSaveRsaDerFile(obj.i, path.s) :  ProcedureReturn PrivateKeySaveRsaDerFile(obj, path) :  EndProcedure
  Procedure.l ckSaveRsaPemFile(obj.i, path.s) :  ProcedureReturn PrivateKeySaveRsaPemFile(obj, path) :  EndProcedure
  Procedure.l ckSaveXmlFile(obj.i, path.s) :  ProcedureReturn PrivateKeySaveXmlFile(obj, path) :  EndProcedure
EndModule

