DeclareModule CkLog
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
  Declare ckClear(obj.i, initialTag.s)
  Declare ckEnterContext(obj.i, tag.s)
  Declare ckLeaveContext(obj.i)
  Declare ckLogData(obj.i, tag.s, message.s)
  Declare ckLogDataMax(obj.i, tag.s, message.s, maxNumChars.l)
  Declare ckLogDateTime(obj.i, tag.s, gmt.l)
  Declare ckLogError(obj.i, message.s)
  Declare ckLogInfo(obj.i, message.s)
  Declare ckLogInt(obj.i, tag.s, value.l)
  Declare ckLogInt64(obj.i, tag.s, value.q)
  Declare ckLogTimestamp(obj.i, tag.s)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkLog
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC ckvMsq(obj.i, arg1.s, arg2.q)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i CkLogCreate()
  PrototypeC CkLogDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkLogLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkLogLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkLogLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkLogLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkLogLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global LogCreate.CkLogCreate = GetFunction(CkLogLibId,"CkLogU_CreateW")
  Global LogDispose.CkLogDispose = GetFunction(CkLogLibId,"CkLogU_DisposeW")
  Global LogDebugLogFilePath.cksPropGet = GetFunction(CkLogLibId,"CkLogU_debugLogFilePathW")
  Global LogPSetDebugLogFilePath.cksPropSet = GetFunction(CkLogLibId,"CkLogU_putDebugLogFilePathW")
  Global LogLastErrorHtml.cksPropGet = GetFunction(CkLogLibId,"CkLogU_lastErrorHtmlW")
  Global LogLastErrorText.cksPropGet = GetFunction(CkLogLibId,"CkLogU_lastErrorTextW")
  Global LogLastErrorXml.cksPropGet = GetFunction(CkLogLibId,"CkLogU_lastErrorXmlW")
  Global LogLastMethodSuccess.cklPropGet = GetFunction(CkLogLibId,"CkLogU_getLastMethodSuccessW")
  Global LogPSetLastMethodSuccess.cklPropSet = GetFunction(CkLogLibId,"CkLogU_putLastMethodSuccessW")
  Global LogVerboseLogging.cklPropGet = GetFunction(CkLogLibId,"CkLogU_getVerboseLoggingW")
  Global LogPSetVerboseLogging.cklPropSet = GetFunction(CkLogLibId,"CkLogU_putVerboseLoggingW")
  Global LogVersion.cksPropGet = GetFunction(CkLogLibId,"CkLogU_versionW")
  Global LogClear.ckvMs = GetFunction(CkLogLibId,"CkLogU_ClearW")
  Global LogEnterContext.ckvMs = GetFunction(CkLogLibId,"CkLogU_EnterContextW")
  Global LogLeaveContext.ckvM = GetFunction(CkLogLibId,"CkLogU_LeaveContextW")
  Global LogLogData.ckvMss = GetFunction(CkLogLibId,"CkLogU_LogDataW")
  Global LogLogDataMax.ckvMssl = GetFunction(CkLogLibId,"CkLogU_LogDataMaxW")
  Global LogLogDateTime.ckvMsl = GetFunction(CkLogLibId,"CkLogU_LogDateTimeW")
  Global LogLogError.ckvMs = GetFunction(CkLogLibId,"CkLogU_LogErrorW")
  Global LogLogInfo.ckvMs = GetFunction(CkLogLibId,"CkLogU_LogInfoW")
  Global LogLogInt.ckvMsl = GetFunction(CkLogLibId,"CkLogU_LogIntW")
  Global LogLogInt64.ckvMsq = GetFunction(CkLogLibId,"CkLogU_LogInt64W")
  Global LogLogTimestamp.ckvMs = GetFunction(CkLogLibId,"CkLogU_LogTimestampW")
  Global LogSaveLastError.cklMs = GetFunction(CkLogLibId,"CkLogU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn LogCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn LogDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(LogDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn LogPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(LogLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(LogLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(LogLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn LogLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn LogPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn LogVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn LogPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(LogVersion(obj)) : EndProcedure
  Procedure ckClear(obj.i, initialTag.s) :  ProcedureReturn LogClear(obj, initialTag) :  EndProcedure
  Procedure ckEnterContext(obj.i, tag.s) :  ProcedureReturn LogEnterContext(obj, tag) :  EndProcedure
  Procedure ckLeaveContext(obj.i) :  ProcedureReturn LogLeaveContext(obj) :  EndProcedure
  Procedure ckLogData(obj.i, tag.s, message.s) :  ProcedureReturn LogLogData(obj, tag, message) :  EndProcedure
  Procedure ckLogDataMax(obj.i, tag.s, message.s, maxNumChars.l) :  ProcedureReturn LogLogDataMax(obj, tag, message, maxNumChars) :  EndProcedure
  Procedure ckLogDateTime(obj.i, tag.s, gmt.l) :  ProcedureReturn LogLogDateTime(obj, tag, gmt) :  EndProcedure
  Procedure ckLogError(obj.i, message.s) :  ProcedureReturn LogLogError(obj, message) :  EndProcedure
  Procedure ckLogInfo(obj.i, message.s) :  ProcedureReturn LogLogInfo(obj, message) :  EndProcedure
  Procedure ckLogInt(obj.i, tag.s, value.l) :  ProcedureReturn LogLogInt(obj, tag, value) :  EndProcedure
  Procedure ckLogInt64(obj.i, tag.s, value.q) :  ProcedureReturn LogLogInt64(obj, tag, value) :  EndProcedure
  Procedure ckLogTimestamp(obj.i, tag.s) :  ProcedureReturn LogLogTimestamp(obj, tag) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn LogSaveLastError(obj, path) :  EndProcedure
EndModule

