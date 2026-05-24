DeclareModule CkStringTable
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCount(obj.i)
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
  Declare.l ckAppend(obj.i, value.s)
  Declare.l ckAppendFromFile(obj.i, maxLineLen.l, charset.s, path.s)
  Declare.l ckAppendFromSb(obj.i, sb.i)
  Declare ckClear(obj.i)
  Declare.l ckFindSubstring(obj.i, startIndex.l, substr.s, caseSensitive.l)
  Declare.l ckIntAt(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveToFile(obj.i, charset.s, bCrlf.l, path.s)
  Declare.l ckSplitAndAppend(obj.i, inStr.s, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l)
  Declare.s ckStringAt(obj.i, index.l)
EndDeclareModule

Module CkStringTable
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMlsl(obj.i, arg1.l, arg2.s, arg3.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkStringTableCreate()
  PrototypeC CkStringTableDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringTableLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkStringTableLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkStringTableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringTableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkStringTableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global StringTableCreate.CkStringTableCreate = GetFunction(CkStringTableLibId,"CkStringTableU_CreateW")
  Global StringTableDispose.CkStringTableDispose = GetFunction(CkStringTableLibId,"CkStringTableU_DisposeW")
  Global StringTableCount.cklPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_getCountW")
  Global StringTableDebugLogFilePath.cksPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_debugLogFilePathW")
  Global StringTablePSetDebugLogFilePath.cksPropSet = GetFunction(CkStringTableLibId,"CkStringTableU_putDebugLogFilePathW")
  Global StringTableLastErrorHtml.cksPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_lastErrorHtmlW")
  Global StringTableLastErrorText.cksPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_lastErrorTextW")
  Global StringTableLastErrorXml.cksPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_lastErrorXmlW")
  Global StringTableLastMethodSuccess.cklPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_getLastMethodSuccessW")
  Global StringTablePSetLastMethodSuccess.cklPropSet = GetFunction(CkStringTableLibId,"CkStringTableU_putLastMethodSuccessW")
  Global StringTableVerboseLogging.cklPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_getVerboseLoggingW")
  Global StringTablePSetVerboseLogging.cklPropSet = GetFunction(CkStringTableLibId,"CkStringTableU_putVerboseLoggingW")
  Global StringTableVersion.cksPropGet = GetFunction(CkStringTableLibId,"CkStringTableU_versionW")
  Global StringTableAppend.cklMs = GetFunction(CkStringTableLibId,"CkStringTableU_AppendW")
  Global StringTableAppendFromFile.cklMlss = GetFunction(CkStringTableLibId,"CkStringTableU_AppendFromFileW")
  Global StringTableAppendFromSb.cklMi = GetFunction(CkStringTableLibId,"CkStringTableU_AppendFromSbW")
  Global StringTableClear.ckvM = GetFunction(CkStringTableLibId,"CkStringTableU_ClearW")
  Global StringTableFindSubstring.cklMlsl = GetFunction(CkStringTableLibId,"CkStringTableU_FindSubstringW")
  Global StringTableIntAt.cklMl = GetFunction(CkStringTableLibId,"CkStringTableU_IntAtW")
  Global StringTableSaveLastError.cklMs = GetFunction(CkStringTableLibId,"CkStringTableU_SaveLastErrorW")
  Global StringTableSaveToFile.cklMsls = GetFunction(CkStringTableLibId,"CkStringTableU_SaveToFileW")
  Global StringTableSplitAndAppend.cklMssll = GetFunction(CkStringTableLibId,"CkStringTableU_SplitAndAppendW")
  Global StringTableStringAt.cklMl = GetFunction(CkStringTableLibId,"CkStringTableU_stringAtW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn StringTableCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn StringTableDispose(obj) : EndProcedure
  Procedure.l ckCount(obj.i) : ProcedureReturn StringTableCount(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(StringTableDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn StringTablePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(StringTableLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(StringTableLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(StringTableLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn StringTableLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn StringTablePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn StringTableVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn StringTablePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(StringTableVersion(obj)) : EndProcedure
  Procedure.l ckAppend(obj.i, value.s) :  ProcedureReturn StringTableAppend(obj, value) :  EndProcedure
  Procedure.l ckAppendFromFile(obj.i, maxLineLen.l, charset.s, path.s) :  ProcedureReturn StringTableAppendFromFile(obj, maxLineLen, charset, path) :  EndProcedure
  Procedure.l ckAppendFromSb(obj.i, sb.i) :  ProcedureReturn StringTableAppendFromSb(obj, sb) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn StringTableClear(obj) :  EndProcedure
  Procedure.l ckFindSubstring(obj.i, startIndex.l, substr.s, caseSensitive.l) :  ProcedureReturn StringTableFindSubstring(obj, startIndex, substr, caseSensitive) :  EndProcedure
  Procedure.l ckIntAt(obj.i, index.l) :  ProcedureReturn StringTableIntAt(obj, index) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn StringTableSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveToFile(obj.i, charset.s, bCrlf.l, path.s) :  ProcedureReturn StringTableSaveToFile(obj, charset, bCrlf, path) :  EndProcedure
  Procedure.l ckSplitAndAppend(obj.i, inStr.s, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l) :  ProcedureReturn StringTableSplitAndAppend(obj, inStr, delimiterChar, exceptDoubleQuoted, exceptEscaped) :  EndProcedure
  Procedure.s ckStringAt(obj.i, index.l) :  ProcedureReturn PeekS(StringTableStringAt(obj, index)) :  EndProcedure
EndModule

