DeclareModule CkDsa
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckGroupSize(obj.i)
  Declare setCkGroupSize(obj.i, value.l)
  Declare.s ckHexG(obj.i)
  Declare.s ckHexP(obj.i)
  Declare.s ckHexQ(obj.i)
  Declare.s ckHexX(obj.i)
  Declare.s ckHexY(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckFromDerFile(obj.i, path.s)
  Declare.l ckFromEncryptedPem(obj.i, password.s, pemData.s)
  Declare.l ckFromPem(obj.i, pemData.s)
  Declare.l ckFromPublicDerFile(obj.i, path.s)
  Declare.l ckFromPublicPem(obj.i, pemData.s)
  Declare.l ckFromXml(obj.i, xmlKey.s)
  Declare.l ckGenKey(obj.i, numBits.l)
  Declare.l ckGenKeyFromParamsDerFile(obj.i, path.s)
  Declare.l ckGenKeyFromParamsPem(obj.i, pem.s)
  Declare.l ckGenKeyFromParamsPemFile(obj.i, path.s)
  Declare.s ckGetEncodedHash(obj.i, encoding.s)
  Declare.s ckGetEncodedSignature(obj.i, encoding.s)
  Declare.s ckLoadText(obj.i, path.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveText(obj.i, strToSave.s, path.s)
  Declare.l ckSetEncodedHash(obj.i, encoding.s, encodedHash.s)
  Declare.l ckSetEncodedSignature(obj.i, encoding.s, encodedSig.s)
  Declare.l ckSetEncodedSignatureRS(obj.i, encoding.s, encodedR.s, encodedS.s)
  Declare.l ckSetKeyExplicit(obj.i, groupSizeInBytes.l, pHex.s, qHex.s, gHex.s, xHex.s)
  Declare.l ckSetPubKeyExplicit(obj.i, groupSizeInBytes.l, pHex.s, qHex.s, gHex.s, yHex.s)
  Declare.l ckSignHash(obj.i)
  Declare.l ckToDerFile(obj.i, path.s)
  Declare.s ckToEncryptedPem(obj.i, password.s)
  Declare.s ckToPem(obj.i)
  Declare.l ckToPublicDerFile(obj.i, path.s)
  Declare.s ckToPublicPem(obj.i)
  Declare.s ckToXml(obj.i, bPublicOnly.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckVerify(obj.i)
  Declare.l ckVerifyKey(obj.i)
EndDeclareModule

Module CkDsa
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMlssss(obj.i, arg1.l, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkDsaCreate()
  PrototypeC CkDsaDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDsaLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDsaLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global DsaCreate.CkDsaCreate = GetFunction(CkDsaLibId,"CkDsaU_CreateW")
  Global DsaDispose.CkDsaDispose = GetFunction(CkDsaLibId,"CkDsaU_DisposeW")
  Global DsaDebugLogFilePath.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_debugLogFilePathW")
  Global DsaPSetDebugLogFilePath.cksPropSet = GetFunction(CkDsaLibId,"CkDsaU_putDebugLogFilePathW")
  Global DsaGroupSize.cklPropGet = GetFunction(CkDsaLibId,"CkDsaU_getGroupSizeW")
  Global DsaPSetGroupSize.cklPropSet = GetFunction(CkDsaLibId,"CkDsaU_putGroupSizeW")
  Global DsaHexG.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_hexGW")
  Global DsaHexP.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_hexPW")
  Global DsaHexQ.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_hexQW")
  Global DsaHexX.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_hexXW")
  Global DsaHexY.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_hexYW")
  Global DsaLastErrorHtml.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_lastErrorHtmlW")
  Global DsaLastErrorText.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_lastErrorTextW")
  Global DsaLastErrorXml.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_lastErrorXmlW")
  Global DsaLastMethodSuccess.cklPropGet = GetFunction(CkDsaLibId,"CkDsaU_getLastMethodSuccessW")
  Global DsaPSetLastMethodSuccess.cklPropSet = GetFunction(CkDsaLibId,"CkDsaU_putLastMethodSuccessW")
  Global DsaVerboseLogging.cklPropGet = GetFunction(CkDsaLibId,"CkDsaU_getVerboseLoggingW")
  Global DsaPSetVerboseLogging.cklPropSet = GetFunction(CkDsaLibId,"CkDsaU_putVerboseLoggingW")
  Global DsaVersion.cksPropGet = GetFunction(CkDsaLibId,"CkDsaU_versionW")
  Global DsaFromDerFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_FromDerFileW")
  Global DsaFromEncryptedPem.cklMss = GetFunction(CkDsaLibId,"CkDsaU_FromEncryptedPemW")
  Global DsaFromPem.cklMs = GetFunction(CkDsaLibId,"CkDsaU_FromPemW")
  Global DsaFromPublicDerFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_FromPublicDerFileW")
  Global DsaFromPublicPem.cklMs = GetFunction(CkDsaLibId,"CkDsaU_FromPublicPemW")
  Global DsaFromXml.cklMs = GetFunction(CkDsaLibId,"CkDsaU_FromXmlW")
  Global DsaGenKey.cklMl = GetFunction(CkDsaLibId,"CkDsaU_GenKeyW")
  Global DsaGenKeyFromParamsDerFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_GenKeyFromParamsDerFileW")
  Global DsaGenKeyFromParamsPem.cklMs = GetFunction(CkDsaLibId,"CkDsaU_GenKeyFromParamsPemW")
  Global DsaGenKeyFromParamsPemFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_GenKeyFromParamsPemFileW")
  Global DsaGetEncodedHash.cklMs = GetFunction(CkDsaLibId,"CkDsaU_getEncodedHashW")
  Global DsaGetEncodedSignature.cklMs = GetFunction(CkDsaLibId,"CkDsaU_getEncodedSignatureW")
  Global DsaLoadText.cklMs = GetFunction(CkDsaLibId,"CkDsaU_loadTextW")
  Global DsaSaveLastError.cklMs = GetFunction(CkDsaLibId,"CkDsaU_SaveLastErrorW")
  Global DsaSaveText.cklMss = GetFunction(CkDsaLibId,"CkDsaU_SaveTextW")
  Global DsaSetEncodedHash.cklMss = GetFunction(CkDsaLibId,"CkDsaU_SetEncodedHashW")
  Global DsaSetEncodedSignature.cklMss = GetFunction(CkDsaLibId,"CkDsaU_SetEncodedSignatureW")
  Global DsaSetEncodedSignatureRS.cklMsss = GetFunction(CkDsaLibId,"CkDsaU_SetEncodedSignatureRSW")
  Global DsaSetKeyExplicit.cklMlssss = GetFunction(CkDsaLibId,"CkDsaU_SetKeyExplicitW")
  Global DsaSetPubKeyExplicit.cklMlssss = GetFunction(CkDsaLibId,"CkDsaU_SetPubKeyExplicitW")
  Global DsaSignHash.cklM = GetFunction(CkDsaLibId,"CkDsaU_SignHashW")
  Global DsaToDerFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_ToDerFileW")
  Global DsaToEncryptedPem.cklMs = GetFunction(CkDsaLibId,"CkDsaU_toEncryptedPemW")
  Global DsaToPem.cklM = GetFunction(CkDsaLibId,"CkDsaU_toPemW")
  Global DsaToPublicDerFile.cklMs = GetFunction(CkDsaLibId,"CkDsaU_ToPublicDerFileW")
  Global DsaToPublicPem.cklM = GetFunction(CkDsaLibId,"CkDsaU_toPublicPemW")
  Global DsaToXml.cklMl = GetFunction(CkDsaLibId,"CkDsaU_toXmlW")
  Global DsaUnlockComponent.cklMs = GetFunction(CkDsaLibId,"CkDsaU_UnlockComponentW")
  Global DsaVerify.cklM = GetFunction(CkDsaLibId,"CkDsaU_VerifyW")
  Global DsaVerifyKey.cklM = GetFunction(CkDsaLibId,"CkDsaU_VerifyKeyW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn DsaCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn DsaDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(DsaDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn DsaPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckGroupSize(obj.i) : ProcedureReturn DsaGroupSize(obj) : EndProcedure
  Procedure setCkGroupSize(obj.i, value.l) : ProcedureReturn DsaPSetGroupSize(obj,value) : EndProcedure
  Procedure.s ckHexG(obj.i) : ProcedureReturn PeekS(DsaHexG(obj)) : EndProcedure
  Procedure.s ckHexP(obj.i) : ProcedureReturn PeekS(DsaHexP(obj)) : EndProcedure
  Procedure.s ckHexQ(obj.i) : ProcedureReturn PeekS(DsaHexQ(obj)) : EndProcedure
  Procedure.s ckHexX(obj.i) : ProcedureReturn PeekS(DsaHexX(obj)) : EndProcedure
  Procedure.s ckHexY(obj.i) : ProcedureReturn PeekS(DsaHexY(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(DsaLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(DsaLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(DsaLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn DsaLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn DsaPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn DsaVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn DsaPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(DsaVersion(obj)) : EndProcedure
  Procedure.l ckFromDerFile(obj.i, path.s) :  ProcedureReturn DsaFromDerFile(obj, path) :  EndProcedure
  Procedure.l ckFromEncryptedPem(obj.i, password.s, pemData.s) :  ProcedureReturn DsaFromEncryptedPem(obj, password, pemData) :  EndProcedure
  Procedure.l ckFromPem(obj.i, pemData.s) :  ProcedureReturn DsaFromPem(obj, pemData) :  EndProcedure
  Procedure.l ckFromPublicDerFile(obj.i, path.s) :  ProcedureReturn DsaFromPublicDerFile(obj, path) :  EndProcedure
  Procedure.l ckFromPublicPem(obj.i, pemData.s) :  ProcedureReturn DsaFromPublicPem(obj, pemData) :  EndProcedure
  Procedure.l ckFromXml(obj.i, xmlKey.s) :  ProcedureReturn DsaFromXml(obj, xmlKey) :  EndProcedure
  Procedure.l ckGenKey(obj.i, numBits.l) :  ProcedureReturn DsaGenKey(obj, numBits) :  EndProcedure
  Procedure.l ckGenKeyFromParamsDerFile(obj.i, path.s) :  ProcedureReturn DsaGenKeyFromParamsDerFile(obj, path) :  EndProcedure
  Procedure.l ckGenKeyFromParamsPem(obj.i, pem.s) :  ProcedureReturn DsaGenKeyFromParamsPem(obj, pem) :  EndProcedure
  Procedure.l ckGenKeyFromParamsPemFile(obj.i, path.s) :  ProcedureReturn DsaGenKeyFromParamsPemFile(obj, path) :  EndProcedure
  Procedure.s ckGetEncodedHash(obj.i, encoding.s) :  ProcedureReturn PeekS(DsaGetEncodedHash(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedSignature(obj.i, encoding.s) :  ProcedureReturn PeekS(DsaGetEncodedSignature(obj, encoding)) :  EndProcedure
  Procedure.s ckLoadText(obj.i, path.s) :  ProcedureReturn PeekS(DsaLoadText(obj, path)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn DsaSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveText(obj.i, strToSave.s, path.s) :  ProcedureReturn DsaSaveText(obj, strToSave, path) :  EndProcedure
  Procedure.l ckSetEncodedHash(obj.i, encoding.s, encodedHash.s) :  ProcedureReturn DsaSetEncodedHash(obj, encoding, encodedHash) :  EndProcedure
  Procedure.l ckSetEncodedSignature(obj.i, encoding.s, encodedSig.s) :  ProcedureReturn DsaSetEncodedSignature(obj, encoding, encodedSig) :  EndProcedure
  Procedure.l ckSetEncodedSignatureRS(obj.i, encoding.s, encodedR.s, encodedS.s) :  ProcedureReturn DsaSetEncodedSignatureRS(obj, encoding, encodedR, encodedS) :  EndProcedure
  Procedure.l ckSetKeyExplicit(obj.i, groupSizeInBytes.l, pHex.s, qHex.s, gHex.s, xHex.s) :  ProcedureReturn DsaSetKeyExplicit(obj, groupSizeInBytes, pHex, qHex, gHex, xHex) :  EndProcedure
  Procedure.l ckSetPubKeyExplicit(obj.i, groupSizeInBytes.l, pHex.s, qHex.s, gHex.s, yHex.s) :  ProcedureReturn DsaSetPubKeyExplicit(obj, groupSizeInBytes, pHex, qHex, gHex, yHex) :  EndProcedure
  Procedure.l ckSignHash(obj.i) :  ProcedureReturn DsaSignHash(obj) :  EndProcedure
  Procedure.l ckToDerFile(obj.i, path.s) :  ProcedureReturn DsaToDerFile(obj, path) :  EndProcedure
  Procedure.s ckToEncryptedPem(obj.i, password.s) :  ProcedureReturn PeekS(DsaToEncryptedPem(obj, password)) :  EndProcedure
  Procedure.s ckToPem(obj.i) :  ProcedureReturn PeekS(DsaToPem(obj)) :  EndProcedure
  Procedure.l ckToPublicDerFile(obj.i, path.s) :  ProcedureReturn DsaToPublicDerFile(obj, path) :  EndProcedure
  Procedure.s ckToPublicPem(obj.i) :  ProcedureReturn PeekS(DsaToPublicPem(obj)) :  EndProcedure
  Procedure.s ckToXml(obj.i, bPublicOnly.l) :  ProcedureReturn PeekS(DsaToXml(obj, bPublicOnly)) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn DsaUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckVerify(obj.i) :  ProcedureReturn DsaVerify(obj) :  EndProcedure
  Procedure.l ckVerifyKey(obj.i) :  ProcedureReturn DsaVerifyKey(obj) :  EndProcedure
EndModule

