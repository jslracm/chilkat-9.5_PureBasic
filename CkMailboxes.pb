DeclareModule CkMailboxes
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCount(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckGetFlags(obj.i, index.l)
  Declare.l ckGetMailboxIndex(obj.i, mbxName.s)
  Declare.s ckGetName(obj.i, index.l)
  Declare.s ckGetNthFlag(obj.i, index.l, flagIndex.l)
  Declare.l ckGetNumFlags(obj.i, index.l)
  Declare.l ckHasFlag(obj.i, index.l, flagName.s)
  Declare.l ckHasInferiors(obj.i, index.l)
  Declare.l ckIsMarked(obj.i, index.l)
  Declare.l ckIsSelectable(obj.i, index.l)
  Declare.l ckLoadTaskResult(obj.i, task.i)
EndDeclareModule

Module CkMailboxes
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkMailboxesCreate()
  PrototypeC CkMailboxesDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMailboxesLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkMailboxesLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkMailboxesLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMailboxesLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkMailboxesLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global MailboxesCreate.CkMailboxesCreate = GetFunction(CkMailboxesLibId,"CkMailboxesU_CreateW")
  Global MailboxesDispose.CkMailboxesDispose = GetFunction(CkMailboxesLibId,"CkMailboxesU_DisposeW")
  Global MailboxesCount.cklPropGet = GetFunction(CkMailboxesLibId,"CkMailboxesU_getCountW")
  Global MailboxesLastMethodSuccess.cklPropGet = GetFunction(CkMailboxesLibId,"CkMailboxesU_getLastMethodSuccessW")
  Global MailboxesPSetLastMethodSuccess.cklPropSet = GetFunction(CkMailboxesLibId,"CkMailboxesU_putLastMethodSuccessW")
  Global MailboxesGetFlags.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_getFlagsW")
  Global MailboxesGetMailboxIndex.cklMs = GetFunction(CkMailboxesLibId,"CkMailboxesU_GetMailboxIndexW")
  Global MailboxesGetName.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_getNameW")
  Global MailboxesGetNthFlag.cklMll = GetFunction(CkMailboxesLibId,"CkMailboxesU_getNthFlagW")
  Global MailboxesGetNumFlags.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_GetNumFlagsW")
  Global MailboxesHasFlag.cklMls = GetFunction(CkMailboxesLibId,"CkMailboxesU_HasFlagW")
  Global MailboxesHasInferiors.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_HasInferiorsW")
  Global MailboxesIsMarked.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_IsMarkedW")
  Global MailboxesIsSelectable.cklMl = GetFunction(CkMailboxesLibId,"CkMailboxesU_IsSelectableW")
  Global MailboxesLoadTaskResult.cklMi = GetFunction(CkMailboxesLibId,"CkMailboxesU_LoadTaskResultW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn MailboxesCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn MailboxesDispose(obj) : EndProcedure
  Procedure.l ckCount(obj.i) : ProcedureReturn MailboxesCount(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn MailboxesLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn MailboxesPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckGetFlags(obj.i, index.l) :  ProcedureReturn PeekS(MailboxesGetFlags(obj, index)) :  EndProcedure
  Procedure.l ckGetMailboxIndex(obj.i, mbxName.s) :  ProcedureReturn MailboxesGetMailboxIndex(obj, mbxName) :  EndProcedure
  Procedure.s ckGetName(obj.i, index.l) :  ProcedureReturn PeekS(MailboxesGetName(obj, index)) :  EndProcedure
  Procedure.s ckGetNthFlag(obj.i, index.l, flagIndex.l) :  ProcedureReturn PeekS(MailboxesGetNthFlag(obj, index, flagIndex)) :  EndProcedure
  Procedure.l ckGetNumFlags(obj.i, index.l) :  ProcedureReturn MailboxesGetNumFlags(obj, index) :  EndProcedure
  Procedure.l ckHasFlag(obj.i, index.l, flagName.s) :  ProcedureReturn MailboxesHasFlag(obj, index, flagName) :  EndProcedure
  Procedure.l ckHasInferiors(obj.i, index.l) :  ProcedureReturn MailboxesHasInferiors(obj, index) :  EndProcedure
  Procedure.l ckIsMarked(obj.i, index.l) :  ProcedureReturn MailboxesIsMarked(obj, index) :  EndProcedure
  Procedure.l ckIsSelectable(obj.i, index.l) :  ProcedureReturn MailboxesIsSelectable(obj, index) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn MailboxesLoadTaskResult(obj, task) :  EndProcedure
EndModule

