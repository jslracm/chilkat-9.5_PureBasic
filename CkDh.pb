DeclareModule CkDh
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckG(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckP(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckCreateE(obj.i, numBits.l)
  Declare.s ckFindK(obj.i, E.s)
  Declare.l ckGenPG(obj.i, numBits.l, G.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetPG(obj.i, p.s, g.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare ckUseKnownPrime(obj.i, index.l)
EndDeclareModule

Module CkDh
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i CkDhCreate()
  PrototypeC CkDhDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDhLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDhLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDhLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDhLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDhLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global DhCreate.CkDhCreate = GetFunction(CkDhLibId,"CkDhU_CreateW")
  Global DhDispose.CkDhDispose = GetFunction(CkDhLibId,"CkDhU_DisposeW")
  Global DhDebugLogFilePath.cksPropGet = GetFunction(CkDhLibId,"CkDhU_debugLogFilePathW")
  Global DhPSetDebugLogFilePath.cksPropSet = GetFunction(CkDhLibId,"CkDhU_putDebugLogFilePathW")
  Global DhG.cklPropGet = GetFunction(CkDhLibId,"CkDhU_getGW")
  Global DhLastErrorHtml.cksPropGet = GetFunction(CkDhLibId,"CkDhU_lastErrorHtmlW")
  Global DhLastErrorText.cksPropGet = GetFunction(CkDhLibId,"CkDhU_lastErrorTextW")
  Global DhLastErrorXml.cksPropGet = GetFunction(CkDhLibId,"CkDhU_lastErrorXmlW")
  Global DhLastMethodSuccess.cklPropGet = GetFunction(CkDhLibId,"CkDhU_getLastMethodSuccessW")
  Global DhPSetLastMethodSuccess.cklPropSet = GetFunction(CkDhLibId,"CkDhU_putLastMethodSuccessW")
  Global DhP.cksPropGet = GetFunction(CkDhLibId,"CkDhU_pW")
  Global DhVerboseLogging.cklPropGet = GetFunction(CkDhLibId,"CkDhU_getVerboseLoggingW")
  Global DhPSetVerboseLogging.cklPropSet = GetFunction(CkDhLibId,"CkDhU_putVerboseLoggingW")
  Global DhVersion.cksPropGet = GetFunction(CkDhLibId,"CkDhU_versionW")
  Global DhCreateE.cklMl = GetFunction(CkDhLibId,"CkDhU_createEW")
  Global DhFindK.cklMs = GetFunction(CkDhLibId,"CkDhU_findKW")
  Global DhGenPG.cklMll = GetFunction(CkDhLibId,"CkDhU_GenPGW")
  Global DhSaveLastError.cklMs = GetFunction(CkDhLibId,"CkDhU_SaveLastErrorW")
  Global DhSetPG.cklMsl = GetFunction(CkDhLibId,"CkDhU_SetPGW")
  Global DhUnlockComponent.cklMs = GetFunction(CkDhLibId,"CkDhU_UnlockComponentW")
  Global DhUseKnownPrime.ckvMl = GetFunction(CkDhLibId,"CkDhU_UseKnownPrimeW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn DhCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn DhDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(DhDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn DhPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckG(obj.i) : ProcedureReturn DhG(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(DhLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(DhLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(DhLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn DhLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn DhPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckP(obj.i) : ProcedureReturn PeekS(DhP(obj)) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn DhVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn DhPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(DhVersion(obj)) : EndProcedure
  Procedure.s ckCreateE(obj.i, numBits.l) :  ProcedureReturn PeekS(DhCreateE(obj, numBits)) :  EndProcedure
  Procedure.s ckFindK(obj.i, E.s) :  ProcedureReturn PeekS(DhFindK(obj, E)) :  EndProcedure
  Procedure.l ckGenPG(obj.i, numBits.l, G.l) :  ProcedureReturn DhGenPG(obj, numBits, G) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn DhSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetPG(obj.i, p.s, g.l) :  ProcedureReturn DhSetPG(obj, p, g) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn DhUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure ckUseKnownPrime(obj.i, index.l) :  ProcedureReturn DhUseKnownPrime(obj, index) :  EndProcedure
EndModule

