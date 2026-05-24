DeclareModule CkMessageSet
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCount(obj.i)
  Declare.l ckHasUids(obj.i)
  Declare setCkHasUids(obj.i, value.l)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckContainsId(obj.i, msgId.l)
  Declare.l ckFromCompactString(obj.i, str.s)
  Declare.l ckGetId(obj.i, index.l)
  Declare ckInsertId(obj.i, id.l)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare ckRemoveId(obj.i, id.l)
  Declare.s ckToCommaSeparatedStr(obj.i)
  Declare.s ckToCompactString(obj.i)
EndDeclareModule

Module CkMessageSet
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i CkMessageSetCreate()
  PrototypeC CkMessageSetDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMessageSetLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkMessageSetLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkMessageSetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkMessageSetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkMessageSetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global MessageSetCreate.CkMessageSetCreate = GetFunction(CkMessageSetLibId,"CkMessageSetU_CreateW")
  Global MessageSetDispose.CkMessageSetDispose = GetFunction(CkMessageSetLibId,"CkMessageSetU_DisposeW")
  Global MessageSetCount.cklPropGet = GetFunction(CkMessageSetLibId,"CkMessageSetU_getCountW")
  Global MessageSetHasUids.cklPropGet = GetFunction(CkMessageSetLibId,"CkMessageSetU_getHasUidsW")
  Global MessageSetPSetHasUids.cklPropSet = GetFunction(CkMessageSetLibId,"CkMessageSetU_putHasUidsW")
  Global MessageSetLastMethodSuccess.cklPropGet = GetFunction(CkMessageSetLibId,"CkMessageSetU_getLastMethodSuccessW")
  Global MessageSetPSetLastMethodSuccess.cklPropSet = GetFunction(CkMessageSetLibId,"CkMessageSetU_putLastMethodSuccessW")
  Global MessageSetContainsId.cklMl = GetFunction(CkMessageSetLibId,"CkMessageSetU_ContainsIdW")
  Global MessageSetFromCompactString.cklMs = GetFunction(CkMessageSetLibId,"CkMessageSetU_FromCompactStringW")
  Global MessageSetGetId.cklMl = GetFunction(CkMessageSetLibId,"CkMessageSetU_GetIdW")
  Global MessageSetInsertId.ckvMl = GetFunction(CkMessageSetLibId,"CkMessageSetU_InsertIdW")
  Global MessageSetLoadTaskResult.cklMi = GetFunction(CkMessageSetLibId,"CkMessageSetU_LoadTaskResultW")
  Global MessageSetRemoveId.ckvMl = GetFunction(CkMessageSetLibId,"CkMessageSetU_RemoveIdW")
  Global MessageSetToCommaSeparatedStr.ckiM = GetFunction(CkMessageSetLibId,"CkMessageSetU_toCommaSeparatedStrW")
  Global MessageSetToCompactString.ckiM = GetFunction(CkMessageSetLibId,"CkMessageSetU_toCompactStringW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn MessageSetCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn MessageSetDispose(obj) : EndProcedure
  Procedure.l ckCount(obj.i) : ProcedureReturn MessageSetCount(obj) : EndProcedure
  Procedure.l ckHasUids(obj.i) : ProcedureReturn MessageSetHasUids(obj) : EndProcedure
  Procedure setCkHasUids(obj.i, value.l) : ProcedureReturn MessageSetPSetHasUids(obj,value) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn MessageSetLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn MessageSetPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckContainsId(obj.i, msgId.l) :  ProcedureReturn MessageSetContainsId(obj, msgId) :  EndProcedure
  Procedure.l ckFromCompactString(obj.i, str.s) :  ProcedureReturn MessageSetFromCompactString(obj, str) :  EndProcedure
  Procedure.l ckGetId(obj.i, index.l) :  ProcedureReturn MessageSetGetId(obj, index) :  EndProcedure
  Procedure ckInsertId(obj.i, id.l) :  ProcedureReturn MessageSetInsertId(obj, id) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn MessageSetLoadTaskResult(obj, task) :  EndProcedure
  Procedure ckRemoveId(obj.i, id.l) :  ProcedureReturn MessageSetRemoveId(obj, id) :  EndProcedure
  Procedure.s ckToCommaSeparatedStr(obj.i) :  ProcedureReturn PeekS(MessageSetToCommaSeparatedStr(obj)) :  EndProcedure
  Procedure.s ckToCompactString(obj.i) :  ProcedureReturn PeekS(MessageSetToCompactString(obj)) :  EndProcedure
EndModule


; IDE Options = PureBasic 6.40 (Windows - x64)
; Folding = ----
; EnableThread
; EnableXP
; DPIAware