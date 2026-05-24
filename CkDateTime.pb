DeclareModule CkDateTime
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckIsDst(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckUtcOffset(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddDays(obj.i, numDays.l)
  Declare.l ckAddSeconds(obj.i, numSeconds.l)
  Declare ckDeSerialize(obj.i, serializedDateTime.s)
  Declare.l ckDiffSeconds(obj.i, dateTimeArg.i)
  Declare.l ckExpiresWithin(obj.i, n.l, units.s)
  Declare.q ckGetAsDateTimeTicks(obj.i, bLocal.l)
  Declare.l ckGetAsDosDate(obj.i, bLocal.l)
  Declare.s ckGetAsIso8601(obj.i, formatStr.s, bLocal.l)
  Declare.l ckGetAsOleDate(obj.i, bLocal.l)
  Declare.s ckGetAsRfc822(obj.i, bLocal.l)
  Declare.s ckGetAsTimestamp(obj.i, bLocal.l)
  Declare.l ckGetAsUnixTime(obj.i, bLocal.l)
  Declare.q ckGetAsUnixTime64(obj.i, bLocal.l)
  Declare.s ckGetAsUnixTimeStr(obj.i, bLocal.l)
  Declare.i ckGetDtObj(obj.i, bLocal.l)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckOlderThan(obj.i, n.l, units.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSerialize(obj.i)
  Declare.l ckSetFromCurrentSystemTime(obj.i)
  Declare.l ckSetFromDateTimeTicks(obj.i, bLocal.l, ticks.q)
  Declare.l ckSetFromDosDate(obj.i, bLocal.l, t.l)
  Declare.l ckSetFromDtObj(obj.i, dt.i)
  Declare.l ckSetFromNtpTime(obj.i, ntpSeconds.l)
  Declare.l ckSetFromOleDate(obj.i, bLocal.l, dt.l)
  Declare.l ckSetFromRfc822(obj.i, rfc822Str.s)
  Declare.l ckSetFromTimestamp(obj.i, timestamp.s)
  Declare.l ckSetFromUnixTime(obj.i, bLocal.l, t.l)
  Declare.l ckSetFromUnixTime64(obj.i, bLocal.l, t.q)
EndDeclareModule

Module CkDateTime
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMlq(obj.i, arg1.l, arg2.q)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.q ckqMl(obj.i, arg1.l)
  PrototypeC.i CkDateTimeCreate()
  PrototypeC CkDateTimeDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDateTimeLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDateTimeLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDateTimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDateTimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDateTimeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CkDateTimeCreate.CkDateTimeCreate = GetFunction(CkDateTimeLibId,"CkDateTimeU_CreateW")
  Global CkDateTimeDispose.CkDateTimeDispose = GetFunction(CkDateTimeLibId,"CkDateTimeU_DisposeW")
  Global CkDateTimeDebugLogFilePath.cksPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_debugLogFilePathW")
  Global CkDateTimePSetDebugLogFilePath.cksPropSet = GetFunction(CkDateTimeLibId,"CkDateTimeU_putDebugLogFilePathW")
  Global CkDateTimeIsDst.cklPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_getIsDstW")
  Global CkDateTimeLastErrorHtml.cksPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_lastErrorHtmlW")
  Global CkDateTimeLastErrorText.cksPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_lastErrorTextW")
  Global CkDateTimeLastErrorXml.cksPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_lastErrorXmlW")
  Global CkDateTimeLastMethodSuccess.cklPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_getLastMethodSuccessW")
  Global CkDateTimePSetLastMethodSuccess.cklPropSet = GetFunction(CkDateTimeLibId,"CkDateTimeU_putLastMethodSuccessW")
  Global CkDateTimeUtcOffset.cklPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_getUtcOffsetW")
  Global CkDateTimeVerboseLogging.cklPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_getVerboseLoggingW")
  Global CkDateTimePSetVerboseLogging.cklPropSet = GetFunction(CkDateTimeLibId,"CkDateTimeU_putVerboseLoggingW")
  Global CkDateTimeVersion.cksPropGet = GetFunction(CkDateTimeLibId,"CkDateTimeU_versionW")
  Global CkDateTimeAddDays.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_AddDaysW")
  Global CkDateTimeAddSeconds.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_AddSecondsW")
  Global CkDateTimeDeSerialize.ckvMs = GetFunction(CkDateTimeLibId,"CkDateTimeU_DeSerializeW")
  Global CkDateTimeDiffSeconds.cklMi = GetFunction(CkDateTimeLibId,"CkDateTimeU_DiffSecondsW")
  Global CkDateTimeExpiresWithin.cklMls = GetFunction(CkDateTimeLibId,"CkDateTimeU_ExpiresWithinW")
  Global CkDateTimeGetAsDateTimeTicks.ckqMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetAsDateTimeTicksW")
  Global CkDateTimeGetAsDosDate.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetAsDosDateW")
  Global CkDateTimeGetAsIso8601.cklMsl = GetFunction(CkDateTimeLibId,"CkDateTimeU_getAsIso8601W")
  Global CkDateTimeGetAsOleDate.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetAsOleDateW")
  Global CkDateTimeGetAsRfc822.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_getAsRfc822W")
  Global CkDateTimeGetAsTimestamp.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_getAsTimestampW")
  Global CkDateTimeGetAsUnixTime.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetAsUnixTimeW")
  Global CkDateTimeGetAsUnixTime64.ckqMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetAsUnixTime64W")
  Global CkDateTimeGetAsUnixTimeStr.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_getAsUnixTimeStrW")
  Global CkDateTimeGetDtObj.ckiMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_GetDtObjW")
  Global CkDateTimeLoadTaskResult.cklMi = GetFunction(CkDateTimeLibId,"CkDateTimeU_LoadTaskResultW")
  Global CkDateTimeOlderThan.cklMls = GetFunction(CkDateTimeLibId,"CkDateTimeU_OlderThanW")
  Global CkDateTimeSaveLastError.cklMs = GetFunction(CkDateTimeLibId,"CkDateTimeU_SaveLastErrorW")
  Global CkDateTimeSerialize.cklM = GetFunction(CkDateTimeLibId,"CkDateTimeU_serializeW")
  Global CkDateTimeSetFromCurrentSystemTime.cklM = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromCurrentSystemTimeW")
  Global CkDateTimeSetFromDateTimeTicks.cklMlq = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromDateTimeTicksW")
  Global CkDateTimeSetFromDosDate.cklMll = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromDosDateW")
  Global CkDateTimeSetFromDtObj.cklMi = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromDtObjW")
  Global CkDateTimeSetFromNtpTime.cklMl = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromNtpTimeW")
  Global CkDateTimeSetFromOleDate.cklMll = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromOleDateW")
  Global CkDateTimeSetFromRfc822.cklMs = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromRfc822W")
  Global CkDateTimeSetFromTimestamp.cklMs = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromTimestampW")
  Global CkDateTimeSetFromUnixTime.cklMll = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromUnixTimeW")
  Global CkDateTimeSetFromUnixTime64.cklMlq = GetFunction(CkDateTimeLibId,"CkDateTimeU_SetFromUnixTime64W")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CkDateTimeCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CkDateTimeDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CkDateTimeDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CkDateTimePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckIsDst(obj.i) : ProcedureReturn CkDateTimeIsDst(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CkDateTimeLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CkDateTimeLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CkDateTimeLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CkDateTimeLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CkDateTimePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckUtcOffset(obj.i) : ProcedureReturn CkDateTimeUtcOffset(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CkDateTimeVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CkDateTimePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CkDateTimeVersion(obj)) : EndProcedure
  Procedure.l ckAddDays(obj.i, numDays.l) :  ProcedureReturn CkDateTimeAddDays(obj, numDays) :  EndProcedure
  Procedure.l ckAddSeconds(obj.i, numSeconds.l) :  ProcedureReturn CkDateTimeAddSeconds(obj, numSeconds) :  EndProcedure
  Procedure ckDeSerialize(obj.i, serializedDateTime.s) :  ProcedureReturn CkDateTimeDeSerialize(obj, serializedDateTime) :  EndProcedure
  Procedure.l ckDiffSeconds(obj.i, dateTimeArg.i) :  ProcedureReturn CkDateTimeDiffSeconds(obj, dateTimeArg) :  EndProcedure
  Procedure.l ckExpiresWithin(obj.i, n.l, units.s) :  ProcedureReturn CkDateTimeExpiresWithin(obj, n, units) :  EndProcedure
  Procedure.q ckGetAsDateTimeTicks(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetAsDateTimeTicks(obj, bLocal) :  EndProcedure
  Procedure.l ckGetAsDosDate(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetAsDosDate(obj, bLocal) :  EndProcedure
  Procedure.s ckGetAsIso8601(obj.i, formatStr.s, bLocal.l) :  ProcedureReturn PeekS(CkDateTimeGetAsIso8601(obj, formatStr, bLocal)) :  EndProcedure
  Procedure.l ckGetAsOleDate(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetAsOleDate(obj, bLocal) :  EndProcedure
  Procedure.s ckGetAsRfc822(obj.i, bLocal.l) :  ProcedureReturn PeekS(CkDateTimeGetAsRfc822(obj, bLocal)) :  EndProcedure
  Procedure.s ckGetAsTimestamp(obj.i, bLocal.l) :  ProcedureReturn PeekS(CkDateTimeGetAsTimestamp(obj, bLocal)) :  EndProcedure
  Procedure.l ckGetAsUnixTime(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetAsUnixTime(obj, bLocal) :  EndProcedure
  Procedure.q ckGetAsUnixTime64(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetAsUnixTime64(obj, bLocal) :  EndProcedure
  Procedure.s ckGetAsUnixTimeStr(obj.i, bLocal.l) :  ProcedureReturn PeekS(CkDateTimeGetAsUnixTimeStr(obj, bLocal)) :  EndProcedure
  Procedure.i ckGetDtObj(obj.i, bLocal.l) :  ProcedureReturn CkDateTimeGetDtObj(obj, bLocal) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn CkDateTimeLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckOlderThan(obj.i, n.l, units.s) :  ProcedureReturn CkDateTimeOlderThan(obj, n, units) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CkDateTimeSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSerialize(obj.i) :  ProcedureReturn PeekS(CkDateTimeSerialize(obj)) :  EndProcedure
  Procedure.l ckSetFromCurrentSystemTime(obj.i) :  ProcedureReturn CkDateTimeSetFromCurrentSystemTime(obj) :  EndProcedure
  Procedure.l ckSetFromDateTimeTicks(obj.i, bLocal.l, ticks.q) :  ProcedureReturn CkDateTimeSetFromDateTimeTicks(obj, bLocal, ticks) :  EndProcedure
  Procedure.l ckSetFromDosDate(obj.i, bLocal.l, t.l) :  ProcedureReturn CkDateTimeSetFromDosDate(obj, bLocal, t) :  EndProcedure
  Procedure.l ckSetFromDtObj(obj.i, dt.i) :  ProcedureReturn CkDateTimeSetFromDtObj(obj, dt) :  EndProcedure
  Procedure.l ckSetFromNtpTime(obj.i, ntpSeconds.l) :  ProcedureReturn CkDateTimeSetFromNtpTime(obj, ntpSeconds) :  EndProcedure
  Procedure.l ckSetFromOleDate(obj.i, bLocal.l, dt.l) :  ProcedureReturn CkDateTimeSetFromOleDate(obj, bLocal, dt) :  EndProcedure
  Procedure.l ckSetFromRfc822(obj.i, rfc822Str.s) :  ProcedureReturn CkDateTimeSetFromRfc822(obj, rfc822Str) :  EndProcedure
  Procedure.l ckSetFromTimestamp(obj.i, timestamp.s) :  ProcedureReturn CkDateTimeSetFromTimestamp(obj, timestamp) :  EndProcedure
  Procedure.l ckSetFromUnixTime(obj.i, bLocal.l, t.l) :  ProcedureReturn CkDateTimeSetFromUnixTime(obj, bLocal, t) :  EndProcedure
  Procedure.l ckSetFromUnixTime64(obj.i, bLocal.l, t.q) :  ProcedureReturn CkDateTimeSetFromUnixTime64(obj, bLocal, t) :  EndProcedure
EndModule

