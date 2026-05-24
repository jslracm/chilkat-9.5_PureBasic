DeclareModule CkBounce
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBounceAddress(obj.i)
  Declare.s ckBounceData(obj.i)
  Declare.l ckBounceType(obj.i)
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
  Declare.l ckExamineEmail(obj.i, email.i)
  Declare.l ckExamineEml(obj.i, emlFilename.s)
  Declare.l ckExamineMime(obj.i, mimeText.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkBounce
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkBounceCreate()
  PrototypeC CkBounceDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBounceLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkBounceLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkBounceLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBounceLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkBounceLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global BounceCreate.CkBounceCreate = GetFunction(CkBounceLibId,"CkBounceU_CreateW")
  Global BounceDispose.CkBounceDispose = GetFunction(CkBounceLibId,"CkBounceU_DisposeW")
  Global BounceBounceAddress.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_bounceAddressW")
  Global BounceBounceData.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_bounceDataW")
  Global BounceBounceType.cklPropGet = GetFunction(CkBounceLibId,"CkBounceU_getBounceTypeW")
  Global BounceDebugLogFilePath.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_debugLogFilePathW")
  Global BouncePSetDebugLogFilePath.cksPropSet = GetFunction(CkBounceLibId,"CkBounceU_putDebugLogFilePathW")
  Global BounceLastErrorHtml.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_lastErrorHtmlW")
  Global BounceLastErrorText.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_lastErrorTextW")
  Global BounceLastErrorXml.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_lastErrorXmlW")
  Global BounceLastMethodSuccess.cklPropGet = GetFunction(CkBounceLibId,"CkBounceU_getLastMethodSuccessW")
  Global BouncePSetLastMethodSuccess.cklPropSet = GetFunction(CkBounceLibId,"CkBounceU_putLastMethodSuccessW")
  Global BounceVerboseLogging.cklPropGet = GetFunction(CkBounceLibId,"CkBounceU_getVerboseLoggingW")
  Global BouncePSetVerboseLogging.cklPropSet = GetFunction(CkBounceLibId,"CkBounceU_putVerboseLoggingW")
  Global BounceVersion.cksPropGet = GetFunction(CkBounceLibId,"CkBounceU_versionW")
  Global BounceExamineEmail.cklMi = GetFunction(CkBounceLibId,"CkBounceU_ExamineEmailW")
  Global BounceExamineEml.cklMs = GetFunction(CkBounceLibId,"CkBounceU_ExamineEmlW")
  Global BounceExamineMime.cklMs = GetFunction(CkBounceLibId,"CkBounceU_ExamineMimeW")
  Global BounceSaveLastError.cklMs = GetFunction(CkBounceLibId,"CkBounceU_SaveLastErrorW")
  Global BounceUnlockComponent.cklMs = GetFunction(CkBounceLibId,"CkBounceU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn BounceCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn BounceDispose(obj) : EndProcedure
  Procedure.s ckBounceAddress(obj.i) : ProcedureReturn PeekS(BounceBounceAddress(obj)) : EndProcedure
  Procedure.s ckBounceData(obj.i) : ProcedureReturn PeekS(BounceBounceData(obj)) : EndProcedure
  Procedure.l ckBounceType(obj.i) : ProcedureReturn BounceBounceType(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(BounceDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn BouncePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(BounceLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(BounceLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(BounceLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn BounceLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn BouncePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn BounceVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn BouncePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(BounceVersion(obj)) : EndProcedure
  Procedure.l ckExamineEmail(obj.i, email.i) :  ProcedureReturn BounceExamineEmail(obj, email) :  EndProcedure
  Procedure.l ckExamineEml(obj.i, emlFilename.s) :  ProcedureReturn BounceExamineEml(obj, emlFilename) :  EndProcedure
  Procedure.l ckExamineMime(obj.i, mimeText.s) :  ProcedureReturn BounceExamineMime(obj, mimeText) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn BounceSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn BounceUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

