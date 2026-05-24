DeclareModule CkAsn
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckBoolValue(obj.i)
  Declare setCkBoolValue(obj.i, value.l)
  Declare.l ckConstructed(obj.i)
  Declare.s ckContentStr(obj.i)
  Declare setCkContentStr(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckIntValue(obj.i)
  Declare setCkIntValue(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumSubItems(obj.i)
  Declare.s ckTag(obj.i)
  Declare.l ckTagValue(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAppendBigInt(obj.i, encodedBytes.s, encoding.s)
  Declare.l ckAppendBits(obj.i, encodedBytes.s, encoding.s)
  Declare.l ckAppendBool(obj.i, value.l)
  Declare.l ckAppendContextConstructed(obj.i, tag.l)
  Declare.l ckAppendContextPrimitive(obj.i, tag.l, encodedBytes.s, encoding.s)
  Declare.l ckAppendInt(obj.i, value.l)
  Declare.l ckAppendNull(obj.i)
  Declare.l ckAppendOctets(obj.i, encodedBytes.s, encoding.s)
  Declare.l ckAppendOid(obj.i, oid.s)
  Declare.l ckAppendSequence(obj.i)
  Declare.l ckAppendSequence2(obj.i)
  Declare.i ckAppendSequenceR(obj.i)
  Declare.l ckAppendSet(obj.i)
  Declare.l ckAppendSet2(obj.i)
  Declare.i ckAppendSetR(obj.i)
  Declare.l ckAppendString(obj.i, strType.s, value.s)
  Declare.l ckAppendTime(obj.i, timeFormat.s, dateTimeStr.s)
  Declare.s ckAsnToXml(obj.i)
  Declare.l ckDeleteSubItem(obj.i, index.l)
  Declare.s ckGetEncodedContent(obj.i, encoding.s)
  Declare.s ckGetEncodedDer(obj.i, encoding.s)
  Declare.i ckGetLastSubItem(obj.i)
  Declare.i ckGetSubItem(obj.i, index.l)
  Declare.l ckLoadAsnXml(obj.i, xmlStr.s)
  Declare.l ckLoadBd(obj.i, bd.i)
  Declare.l ckLoadBinaryFile(obj.i, path.s)
  Declare.l ckLoadEncoded(obj.i, asnContent.s, encoding.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetEncodedContent(obj.i, encodedBytes.s, encoding.s)
  Declare.l ckWriteBd(obj.i, bd.i)
  Declare.l ckWriteBinaryDer(obj.i, path.s)
EndDeclareModule

Module CkAsn
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkAsnCreate()
  PrototypeC CkAsnDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAsnLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAsnLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAsnLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAsnLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAsnLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AsnCreate.CkAsnCreate = GetFunction(CkAsnLibId,"CkAsnU_CreateW")
  Global AsnDispose.CkAsnDispose = GetFunction(CkAsnLibId,"CkAsnU_DisposeW")
  Global AsnBoolValue.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getBoolValueW")
  Global AsnPSetBoolValue.cklPropSet = GetFunction(CkAsnLibId,"CkAsnU_putBoolValueW")
  Global AsnConstructed.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getConstructedW")
  Global AsnContentStr.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_contentStrW")
  Global AsnPSetContentStr.cksPropSet = GetFunction(CkAsnLibId,"CkAsnU_putContentStrW")
  Global AsnDebugLogFilePath.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_debugLogFilePathW")
  Global AsnPSetDebugLogFilePath.cksPropSet = GetFunction(CkAsnLibId,"CkAsnU_putDebugLogFilePathW")
  Global AsnIntValue.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getIntValueW")
  Global AsnPSetIntValue.cklPropSet = GetFunction(CkAsnLibId,"CkAsnU_putIntValueW")
  Global AsnLastErrorHtml.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_lastErrorHtmlW")
  Global AsnLastErrorText.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_lastErrorTextW")
  Global AsnLastErrorXml.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_lastErrorXmlW")
  Global AsnLastMethodSuccess.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getLastMethodSuccessW")
  Global AsnPSetLastMethodSuccess.cklPropSet = GetFunction(CkAsnLibId,"CkAsnU_putLastMethodSuccessW")
  Global AsnNumSubItems.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getNumSubItemsW")
  Global AsnTag.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_tagW")
  Global AsnTagValue.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getTagValueW")
  Global AsnVerboseLogging.cklPropGet = GetFunction(CkAsnLibId,"CkAsnU_getVerboseLoggingW")
  Global AsnPSetVerboseLogging.cklPropSet = GetFunction(CkAsnLibId,"CkAsnU_putVerboseLoggingW")
  Global AsnVersion.cksPropGet = GetFunction(CkAsnLibId,"CkAsnU_versionW")
  Global AsnAppendBigInt.cklMss = GetFunction(CkAsnLibId,"CkAsnU_AppendBigIntW")
  Global AsnAppendBits.cklMss = GetFunction(CkAsnLibId,"CkAsnU_AppendBitsW")
  Global AsnAppendBool.cklMl = GetFunction(CkAsnLibId,"CkAsnU_AppendBoolW")
  Global AsnAppendContextConstructed.cklMl = GetFunction(CkAsnLibId,"CkAsnU_AppendContextConstructedW")
  Global AsnAppendContextPrimitive.cklMlss = GetFunction(CkAsnLibId,"CkAsnU_AppendContextPrimitiveW")
  Global AsnAppendInt.cklMl = GetFunction(CkAsnLibId,"CkAsnU_AppendIntW")
  Global AsnAppendNull.cklM = GetFunction(CkAsnLibId,"CkAsnU_AppendNullW")
  Global AsnAppendOctets.cklMss = GetFunction(CkAsnLibId,"CkAsnU_AppendOctetsW")
  Global AsnAppendOid.cklMs = GetFunction(CkAsnLibId,"CkAsnU_AppendOidW")
  Global AsnAppendSequence.cklM = GetFunction(CkAsnLibId,"CkAsnU_AppendSequenceW")
  Global AsnAppendSequence2.cklM = GetFunction(CkAsnLibId,"CkAsnU_AppendSequence2W")
  Global AsnAppendSequenceR.ckiM = GetFunction(CkAsnLibId,"CkAsnU_AppendSequenceRW")
  Global AsnAppendSet.cklM = GetFunction(CkAsnLibId,"CkAsnU_AppendSetW")
  Global AsnAppendSet2.cklM = GetFunction(CkAsnLibId,"CkAsnU_AppendSet2W")
  Global AsnAppendSetR.ckiM = GetFunction(CkAsnLibId,"CkAsnU_AppendSetRW")
  Global AsnAppendString.cklMss = GetFunction(CkAsnLibId,"CkAsnU_AppendStringW")
  Global AsnAppendTime.cklMss = GetFunction(CkAsnLibId,"CkAsnU_AppendTimeW")
  Global AsnAsnToXml.cklM = GetFunction(CkAsnLibId,"CkAsnU_asnToXmlW")
  Global AsnDeleteSubItem.cklMl = GetFunction(CkAsnLibId,"CkAsnU_DeleteSubItemW")
  Global AsnGetEncodedContent.cklMs = GetFunction(CkAsnLibId,"CkAsnU_getEncodedContentW")
  Global AsnGetEncodedDer.cklMs = GetFunction(CkAsnLibId,"CkAsnU_getEncodedDerW")
  Global AsnGetLastSubItem.ckiM = GetFunction(CkAsnLibId,"CkAsnU_GetLastSubItemW")
  Global AsnGetSubItem.ckiMl = GetFunction(CkAsnLibId,"CkAsnU_GetSubItemW")
  Global AsnLoadAsnXml.cklMs = GetFunction(CkAsnLibId,"CkAsnU_LoadAsnXmlW")
  Global AsnLoadBd.cklMi = GetFunction(CkAsnLibId,"CkAsnU_LoadBdW")
  Global AsnLoadBinaryFile.cklMs = GetFunction(CkAsnLibId,"CkAsnU_LoadBinaryFileW")
  Global AsnLoadEncoded.cklMss = GetFunction(CkAsnLibId,"CkAsnU_LoadEncodedW")
  Global AsnSaveLastError.cklMs = GetFunction(CkAsnLibId,"CkAsnU_SaveLastErrorW")
  Global AsnSetEncodedContent.cklMss = GetFunction(CkAsnLibId,"CkAsnU_SetEncodedContentW")
  Global AsnWriteBd.cklMi = GetFunction(CkAsnLibId,"CkAsnU_WriteBdW")
  Global AsnWriteBinaryDer.cklMs = GetFunction(CkAsnLibId,"CkAsnU_WriteBinaryDerW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AsnCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AsnDispose(obj) : EndProcedure
  Procedure.l ckBoolValue(obj.i) : ProcedureReturn AsnBoolValue(obj) : EndProcedure
  Procedure setCkBoolValue(obj.i, value.l) : ProcedureReturn AsnPSetBoolValue(obj,value) : EndProcedure
  Procedure.l ckConstructed(obj.i) : ProcedureReturn AsnConstructed(obj) : EndProcedure
  Procedure.s ckContentStr(obj.i) : ProcedureReturn PeekS(AsnContentStr(obj)) : EndProcedure
  Procedure setCkContentStr(obj.i, value.s) : ProcedureReturn AsnPSetContentStr(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AsnDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AsnPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckIntValue(obj.i) : ProcedureReturn AsnIntValue(obj) : EndProcedure
  Procedure setCkIntValue(obj.i, value.l) : ProcedureReturn AsnPSetIntValue(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AsnLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AsnLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AsnLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AsnLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AsnPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumSubItems(obj.i) : ProcedureReturn AsnNumSubItems(obj) : EndProcedure
  Procedure.s ckTag(obj.i) : ProcedureReturn PeekS(AsnTag(obj)) : EndProcedure
  Procedure.l ckTagValue(obj.i) : ProcedureReturn AsnTagValue(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AsnVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AsnPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AsnVersion(obj)) : EndProcedure
  Procedure.l ckAppendBigInt(obj.i, encodedBytes.s, encoding.s) :  ProcedureReturn AsnAppendBigInt(obj, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckAppendBits(obj.i, encodedBytes.s, encoding.s) :  ProcedureReturn AsnAppendBits(obj, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckAppendBool(obj.i, value.l) :  ProcedureReturn AsnAppendBool(obj, value) :  EndProcedure
  Procedure.l ckAppendContextConstructed(obj.i, tag.l) :  ProcedureReturn AsnAppendContextConstructed(obj, tag) :  EndProcedure
  Procedure.l ckAppendContextPrimitive(obj.i, tag.l, encodedBytes.s, encoding.s) :  ProcedureReturn AsnAppendContextPrimitive(obj, tag, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckAppendInt(obj.i, value.l) :  ProcedureReturn AsnAppendInt(obj, value) :  EndProcedure
  Procedure.l ckAppendNull(obj.i) :  ProcedureReturn AsnAppendNull(obj) :  EndProcedure
  Procedure.l ckAppendOctets(obj.i, encodedBytes.s, encoding.s) :  ProcedureReturn AsnAppendOctets(obj, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckAppendOid(obj.i, oid.s) :  ProcedureReturn AsnAppendOid(obj, oid) :  EndProcedure
  Procedure.l ckAppendSequence(obj.i) :  ProcedureReturn AsnAppendSequence(obj) :  EndProcedure
  Procedure.l ckAppendSequence2(obj.i) :  ProcedureReturn AsnAppendSequence2(obj) :  EndProcedure
  Procedure.i ckAppendSequenceR(obj.i) :  ProcedureReturn AsnAppendSequenceR(obj) :  EndProcedure
  Procedure.l ckAppendSet(obj.i) :  ProcedureReturn AsnAppendSet(obj) :  EndProcedure
  Procedure.l ckAppendSet2(obj.i) :  ProcedureReturn AsnAppendSet2(obj) :  EndProcedure
  Procedure.i ckAppendSetR(obj.i) :  ProcedureReturn AsnAppendSetR(obj) :  EndProcedure
  Procedure.l ckAppendString(obj.i, strType.s, value.s) :  ProcedureReturn AsnAppendString(obj, strType, value) :  EndProcedure
  Procedure.l ckAppendTime(obj.i, timeFormat.s, dateTimeStr.s) :  ProcedureReturn AsnAppendTime(obj, timeFormat, dateTimeStr) :  EndProcedure
  Procedure.s ckAsnToXml(obj.i) :  ProcedureReturn PeekS(AsnAsnToXml(obj)) :  EndProcedure
  Procedure.l ckDeleteSubItem(obj.i, index.l) :  ProcedureReturn AsnDeleteSubItem(obj, index) :  EndProcedure
  Procedure.s ckGetEncodedContent(obj.i, encoding.s) :  ProcedureReturn PeekS(AsnGetEncodedContent(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedDer(obj.i, encoding.s) :  ProcedureReturn PeekS(AsnGetEncodedDer(obj, encoding)) :  EndProcedure
  Procedure.i ckGetLastSubItem(obj.i) :  ProcedureReturn AsnGetLastSubItem(obj) :  EndProcedure
  Procedure.i ckGetSubItem(obj.i, index.l) :  ProcedureReturn AsnGetSubItem(obj, index) :  EndProcedure
  Procedure.l ckLoadAsnXml(obj.i, xmlStr.s) :  ProcedureReturn AsnLoadAsnXml(obj, xmlStr) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, bd.i) :  ProcedureReturn AsnLoadBd(obj, bd) :  EndProcedure
  Procedure.l ckLoadBinaryFile(obj.i, path.s) :  ProcedureReturn AsnLoadBinaryFile(obj, path) :  EndProcedure
  Procedure.l ckLoadEncoded(obj.i, asnContent.s, encoding.s) :  ProcedureReturn AsnLoadEncoded(obj, asnContent, encoding) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AsnSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetEncodedContent(obj.i, encodedBytes.s, encoding.s) :  ProcedureReturn AsnSetEncodedContent(obj, encodedBytes, encoding) :  EndProcedure
  Procedure.l ckWriteBd(obj.i, bd.i) :  ProcedureReturn AsnWriteBd(obj, bd) :  EndProcedure
  Procedure.l ckWriteBinaryDer(obj.i, path.s) :  ProcedureReturn AsnWriteBinaryDer(obj, path) :  EndProcedure
EndModule

