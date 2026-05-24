DeclareModule CkDtObj
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckDay(obj.i)
  Declare setCkDay(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckHour(obj.i)
  Declare setCkHour(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckMinute(obj.i)
  Declare setCkMinute(obj.i, value.l)
  Declare.l ckMonth(obj.i)
  Declare setCkMonth(obj.i, value.l)
  Declare.l ckSecond(obj.i)
  Declare setCkSecond(obj.i, value.l)
  Declare.l ckStructTmMonth(obj.i)
  Declare setCkStructTmMonth(obj.i, value.l)
  Declare.l ckStructTmYear(obj.i)
  Declare setCkStructTmYear(obj.i, value.l)
  Declare.l ckUtc(obj.i)
  Declare setCkUtc(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckYear(obj.i)
  Declare setCkYear(obj.i, value.l)
  Declare ckDeSerialize(obj.i, serializedDtObj.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSerialize(obj.i)
EndDeclareModule

Module CkDtObj
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkDtObjCreate()
  PrototypeC CkDtObjDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDtObjLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDtObjLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDtObjLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDtObjLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDtObjLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global DtObjCreate.CkDtObjCreate = GetFunction(CkDtObjLibId,"CkDtObjU_CreateW")
  Global DtObjDispose.CkDtObjDispose = GetFunction(CkDtObjLibId,"CkDtObjU_DisposeW")
  Global DtObjDay.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getDayW")
  Global DtObjPSetDay.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putDayW")
  Global DtObjDebugLogFilePath.cksPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_debugLogFilePathW")
  Global DtObjPSetDebugLogFilePath.cksPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putDebugLogFilePathW")
  Global DtObjHour.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getHourW")
  Global DtObjPSetHour.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putHourW")
  Global DtObjLastErrorHtml.cksPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_lastErrorHtmlW")
  Global DtObjLastErrorText.cksPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_lastErrorTextW")
  Global DtObjLastErrorXml.cksPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_lastErrorXmlW")
  Global DtObjLastMethodSuccess.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getLastMethodSuccessW")
  Global DtObjPSetLastMethodSuccess.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putLastMethodSuccessW")
  Global DtObjMinute.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getMinuteW")
  Global DtObjPSetMinute.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putMinuteW")
  Global DtObjMonth.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getMonthW")
  Global DtObjPSetMonth.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putMonthW")
  Global DtObjSecond.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getSecondW")
  Global DtObjPSetSecond.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putSecondW")
  Global DtObjStructTmMonth.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getStructTmMonthW")
  Global DtObjPSetStructTmMonth.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putStructTmMonthW")
  Global DtObjStructTmYear.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getStructTmYearW")
  Global DtObjPSetStructTmYear.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putStructTmYearW")
  Global DtObjUtc.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getUtcW")
  Global DtObjPSetUtc.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putUtcW")
  Global DtObjVerboseLogging.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getVerboseLoggingW")
  Global DtObjPSetVerboseLogging.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putVerboseLoggingW")
  Global DtObjVersion.cksPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_versionW")
  Global DtObjYear.cklPropGet = GetFunction(CkDtObjLibId,"CkDtObjU_getYearW")
  Global DtObjPSetYear.cklPropSet = GetFunction(CkDtObjLibId,"CkDtObjU_putYearW")
  Global DtObjDeSerialize.ckvMs = GetFunction(CkDtObjLibId,"CkDtObjU_DeSerializeW")
  Global DtObjSaveLastError.cklMs = GetFunction(CkDtObjLibId,"CkDtObjU_SaveLastErrorW")
  Global DtObjSerialize.cklM = GetFunction(CkDtObjLibId,"CkDtObjU_serializeW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn DtObjCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn DtObjDispose(obj) : EndProcedure
  Procedure.l ckDay(obj.i) : ProcedureReturn DtObjDay(obj) : EndProcedure
  Procedure setCkDay(obj.i, value.l) : ProcedureReturn DtObjPSetDay(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(DtObjDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn DtObjPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckHour(obj.i) : ProcedureReturn DtObjHour(obj) : EndProcedure
  Procedure setCkHour(obj.i, value.l) : ProcedureReturn DtObjPSetHour(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(DtObjLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(DtObjLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(DtObjLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn DtObjLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn DtObjPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMinute(obj.i) : ProcedureReturn DtObjMinute(obj) : EndProcedure
  Procedure setCkMinute(obj.i, value.l) : ProcedureReturn DtObjPSetMinute(obj,value) : EndProcedure
  Procedure.l ckMonth(obj.i) : ProcedureReturn DtObjMonth(obj) : EndProcedure
  Procedure setCkMonth(obj.i, value.l) : ProcedureReturn DtObjPSetMonth(obj,value) : EndProcedure
  Procedure.l ckSecond(obj.i) : ProcedureReturn DtObjSecond(obj) : EndProcedure
  Procedure setCkSecond(obj.i, value.l) : ProcedureReturn DtObjPSetSecond(obj,value) : EndProcedure
  Procedure.l ckStructTmMonth(obj.i) : ProcedureReturn DtObjStructTmMonth(obj) : EndProcedure
  Procedure setCkStructTmMonth(obj.i, value.l) : ProcedureReturn DtObjPSetStructTmMonth(obj,value) : EndProcedure
  Procedure.l ckStructTmYear(obj.i) : ProcedureReturn DtObjStructTmYear(obj) : EndProcedure
  Procedure setCkStructTmYear(obj.i, value.l) : ProcedureReturn DtObjPSetStructTmYear(obj,value) : EndProcedure
  Procedure.l ckUtc(obj.i) : ProcedureReturn DtObjUtc(obj) : EndProcedure
  Procedure setCkUtc(obj.i, value.l) : ProcedureReturn DtObjPSetUtc(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn DtObjVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn DtObjPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(DtObjVersion(obj)) : EndProcedure
  Procedure.l ckYear(obj.i) : ProcedureReturn DtObjYear(obj) : EndProcedure
  Procedure setCkYear(obj.i, value.l) : ProcedureReturn DtObjPSetYear(obj,value) : EndProcedure
  Procedure ckDeSerialize(obj.i, serializedDtObj.s) :  ProcedureReturn DtObjDeSerialize(obj, serializedDtObj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn DtObjSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSerialize(obj.i) :  ProcedureReturn PeekS(DtObjSerialize(obj)) :  EndProcedure
EndModule

