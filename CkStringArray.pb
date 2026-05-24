DeclareModule CkStringArray
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCount(obj.i)
  Declare.l ckCrlf(obj.i)
  Declare setCkCrlf(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLength(obj.i)
  Declare.l ckTrim(obj.i)
  Declare setCkTrim(obj.i, value.l)
  Declare.l ckUnique(obj.i)
  Declare setCkUnique(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppend(obj.i, str.s)
  Declare.l ckAppendSerialized(obj.i, encodedStr.s)
  Declare ckClear(obj.i)
  Declare.l ckContains(obj.i, str.s)
  Declare.l ckFind(obj.i, findStr.s, startIndex.l)
  Declare.l ckFindFirstMatch(obj.i, matchPattern.s, startIndex.l)
  Declare.s ckGetString(obj.i, index.l)
  Declare.l ckGetStringLen(obj.i, index.l)
  Declare ckInsertAt(obj.i, index.l, str.s)
  Declare.s ckLastString(obj.i)
  Declare.l ckLoadFromFile(obj.i, path.s)
  Declare.l ckLoadFromFile2(obj.i, path.s, charset.s)
  Declare ckLoadFromText(obj.i, str.s)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.s ckPop(obj.i)
  Declare ckPrepend(obj.i, str.s)
  Declare ckRemove(obj.i, str.s)
  Declare.l ckRemoveAt(obj.i, index.l)
  Declare ckReplaceAt(obj.i, index.l, str.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveNthToFile(obj.i, index.l, saveToPath.s)
  Declare.l ckSaveToFile(obj.i, path.s)
  Declare.l ckSaveToFile2(obj.i, saveToPath.s, charset.s)
  Declare.s ckSaveToText(obj.i)
  Declare.s ckSerialize(obj.i)
  Declare ckSort(obj.i, ascending.l)
  Declare ckSplitAndAppend(obj.i, str.s, boundary.s)
  Declare ckSubtract(obj.i, stringArrayObj.i)
  Declare ckUnion(obj.i, stringArrayObj.i)
EndDeclareModule

Module CkStringArray
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvMls(obj.i, arg1.l, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.i CkStringArrayCreate()
  PrototypeC CkStringArrayDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringArrayLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkStringArrayLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkStringArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkStringArrayLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global StringArrayCreate.CkStringArrayCreate = GetFunction(CkStringArrayLibId,"CkStringArrayU_CreateW")
  Global StringArrayDispose.CkStringArrayDispose = GetFunction(CkStringArrayLibId,"CkStringArrayU_DisposeW")
  Global StringArrayCount.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getCountW")
  Global StringArrayCrlf.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getCrlfW")
  Global StringArrayPSetCrlf.cklPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putCrlfW")
  Global StringArrayDebugLogFilePath.cksPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_debugLogFilePathW")
  Global StringArrayPSetDebugLogFilePath.cksPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putDebugLogFilePathW")
  Global StringArrayLastErrorHtml.cksPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_lastErrorHtmlW")
  Global StringArrayLastErrorText.cksPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_lastErrorTextW")
  Global StringArrayLastErrorXml.cksPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_lastErrorXmlW")
  Global StringArrayLastMethodSuccess.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getLastMethodSuccessW")
  Global StringArrayPSetLastMethodSuccess.cklPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putLastMethodSuccessW")
  Global StringArrayLength.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getLengthW")
  Global StringArrayTrim.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getTrimW")
  Global StringArrayPSetTrim.cklPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putTrimW")
  Global StringArrayUnique.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getUniqueW")
  Global StringArrayPSetUnique.cklPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putUniqueW")
  Global StringArrayVerboseLogging.cklPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_getVerboseLoggingW")
  Global StringArrayPSetVerboseLogging.cklPropSet = GetFunction(CkStringArrayLibId,"CkStringArrayU_putVerboseLoggingW")
  Global StringArrayVersion.cksPropGet = GetFunction(CkStringArrayLibId,"CkStringArrayU_versionW")
  Global StringArrayAppend.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_AppendW")
  Global StringArrayAppendSerialized.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_AppendSerializedW")
  Global StringArrayClear.ckvM = GetFunction(CkStringArrayLibId,"CkStringArrayU_ClearW")
  Global StringArrayContains.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_ContainsW")
  Global StringArrayFind.cklMsl = GetFunction(CkStringArrayLibId,"CkStringArrayU_FindW")
  Global StringArrayFindFirstMatch.cklMsl = GetFunction(CkStringArrayLibId,"CkStringArrayU_FindFirstMatchW")
  Global StringArrayGetString.cklMl = GetFunction(CkStringArrayLibId,"CkStringArrayU_getStringW")
  Global StringArrayGetStringLen.cklMl = GetFunction(CkStringArrayLibId,"CkStringArrayU_GetStringLenW")
  Global StringArrayInsertAt.ckvMls = GetFunction(CkStringArrayLibId,"CkStringArrayU_InsertAtW")
  Global StringArrayLastString.cklM = GetFunction(CkStringArrayLibId,"CkStringArrayU_lastStringW")
  Global StringArrayLoadFromFile.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_LoadFromFileW")
  Global StringArrayLoadFromFile2.cklMss = GetFunction(CkStringArrayLibId,"CkStringArrayU_LoadFromFile2W")
  Global StringArrayLoadFromText.ckvMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_LoadFromTextW")
  Global StringArrayLoadTaskResult.cklMi = GetFunction(CkStringArrayLibId,"CkStringArrayU_LoadTaskResultW")
  Global StringArrayPop.cklM = GetFunction(CkStringArrayLibId,"CkStringArrayU_popW")
  Global StringArrayPrepend.ckvMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_PrependW")
  Global StringArrayRemove.ckvMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_RemoveW")
  Global StringArrayRemoveAt.cklMl = GetFunction(CkStringArrayLibId,"CkStringArrayU_RemoveAtW")
  Global StringArrayReplaceAt.ckvMls = GetFunction(CkStringArrayLibId,"CkStringArrayU_ReplaceAtW")
  Global StringArraySaveLastError.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_SaveLastErrorW")
  Global StringArraySaveNthToFile.cklMls = GetFunction(CkStringArrayLibId,"CkStringArrayU_SaveNthToFileW")
  Global StringArraySaveToFile.cklMs = GetFunction(CkStringArrayLibId,"CkStringArrayU_SaveToFileW")
  Global StringArraySaveToFile2.cklMss = GetFunction(CkStringArrayLibId,"CkStringArrayU_SaveToFile2W")
  Global StringArraySaveToText.cklM = GetFunction(CkStringArrayLibId,"CkStringArrayU_saveToTextW")
  Global StringArraySerialize.cklM = GetFunction(CkStringArrayLibId,"CkStringArrayU_serializeW")
  Global StringArraySort.ckvMl = GetFunction(CkStringArrayLibId,"CkStringArrayU_SortW")
  Global StringArraySplitAndAppend.ckvMss = GetFunction(CkStringArrayLibId,"CkStringArrayU_SplitAndAppendW")
  Global StringArraySubtract.ckvMi = GetFunction(CkStringArrayLibId,"CkStringArrayU_SubtractW")
  Global StringArrayUnion.ckvMi = GetFunction(CkStringArrayLibId,"CkStringArrayU_UnionW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn StringArrayCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn StringArrayDispose(obj) : EndProcedure
  Procedure.l ckCount(obj.i) : ProcedureReturn StringArrayCount(obj) : EndProcedure
  Procedure.l ckCrlf(obj.i) : ProcedureReturn StringArrayCrlf(obj) : EndProcedure
  Procedure setCkCrlf(obj.i, value.l) : ProcedureReturn StringArrayPSetCrlf(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(StringArrayDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn StringArrayPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(StringArrayLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(StringArrayLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(StringArrayLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn StringArrayLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn StringArrayPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLength(obj.i) : ProcedureReturn StringArrayLength(obj) : EndProcedure
  Procedure.l ckTrim(obj.i) : ProcedureReturn StringArrayTrim(obj) : EndProcedure
  Procedure setCkTrim(obj.i, value.l) : ProcedureReturn StringArrayPSetTrim(obj,value) : EndProcedure
  Procedure.l ckUnique(obj.i) : ProcedureReturn StringArrayUnique(obj) : EndProcedure
  Procedure setCkUnique(obj.i, value.l) : ProcedureReturn StringArrayPSetUnique(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn StringArrayVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn StringArrayPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(StringArrayVersion(obj)) : EndProcedure
  Procedure.l ckAppend(obj.i, str.s) :  ProcedureReturn StringArrayAppend(obj, str) :  EndProcedure
  Procedure.l ckAppendSerialized(obj.i, encodedStr.s) :  ProcedureReturn StringArrayAppendSerialized(obj, encodedStr) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn StringArrayClear(obj) :  EndProcedure
  Procedure.l ckContains(obj.i, str.s) :  ProcedureReturn StringArrayContains(obj, str) :  EndProcedure
  Procedure.l ckFind(obj.i, findStr.s, startIndex.l) :  ProcedureReturn StringArrayFind(obj, findStr, startIndex) :  EndProcedure
  Procedure.l ckFindFirstMatch(obj.i, matchPattern.s, startIndex.l) :  ProcedureReturn StringArrayFindFirstMatch(obj, matchPattern, startIndex) :  EndProcedure
  Procedure.s ckGetString(obj.i, index.l) :  ProcedureReturn PeekS(StringArrayGetString(obj, index)) :  EndProcedure
  Procedure.l ckGetStringLen(obj.i, index.l) :  ProcedureReturn StringArrayGetStringLen(obj, index) :  EndProcedure
  Procedure ckInsertAt(obj.i, index.l, str.s) :  ProcedureReturn StringArrayInsertAt(obj, index, str) :  EndProcedure
  Procedure.s ckLastString(obj.i) :  ProcedureReturn PeekS(StringArrayLastString(obj)) :  EndProcedure
  Procedure.l ckLoadFromFile(obj.i, path.s) :  ProcedureReturn StringArrayLoadFromFile(obj, path) :  EndProcedure
  Procedure.l ckLoadFromFile2(obj.i, path.s, charset.s) :  ProcedureReturn StringArrayLoadFromFile2(obj, path, charset) :  EndProcedure
  Procedure ckLoadFromText(obj.i, str.s) :  ProcedureReturn StringArrayLoadFromText(obj, str) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn StringArrayLoadTaskResult(obj, task) :  EndProcedure
  Procedure.s ckPop(obj.i) :  ProcedureReturn PeekS(StringArrayPop(obj)) :  EndProcedure
  Procedure ckPrepend(obj.i, str.s) :  ProcedureReturn StringArrayPrepend(obj, str) :  EndProcedure
  Procedure ckRemove(obj.i, str.s) :  ProcedureReturn StringArrayRemove(obj, str) :  EndProcedure
  Procedure.l ckRemoveAt(obj.i, index.l) :  ProcedureReturn StringArrayRemoveAt(obj, index) :  EndProcedure
  Procedure ckReplaceAt(obj.i, index.l, str.s) :  ProcedureReturn StringArrayReplaceAt(obj, index, str) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn StringArraySaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveNthToFile(obj.i, index.l, saveToPath.s) :  ProcedureReturn StringArraySaveNthToFile(obj, index, saveToPath) :  EndProcedure
  Procedure.l ckSaveToFile(obj.i, path.s) :  ProcedureReturn StringArraySaveToFile(obj, path) :  EndProcedure
  Procedure.l ckSaveToFile2(obj.i, saveToPath.s, charset.s) :  ProcedureReturn StringArraySaveToFile2(obj, saveToPath, charset) :  EndProcedure
  Procedure.s ckSaveToText(obj.i) :  ProcedureReturn PeekS(StringArraySaveToText(obj)) :  EndProcedure
  Procedure.s ckSerialize(obj.i) :  ProcedureReturn PeekS(StringArraySerialize(obj)) :  EndProcedure
  Procedure ckSort(obj.i, ascending.l) :  ProcedureReturn StringArraySort(obj, ascending) :  EndProcedure
  Procedure ckSplitAndAppend(obj.i, str.s, boundary.s) :  ProcedureReturn StringArraySplitAndAppend(obj, str, boundary) :  EndProcedure
  Procedure ckSubtract(obj.i, stringArrayObj.i) :  ProcedureReturn StringArraySubtract(obj, stringArrayObj) :  EndProcedure
  Procedure ckUnion(obj.i, stringArrayObj.i) :  ProcedureReturn StringArrayUnion(obj, stringArrayObj) :  EndProcedure
EndModule

