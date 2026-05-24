DeclareModule CkPublicKey
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckKeySize(obj.i)
  Declare.s ckKeyType(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckGetEncoded(obj.i, preferPkcs1.l, encoding.s)
  Declare.s ckGetJwk(obj.i)
  Declare.s ckGetJwkThumbprint(obj.i, hashAlg.s)
  Declare.s ckGetOpenSslPem(obj.i)
  Declare.s ckGetPem(obj.i, preferPkcs1.l)
  Declare.s ckGetPkcs1ENC(obj.i, encoding.s)
  Declare.s ckGetPkcs8ENC(obj.i, encoding.s)
  Declare.s ckGetXml(obj.i)
  Declare.l ckLoadBase64(obj.i, keyStr.s)
  Declare.l ckLoadBd(obj.i, bd.i)
  Declare.l ckLoadEcdsa(obj.i, curveName.s, Qx.s, Qy.s)
  Declare.l ckLoadEd25519(obj.i, pubKey.s)
  Declare.l ckLoadFromFile(obj.i, path.s)
  Declare.l ckLoadFromString(obj.i, keyString.s)
  Declare.l ckLoadOpenSslDerFile(obj.i, path.s)
  Declare.l ckLoadOpenSslPem(obj.i, str.s)
  Declare.l ckLoadOpenSslPemFile(obj.i, path.s)
  Declare.l ckLoadPkcs1Pem(obj.i, str.s)
  Declare.l ckLoadRsaDerFile(obj.i, path.s)
  Declare.l ckLoadXml(obj.i, xml.s)
  Declare.l ckLoadXmlFile(obj.i, path.s)
  Declare.l ckSaveDerFile(obj.i, preferPkcs1.l, path.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveOpenSslDerFile(obj.i, path.s)
  Declare.l ckSaveOpenSslPemFile(obj.i, path.s)
  Declare.l ckSavePemFile(obj.i, preferPkcs1.l, path.s)
  Declare.l ckSaveRsaDerFile(obj.i, path.s)
  Declare.l ckSaveXmlFile(obj.i, path.s)
EndDeclareModule

Module CkPublicKey
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkPublicKeyCreate()
  PrototypeC CkPublicKeyDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPublicKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPublicKeyLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPublicKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPublicKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPublicKeyLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PublicKeyCreate.CkPublicKeyCreate = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_CreateW")
  Global PublicKeyDispose.CkPublicKeyDispose = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_DisposeW")
  Global PublicKeyDebugLogFilePath.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_debugLogFilePathW")
  Global PublicKeyPSetDebugLogFilePath.cksPropSet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_putDebugLogFilePathW")
  Global PublicKeyKeySize.cklPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getKeySizeW")
  Global PublicKeyKeyType.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_keyTypeW")
  Global PublicKeyLastErrorHtml.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_lastErrorHtmlW")
  Global PublicKeyLastErrorText.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_lastErrorTextW")
  Global PublicKeyLastErrorXml.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_lastErrorXmlW")
  Global PublicKeyLastMethodSuccess.cklPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getLastMethodSuccessW")
  Global PublicKeyPSetLastMethodSuccess.cklPropSet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_putLastMethodSuccessW")
  Global PublicKeyVerboseLogging.cklPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getVerboseLoggingW")
  Global PublicKeyPSetVerboseLogging.cklPropSet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_putVerboseLoggingW")
  Global PublicKeyVersion.cksPropGet = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_versionW")
  Global PublicKeyGetEncoded.cklMls = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getEncodedW")
  Global PublicKeyGetJwk.cklM = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getJwkW")
  Global PublicKeyGetJwkThumbprint.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getJwkThumbprintW")
  Global PublicKeyGetOpenSslPem.cklM = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getOpenSslPemW")
  Global PublicKeyGetPem.cklMl = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getPemW")
  Global PublicKeyGetPkcs1ENC.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getPkcs1ENCW")
  Global PublicKeyGetPkcs8ENC.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getPkcs8ENCW")
  Global PublicKeyGetXml.cklM = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_getXmlW")
  Global PublicKeyLoadBase64.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadBase64W")
  Global PublicKeyLoadBd.cklMi = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadBdW")
  Global PublicKeyLoadEcdsa.cklMsss = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadEcdsaW")
  Global PublicKeyLoadEd25519.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadEd25519W")
  Global PublicKeyLoadFromFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadFromFileW")
  Global PublicKeyLoadFromString.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadFromStringW")
  Global PublicKeyLoadOpenSslDerFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadOpenSslDerFileW")
  Global PublicKeyLoadOpenSslPem.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadOpenSslPemW")
  Global PublicKeyLoadOpenSslPemFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadOpenSslPemFileW")
  Global PublicKeyLoadPkcs1Pem.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadPkcs1PemW")
  Global PublicKeyLoadRsaDerFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadRsaDerFileW")
  Global PublicKeyLoadXml.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadXmlW")
  Global PublicKeyLoadXmlFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_LoadXmlFileW")
  Global PublicKeySaveDerFile.cklMls = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveDerFileW")
  Global PublicKeySaveLastError.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveLastErrorW")
  Global PublicKeySaveOpenSslDerFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveOpenSslDerFileW")
  Global PublicKeySaveOpenSslPemFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveOpenSslPemFileW")
  Global PublicKeySavePemFile.cklMls = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SavePemFileW")
  Global PublicKeySaveRsaDerFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveRsaDerFileW")
  Global PublicKeySaveXmlFile.cklMs = GetFunction(CkPublicKeyLibId,"CkPublicKeyU_SaveXmlFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PublicKeyCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PublicKeyDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PublicKeyDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PublicKeyPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckKeySize(obj.i) : ProcedureReturn PublicKeyKeySize(obj) : EndProcedure
  Procedure.s ckKeyType(obj.i) : ProcedureReturn PeekS(PublicKeyKeyType(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PublicKeyLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PublicKeyLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PublicKeyLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PublicKeyLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PublicKeyPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PublicKeyVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PublicKeyPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PublicKeyVersion(obj)) : EndProcedure
  Procedure.s ckGetEncoded(obj.i, preferPkcs1.l, encoding.s) :  ProcedureReturn PeekS(PublicKeyGetEncoded(obj, preferPkcs1, encoding)) :  EndProcedure
  Procedure.s ckGetJwk(obj.i) :  ProcedureReturn PeekS(PublicKeyGetJwk(obj)) :  EndProcedure
  Procedure.s ckGetJwkThumbprint(obj.i, hashAlg.s) :  ProcedureReturn PeekS(PublicKeyGetJwkThumbprint(obj, hashAlg)) :  EndProcedure
  Procedure.s ckGetOpenSslPem(obj.i) :  ProcedureReturn PeekS(PublicKeyGetOpenSslPem(obj)) :  EndProcedure
  Procedure.s ckGetPem(obj.i, preferPkcs1.l) :  ProcedureReturn PeekS(PublicKeyGetPem(obj, preferPkcs1)) :  EndProcedure
  Procedure.s ckGetPkcs1ENC(obj.i, encoding.s) :  ProcedureReturn PeekS(PublicKeyGetPkcs1ENC(obj, encoding)) :  EndProcedure
  Procedure.s ckGetPkcs8ENC(obj.i, encoding.s) :  ProcedureReturn PeekS(PublicKeyGetPkcs8ENC(obj, encoding)) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(PublicKeyGetXml(obj)) :  EndProcedure
  Procedure.l ckLoadBase64(obj.i, keyStr.s) :  ProcedureReturn PublicKeyLoadBase64(obj, keyStr) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, bd.i) :  ProcedureReturn PublicKeyLoadBd(obj, bd) :  EndProcedure
  Procedure.l ckLoadEcdsa(obj.i, curveName.s, Qx.s, Qy.s) :  ProcedureReturn PublicKeyLoadEcdsa(obj, curveName, Qx, Qy) :  EndProcedure
  Procedure.l ckLoadEd25519(obj.i, pubKey.s) :  ProcedureReturn PublicKeyLoadEd25519(obj, pubKey) :  EndProcedure
  Procedure.l ckLoadFromFile(obj.i, path.s) :  ProcedureReturn PublicKeyLoadFromFile(obj, path) :  EndProcedure
  Procedure.l ckLoadFromString(obj.i, keyString.s) :  ProcedureReturn PublicKeyLoadFromString(obj, keyString) :  EndProcedure
  Procedure.l ckLoadOpenSslDerFile(obj.i, path.s) :  ProcedureReturn PublicKeyLoadOpenSslDerFile(obj, path) :  EndProcedure
  Procedure.l ckLoadOpenSslPem(obj.i, str.s) :  ProcedureReturn PublicKeyLoadOpenSslPem(obj, str) :  EndProcedure
  Procedure.l ckLoadOpenSslPemFile(obj.i, path.s) :  ProcedureReturn PublicKeyLoadOpenSslPemFile(obj, path) :  EndProcedure
  Procedure.l ckLoadPkcs1Pem(obj.i, str.s) :  ProcedureReturn PublicKeyLoadPkcs1Pem(obj, str) :  EndProcedure
  Procedure.l ckLoadRsaDerFile(obj.i, path.s) :  ProcedureReturn PublicKeyLoadRsaDerFile(obj, path) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xml.s) :  ProcedureReturn PublicKeyLoadXml(obj, xml) :  EndProcedure
  Procedure.l ckLoadXmlFile(obj.i, path.s) :  ProcedureReturn PublicKeyLoadXmlFile(obj, path) :  EndProcedure
  Procedure.l ckSaveDerFile(obj.i, preferPkcs1.l, path.s) :  ProcedureReturn PublicKeySaveDerFile(obj, preferPkcs1, path) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PublicKeySaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveOpenSslDerFile(obj.i, path.s) :  ProcedureReturn PublicKeySaveOpenSslDerFile(obj, path) :  EndProcedure
  Procedure.l ckSaveOpenSslPemFile(obj.i, path.s) :  ProcedureReturn PublicKeySaveOpenSslPemFile(obj, path) :  EndProcedure
  Procedure.l ckSavePemFile(obj.i, preferPkcs1.l, path.s) :  ProcedureReturn PublicKeySavePemFile(obj, preferPkcs1, path) :  EndProcedure
  Procedure.l ckSaveRsaDerFile(obj.i, path.s) :  ProcedureReturn PublicKeySaveRsaDerFile(obj, path) :  EndProcedure
  Procedure.l ckSaveXmlFile(obj.i, path.s) :  ProcedureReturn PublicKeySaveXmlFile(obj, path) :  EndProcedure
EndModule

