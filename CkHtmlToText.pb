DeclareModule CkHtmlToText
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDecodeHtmlEntities(obj.i)
  Declare setCkDecodeHtmlEntities(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckRightMargin(obj.i)
  Declare setCkRightMargin(obj.i, value.l)
  Declare.l ckSuppressLinks(obj.i)
  Declare setCkSuppressLinks(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckReadFileToString(obj.i, filename.s, srcCharset.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckToText(obj.i, html.s)
  Declare.l ckUnlockComponent(obj.i, code.s)
  Declare.l ckWriteStringToFile(obj.i, stringToWrite.s, filename.s, charset.s)
EndDeclareModule

Module CkHtmlToText
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkHtmlToTextCreate()
  PrototypeC CkHtmlToTextDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHtmlToTextLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHtmlToTextLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHtmlToTextLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHtmlToTextLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHtmlToTextLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HtmlToTextCreate.CkHtmlToTextCreate = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_CreateW")
  Global HtmlToTextDispose.CkHtmlToTextDispose = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_DisposeW")
  Global HtmlToTextDebugLogFilePath.cksPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_debugLogFilePathW")
  Global HtmlToTextPSetDebugLogFilePath.cksPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putDebugLogFilePathW")
  Global HtmlToTextDecodeHtmlEntities.cklPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_getDecodeHtmlEntitiesW")
  Global HtmlToTextPSetDecodeHtmlEntities.cklPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putDecodeHtmlEntitiesW")
  Global HtmlToTextLastErrorHtml.cksPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_lastErrorHtmlW")
  Global HtmlToTextLastErrorText.cksPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_lastErrorTextW")
  Global HtmlToTextLastErrorXml.cksPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_lastErrorXmlW")
  Global HtmlToTextLastMethodSuccess.cklPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_getLastMethodSuccessW")
  Global HtmlToTextPSetLastMethodSuccess.cklPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putLastMethodSuccessW")
  Global HtmlToTextRightMargin.cklPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_getRightMarginW")
  Global HtmlToTextPSetRightMargin.cklPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putRightMarginW")
  Global HtmlToTextSuppressLinks.cklPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_getSuppressLinksW")
  Global HtmlToTextPSetSuppressLinks.cklPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putSuppressLinksW")
  Global HtmlToTextVerboseLogging.cklPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_getVerboseLoggingW")
  Global HtmlToTextPSetVerboseLogging.cklPropSet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_putVerboseLoggingW")
  Global HtmlToTextVersion.cksPropGet = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_versionW")
  Global HtmlToTextReadFileToString.cklMss = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_readFileToStringW")
  Global HtmlToTextSaveLastError.cklMs = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_SaveLastErrorW")
  Global HtmlToTextToText.cklMs = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_toTextW")
  Global HtmlToTextUnlockComponent.cklMs = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_UnlockComponentW")
  Global HtmlToTextWriteStringToFile.cklMsss = GetFunction(CkHtmlToTextLibId,"CkHtmlToTextU_WriteStringToFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HtmlToTextCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HtmlToTextDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(HtmlToTextDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn HtmlToTextPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDecodeHtmlEntities(obj.i) : ProcedureReturn HtmlToTextDecodeHtmlEntities(obj) : EndProcedure
  Procedure setCkDecodeHtmlEntities(obj.i, value.l) : ProcedureReturn HtmlToTextPSetDecodeHtmlEntities(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(HtmlToTextLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(HtmlToTextLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(HtmlToTextLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HtmlToTextLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HtmlToTextPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckRightMargin(obj.i) : ProcedureReturn HtmlToTextRightMargin(obj) : EndProcedure
  Procedure setCkRightMargin(obj.i, value.l) : ProcedureReturn HtmlToTextPSetRightMargin(obj,value) : EndProcedure
  Procedure.l ckSuppressLinks(obj.i) : ProcedureReturn HtmlToTextSuppressLinks(obj) : EndProcedure
  Procedure setCkSuppressLinks(obj.i, value.l) : ProcedureReturn HtmlToTextPSetSuppressLinks(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn HtmlToTextVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn HtmlToTextPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(HtmlToTextVersion(obj)) : EndProcedure
  Procedure.s ckReadFileToString(obj.i, filename.s, srcCharset.s) :  ProcedureReturn PeekS(HtmlToTextReadFileToString(obj, filename, srcCharset)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn HtmlToTextSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckToText(obj.i, html.s) :  ProcedureReturn PeekS(HtmlToTextToText(obj, html)) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, code.s) :  ProcedureReturn HtmlToTextUnlockComponent(obj, code) :  EndProcedure
  Procedure.l ckWriteStringToFile(obj.i, stringToWrite.s, filename.s, charset.s) :  ProcedureReturn HtmlToTextWriteStringToFile(obj, stringToWrite, filename, charset) :  EndProcedure
EndModule

