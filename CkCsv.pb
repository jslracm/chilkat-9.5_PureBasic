DeclareModule CkCsv
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAutoTrim(obj.i)
  Declare setCkAutoTrim(obj.i, value.l)
  Declare.l ckCrlf(obj.i)
  Declare setCkCrlf(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDelimiter(obj.i)
  Declare setCkDelimiter(obj.i, value.s)
  Declare.l ckEnableQuotes(obj.i)
  Declare setCkEnableQuotes(obj.i, value.l)
  Declare.l ckEscapeBackslash(obj.i)
  Declare setCkEscapeBackslash(obj.i, value.l)
  Declare.l ckHasColumnNames(obj.i)
  Declare setCkHasColumnNames(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumColumns(obj.i)
  Declare.l ckNumRows(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckDeleteColumn(obj.i, index.l)
  Declare.l ckDeleteColumnByName(obj.i, columnName.s)
  Declare.l ckDeleteRow(obj.i, index.l)
  Declare.s ckGetCell(obj.i, row.l, col.l)
  Declare.s ckGetCellByName(obj.i, rowIndex.l, columnName.s)
  Declare.s ckGetColumnName(obj.i, index.l)
  Declare.l ckGetIndex(obj.i, columnName.s)
  Declare.l ckGetNumCols(obj.i, row.l)
  Declare.l ckLoadFile(obj.i, path.s)
  Declare.l ckLoadFile2(obj.i, filename.s, charset.s)
  Declare.l ckLoadFromString(obj.i, csvData.s)
  Declare.l ckRowMatches(obj.i, rowIndex.l, matchPattern.s, caseSensitive.l)
  Declare.l ckSaveFile(obj.i, path.s)
  Declare.l ckSaveFile2(obj.i, filename.s, charset.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckSaveToString(obj.i)
  Declare.l ckSetCell(obj.i, row.l, col.l, content.s)
  Declare.l ckSetCellByName(obj.i, rowIndex.l, columnName.s, contentStr.s)
  Declare.l ckSetColumnName(obj.i, index.l, columnName.s)
  Declare.l ckSortByColumn(obj.i, columnName.s, ascending.l, caseSensitive.l)
  Declare.l ckSortByColumnIndex(obj.i, index.l, ascending.l, caseSensitive.l)
EndDeclareModule

Module CkCsv
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMsll(obj.i, arg1.s, arg2.l, arg3.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMlsl(obj.i, arg1.l, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMlll(obj.i, arg1.l, arg2.l, arg3.l)
  PrototypeC.i CkCsvCreate()
  PrototypeC CkCsvDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCsvLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCsvLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCsvLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCsvLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCsvLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CsvCreate.CkCsvCreate = GetFunction(CkCsvLibId,"CkCsvU_CreateW")
  Global CsvDispose.CkCsvDispose = GetFunction(CkCsvLibId,"CkCsvU_DisposeW")
  Global CsvAutoTrim.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getAutoTrimW")
  Global CsvPSetAutoTrim.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putAutoTrimW")
  Global CsvCrlf.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getCrlfW")
  Global CsvPSetCrlf.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putCrlfW")
  Global CsvDebugLogFilePath.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_debugLogFilePathW")
  Global CsvPSetDebugLogFilePath.cksPropSet = GetFunction(CkCsvLibId,"CkCsvU_putDebugLogFilePathW")
  Global CsvDelimiter.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_delimiterW")
  Global CsvPSetDelimiter.cksPropSet = GetFunction(CkCsvLibId,"CkCsvU_putDelimiterW")
  Global CsvEnableQuotes.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getEnableQuotesW")
  Global CsvPSetEnableQuotes.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putEnableQuotesW")
  Global CsvEscapeBackslash.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getEscapeBackslashW")
  Global CsvPSetEscapeBackslash.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putEscapeBackslashW")
  Global CsvHasColumnNames.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getHasColumnNamesW")
  Global CsvPSetHasColumnNames.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putHasColumnNamesW")
  Global CsvLastErrorHtml.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_lastErrorHtmlW")
  Global CsvLastErrorText.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_lastErrorTextW")
  Global CsvLastErrorXml.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_lastErrorXmlW")
  Global CsvLastMethodSuccess.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getLastMethodSuccessW")
  Global CsvPSetLastMethodSuccess.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putLastMethodSuccessW")
  Global CsvNumColumns.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getNumColumnsW")
  Global CsvNumRows.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getNumRowsW")
  Global CsvVerboseLogging.cklPropGet = GetFunction(CkCsvLibId,"CkCsvU_getVerboseLoggingW")
  Global CsvPSetVerboseLogging.cklPropSet = GetFunction(CkCsvLibId,"CkCsvU_putVerboseLoggingW")
  Global CsvVersion.cksPropGet = GetFunction(CkCsvLibId,"CkCsvU_versionW")
  Global CsvDeleteColumn.cklMl = GetFunction(CkCsvLibId,"CkCsvU_DeleteColumnW")
  Global CsvDeleteColumnByName.cklMs = GetFunction(CkCsvLibId,"CkCsvU_DeleteColumnByNameW")
  Global CsvDeleteRow.cklMl = GetFunction(CkCsvLibId,"CkCsvU_DeleteRowW")
  Global CsvGetCell.cklMll = GetFunction(CkCsvLibId,"CkCsvU_getCellW")
  Global CsvGetCellByName.cklMls = GetFunction(CkCsvLibId,"CkCsvU_getCellByNameW")
  Global CsvGetColumnName.cklMl = GetFunction(CkCsvLibId,"CkCsvU_getColumnNameW")
  Global CsvGetIndex.cklMs = GetFunction(CkCsvLibId,"CkCsvU_GetIndexW")
  Global CsvGetNumCols.cklMl = GetFunction(CkCsvLibId,"CkCsvU_GetNumColsW")
  Global CsvLoadFile.cklMs = GetFunction(CkCsvLibId,"CkCsvU_LoadFileW")
  Global CsvLoadFile2.cklMss = GetFunction(CkCsvLibId,"CkCsvU_LoadFile2W")
  Global CsvLoadFromString.cklMs = GetFunction(CkCsvLibId,"CkCsvU_LoadFromStringW")
  Global CsvRowMatches.cklMlsl = GetFunction(CkCsvLibId,"CkCsvU_RowMatchesW")
  Global CsvSaveFile.cklMs = GetFunction(CkCsvLibId,"CkCsvU_SaveFileW")
  Global CsvSaveFile2.cklMss = GetFunction(CkCsvLibId,"CkCsvU_SaveFile2W")
  Global CsvSaveLastError.cklMs = GetFunction(CkCsvLibId,"CkCsvU_SaveLastErrorW")
  Global CsvSaveToString.cklM = GetFunction(CkCsvLibId,"CkCsvU_saveToStringW")
  Global CsvSetCell.cklMlls = GetFunction(CkCsvLibId,"CkCsvU_SetCellW")
  Global CsvSetCellByName.cklMlss = GetFunction(CkCsvLibId,"CkCsvU_SetCellByNameW")
  Global CsvSetColumnName.cklMls = GetFunction(CkCsvLibId,"CkCsvU_SetColumnNameW")
  Global CsvSortByColumn.cklMsll = GetFunction(CkCsvLibId,"CkCsvU_SortByColumnW")
  Global CsvSortByColumnIndex.cklMlll = GetFunction(CkCsvLibId,"CkCsvU_SortByColumnIndexW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CsvCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CsvDispose(obj) : EndProcedure
  Procedure.l ckAutoTrim(obj.i) : ProcedureReturn CsvAutoTrim(obj) : EndProcedure
  Procedure setCkAutoTrim(obj.i, value.l) : ProcedureReturn CsvPSetAutoTrim(obj,value) : EndProcedure
  Procedure.l ckCrlf(obj.i) : ProcedureReturn CsvCrlf(obj) : EndProcedure
  Procedure setCkCrlf(obj.i, value.l) : ProcedureReturn CsvPSetCrlf(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CsvDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CsvPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDelimiter(obj.i) : ProcedureReturn PeekS(CsvDelimiter(obj)) : EndProcedure
  Procedure setCkDelimiter(obj.i, value.s) : ProcedureReturn CsvPSetDelimiter(obj,value) : EndProcedure
  Procedure.l ckEnableQuotes(obj.i) : ProcedureReturn CsvEnableQuotes(obj) : EndProcedure
  Procedure setCkEnableQuotes(obj.i, value.l) : ProcedureReturn CsvPSetEnableQuotes(obj,value) : EndProcedure
  Procedure.l ckEscapeBackslash(obj.i) : ProcedureReturn CsvEscapeBackslash(obj) : EndProcedure
  Procedure setCkEscapeBackslash(obj.i, value.l) : ProcedureReturn CsvPSetEscapeBackslash(obj,value) : EndProcedure
  Procedure.l ckHasColumnNames(obj.i) : ProcedureReturn CsvHasColumnNames(obj) : EndProcedure
  Procedure setCkHasColumnNames(obj.i, value.l) : ProcedureReturn CsvPSetHasColumnNames(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CsvLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CsvLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CsvLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CsvLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CsvPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumColumns(obj.i) : ProcedureReturn CsvNumColumns(obj) : EndProcedure
  Procedure.l ckNumRows(obj.i) : ProcedureReturn CsvNumRows(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CsvVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CsvPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CsvVersion(obj)) : EndProcedure
  Procedure.l ckDeleteColumn(obj.i, index.l) :  ProcedureReturn CsvDeleteColumn(obj, index) :  EndProcedure
  Procedure.l ckDeleteColumnByName(obj.i, columnName.s) :  ProcedureReturn CsvDeleteColumnByName(obj, columnName) :  EndProcedure
  Procedure.l ckDeleteRow(obj.i, index.l) :  ProcedureReturn CsvDeleteRow(obj, index) :  EndProcedure
  Procedure.s ckGetCell(obj.i, row.l, col.l) :  ProcedureReturn PeekS(CsvGetCell(obj, row, col)) :  EndProcedure
  Procedure.s ckGetCellByName(obj.i, rowIndex.l, columnName.s) :  ProcedureReturn PeekS(CsvGetCellByName(obj, rowIndex, columnName)) :  EndProcedure
  Procedure.s ckGetColumnName(obj.i, index.l) :  ProcedureReturn PeekS(CsvGetColumnName(obj, index)) :  EndProcedure
  Procedure.l ckGetIndex(obj.i, columnName.s) :  ProcedureReturn CsvGetIndex(obj, columnName) :  EndProcedure
  Procedure.l ckGetNumCols(obj.i, row.l) :  ProcedureReturn CsvGetNumCols(obj, row) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, path.s) :  ProcedureReturn CsvLoadFile(obj, path) :  EndProcedure
  Procedure.l ckLoadFile2(obj.i, filename.s, charset.s) :  ProcedureReturn CsvLoadFile2(obj, filename, charset) :  EndProcedure
  Procedure.l ckLoadFromString(obj.i, csvData.s) :  ProcedureReturn CsvLoadFromString(obj, csvData) :  EndProcedure
  Procedure.l ckRowMatches(obj.i, rowIndex.l, matchPattern.s, caseSensitive.l) :  ProcedureReturn CsvRowMatches(obj, rowIndex, matchPattern, caseSensitive) :  EndProcedure
  Procedure.l ckSaveFile(obj.i, path.s) :  ProcedureReturn CsvSaveFile(obj, path) :  EndProcedure
  Procedure.l ckSaveFile2(obj.i, filename.s, charset.s) :  ProcedureReturn CsvSaveFile2(obj, filename, charset) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CsvSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckSaveToString(obj.i) :  ProcedureReturn PeekS(CsvSaveToString(obj)) :  EndProcedure
  Procedure.l ckSetCell(obj.i, row.l, col.l, content.s) :  ProcedureReturn CsvSetCell(obj, row, col, content) :  EndProcedure
  Procedure.l ckSetCellByName(obj.i, rowIndex.l, columnName.s, contentStr.s) :  ProcedureReturn CsvSetCellByName(obj, rowIndex, columnName, contentStr) :  EndProcedure
  Procedure.l ckSetColumnName(obj.i, index.l, columnName.s) :  ProcedureReturn CsvSetColumnName(obj, index, columnName) :  EndProcedure
  Procedure.l ckSortByColumn(obj.i, columnName.s, ascending.l, caseSensitive.l) :  ProcedureReturn CsvSortByColumn(obj, columnName, ascending, caseSensitive) :  EndProcedure
  Procedure.l ckSortByColumnIndex(obj.i, index.l, ascending.l, caseSensitive.l) :  ProcedureReturn CsvSortByColumnIndex(obj, index, ascending, caseSensitive) :  EndProcedure
EndModule

