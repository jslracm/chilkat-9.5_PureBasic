DeclareModule CkJsonArray
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckEmitCompact(obj.i)
  Declare setCkEmitCompact(obj.i, value.l)
  Declare.l ckEmitCrlf(obj.i)
  Declare setCkEmitCrlf(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckSize(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddArrayAt(obj.i, index.l)
  Declare.l ckAddBoolAt(obj.i, index.l, value.l)
  Declare.l ckAddIntAt(obj.i, index.l, value.l)
  Declare.l ckAddNullAt(obj.i, index.l)
  Declare.l ckAddNumberAt(obj.i, index.l, numericStr.s)
  Declare.l ckAddObjectAt(obj.i, index.l)
  Declare.l ckAddObjectCopyAt(obj.i, index.l, jsonObj.i)
  Declare.l ckAddStringAt(obj.i, index.l, value.s)
  Declare.l ckAppendArrayItems(obj.i, jarr.i)
  Declare.i ckArrayAt(obj.i, index.l)
  Declare.l ckBoolAt(obj.i, index.l)
  Declare ckClear(obj.i)
  Declare.l ckDateAt(obj.i, index.l, dateTime.i)
  Declare.l ckDeleteAt(obj.i, index.l)
  Declare.l ckDtAt(obj.i, index.l, bLocal.l, dt.i)
  Declare.s ckEmit(obj.i)
  Declare.l ckEmitSb(obj.i, sb.i)
  Declare.l ckFindObject(obj.i, name.s, value.s, caseSensitive.l)
  Declare.l ckFindString(obj.i, value.s, caseSensitive.l)
  Declare.l ckIntAt(obj.i, index.l)
  Declare.l ckIsNullAt(obj.i, index.l)
  Declare.l ckLoad(obj.i, jsonArray.s)
  Declare.l ckLoadSb(obj.i, sb.i)
  Declare.i ckObjectAt(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetBoolAt(obj.i, index.l, value.l)
  Declare.l ckSetIntAt(obj.i, index.l, value.l)
  Declare.l ckSetNullAt(obj.i, index.l)
  Declare.l ckSetNumberAt(obj.i, index.l, value.s)
  Declare.l ckSetStringAt(obj.i, index.l, value.s)
  Declare.s ckStringAt(obj.i, index.l)
  Declare.l ckSwap(obj.i, index1.l, index2.l)
  Declare.l ckTypeAt(obj.i, index.l)
EndDeclareModule

Module CkJsonArray
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMlli(obj.i, arg1.l, arg2.l, arg3.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkJsonArrayCreate()
  PrototypeC CkJsonArrayDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJsonArrayLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJsonArrayLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJsonArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJsonArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJsonArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JsonArrayCreate.CkJsonArrayCreate = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_CreateW")
  Global JsonArrayDispose.CkJsonArrayDispose = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_DisposeW")
  Global JsonArrayDebugLogFilePath.cksPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_debugLogFilePathW")
  Global JsonArrayPSetDebugLogFilePath.cksPropSet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_putDebugLogFilePathW")
  Global JsonArrayEmitCompact.cklPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_getEmitCompactW")
  Global JsonArrayPSetEmitCompact.cklPropSet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_putEmitCompactW")
  Global JsonArrayEmitCrlf.cklPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_getEmitCrlfW")
  Global JsonArrayPSetEmitCrlf.cklPropSet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_putEmitCrlfW")
  Global JsonArrayLastErrorHtml.cksPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_lastErrorHtmlW")
  Global JsonArrayLastErrorText.cksPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_lastErrorTextW")
  Global JsonArrayLastErrorXml.cksPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_lastErrorXmlW")
  Global JsonArrayLastMethodSuccess.cklPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_getLastMethodSuccessW")
  Global JsonArrayPSetLastMethodSuccess.cklPropSet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_putLastMethodSuccessW")
  Global JsonArraySize.cklPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_getSizeW")
  Global JsonArrayVerboseLogging.cklPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_getVerboseLoggingW")
  Global JsonArrayPSetVerboseLogging.cklPropSet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_putVerboseLoggingW")
  Global JsonArrayVersion.cksPropGet = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_versionW")
  Global JsonArrayAddArrayAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddArrayAtW")
  Global JsonArrayAddBoolAt.cklMll = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddBoolAtW")
  Global JsonArrayAddIntAt.cklMll = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddIntAtW")
  Global JsonArrayAddNullAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddNullAtW")
  Global JsonArrayAddNumberAt.cklMls = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddNumberAtW")
  Global JsonArrayAddObjectAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddObjectAtW")
  Global JsonArrayAddObjectCopyAt.cklMli = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddObjectCopyAtW")
  Global JsonArrayAddStringAt.cklMls = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AddStringAtW")
  Global JsonArrayAppendArrayItems.cklMi = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_AppendArrayItemsW")
  Global JsonArrayArrayAt.ckiMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_ArrayAtW")
  Global JsonArrayBoolAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_BoolAtW")
  Global JsonArrayClear.ckvM = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_ClearW")
  Global JsonArrayDateAt.cklMli = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_DateAtW")
  Global JsonArrayDeleteAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_DeleteAtW")
  Global JsonArrayDtAt.cklMlli = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_DtAtW")
  Global JsonArrayEmit.cklM = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_emitW")
  Global JsonArrayEmitSb.cklMi = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_EmitSbW")
  Global JsonArrayFindObject.cklMssl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_FindObjectW")
  Global JsonArrayFindString.cklMsl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_FindStringW")
  Global JsonArrayIntAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_IntAtW")
  Global JsonArrayIsNullAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_IsNullAtW")
  Global JsonArrayLoad.cklMs = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_LoadW")
  Global JsonArrayLoadSb.cklMi = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_LoadSbW")
  Global JsonArrayObjectAt.ckiMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_ObjectAtW")
  Global JsonArraySaveLastError.cklMs = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SaveLastErrorW")
  Global JsonArraySetBoolAt.cklMll = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SetBoolAtW")
  Global JsonArraySetIntAt.cklMll = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SetIntAtW")
  Global JsonArraySetNullAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SetNullAtW")
  Global JsonArraySetNumberAt.cklMls = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SetNumberAtW")
  Global JsonArraySetStringAt.cklMls = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SetStringAtW")
  Global JsonArrayStringAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_stringAtW")
  Global JsonArraySwap.cklMll = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_SwapW")
  Global JsonArrayTypeAt.cklMl = GetFunction(CkJsonArrayLibId,"CkJsonArrayU_TypeAtW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JsonArrayCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JsonArrayDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JsonArrayDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JsonArrayPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckEmitCompact(obj.i) : ProcedureReturn JsonArrayEmitCompact(obj) : EndProcedure
  Procedure setCkEmitCompact(obj.i, value.l) : ProcedureReturn JsonArrayPSetEmitCompact(obj,value) : EndProcedure
  Procedure.l ckEmitCrlf(obj.i) : ProcedureReturn JsonArrayEmitCrlf(obj) : EndProcedure
  Procedure setCkEmitCrlf(obj.i, value.l) : ProcedureReturn JsonArrayPSetEmitCrlf(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JsonArrayLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JsonArrayLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JsonArrayLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JsonArrayLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JsonArrayPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckSize(obj.i) : ProcedureReturn JsonArraySize(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JsonArrayVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JsonArrayPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JsonArrayVersion(obj)) : EndProcedure
  Procedure.l ckAddArrayAt(obj.i, index.l) :  ProcedureReturn JsonArrayAddArrayAt(obj, index) :  EndProcedure
  Procedure.l ckAddBoolAt(obj.i, index.l, value.l) :  ProcedureReturn JsonArrayAddBoolAt(obj, index, value) :  EndProcedure
  Procedure.l ckAddIntAt(obj.i, index.l, value.l) :  ProcedureReturn JsonArrayAddIntAt(obj, index, value) :  EndProcedure
  Procedure.l ckAddNullAt(obj.i, index.l) :  ProcedureReturn JsonArrayAddNullAt(obj, index) :  EndProcedure
  Procedure.l ckAddNumberAt(obj.i, index.l, numericStr.s) :  ProcedureReturn JsonArrayAddNumberAt(obj, index, numericStr) :  EndProcedure
  Procedure.l ckAddObjectAt(obj.i, index.l) :  ProcedureReturn JsonArrayAddObjectAt(obj, index) :  EndProcedure
  Procedure.l ckAddObjectCopyAt(obj.i, index.l, jsonObj.i) :  ProcedureReturn JsonArrayAddObjectCopyAt(obj, index, jsonObj) :  EndProcedure
  Procedure.l ckAddStringAt(obj.i, index.l, value.s) :  ProcedureReturn JsonArrayAddStringAt(obj, index, value) :  EndProcedure
  Procedure.l ckAppendArrayItems(obj.i, jarr.i) :  ProcedureReturn JsonArrayAppendArrayItems(obj, jarr) :  EndProcedure
  Procedure.i ckArrayAt(obj.i, index.l) :  ProcedureReturn JsonArrayArrayAt(obj, index) :  EndProcedure
  Procedure.l ckBoolAt(obj.i, index.l) :  ProcedureReturn JsonArrayBoolAt(obj, index) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn JsonArrayClear(obj) :  EndProcedure
  Procedure.l ckDateAt(obj.i, index.l, dateTime.i) :  ProcedureReturn JsonArrayDateAt(obj, index, dateTime) :  EndProcedure
  Procedure.l ckDeleteAt(obj.i, index.l) :  ProcedureReturn JsonArrayDeleteAt(obj, index) :  EndProcedure
  Procedure.l ckDtAt(obj.i, index.l, bLocal.l, dt.i) :  ProcedureReturn JsonArrayDtAt(obj, index, bLocal, dt) :  EndProcedure
  Procedure.s ckEmit(obj.i) :  ProcedureReturn PeekS(JsonArrayEmit(obj)) :  EndProcedure
  Procedure.l ckEmitSb(obj.i, sb.i) :  ProcedureReturn JsonArrayEmitSb(obj, sb) :  EndProcedure
  Procedure.l ckFindObject(obj.i, name.s, value.s, caseSensitive.l) :  ProcedureReturn JsonArrayFindObject(obj, name, value, caseSensitive) :  EndProcedure
  Procedure.l ckFindString(obj.i, value.s, caseSensitive.l) :  ProcedureReturn JsonArrayFindString(obj, value, caseSensitive) :  EndProcedure
  Procedure.l ckIntAt(obj.i, index.l) :  ProcedureReturn JsonArrayIntAt(obj, index) :  EndProcedure
  Procedure.l ckIsNullAt(obj.i, index.l) :  ProcedureReturn JsonArrayIsNullAt(obj, index) :  EndProcedure
  Procedure.l ckLoad(obj.i, jsonArray.s) :  ProcedureReturn JsonArrayLoad(obj, jsonArray) :  EndProcedure
  Procedure.l ckLoadSb(obj.i, sb.i) :  ProcedureReturn JsonArrayLoadSb(obj, sb) :  EndProcedure
  Procedure.i ckObjectAt(obj.i, index.l) :  ProcedureReturn JsonArrayObjectAt(obj, index) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JsonArraySaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetBoolAt(obj.i, index.l, value.l) :  ProcedureReturn JsonArraySetBoolAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetIntAt(obj.i, index.l, value.l) :  ProcedureReturn JsonArraySetIntAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetNullAt(obj.i, index.l) :  ProcedureReturn JsonArraySetNullAt(obj, index) :  EndProcedure
  Procedure.l ckSetNumberAt(obj.i, index.l, value.s) :  ProcedureReturn JsonArraySetNumberAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetStringAt(obj.i, index.l, value.s) :  ProcedureReturn JsonArraySetStringAt(obj, index, value) :  EndProcedure
  Procedure.s ckStringAt(obj.i, index.l) :  ProcedureReturn PeekS(JsonArrayStringAt(obj, index)) :  EndProcedure
  Procedure.l ckSwap(obj.i, index1.l, index2.l) :  ProcedureReturn JsonArraySwap(obj, index1, index2) :  EndProcedure
  Procedure.l ckTypeAt(obj.i, index.l) :  ProcedureReturn JsonArrayTypeAt(obj, index) :  EndProcedure
EndModule

