DeclareModule CkBinData
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumBytes(obj.i)
  Declare.l ckAppendBd(obj.i, binData.i)
  Declare.l ckAppendBom(obj.i, charset.s)
  Declare.l ckAppendByte(obj.i, byteValue.l)
  Declare.l ckAppendEncoded(obj.i, encData.s, encoding.s)
  Declare.l ckAppendEncodedSb(obj.i, sb.i, encoding.s)
  Declare.l ckAppendInt2(obj.i, value.l, littleEndian.l)
  Declare.l ckAppendInt4(obj.i, value.l, littleEndian.l)
  Declare.l ckAppendPadded(obj.i, str.s, charset.s, padWithSpace.l, fieldLen.l)
  Declare.l ckAppendSb(obj.i, sb.i, charset.s)
  Declare.l ckAppendString(obj.i, str.s, charset.s)
  Declare.l ckClear(obj.i)
  Declare.l ckContentsEqual(obj.i, binData.i)
  Declare.l ckFindString(obj.i, str.s, startIdx.l, charset.s)
  Declare.s ckGetEncoded(obj.i, encoding.s)
  Declare.s ckGetEncodedChunk(obj.i, offset.l, numBytes.l, encoding.s)
  Declare.l ckGetEncodedSb(obj.i, encoding.s, sb.i)
  Declare.s ckGetString(obj.i, charset.s)
  Declare.s ckGetTextChunk(obj.i, startIdx.l, numBytes.l, charset.s)
  Declare.l ckLoadEncoded(obj.i, encData.s, encoding.s)
  Declare.l ckLoadFile(obj.i, path.s)
  Declare.l ckRemoveChunk(obj.i, offset.l, numBytes.l)
  Declare.l ckSecureClear(obj.i)
  Declare.l ckWriteFile(obj.i, path.s)
EndDeclareModule

Module CkBinData
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssll(obj.i, arg1.s, arg2.s, arg3.l, arg4.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMlls(obj.i, arg1.l, arg2.l, arg3.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkBinDataCreate()
  PrototypeC CkBinDataDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBinDataLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkBinDataLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkBinDataLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBinDataLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkBinDataLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global BinDataCreate.CkBinDataCreate = GetFunction(CkBinDataLibId,"CkBinDataU_CreateW")
  Global BinDataDispose.CkBinDataDispose = GetFunction(CkBinDataLibId,"CkBinDataU_DisposeW")
  Global BinDataLastMethodSuccess.cklPropGet = GetFunction(CkBinDataLibId,"CkBinDataU_getLastMethodSuccessW")
  Global BinDataPSetLastMethodSuccess.cklPropSet = GetFunction(CkBinDataLibId,"CkBinDataU_putLastMethodSuccessW")
  Global BinDataNumBytes.cklPropGet = GetFunction(CkBinDataLibId,"CkBinDataU_getNumBytesW")
  Global BinDataAppendBd.cklMi = GetFunction(CkBinDataLibId,"CkBinDataU_AppendBdW")
  Global BinDataAppendBom.cklMs = GetFunction(CkBinDataLibId,"CkBinDataU_AppendBomW")
  Global BinDataAppendByte.cklMl = GetFunction(CkBinDataLibId,"CkBinDataU_AppendByteW")
  Global BinDataAppendEncoded.cklMss = GetFunction(CkBinDataLibId,"CkBinDataU_AppendEncodedW")
  Global BinDataAppendEncodedSb.cklMis = GetFunction(CkBinDataLibId,"CkBinDataU_AppendEncodedSbW")
  Global BinDataAppendInt2.cklMll = GetFunction(CkBinDataLibId,"CkBinDataU_AppendInt2W")
  Global BinDataAppendInt4.cklMll = GetFunction(CkBinDataLibId,"CkBinDataU_AppendInt4W")
  Global BinDataAppendPadded.cklMssll = GetFunction(CkBinDataLibId,"CkBinDataU_AppendPaddedW")
  Global BinDataAppendSb.cklMis = GetFunction(CkBinDataLibId,"CkBinDataU_AppendSbW")
  Global BinDataAppendString.cklMss = GetFunction(CkBinDataLibId,"CkBinDataU_AppendStringW")
  Global BinDataClear.cklM = GetFunction(CkBinDataLibId,"CkBinDataU_ClearW")
  Global BinDataContentsEqual.cklMi = GetFunction(CkBinDataLibId,"CkBinDataU_ContentsEqualW")
  Global BinDataFindString.cklMsls = GetFunction(CkBinDataLibId,"CkBinDataU_FindStringW")
  Global BinDataGetEncoded.cklMs = GetFunction(CkBinDataLibId,"CkBinDataU_getEncodedW")
  Global BinDataGetEncodedChunk.cklMlls = GetFunction(CkBinDataLibId,"CkBinDataU_getEncodedChunkW")
  Global BinDataGetEncodedSb.cklMsi = GetFunction(CkBinDataLibId,"CkBinDataU_GetEncodedSbW")
  Global BinDataGetString.cklMs = GetFunction(CkBinDataLibId,"CkBinDataU_getStringW")
  Global BinDataGetTextChunk.cklMlls = GetFunction(CkBinDataLibId,"CkBinDataU_getTextChunkW")
  Global BinDataLoadEncoded.cklMss = GetFunction(CkBinDataLibId,"CkBinDataU_LoadEncodedW")
  Global BinDataLoadFile.cklMs = GetFunction(CkBinDataLibId,"CkBinDataU_LoadFileW")
  Global BinDataRemoveChunk.cklMll = GetFunction(CkBinDataLibId,"CkBinDataU_RemoveChunkW")
  Global BinDataSecureClear.cklM = GetFunction(CkBinDataLibId,"CkBinDataU_SecureClearW")
  Global BinDataWriteFile.cklMs = GetFunction(CkBinDataLibId,"CkBinDataU_WriteFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn BinDataCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn BinDataDispose(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn BinDataLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn BinDataPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumBytes(obj.i) : ProcedureReturn BinDataNumBytes(obj) : EndProcedure
  Procedure.l ckAppendBd(obj.i, binData.i) :  ProcedureReturn BinDataAppendBd(obj, binData) :  EndProcedure
  Procedure.l ckAppendBom(obj.i, charset.s) :  ProcedureReturn BinDataAppendBom(obj, charset) :  EndProcedure
  Procedure.l ckAppendByte(obj.i, byteValue.l) :  ProcedureReturn BinDataAppendByte(obj, byteValue) :  EndProcedure
  Procedure.l ckAppendEncoded(obj.i, encData.s, encoding.s) :  ProcedureReturn BinDataAppendEncoded(obj, encData, encoding) :  EndProcedure
  Procedure.l ckAppendEncodedSb(obj.i, sb.i, encoding.s) :  ProcedureReturn BinDataAppendEncodedSb(obj, sb, encoding) :  EndProcedure
  Procedure.l ckAppendInt2(obj.i, value.l, littleEndian.l) :  ProcedureReturn BinDataAppendInt2(obj, value, littleEndian) :  EndProcedure
  Procedure.l ckAppendInt4(obj.i, value.l, littleEndian.l) :  ProcedureReturn BinDataAppendInt4(obj, value, littleEndian) :  EndProcedure
  Procedure.l ckAppendPadded(obj.i, str.s, charset.s, padWithSpace.l, fieldLen.l) :  ProcedureReturn BinDataAppendPadded(obj, str, charset, padWithSpace, fieldLen) :  EndProcedure
  Procedure.l ckAppendSb(obj.i, sb.i, charset.s) :  ProcedureReturn BinDataAppendSb(obj, sb, charset) :  EndProcedure
  Procedure.l ckAppendString(obj.i, str.s, charset.s) :  ProcedureReturn BinDataAppendString(obj, str, charset) :  EndProcedure
  Procedure.l ckClear(obj.i) :  ProcedureReturn BinDataClear(obj) :  EndProcedure
  Procedure.l ckContentsEqual(obj.i, binData.i) :  ProcedureReturn BinDataContentsEqual(obj, binData) :  EndProcedure
  Procedure.l ckFindString(obj.i, str.s, startIdx.l, charset.s) :  ProcedureReturn BinDataFindString(obj, str, startIdx, charset) :  EndProcedure
  Procedure.s ckGetEncoded(obj.i, encoding.s) :  ProcedureReturn PeekS(BinDataGetEncoded(obj, encoding)) :  EndProcedure
  Procedure.s ckGetEncodedChunk(obj.i, offset.l, numBytes.l, encoding.s) :  ProcedureReturn PeekS(BinDataGetEncodedChunk(obj, offset, numBytes, encoding)) :  EndProcedure
  Procedure.l ckGetEncodedSb(obj.i, encoding.s, sb.i) :  ProcedureReturn BinDataGetEncodedSb(obj, encoding, sb) :  EndProcedure
  Procedure.s ckGetString(obj.i, charset.s) :  ProcedureReturn PeekS(BinDataGetString(obj, charset)) :  EndProcedure
  Procedure.s ckGetTextChunk(obj.i, startIdx.l, numBytes.l, charset.s) :  ProcedureReturn PeekS(BinDataGetTextChunk(obj, startIdx, numBytes, charset)) :  EndProcedure
  Procedure.l ckLoadEncoded(obj.i, encData.s, encoding.s) :  ProcedureReturn BinDataLoadEncoded(obj, encData, encoding) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, path.s) :  ProcedureReturn BinDataLoadFile(obj, path) :  EndProcedure
  Procedure.l ckRemoveChunk(obj.i, offset.l, numBytes.l) :  ProcedureReturn BinDataRemoveChunk(obj, offset, numBytes) :  EndProcedure
  Procedure.l ckSecureClear(obj.i) :  ProcedureReturn BinDataSecureClear(obj) :  EndProcedure
  Procedure.l ckWriteFile(obj.i, path.s) :  ProcedureReturn BinDataWriteFile(obj, path) :  EndProcedure
EndModule

