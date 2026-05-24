DeclareModule CkStringBuilder
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckIntValue(obj.i)
  Declare setCkIntValue(obj.i, value.l)
  Declare.l ckIsBase64(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLength(obj.i)
  Declare.l ckAppend(obj.i, value.s)
  Declare.l ckAppendBd(obj.i, binData.i, charset.s, offset.l, numBytes.l)
  Declare.l ckAppendInt(obj.i, value.l)
  Declare.l ckAppendInt64(obj.i, value.q)
  Declare.l ckAppendLine(obj.i, value.s, crlf.l)
  Declare.l ckAppendSb(obj.i, sb.i)
  Declare ckClear(obj.i)
  Declare.l ckContains(obj.i, str.s, caseSensitive.l)
  Declare.l ckContainsWord(obj.i, word.s, caseSensitive.l)
  Declare.l ckContentsEqual(obj.i, str.s, caseSensitive.l)
  Declare.l ckContentsEqualSb(obj.i, sb.i, caseSensitive.l)
  Declare.l ckDecode(obj.i, encoding.s, charset.s)
  Declare.l ckEncode(obj.i, encoding.s, charset.s)
  Declare.l ckEndsWith(obj.i, substr.s, caseSensitive.l)
  Declare.l ckEntityDecode(obj.i)
  Declare.s ckGetAfterBetween(obj.i, searchAfter.s, beginMark.s, endMark.s)
  Declare.s ckGetAfterFinal(obj.i, marker.s, removeFlag.l)
  Declare.s ckGetAsString(obj.i)
  Declare.s ckGetBefore(obj.i, marker.s, removeFlag.l)
  Declare.s ckGetBetween(obj.i, beginMark.s, endMark.s)
  Declare.s ckGetEncoded(obj.i, encoding.s, charset.s)
  Declare.s ckGetNth(obj.i, index.l, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l)
  Declare.s ckLastNLines(obj.i, numLines.l, bCrlf.l)
  Declare.l ckLoadFile(obj.i, path.s, charset.s)
  Declare ckObfuscate(obj.i)
  Declare.l ckPrepend(obj.i, value.s)
  Declare.l ckPunyDecode(obj.i)
  Declare.l ckPunyEncode(obj.i)
  Declare.l ckRemoveAfterFinal(obj.i, marker.s)
  Declare.l ckRemoveBefore(obj.i, marker.s)
  Declare.l ckReplace(obj.i, value.s, replacement.s)
  Declare.l ckReplaceAfterFinal(obj.i, marker.s, replacement.s)
  Declare.l ckReplaceAllBetween(obj.i, beginMark.s, endMark.s, replacement.s, replaceMarks.l)
  Declare.l ckReplaceBetween(obj.i, beginMark.s, endMark.s, value.s, replacement.s)
  Declare.l ckReplaceFirst(obj.i, value.s, replacement.s)
  Declare.l ckReplaceI(obj.i, value.s, replacement.l)
  Declare.l ckReplaceNoCase(obj.i, value.s, replacement.s)
  Declare.l ckReplaceWord(obj.i, value.s, replacement.s)
  Declare ckSecureClear(obj.i)
  Declare.l ckSetNth(obj.i, index.l, value.s, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l)
  Declare.l ckSetString(obj.i, value.s)
  Declare.l ckStartsWith(obj.i, substr.s, caseSensitive.l)
  Declare.l ckToCRLF(obj.i)
  Declare.l ckToLF(obj.i)
  Declare.l ckToLowercase(obj.i)
  Declare.l ckToUppercase(obj.i)
  Declare.l ckTrim(obj.i)
  Declare.l ckTrimInsideSpaces(obj.i)
  Declare ckUnobfuscate(obj.i)
  Declare.l ckWriteFile(obj.i, path.s, charset.s, emitBom.l)
  Declare.l ckWriteFileIfModified(obj.i, path.s, charset.s, emitBom.l)
EndDeclareModule

Module CkStringBuilder
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMlsll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklMisll(obj.i, arg1.i, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMq(obj.i, arg1.q)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMlssll(obj.i, arg1.l, arg2.s, arg3.s, arg4.l, arg5.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMlsll(obj.i, arg1.l, arg2.s, arg3.l, arg4.l)
  PrototypeC.i ckiMll(obj.i, arg1.l, arg2.l)
  PrototypeC.i CkStringBuilderCreate()
  PrototypeC CkStringBuilderDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringBuilderLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkStringBuilderLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkStringBuilderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkStringBuilderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkStringBuilderLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global StringBuilderCreate.CkStringBuilderCreate = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_CreateW")
  Global StringBuilderDispose.CkStringBuilderDispose = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_DisposeW")
  Global StringBuilderIntValue.cklPropGet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getIntValueW")
  Global StringBuilderPSetIntValue.cklPropSet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_putIntValueW")
  Global StringBuilderIsBase64.cklPropGet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getIsBase64W")
  Global StringBuilderLastMethodSuccess.cklPropGet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getLastMethodSuccessW")
  Global StringBuilderPSetLastMethodSuccess.cklPropSet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_putLastMethodSuccessW")
  Global StringBuilderLength.cklPropGet = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getLengthW")
  Global StringBuilderAppend.cklMs = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendW")
  Global StringBuilderAppendBd.cklMisll = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendBdW")
  Global StringBuilderAppendInt.cklMl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendIntW")
  Global StringBuilderAppendInt64.cklMq = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendInt64W")
  Global StringBuilderAppendLine.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendLineW")
  Global StringBuilderAppendSb.cklMi = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_AppendSbW")
  Global StringBuilderClear.ckvM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ClearW")
  Global StringBuilderContains.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ContainsW")
  Global StringBuilderContainsWord.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ContainsWordW")
  Global StringBuilderContentsEqual.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ContentsEqualW")
  Global StringBuilderContentsEqualSb.cklMil = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ContentsEqualSbW")
  Global StringBuilderDecode.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_DecodeW")
  Global StringBuilderEncode.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_EncodeW")
  Global StringBuilderEndsWith.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_EndsWithW")
  Global StringBuilderEntityDecode.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_EntityDecodeW")
  Global StringBuilderGetAfterBetween.ckiMsss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getAfterBetweenW")
  Global StringBuilderGetAfterFinal.ckiMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getAfterFinalW")
  Global StringBuilderGetAsString.ckiM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getAsStringW")
  Global StringBuilderGetBefore.ckiMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getBeforeW")
  Global StringBuilderGetBetween.ckiMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getBetweenW")
  Global StringBuilderGetEncoded.ckiMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getEncodedW")
  Global StringBuilderGetNth.ckiMlsll = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_getNthW")
  Global StringBuilderLastNLines.ckiMll = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_lastNLinesW")
  Global StringBuilderLoadFile.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_LoadFileW")
  Global StringBuilderObfuscate.ckvM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ObfuscateW")
  Global StringBuilderPrepend.cklMs = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_PrependW")
  Global StringBuilderPunyDecode.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_PunyDecodeW")
  Global StringBuilderPunyEncode.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_PunyEncodeW")
  Global StringBuilderRemoveAfterFinal.cklMs = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_RemoveAfterFinalW")
  Global StringBuilderRemoveBefore.cklMs = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_RemoveBeforeW")
  Global StringBuilderReplace.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceW")
  Global StringBuilderReplaceAfterFinal.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceAfterFinalW")
  Global StringBuilderReplaceAllBetween.cklMsssl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceAllBetweenW")
  Global StringBuilderReplaceBetween.cklMssss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceBetweenW")
  Global StringBuilderReplaceFirst.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceFirstW")
  Global StringBuilderReplaceI.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceIW")
  Global StringBuilderReplaceNoCase.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceNoCaseW")
  Global StringBuilderReplaceWord.cklMss = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ReplaceWordW")
  Global StringBuilderSecureClear.ckvM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_SecureClearW")
  Global StringBuilderSetNth.cklMlssll = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_SetNthW")
  Global StringBuilderSetString.cklMs = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_SetStringW")
  Global StringBuilderStartsWith.cklMsl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_StartsWithW")
  Global StringBuilderToCRLF.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ToCRLFW")
  Global StringBuilderToLF.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ToLFW")
  Global StringBuilderToLowercase.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ToLowercaseW")
  Global StringBuilderToUppercase.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_ToUppercaseW")
  Global StringBuilderTrim.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_TrimW")
  Global StringBuilderTrimInsideSpaces.cklM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_TrimInsideSpacesW")
  Global StringBuilderUnobfuscate.ckvM = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_UnobfuscateW")
  Global StringBuilderWriteFile.cklMssl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_WriteFileW")
  Global StringBuilderWriteFileIfModified.cklMssl = GetFunction(CkStringBuilderLibId,"CkStringBuilderU_WriteFileIfModifiedW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn StringBuilderCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn StringBuilderDispose(obj) : EndProcedure
  Procedure.l ckIntValue(obj.i) : ProcedureReturn StringBuilderIntValue(obj) : EndProcedure
  Procedure setCkIntValue(obj.i, value.l) : ProcedureReturn StringBuilderPSetIntValue(obj,value) : EndProcedure
  Procedure.l ckIsBase64(obj.i) : ProcedureReturn StringBuilderIsBase64(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn StringBuilderLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn StringBuilderPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLength(obj.i) : ProcedureReturn StringBuilderLength(obj) : EndProcedure
  Procedure.l ckAppend(obj.i, value.s) :  ProcedureReturn StringBuilderAppend(obj, value) :  EndProcedure
  Procedure.l ckAppendBd(obj.i, binData.i, charset.s, offset.l, numBytes.l) :  ProcedureReturn StringBuilderAppendBd(obj, binData, charset, offset, numBytes) :  EndProcedure
  Procedure.l ckAppendInt(obj.i, value.l) :  ProcedureReturn StringBuilderAppendInt(obj, value) :  EndProcedure
  Procedure.l ckAppendInt64(obj.i, value.q) :  ProcedureReturn StringBuilderAppendInt64(obj, value) :  EndProcedure
  Procedure.l ckAppendLine(obj.i, value.s, crlf.l) :  ProcedureReturn StringBuilderAppendLine(obj, value, crlf) :  EndProcedure
  Procedure.l ckAppendSb(obj.i, sb.i) :  ProcedureReturn StringBuilderAppendSb(obj, sb) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn StringBuilderClear(obj) :  EndProcedure
  Procedure.l ckContains(obj.i, str.s, caseSensitive.l) :  ProcedureReturn StringBuilderContains(obj, str, caseSensitive) :  EndProcedure
  Procedure.l ckContainsWord(obj.i, word.s, caseSensitive.l) :  ProcedureReturn StringBuilderContainsWord(obj, word, caseSensitive) :  EndProcedure
  Procedure.l ckContentsEqual(obj.i, str.s, caseSensitive.l) :  ProcedureReturn StringBuilderContentsEqual(obj, str, caseSensitive) :  EndProcedure
  Procedure.l ckContentsEqualSb(obj.i, sb.i, caseSensitive.l) :  ProcedureReturn StringBuilderContentsEqualSb(obj, sb, caseSensitive) :  EndProcedure
  Procedure.l ckDecode(obj.i, encoding.s, charset.s) :  ProcedureReturn StringBuilderDecode(obj, encoding, charset) :  EndProcedure
  Procedure.l ckEncode(obj.i, encoding.s, charset.s) :  ProcedureReturn StringBuilderEncode(obj, encoding, charset) :  EndProcedure
  Procedure.l ckEndsWith(obj.i, substr.s, caseSensitive.l) :  ProcedureReturn StringBuilderEndsWith(obj, substr, caseSensitive) :  EndProcedure
  Procedure.l ckEntityDecode(obj.i) :  ProcedureReturn StringBuilderEntityDecode(obj) :  EndProcedure
  Procedure.s ckGetAfterBetween(obj.i, searchAfter.s, beginMark.s, endMark.s) :  ProcedureReturn PeekS(StringBuilderGetAfterBetween(obj, searchAfter, beginMark, endMark)) :  EndProcedure
  Procedure.s ckGetAfterFinal(obj.i, marker.s, removeFlag.l) :  ProcedureReturn PeekS(StringBuilderGetAfterFinal(obj, marker, removeFlag)) :  EndProcedure
  Procedure.s ckGetAsString(obj.i) :  ProcedureReturn PeekS(StringBuilderGetAsString(obj)) :  EndProcedure
  Procedure.s ckGetBefore(obj.i, marker.s, removeFlag.l) :  ProcedureReturn PeekS(StringBuilderGetBefore(obj, marker, removeFlag)) :  EndProcedure
  Procedure.s ckGetBetween(obj.i, beginMark.s, endMark.s) :  ProcedureReturn PeekS(StringBuilderGetBetween(obj, beginMark, endMark)) :  EndProcedure
  Procedure.s ckGetEncoded(obj.i, encoding.s, charset.s) :  ProcedureReturn PeekS(StringBuilderGetEncoded(obj, encoding, charset)) :  EndProcedure
  Procedure.s ckGetNth(obj.i, index.l, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l) :  ProcedureReturn PeekS(StringBuilderGetNth(obj, index, delimiterChar, exceptDoubleQuoted, exceptEscaped)) :  EndProcedure
  Procedure.s ckLastNLines(obj.i, numLines.l, bCrlf.l) :  ProcedureReturn PeekS(StringBuilderLastNLines(obj, numLines, bCrlf)) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, path.s, charset.s) :  ProcedureReturn StringBuilderLoadFile(obj, path, charset) :  EndProcedure
  Procedure ckObfuscate(obj.i) :  ProcedureReturn StringBuilderObfuscate(obj) :  EndProcedure
  Procedure.l ckPrepend(obj.i, value.s) :  ProcedureReturn StringBuilderPrepend(obj, value) :  EndProcedure
  Procedure.l ckPunyDecode(obj.i) :  ProcedureReturn StringBuilderPunyDecode(obj) :  EndProcedure
  Procedure.l ckPunyEncode(obj.i) :  ProcedureReturn StringBuilderPunyEncode(obj) :  EndProcedure
  Procedure.l ckRemoveAfterFinal(obj.i, marker.s) :  ProcedureReturn StringBuilderRemoveAfterFinal(obj, marker) :  EndProcedure
  Procedure.l ckRemoveBefore(obj.i, marker.s) :  ProcedureReturn StringBuilderRemoveBefore(obj, marker) :  EndProcedure
  Procedure.l ckReplace(obj.i, value.s, replacement.s) :  ProcedureReturn StringBuilderReplace(obj, value, replacement) :  EndProcedure
  Procedure.l ckReplaceAfterFinal(obj.i, marker.s, replacement.s) :  ProcedureReturn StringBuilderReplaceAfterFinal(obj, marker, replacement) :  EndProcedure
  Procedure.l ckReplaceAllBetween(obj.i, beginMark.s, endMark.s, replacement.s, replaceMarks.l) :  ProcedureReturn StringBuilderReplaceAllBetween(obj, beginMark, endMark, replacement, replaceMarks) :  EndProcedure
  Procedure.l ckReplaceBetween(obj.i, beginMark.s, endMark.s, value.s, replacement.s) :  ProcedureReturn StringBuilderReplaceBetween(obj, beginMark, endMark, value, replacement) :  EndProcedure
  Procedure.l ckReplaceFirst(obj.i, value.s, replacement.s) :  ProcedureReturn StringBuilderReplaceFirst(obj, value, replacement) :  EndProcedure
  Procedure.l ckReplaceI(obj.i, value.s, replacement.l) :  ProcedureReturn StringBuilderReplaceI(obj, value, replacement) :  EndProcedure
  Procedure.l ckReplaceNoCase(obj.i, value.s, replacement.s) :  ProcedureReturn StringBuilderReplaceNoCase(obj, value, replacement) :  EndProcedure
  Procedure.l ckReplaceWord(obj.i, value.s, replacement.s) :  ProcedureReturn StringBuilderReplaceWord(obj, value, replacement) :  EndProcedure
  Procedure ckSecureClear(obj.i) :  ProcedureReturn StringBuilderSecureClear(obj) :  EndProcedure
  Procedure.l ckSetNth(obj.i, index.l, value.s, delimiterChar.s, exceptDoubleQuoted.l, exceptEscaped.l) :  ProcedureReturn StringBuilderSetNth(obj, index, value, delimiterChar, exceptDoubleQuoted, exceptEscaped) :  EndProcedure
  Procedure.l ckSetString(obj.i, value.s) :  ProcedureReturn StringBuilderSetString(obj, value) :  EndProcedure
  Procedure.l ckStartsWith(obj.i, substr.s, caseSensitive.l) :  ProcedureReturn StringBuilderStartsWith(obj, substr, caseSensitive) :  EndProcedure
  Procedure.l ckToCRLF(obj.i) :  ProcedureReturn StringBuilderToCRLF(obj) :  EndProcedure
  Procedure.l ckToLF(obj.i) :  ProcedureReturn StringBuilderToLF(obj) :  EndProcedure
  Procedure.l ckToLowercase(obj.i) :  ProcedureReturn StringBuilderToLowercase(obj) :  EndProcedure
  Procedure.l ckToUppercase(obj.i) :  ProcedureReturn StringBuilderToUppercase(obj) :  EndProcedure
  Procedure.l ckTrim(obj.i) :  ProcedureReturn StringBuilderTrim(obj) :  EndProcedure
  Procedure.l ckTrimInsideSpaces(obj.i) :  ProcedureReturn StringBuilderTrimInsideSpaces(obj) :  EndProcedure
  Procedure ckUnobfuscate(obj.i) :  ProcedureReturn StringBuilderUnobfuscate(obj) :  EndProcedure
  Procedure.l ckWriteFile(obj.i, path.s, charset.s, emitBom.l) :  ProcedureReturn StringBuilderWriteFile(obj, path, charset, emitBom) :  EndProcedure
  Procedure.l ckWriteFileIfModified(obj.i, path.s, charset.s, emitBom.l) :  ProcedureReturn StringBuilderWriteFileIfModified(obj, path, charset, emitBom) :  EndProcedure
EndModule


; IDE Options = PureBasic 6.40 (Windows - x64)
; Folding = ------------
; EnableThread
; EnableXP
; DPIAware