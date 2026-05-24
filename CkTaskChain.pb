DeclareModule CkTaskChain
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckFinished(obj.i)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.l ckInert(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLive(obj.i)
  Declare.l ckNumTasks(obj.i)
  Declare.s ckStatus(obj.i)
  Declare.l ckStatusInt(obj.i)
  Declare.l ckStopOnFailedTask(obj.i)
  Declare setCkStopOnFailedTask(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppend(obj.i, task.i)
  Declare.l ckCancel(obj.i)
  Declare.i ckGetTask(obj.i, index.l)
  Declare.l ckRun(obj.i)
  Declare.l ckRunSynchronously(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSleepMs(obj.i, numMs.l)
  Declare.l ckWait(obj.i, maxWaitMs.l)
EndDeclareModule

Module CkTaskChain
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkTaskChainCreate()
  PrototypeC CkTaskChainDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTaskChainLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkTaskChainLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkTaskChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTaskChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkTaskChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global TaskChainCreate.CkTaskChainCreate = GetFunction(CkTaskChainLibId,"CkTaskChainU_CreateW")
  Global TaskChainDispose.CkTaskChainDispose = GetFunction(CkTaskChainLibId,"CkTaskChainU_DisposeW")
  Global TaskChainDebugLogFilePath.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_debugLogFilePathW")
  Global TaskChainPSetDebugLogFilePath.cksPropSet = GetFunction(CkTaskChainLibId,"CkTaskChainU_putDebugLogFilePathW")
  Global TaskChainFinished.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getFinishedW")
  Global TaskChainHeartbeatMs.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getHeartbeatMsW")
  Global TaskChainPSetHeartbeatMs.cklPropSet = GetFunction(CkTaskChainLibId,"CkTaskChainU_putHeartbeatMsW")
  Global TaskChainInert.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getInertW")
  Global TaskChainLastErrorHtml.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_lastErrorHtmlW")
  Global TaskChainLastErrorText.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_lastErrorTextW")
  Global TaskChainLastErrorXml.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_lastErrorXmlW")
  Global TaskChainLastMethodSuccess.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getLastMethodSuccessW")
  Global TaskChainPSetLastMethodSuccess.cklPropSet = GetFunction(CkTaskChainLibId,"CkTaskChainU_putLastMethodSuccessW")
  Global TaskChainLive.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getLiveW")
  Global TaskChainNumTasks.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getNumTasksW")
  Global TaskChainStatus.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_statusW")
  Global TaskChainStatusInt.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getStatusIntW")
  Global TaskChainStopOnFailedTask.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getStopOnFailedTaskW")
  Global TaskChainPSetStopOnFailedTask.cklPropSet = GetFunction(CkTaskChainLibId,"CkTaskChainU_putStopOnFailedTaskW")
  Global TaskChainVerboseLogging.cklPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_getVerboseLoggingW")
  Global TaskChainPSetVerboseLogging.cklPropSet = GetFunction(CkTaskChainLibId,"CkTaskChainU_putVerboseLoggingW")
  Global TaskChainVersion.cksPropGet = GetFunction(CkTaskChainLibId,"CkTaskChainU_versionW")
  Global TaskChainAppend.cklMi = GetFunction(CkTaskChainLibId,"CkTaskChainU_AppendW")
  Global TaskChainCancel.cklM = GetFunction(CkTaskChainLibId,"CkTaskChainU_CancelW")
  Global TaskChainGetTask.ckiMl = GetFunction(CkTaskChainLibId,"CkTaskChainU_GetTaskW")
  Global TaskChainRun.cklM = GetFunction(CkTaskChainLibId,"CkTaskChainU_RunW")
  Global TaskChainRunSynchronously.cklM = GetFunction(CkTaskChainLibId,"CkTaskChainU_RunSynchronouslyW")
  Global TaskChainSaveLastError.cklMs = GetFunction(CkTaskChainLibId,"CkTaskChainU_SaveLastErrorW")
  Global TaskChainSleepMs.ckvMl = GetFunction(CkTaskChainLibId,"CkTaskChainU_SleepMsW")
  Global TaskChainWait.cklMl = GetFunction(CkTaskChainLibId,"CkTaskChainU_WaitW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn TaskChainCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn TaskChainDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(TaskChainDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn TaskChainPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckFinished(obj.i) : ProcedureReturn TaskChainFinished(obj) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn TaskChainHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn TaskChainPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckInert(obj.i) : ProcedureReturn TaskChainInert(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(TaskChainLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(TaskChainLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(TaskChainLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn TaskChainLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn TaskChainPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLive(obj.i) : ProcedureReturn TaskChainLive(obj) : EndProcedure
  Procedure.l ckNumTasks(obj.i) : ProcedureReturn TaskChainNumTasks(obj) : EndProcedure
  Procedure.s ckStatus(obj.i) : ProcedureReturn PeekS(TaskChainStatus(obj)) : EndProcedure
  Procedure.l ckStatusInt(obj.i) : ProcedureReturn TaskChainStatusInt(obj) : EndProcedure
  Procedure.l ckStopOnFailedTask(obj.i) : ProcedureReturn TaskChainStopOnFailedTask(obj) : EndProcedure
  Procedure setCkStopOnFailedTask(obj.i, value.l) : ProcedureReturn TaskChainPSetStopOnFailedTask(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn TaskChainVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn TaskChainPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(TaskChainVersion(obj)) : EndProcedure
  Procedure.l ckAppend(obj.i, task.i) :  ProcedureReturn TaskChainAppend(obj, task) :  EndProcedure
  Procedure.l ckCancel(obj.i) :  ProcedureReturn TaskChainCancel(obj) :  EndProcedure
  Procedure.i ckGetTask(obj.i, index.l) :  ProcedureReturn TaskChainGetTask(obj, index) :  EndProcedure
  Procedure.l ckRun(obj.i) :  ProcedureReturn TaskChainRun(obj) :  EndProcedure
  Procedure.l ckRunSynchronously(obj.i) :  ProcedureReturn TaskChainRunSynchronously(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn TaskChainSaveLastError(obj, path) :  EndProcedure
  Procedure ckSleepMs(obj.i, numMs.l) :  ProcedureReturn TaskChainSleepMs(obj, numMs) :  EndProcedure
  Procedure.l ckWait(obj.i, maxWaitMs.l) :  ProcedureReturn TaskChainWait(obj, maxWaitMs) :  EndProcedure
EndModule

