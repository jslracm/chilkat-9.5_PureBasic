DeclareModule CkCharset
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAltToCharset(obj.i)
  Declare setCkAltToCharset(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckErrorAction(obj.i)
  Declare setCkErrorAction(obj.i, value.l)
  Declare.s ckFromCharset(obj.i)
  Declare setCkFromCharset(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.s ckLastInputAsHex(obj.i)
  Declare.s ckLastInputAsQP(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastOutputAsHex(obj.i)
  Declare.s ckLastOutputAsQP(obj.i)
  Declare.l ckSaveLast(obj.i)
  Declare setCkSaveLast(obj.i, value.l)
  Declare.s ckToCharset(obj.i)
  Declare setCkToCharset(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckCharsetToCodePage(obj.i, charsetName.s)
  Declare.s ckCodePageToCharset(obj.i, codePage.l)
  Declare.l ckConvertFile(obj.i, inPath.s, destPath.s)
  Declare.l ckConvertFileNoPreamble(obj.i, inPath.s, destPath.s)
  Declare.l ckConvertHtmlFile(obj.i, inPath.s, destPath.s)
  Declare.s ckEntityEncodeDec(obj.i, str.s)
  Declare.s ckEntityEncodeHex(obj.i, str.s)
  Declare.s ckGetHtmlFileCharset(obj.i, htmlFilePath.s)
  Declare.s ckHtmlDecodeToStr(obj.i, inStr.s)
  Declare.l ckHtmlEntityDecodeFile(obj.i, inPath.s, destPath.s)
  Declare.s ckLowerCase(obj.i, inStr.s)
  Declare.s ckReadFileToString(obj.i, path.s, charset.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetErrorString(obj.i, str.s, charset.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.s ckUpperCase(obj.i, inStr.s)
  Declare.s ckUrlDecodeStr(obj.i, inStr.s)
  Declare.l ckVerifyFile(obj.i, charset.s, path.s)
  Declare.l ckWriteStringToFile(obj.i, textData.s, path.s, charset.s)
EndDeclareModule

Module CkCharset
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i CkCharsetCreate()
  PrototypeC CkCharsetDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCharsetLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCharsetLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCharsetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCharsetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCharsetLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CharsetCreate.CkCharsetCreate = GetFunction(CkCharsetLibId,"CkCharsetU_CreateW")
  Global CharsetDispose.CkCharsetDispose = GetFunction(CkCharsetLibId,"CkCharsetU_DisposeW")
  Global CharsetAltToCharset.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_altToCharsetW")
  Global CharsetPSetAltToCharset.cksPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putAltToCharsetW")
  Global CharsetDebugLogFilePath.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_debugLogFilePathW")
  Global CharsetPSetDebugLogFilePath.cksPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putDebugLogFilePathW")
  Global CharsetErrorAction.cklPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_getErrorActionW")
  Global CharsetPSetErrorAction.cklPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putErrorActionW")
  Global CharsetFromCharset.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_fromCharsetW")
  Global CharsetPSetFromCharset.cksPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putFromCharsetW")
  Global CharsetLastErrorHtml.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastErrorHtmlW")
  Global CharsetLastErrorText.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastErrorTextW")
  Global CharsetLastErrorXml.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastErrorXmlW")
  Global CharsetLastInputAsHex.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastInputAsHexW")
  Global CharsetLastInputAsQP.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastInputAsQPW")
  Global CharsetLastMethodSuccess.cklPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_getLastMethodSuccessW")
  Global CharsetPSetLastMethodSuccess.cklPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putLastMethodSuccessW")
  Global CharsetLastOutputAsHex.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastOutputAsHexW")
  Global CharsetLastOutputAsQP.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_lastOutputAsQPW")
  Global CharsetSaveLast.cklPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_getSaveLastW")
  Global CharsetPSetSaveLast.cklPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putSaveLastW")
  Global CharsetToCharset.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_toCharsetW")
  Global CharsetPSetToCharset.cksPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putToCharsetW")
  Global CharsetVerboseLogging.cklPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_getVerboseLoggingW")
  Global CharsetPSetVerboseLogging.cklPropSet = GetFunction(CkCharsetLibId,"CkCharsetU_putVerboseLoggingW")
  Global CharsetVersion.cksPropGet = GetFunction(CkCharsetLibId,"CkCharsetU_versionW")
  Global CharsetCharsetToCodePage.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_CharsetToCodePageW")
  Global CharsetCodePageToCharset.cklMl = GetFunction(CkCharsetLibId,"CkCharsetU_codePageToCharsetW")
  Global CharsetConvertFile.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_ConvertFileW")
  Global CharsetConvertFileNoPreamble.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_ConvertFileNoPreambleW")
  Global CharsetConvertHtmlFile.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_ConvertHtmlFileW")
  Global CharsetEntityEncodeDec.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_entityEncodeDecW")
  Global CharsetEntityEncodeHex.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_entityEncodeHexW")
  Global CharsetGetHtmlFileCharset.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_getHtmlFileCharsetW")
  Global CharsetHtmlDecodeToStr.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_htmlDecodeToStrW")
  Global CharsetHtmlEntityDecodeFile.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_HtmlEntityDecodeFileW")
  Global CharsetLowerCase.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_lowerCaseW")
  Global CharsetReadFileToString.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_readFileToStringW")
  Global CharsetSaveLastError.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_SaveLastErrorW")
  Global CharsetSetErrorString.ckvMss = GetFunction(CkCharsetLibId,"CkCharsetU_SetErrorStringW")
  Global CharsetUnlockComponent.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_UnlockComponentW")
  Global CharsetUpperCase.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_upperCaseW")
  Global CharsetUrlDecodeStr.cklMs = GetFunction(CkCharsetLibId,"CkCharsetU_urlDecodeStrW")
  Global CharsetVerifyFile.cklMss = GetFunction(CkCharsetLibId,"CkCharsetU_VerifyFileW")
  Global CharsetWriteStringToFile.cklMsss = GetFunction(CkCharsetLibId,"CkCharsetU_WriteStringToFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CharsetCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CharsetDispose(obj) : EndProcedure
  Procedure.s ckAltToCharset(obj.i) : ProcedureReturn PeekS(CharsetAltToCharset(obj)) : EndProcedure
  Procedure setCkAltToCharset(obj.i, value.s) : ProcedureReturn CharsetPSetAltToCharset(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CharsetDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CharsetPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckErrorAction(obj.i) : ProcedureReturn CharsetErrorAction(obj) : EndProcedure
  Procedure setCkErrorAction(obj.i, value.l) : ProcedureReturn CharsetPSetErrorAction(obj,value) : EndProcedure
  Procedure.s ckFromCharset(obj.i) : ProcedureReturn PeekS(CharsetFromCharset(obj)) : EndProcedure
  Procedure setCkFromCharset(obj.i, value.s) : ProcedureReturn CharsetPSetFromCharset(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CharsetLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CharsetLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CharsetLastErrorXml(obj)) : EndProcedure
  Procedure.s ckLastInputAsHex(obj.i) : ProcedureReturn PeekS(CharsetLastInputAsHex(obj)) : EndProcedure
  Procedure.s ckLastInputAsQP(obj.i) : ProcedureReturn PeekS(CharsetLastInputAsQP(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CharsetLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CharsetPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastOutputAsHex(obj.i) : ProcedureReturn PeekS(CharsetLastOutputAsHex(obj)) : EndProcedure
  Procedure.s ckLastOutputAsQP(obj.i) : ProcedureReturn PeekS(CharsetLastOutputAsQP(obj)) : EndProcedure
  Procedure.l ckSaveLast(obj.i) : ProcedureReturn CharsetSaveLast(obj) : EndProcedure
  Procedure setCkSaveLast(obj.i, value.l) : ProcedureReturn CharsetPSetSaveLast(obj,value) : EndProcedure
  Procedure.s ckToCharset(obj.i) : ProcedureReturn PeekS(CharsetToCharset(obj)) : EndProcedure
  Procedure setCkToCharset(obj.i, value.s) : ProcedureReturn CharsetPSetToCharset(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CharsetVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CharsetPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CharsetVersion(obj)) : EndProcedure
  Procedure.l ckCharsetToCodePage(obj.i, charsetName.s) :  ProcedureReturn CharsetCharsetToCodePage(obj, charsetName) :  EndProcedure
  Procedure.s ckCodePageToCharset(obj.i, codePage.l) :  ProcedureReturn PeekS(CharsetCodePageToCharset(obj, codePage)) :  EndProcedure
  Procedure.l ckConvertFile(obj.i, inPath.s, destPath.s) :  ProcedureReturn CharsetConvertFile(obj, inPath, destPath) :  EndProcedure
  Procedure.l ckConvertFileNoPreamble(obj.i, inPath.s, destPath.s) :  ProcedureReturn CharsetConvertFileNoPreamble(obj, inPath, destPath) :  EndProcedure
  Procedure.l ckConvertHtmlFile(obj.i, inPath.s, destPath.s) :  ProcedureReturn CharsetConvertHtmlFile(obj, inPath, destPath) :  EndProcedure
  Procedure.s ckEntityEncodeDec(obj.i, str.s) :  ProcedureReturn PeekS(CharsetEntityEncodeDec(obj, str)) :  EndProcedure
  Procedure.s ckEntityEncodeHex(obj.i, str.s) :  ProcedureReturn PeekS(CharsetEntityEncodeHex(obj, str)) :  EndProcedure
  Procedure.s ckGetHtmlFileCharset(obj.i, htmlFilePath.s) :  ProcedureReturn PeekS(CharsetGetHtmlFileCharset(obj, htmlFilePath)) :  EndProcedure
  Procedure.s ckHtmlDecodeToStr(obj.i, inStr.s) :  ProcedureReturn PeekS(CharsetHtmlDecodeToStr(obj, inStr)) :  EndProcedure
  Procedure.l ckHtmlEntityDecodeFile(obj.i, inPath.s, destPath.s) :  ProcedureReturn CharsetHtmlEntityDecodeFile(obj, inPath, destPath) :  EndProcedure
  Procedure.s ckLowerCase(obj.i, inStr.s) :  ProcedureReturn PeekS(CharsetLowerCase(obj, inStr)) :  EndProcedure
  Procedure.s ckReadFileToString(obj.i, path.s, charset.s) :  ProcedureReturn PeekS(CharsetReadFileToString(obj, path, charset)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CharsetSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetErrorString(obj.i, str.s, charset.s) :  ProcedureReturn CharsetSetErrorString(obj, str, charset) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn CharsetUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.s ckUpperCase(obj.i, inStr.s) :  ProcedureReturn PeekS(CharsetUpperCase(obj, inStr)) :  EndProcedure
  Procedure.s ckUrlDecodeStr(obj.i, inStr.s) :  ProcedureReturn PeekS(CharsetUrlDecodeStr(obj, inStr)) :  EndProcedure
  Procedure.l ckVerifyFile(obj.i, charset.s, path.s) :  ProcedureReturn CharsetVerifyFile(obj, charset, path) :  EndProcedure
  Procedure.l ckWriteStringToFile(obj.i, textData.s, path.s, charset.s) :  ProcedureReturn CharsetWriteStringToFile(obj, textData, path, charset) :  EndProcedure
EndModule

