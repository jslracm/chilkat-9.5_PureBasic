DeclareModule CkEcc
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
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.i ckGenEccKey(obj.i, curveName.s, prng.i)
  Declare.i ckGenEccKey2(obj.i, curveName.s, encodedK.s, encoding.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSharedSecretENC(obj.i, privKey.i, pubKey.i, encoding.s)
  Declare.s ckSignBd(obj.i, bdData.i, hashAlg.s, encoding.s, privKey.i, prng.i)
  Declare.s ckSignHashENC(obj.i, encodedHash.s, encoding.s, privkey.i, prng.i)
  Declare.l ckVerifyBd(obj.i, bdData.i, hashAlg.s, encodedSig.s, encoding.s, pubkey.i)
  Declare.l ckVerifyHashENC(obj.i, encodedHash.s, encodedSig.s, encoding.s, pubkey.i)
EndDeclareModule

Module CkEcc
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsssi(obj.i, arg1.s, arg2.s, arg3.s, arg4.i)
  PrototypeC.i ckiMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMiis(obj.i, arg1.i, arg2.i, arg3.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMissii(obj.i, arg1.i, arg2.s, arg3.s, arg4.i, arg5.i)
  PrototypeC.l cklMssii(obj.i, arg1.s, arg2.s, arg3.i, arg4.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMisssi(obj.i, arg1.i, arg2.s, arg3.s, arg4.s, arg5.i)
  PrototypeC.i CkEccCreate()
  PrototypeC CkEccDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEccLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkEccLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkEccLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEccLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkEccLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global EccCreate.CkEccCreate = GetFunction(CkEccLibId,"CkEccU_CreateW")
  Global EccDispose.CkEccDispose = GetFunction(CkEccLibId,"CkEccU_DisposeW")
  Global EccDebugLogFilePath.cksPropGet = GetFunction(CkEccLibId,"CkEccU_debugLogFilePathW")
  Global EccPSetDebugLogFilePath.cksPropSet = GetFunction(CkEccLibId,"CkEccU_putDebugLogFilePathW")
  Global EccLastErrorHtml.cksPropGet = GetFunction(CkEccLibId,"CkEccU_lastErrorHtmlW")
  Global EccLastErrorText.cksPropGet = GetFunction(CkEccLibId,"CkEccU_lastErrorTextW")
  Global EccLastErrorXml.cksPropGet = GetFunction(CkEccLibId,"CkEccU_lastErrorXmlW")
  Global EccLastMethodSuccess.cklPropGet = GetFunction(CkEccLibId,"CkEccU_getLastMethodSuccessW")
  Global EccPSetLastMethodSuccess.cklPropSet = GetFunction(CkEccLibId,"CkEccU_putLastMethodSuccessW")
  Global EccVerboseLogging.cklPropGet = GetFunction(CkEccLibId,"CkEccU_getVerboseLoggingW")
  Global EccPSetVerboseLogging.cklPropSet = GetFunction(CkEccLibId,"CkEccU_putVerboseLoggingW")
  Global EccVersion.cksPropGet = GetFunction(CkEccLibId,"CkEccU_versionW")
  Global EccGenEccKey.ckiMsi = GetFunction(CkEccLibId,"CkEccU_GenEccKeyW")
  Global EccGenEccKey2.ckiMsss = GetFunction(CkEccLibId,"CkEccU_GenEccKey2W")
  Global EccSaveLastError.cklMs = GetFunction(CkEccLibId,"CkEccU_SaveLastErrorW")
  Global EccSharedSecretENC.cklMiis = GetFunction(CkEccLibId,"CkEccU_sharedSecretENCW")
  Global EccSignBd.cklMissii = GetFunction(CkEccLibId,"CkEccU_signBdW")
  Global EccSignHashENC.cklMssii = GetFunction(CkEccLibId,"CkEccU_signHashENCW")
  Global EccVerifyBd.cklMisssi = GetFunction(CkEccLibId,"CkEccU_VerifyBdW")
  Global EccVerifyHashENC.cklMsssi = GetFunction(CkEccLibId,"CkEccU_VerifyHashENCW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn EccCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn EccDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(EccDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn EccPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(EccLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(EccLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(EccLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn EccLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn EccPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn EccVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn EccPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(EccVersion(obj)) : EndProcedure
  Procedure.i ckGenEccKey(obj.i, curveName.s, prng.i) :  ProcedureReturn EccGenEccKey(obj, curveName, prng) :  EndProcedure
  Procedure.i ckGenEccKey2(obj.i, curveName.s, encodedK.s, encoding.s) :  ProcedureReturn EccGenEccKey2(obj, curveName, encodedK, encoding) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn EccSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSharedSecretENC(obj.i, privKey.i, pubKey.i, encoding.s) :  ProcedureReturn PeekS(EccSharedSecretENC(obj, privKey, pubKey, encoding)) :  EndProcedure
  Procedure.s ckSignBd(obj.i, bdData.i, hashAlg.s, encoding.s, privKey.i, prng.i) :  ProcedureReturn PeekS(EccSignBd(obj, bdData, hashAlg, encoding, privKey, prng)) :  EndProcedure
  Procedure.s ckSignHashENC(obj.i, encodedHash.s, encoding.s, privkey.i, prng.i) :  ProcedureReturn PeekS(EccSignHashENC(obj, encodedHash, encoding, privkey, prng)) :  EndProcedure
  Procedure.l ckVerifyBd(obj.i, bdData.i, hashAlg.s, encodedSig.s, encoding.s, pubkey.i) :  ProcedureReturn EccVerifyBd(obj, bdData, hashAlg, encodedSig, encoding, pubkey) :  EndProcedure
  Procedure.l ckVerifyHashENC(obj.i, encodedHash.s, encodedSig.s, encoding.s, pubkey.i) :  ProcedureReturn EccVerifyHashENC(obj, encodedHash, encodedSig, encoding, pubkey) :  EndProcedure
EndModule

