DeclareModule CkServerSentEvent
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckData(obj.i)
  Declare.s ckEventName(obj.i)
  Declare.s ckLastEventId(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckRetry(obj.i)
  Declare.l ckLoadEvent(obj.i, eventText.s)
EndDeclareModule

Module CkServerSentEvent
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkServerSentEventCreate()
  PrototypeC CkServerSentEventDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkServerSentEventLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkServerSentEventLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkServerSentEventLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkServerSentEventLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkServerSentEventLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ServerSentEventCreate.CkServerSentEventCreate = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_CreateW")
  Global ServerSentEventDispose.CkServerSentEventDispose = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_DisposeW")
  Global ServerSentEventData.cksPropGet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_dataW")
  Global ServerSentEventEventName.cksPropGet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_eventNameW")
  Global ServerSentEventLastEventId.cksPropGet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_lastEventIdW")
  Global ServerSentEventLastMethodSuccess.cklPropGet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_getLastMethodSuccessW")
  Global ServerSentEventPSetLastMethodSuccess.cklPropSet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_putLastMethodSuccessW")
  Global ServerSentEventRetry.cklPropGet = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_getRetryW")
  Global ServerSentEventLoadEvent.cklMs = GetFunction(CkServerSentEventLibId,"CkServerSentEventU_LoadEventW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ServerSentEventCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ServerSentEventDispose(obj) : EndProcedure
  Procedure.s ckData(obj.i) : ProcedureReturn PeekS(ServerSentEventData(obj)) : EndProcedure
  Procedure.s ckEventName(obj.i) : ProcedureReturn PeekS(ServerSentEventEventName(obj)) : EndProcedure
  Procedure.s ckLastEventId(obj.i) : ProcedureReturn PeekS(ServerSentEventLastEventId(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ServerSentEventLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ServerSentEventPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckRetry(obj.i) : ProcedureReturn ServerSentEventRetry(obj) : EndProcedure
  Procedure.l ckLoadEvent(obj.i, eventText.s) :  ProcedureReturn ServerSentEventLoadEvent(obj, eventText) :  EndProcedure
EndModule

