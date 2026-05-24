DeclareModule CkEdDSA
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
  Declare.l ckGenEd25519Key(obj.i, prng.i, privKey.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSharedSecretENC(obj.i, privkey.i, pubkey.i, encoding.s)
  Declare.s ckSignBdENC(obj.i, bd.i, encoding.s, privkey.i)
  Declare.l ckVerifyBdENC(obj.i, bd.i, encodedSig.s, enocding.s, pubkey.i)
EndDeclareModule

Module CkEdDSA
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMissi(obj.i, arg1.i, arg2.s, arg3.s, arg4.i)
  PrototypeC.l cklMiis(obj.i, arg1.i, arg2.i, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMisi(obj.i, arg1.i, arg2.s, arg3.i)
  PrototypeC.i CkEdDSACreate()
  PrototypeC CkEdDSADispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEdDSALibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkEdDSALibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkEdDSALibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEdDSALibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkEdDSALibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global EdDSACreate.CkEdDSACreate = GetFunction(CkEdDSALibId,"CkEdDSAU_CreateW")
  Global EdDSADispose.CkEdDSADispose = GetFunction(CkEdDSALibId,"CkEdDSAU_DisposeW")
  Global EdDSADebugLogFilePath.cksPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_debugLogFilePathW")
  Global EdDSAPSetDebugLogFilePath.cksPropSet = GetFunction(CkEdDSALibId,"CkEdDSAU_putDebugLogFilePathW")
  Global EdDSALastErrorHtml.cksPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_lastErrorHtmlW")
  Global EdDSALastErrorText.cksPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_lastErrorTextW")
  Global EdDSALastErrorXml.cksPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_lastErrorXmlW")
  Global EdDSALastMethodSuccess.cklPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_getLastMethodSuccessW")
  Global EdDSAPSetLastMethodSuccess.cklPropSet = GetFunction(CkEdDSALibId,"CkEdDSAU_putLastMethodSuccessW")
  Global EdDSAVerboseLogging.cklPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_getVerboseLoggingW")
  Global EdDSAPSetVerboseLogging.cklPropSet = GetFunction(CkEdDSALibId,"CkEdDSAU_putVerboseLoggingW")
  Global EdDSAVersion.cksPropGet = GetFunction(CkEdDSALibId,"CkEdDSAU_versionW")
  Global EdDSAGenEd25519Key.cklMii = GetFunction(CkEdDSALibId,"CkEdDSAU_GenEd25519KeyW")
  Global EdDSASaveLastError.cklMs = GetFunction(CkEdDSALibId,"CkEdDSAU_SaveLastErrorW")
  Global EdDSASharedSecretENC.cklMiis = GetFunction(CkEdDSALibId,"CkEdDSAU_sharedSecretENCW")
  Global EdDSASignBdENC.cklMisi = GetFunction(CkEdDSALibId,"CkEdDSAU_signBdENCW")
  Global EdDSAVerifyBdENC.cklMissi = GetFunction(CkEdDSALibId,"CkEdDSAU_VerifyBdENCW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn EdDSACreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn EdDSADispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(EdDSADebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn EdDSAPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(EdDSALastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(EdDSALastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(EdDSALastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn EdDSALastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn EdDSAPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn EdDSAVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn EdDSAPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(EdDSAVersion(obj)) : EndProcedure
  Procedure.l ckGenEd25519Key(obj.i, prng.i, privKey.i) :  ProcedureReturn EdDSAGenEd25519Key(obj, prng, privKey) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn EdDSASaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSharedSecretENC(obj.i, privkey.i, pubkey.i, encoding.s) :  ProcedureReturn PeekS(EdDSASharedSecretENC(obj, privkey, pubkey, encoding)) :  EndProcedure
  Procedure.s ckSignBdENC(obj.i, bd.i, encoding.s, privkey.i) :  ProcedureReturn PeekS(EdDSASignBdENC(obj, bd, encoding, privkey)) :  EndProcedure
  Procedure.l ckVerifyBdENC(obj.i, bd.i, encodedSig.s, enocding.s, pubkey.i) :  ProcedureReturn EdDSAVerifyBdENC(obj, bd, encodedSig, enocding, pubkey) :  EndProcedure
EndModule

