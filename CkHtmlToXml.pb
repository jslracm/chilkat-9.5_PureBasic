DeclareModule CkHtmlToXml
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDropCustomTags(obj.i)
  Declare setCkDropCustomTags(obj.i, value.l)
  Declare.s ckHtml(obj.i)
  Declare setCkHtml(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNbsp(obj.i)
  Declare setCkNbsp(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckXmlCharset(obj.i)
  Declare setCkXmlCharset(obj.i, value.s)
  Declare.l ckConvertFile(obj.i, inHtmlPath.s, destXmlPath.s)
  Declare ckDropTagType(obj.i, tagName.s)
  Declare ckDropTextFormattingTags(obj.i)
  Declare.l ckIsUnlocked(obj.i)
  Declare.s ckReadFileToString(obj.i, filename.s, srcCharset.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetHtmlBd(obj.i, bd.i)
  Declare.l ckSetHtmlFromFile(obj.i, filename.s)
  Declare.s ckToXml(obj.i)
  Declare.l ckToXmlSb(obj.i, sb.i)
  Declare ckUndropTagType(obj.i, tagName.s)
  Declare ckUndropTextFormattingTags(obj.i)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckWriteStringToFile(obj.i, stringToWrite.s, filename.s, charset.s)
EndDeclareModule

Module CkHtmlToXml
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkHtmlToXmlCreate()
  PrototypeC CkHtmlToXmlDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHtmlToXmlLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHtmlToXmlLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHtmlToXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHtmlToXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHtmlToXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HtmlToXmlCreate.CkHtmlToXmlCreate = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_CreateW")
  Global HtmlToXmlDispose.CkHtmlToXmlDispose = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_DisposeW")
  Global HtmlToXmlDebugLogFilePath.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_debugLogFilePathW")
  Global HtmlToXmlPSetDebugLogFilePath.cksPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putDebugLogFilePathW")
  Global HtmlToXmlDropCustomTags.cklPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_getDropCustomTagsW")
  Global HtmlToXmlPSetDropCustomTags.cklPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putDropCustomTagsW")
  Global HtmlToXmlHtml.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_htmlW")
  Global HtmlToXmlPSetHtml.cksPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putHtmlW")
  Global HtmlToXmlLastErrorHtml.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_lastErrorHtmlW")
  Global HtmlToXmlLastErrorText.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_lastErrorTextW")
  Global HtmlToXmlLastErrorXml.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_lastErrorXmlW")
  Global HtmlToXmlLastMethodSuccess.cklPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_getLastMethodSuccessW")
  Global HtmlToXmlPSetLastMethodSuccess.cklPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putLastMethodSuccessW")
  Global HtmlToXmlNbsp.cklPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_getNbspW")
  Global HtmlToXmlPSetNbsp.cklPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putNbspW")
  Global HtmlToXmlVerboseLogging.cklPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_getVerboseLoggingW")
  Global HtmlToXmlPSetVerboseLogging.cklPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putVerboseLoggingW")
  Global HtmlToXmlVersion.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_versionW")
  Global HtmlToXmlXmlCharset.cksPropGet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_xmlCharsetW")
  Global HtmlToXmlPSetXmlCharset.cksPropSet = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_putXmlCharsetW")
  Global HtmlToXmlConvertFile.cklMss = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_ConvertFileW")
  Global HtmlToXmlDropTagType.ckvMs = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_DropTagTypeW")
  Global HtmlToXmlDropTextFormattingTags.ckvM = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_DropTextFormattingTagsW")
  Global HtmlToXmlIsUnlocked.cklM = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_IsUnlockedW")
  Global HtmlToXmlReadFileToString.cklMss = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_readFileToStringW")
  Global HtmlToXmlSaveLastError.cklMs = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_SaveLastErrorW")
  Global HtmlToXmlSetHtmlBd.cklMi = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_SetHtmlBdW")
  Global HtmlToXmlSetHtmlFromFile.cklMs = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_SetHtmlFromFileW")
  Global HtmlToXmlToXml.cklM = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_toXmlW")
  Global HtmlToXmlToXmlSb.cklMi = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_ToXmlSbW")
  Global HtmlToXmlUndropTagType.ckvMs = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_UndropTagTypeW")
  Global HtmlToXmlUndropTextFormattingTags.ckvM = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_UndropTextFormattingTagsW")
  Global HtmlToXmlUnlockComponent.cklMs = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_UnlockComponentW")
  Global HtmlToXmlWriteStringToFile.cklMsss = GetFunction(CkHtmlToXmlLibId,"CkHtmlToXmlU_WriteStringToFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HtmlToXmlCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HtmlToXmlDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(HtmlToXmlDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn HtmlToXmlPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDropCustomTags(obj.i) : ProcedureReturn HtmlToXmlDropCustomTags(obj) : EndProcedure
  Procedure setCkDropCustomTags(obj.i, value.l) : ProcedureReturn HtmlToXmlPSetDropCustomTags(obj,value) : EndProcedure
  Procedure.s ckHtml(obj.i) : ProcedureReturn PeekS(HtmlToXmlHtml(obj)) : EndProcedure
  Procedure setCkHtml(obj.i, value.s) : ProcedureReturn HtmlToXmlPSetHtml(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(HtmlToXmlLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(HtmlToXmlLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(HtmlToXmlLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HtmlToXmlLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HtmlToXmlPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNbsp(obj.i) : ProcedureReturn HtmlToXmlNbsp(obj) : EndProcedure
  Procedure setCkNbsp(obj.i, value.l) : ProcedureReturn HtmlToXmlPSetNbsp(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn HtmlToXmlVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn HtmlToXmlPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(HtmlToXmlVersion(obj)) : EndProcedure
  Procedure.s ckXmlCharset(obj.i) : ProcedureReturn PeekS(HtmlToXmlXmlCharset(obj)) : EndProcedure
  Procedure setCkXmlCharset(obj.i, value.s) : ProcedureReturn HtmlToXmlPSetXmlCharset(obj,value) : EndProcedure
  Procedure.l ckConvertFile(obj.i, inHtmlPath.s, destXmlPath.s) :  ProcedureReturn HtmlToXmlConvertFile(obj, inHtmlPath, destXmlPath) :  EndProcedure
  Procedure ckDropTagType(obj.i, tagName.s) :  ProcedureReturn HtmlToXmlDropTagType(obj, tagName) :  EndProcedure
  Procedure ckDropTextFormattingTags(obj.i) :  ProcedureReturn HtmlToXmlDropTextFormattingTags(obj) :  EndProcedure
  Procedure.l ckIsUnlocked(obj.i) :  ProcedureReturn HtmlToXmlIsUnlocked(obj) :  EndProcedure
  Procedure.s ckReadFileToString(obj.i, filename.s, srcCharset.s) :  ProcedureReturn PeekS(HtmlToXmlReadFileToString(obj, filename, srcCharset)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn HtmlToXmlSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetHtmlBd(obj.i, bd.i) :  ProcedureReturn HtmlToXmlSetHtmlBd(obj, bd) :  EndProcedure
  Procedure.l ckSetHtmlFromFile(obj.i, filename.s) :  ProcedureReturn HtmlToXmlSetHtmlFromFile(obj, filename) :  EndProcedure
  Procedure.s ckToXml(obj.i) :  ProcedureReturn PeekS(HtmlToXmlToXml(obj)) :  EndProcedure
  Procedure.l ckToXmlSb(obj.i, sb.i) :  ProcedureReturn HtmlToXmlToXmlSb(obj, sb) :  EndProcedure
  Procedure ckUndropTagType(obj.i, tagName.s) :  ProcedureReturn HtmlToXmlUndropTagType(obj, tagName) :  EndProcedure
  Procedure ckUndropTextFormattingTags(obj.i) :  ProcedureReturn HtmlToXmlUndropTextFormattingTags(obj) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn HtmlToXmlUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckWriteStringToFile(obj.i, stringToWrite.s, filename.s, charset.s) :  ProcedureReturn HtmlToXmlWriteStringToFile(obj, stringToWrite, filename, charset) :  EndProcedure
EndModule

