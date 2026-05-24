DeclareModule CkTask
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
  Declare.l ckKeepProgressLog(obj.i)
  Declare setCkKeepProgressLog(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLive(obj.i)
  Declare.l ckPercentDone(obj.i)
  Declare.l ckProgressLogSize(obj.i)
  Declare.s ckResultErrorText(obj.i)
  Declare.s ckResultType(obj.i)
  Declare.s ckStatus(obj.i)
  Declare.l ckStatusInt(obj.i)
  Declare.l ckTaskId(obj.i)
  Declare.l ckTaskSuccess(obj.i)
  Declare.s ckUserData(obj.i)
  Declare setCkUserData(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckCancel(obj.i)
  Declare ckClearProgressLog(obj.i)
  Declare.l ckGetResultBool(obj.i)
  Declare.l ckGetResultInt(obj.i)
  Declare.s ckGetResultString(obj.i)
  Declare.s ckProgressInfoName(obj.i, index.l)
  Declare.s ckProgressInfoValue(obj.i, index.l)
  Declare ckRemoveProgressInfo(obj.i, index.l)
  Declare.l ckRun(obj.i)
  Declare.l ckRunSynchronously(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSleepMs(obj.i, numMs.l)
  Declare.l ckWait(obj.i, maxWaitMs.l)
EndDeclareModule

Module CkTask
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkTaskCreate()
  PrototypeC CkTaskDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTaskLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkTaskLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkTaskLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTaskLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkTaskLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global TaskCreate.CkTaskCreate = GetFunction(CkTaskLibId,"CkTaskU_CreateW")
  Global TaskDispose.CkTaskDispose = GetFunction(CkTaskLibId,"CkTaskU_DisposeW")
  Global TaskDebugLogFilePath.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_debugLogFilePathW")
  Global TaskPSetDebugLogFilePath.cksPropSet = GetFunction(CkTaskLibId,"CkTaskU_putDebugLogFilePathW")
  Global TaskFinished.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getFinishedW")
  Global TaskHeartbeatMs.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getHeartbeatMsW")
  Global TaskPSetHeartbeatMs.cklPropSet = GetFunction(CkTaskLibId,"CkTaskU_putHeartbeatMsW")
  Global TaskInert.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getInertW")
  Global TaskKeepProgressLog.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getKeepProgressLogW")
  Global TaskPSetKeepProgressLog.cklPropSet = GetFunction(CkTaskLibId,"CkTaskU_putKeepProgressLogW")
  Global TaskLastErrorHtml.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_lastErrorHtmlW")
  Global TaskLastErrorText.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_lastErrorTextW")
  Global TaskLastErrorXml.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_lastErrorXmlW")
  Global TaskLastMethodSuccess.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getLastMethodSuccessW")
  Global TaskPSetLastMethodSuccess.cklPropSet = GetFunction(CkTaskLibId,"CkTaskU_putLastMethodSuccessW")
  Global TaskLive.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getLiveW")
  Global TaskPercentDone.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getPercentDoneW")
  Global TaskProgressLogSize.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getProgressLogSizeW")
  Global TaskResultErrorText.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_resultErrorTextW")
  Global TaskResultType.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_resultTypeW")
  Global TaskStatus.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_statusW")
  Global TaskStatusInt.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getStatusIntW")
  Global TaskTaskId.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getTaskIdW")
  Global TaskTaskSuccess.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getTaskSuccessW")
  Global TaskUserData.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_userDataW")
  Global TaskPSetUserData.cksPropSet = GetFunction(CkTaskLibId,"CkTaskU_putUserDataW")
  Global TaskVerboseLogging.cklPropGet = GetFunction(CkTaskLibId,"CkTaskU_getVerboseLoggingW")
  Global TaskPSetVerboseLogging.cklPropSet = GetFunction(CkTaskLibId,"CkTaskU_putVerboseLoggingW")
  Global TaskVersion.cksPropGet = GetFunction(CkTaskLibId,"CkTaskU_versionW")
  Global TaskCancel.cklM = GetFunction(CkTaskLibId,"CkTaskU_CancelW")
  Global TaskClearProgressLog.ckvM = GetFunction(CkTaskLibId,"CkTaskU_ClearProgressLogW")
  Global TaskGetResultBool.cklM = GetFunction(CkTaskLibId,"CkTaskU_GetResultBoolW")
  Global TaskGetResultInt.cklM = GetFunction(CkTaskLibId,"CkTaskU_GetResultIntW")
  Global TaskGetResultString.cklM = GetFunction(CkTaskLibId,"CkTaskU_getResultStringW")
  Global TaskProgressInfoName.cklMl = GetFunction(CkTaskLibId,"CkTaskU_progressInfoNameW")
  Global TaskProgressInfoValue.cklMl = GetFunction(CkTaskLibId,"CkTaskU_progressInfoValueW")
  Global TaskRemoveProgressInfo.ckvMl = GetFunction(CkTaskLibId,"CkTaskU_RemoveProgressInfoW")
  Global TaskRun.cklM = GetFunction(CkTaskLibId,"CkTaskU_RunW")
  Global TaskRunSynchronously.cklM = GetFunction(CkTaskLibId,"CkTaskU_RunSynchronouslyW")
  Global TaskSaveLastError.cklMs = GetFunction(CkTaskLibId,"CkTaskU_SaveLastErrorW")
  Global TaskSleepMs.ckvMl = GetFunction(CkTaskLibId,"CkTaskU_SleepMsW")
  Global TaskWait.cklMl = GetFunction(CkTaskLibId,"CkTaskU_WaitW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn TaskCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn TaskDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(TaskDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn TaskPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckFinished(obj.i) : ProcedureReturn TaskFinished(obj) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn TaskHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn TaskPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.l ckInert(obj.i) : ProcedureReturn TaskInert(obj) : EndProcedure
  Procedure.l ckKeepProgressLog(obj.i) : ProcedureReturn TaskKeepProgressLog(obj) : EndProcedure
  Procedure setCkKeepProgressLog(obj.i, value.l) : ProcedureReturn TaskPSetKeepProgressLog(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(TaskLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(TaskLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(TaskLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn TaskLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn TaskPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLive(obj.i) : ProcedureReturn TaskLive(obj) : EndProcedure
  Procedure.l ckPercentDone(obj.i) : ProcedureReturn TaskPercentDone(obj) : EndProcedure
  Procedure.l ckProgressLogSize(obj.i) : ProcedureReturn TaskProgressLogSize(obj) : EndProcedure
  Procedure.s ckResultErrorText(obj.i) : ProcedureReturn PeekS(TaskResultErrorText(obj)) : EndProcedure
  Procedure.s ckResultType(obj.i) : ProcedureReturn PeekS(TaskResultType(obj)) : EndProcedure
  Procedure.s ckStatus(obj.i) : ProcedureReturn PeekS(TaskStatus(obj)) : EndProcedure
  Procedure.l ckStatusInt(obj.i) : ProcedureReturn TaskStatusInt(obj) : EndProcedure
  Procedure.l ckTaskId(obj.i) : ProcedureReturn TaskTaskId(obj) : EndProcedure
  Procedure.l ckTaskSuccess(obj.i) : ProcedureReturn TaskTaskSuccess(obj) : EndProcedure
  Procedure.s ckUserData(obj.i) : ProcedureReturn PeekS(TaskUserData(obj)) : EndProcedure
  Procedure setCkUserData(obj.i, value.s) : ProcedureReturn TaskPSetUserData(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn TaskVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn TaskPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(TaskVersion(obj)) : EndProcedure
  Procedure.l ckCancel(obj.i) :  ProcedureReturn TaskCancel(obj) :  EndProcedure
  Procedure ckClearProgressLog(obj.i) :  ProcedureReturn TaskClearProgressLog(obj) :  EndProcedure
  Procedure.l ckGetResultBool(obj.i) :  ProcedureReturn TaskGetResultBool(obj) :  EndProcedure
  Procedure.l ckGetResultInt(obj.i) :  ProcedureReturn TaskGetResultInt(obj) :  EndProcedure
  Procedure.s ckGetResultString(obj.i) :  ProcedureReturn PeekS(TaskGetResultString(obj)) :  EndProcedure
  Procedure.s ckProgressInfoName(obj.i, index.l) :  ProcedureReturn PeekS(TaskProgressInfoName(obj, index)) :  EndProcedure
  Procedure.s ckProgressInfoValue(obj.i, index.l) :  ProcedureReturn PeekS(TaskProgressInfoValue(obj, index)) :  EndProcedure
  Procedure ckRemoveProgressInfo(obj.i, index.l) :  ProcedureReturn TaskRemoveProgressInfo(obj, index) :  EndProcedure
  Procedure.l ckRun(obj.i) :  ProcedureReturn TaskRun(obj) :  EndProcedure
  Procedure.l ckRunSynchronously(obj.i) :  ProcedureReturn TaskRunSynchronously(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn TaskSaveLastError(obj, path) :  EndProcedure
  Procedure ckSleepMs(obj.i, numMs.l) :  ProcedureReturn TaskSleepMs(obj, numMs) :  EndProcedure
  Procedure.l ckWait(obj.i, maxWaitMs.l) :  ProcedureReturn TaskWait(obj, maxWaitMs) :  EndProcedure
EndModule

