DeclareModule CkJws
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumSignatures(obj.i)
  Declare.l ckPreferCompact(obj.i)
  Declare setCkPreferCompact(obj.i, value.l)
  Declare.l ckPreferFlattened(obj.i)
  Declare setCkPreferFlattened(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckCreateJws(obj.i)
  Declare.l ckCreateJwsSb(obj.i, sbJws.i)
  Declare.s ckGetPayload(obj.i, charset.s)
  Declare.l ckGetPayloadBd(obj.i, binData.i)
  Declare.l ckGetPayloadSb(obj.i, charset.s, sbPayload.i)
  Declare.i ckGetProtectedHeader(obj.i, index.l)
  Declare.i ckGetUnprotectedHeader(obj.i, index.l)
  Declare.l ckLoadJws(obj.i, jwsStr.s)
  Declare.l ckLoadJwsSb(obj.i, sbJws.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetMacKey(obj.i, index.l, key.s, encoding.s)
  Declare.l ckSetMacKeyBd(obj.i, index.l, key.i)
  Declare.l ckSetPayload(obj.i, payload.s, charset.s, includeBom.l)
  Declare.l ckSetPayloadBd(obj.i, binData.i)
  Declare.l ckSetPayloadSb(obj.i, sbPayload.i, charset.s, includeBom.l)
  Declare.l ckSetPrivateKey(obj.i, index.l, privKey.i)
  Declare.l ckSetProtectedHeader(obj.i, index.l, json.i)
  Declare.l ckSetPublicKey(obj.i, index.l, pubKey.i)
  Declare.l ckSetUnprotectedHeader(obj.i, index.l, json.i)
  Declare.l ckValidate(obj.i, index.l)
EndDeclareModule

Module CkJws
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.i CkJwsCreate()
  PrototypeC CkJwsDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJwsLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJwsLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JwsCreate.CkJwsCreate = GetFunction(CkJwsLibId,"CkJwsU_CreateW")
  Global JwsDispose.CkJwsDispose = GetFunction(CkJwsLibId,"CkJwsU_DisposeW")
  Global JwsDebugLogFilePath.cksPropGet = GetFunction(CkJwsLibId,"CkJwsU_debugLogFilePathW")
  Global JwsPSetDebugLogFilePath.cksPropSet = GetFunction(CkJwsLibId,"CkJwsU_putDebugLogFilePathW")
  Global JwsLastErrorHtml.cksPropGet = GetFunction(CkJwsLibId,"CkJwsU_lastErrorHtmlW")
  Global JwsLastErrorText.cksPropGet = GetFunction(CkJwsLibId,"CkJwsU_lastErrorTextW")
  Global JwsLastErrorXml.cksPropGet = GetFunction(CkJwsLibId,"CkJwsU_lastErrorXmlW")
  Global JwsLastMethodSuccess.cklPropGet = GetFunction(CkJwsLibId,"CkJwsU_getLastMethodSuccessW")
  Global JwsPSetLastMethodSuccess.cklPropSet = GetFunction(CkJwsLibId,"CkJwsU_putLastMethodSuccessW")
  Global JwsNumSignatures.cklPropGet = GetFunction(CkJwsLibId,"CkJwsU_getNumSignaturesW")
  Global JwsPreferCompact.cklPropGet = GetFunction(CkJwsLibId,"CkJwsU_getPreferCompactW")
  Global JwsPSetPreferCompact.cklPropSet = GetFunction(CkJwsLibId,"CkJwsU_putPreferCompactW")
  Global JwsPreferFlattened.cklPropGet = GetFunction(CkJwsLibId,"CkJwsU_getPreferFlattenedW")
  Global JwsPSetPreferFlattened.cklPropSet = GetFunction(CkJwsLibId,"CkJwsU_putPreferFlattenedW")
  Global JwsVerboseLogging.cklPropGet = GetFunction(CkJwsLibId,"CkJwsU_getVerboseLoggingW")
  Global JwsPSetVerboseLogging.cklPropSet = GetFunction(CkJwsLibId,"CkJwsU_putVerboseLoggingW")
  Global JwsVersion.cksPropGet = GetFunction(CkJwsLibId,"CkJwsU_versionW")
  Global JwsCreateJws.cklM = GetFunction(CkJwsLibId,"CkJwsU_createJwsW")
  Global JwsCreateJwsSb.cklMi = GetFunction(CkJwsLibId,"CkJwsU_CreateJwsSbW")
  Global JwsGetPayload.cklMs = GetFunction(CkJwsLibId,"CkJwsU_getPayloadW")
  Global JwsGetPayloadBd.cklMi = GetFunction(CkJwsLibId,"CkJwsU_GetPayloadBdW")
  Global JwsGetPayloadSb.cklMsi = GetFunction(CkJwsLibId,"CkJwsU_GetPayloadSbW")
  Global JwsGetProtectedHeader.ckiMl = GetFunction(CkJwsLibId,"CkJwsU_GetProtectedHeaderW")
  Global JwsGetUnprotectedHeader.ckiMl = GetFunction(CkJwsLibId,"CkJwsU_GetUnprotectedHeaderW")
  Global JwsLoadJws.cklMs = GetFunction(CkJwsLibId,"CkJwsU_LoadJwsW")
  Global JwsLoadJwsSb.cklMi = GetFunction(CkJwsLibId,"CkJwsU_LoadJwsSbW")
  Global JwsSaveLastError.cklMs = GetFunction(CkJwsLibId,"CkJwsU_SaveLastErrorW")
  Global JwsSetMacKey.cklMlss = GetFunction(CkJwsLibId,"CkJwsU_SetMacKeyW")
  Global JwsSetMacKeyBd.cklMli = GetFunction(CkJwsLibId,"CkJwsU_SetMacKeyBdW")
  Global JwsSetPayload.cklMssl = GetFunction(CkJwsLibId,"CkJwsU_SetPayloadW")
  Global JwsSetPayloadBd.cklMi = GetFunction(CkJwsLibId,"CkJwsU_SetPayloadBdW")
  Global JwsSetPayloadSb.cklMisl = GetFunction(CkJwsLibId,"CkJwsU_SetPayloadSbW")
  Global JwsSetPrivateKey.cklMli = GetFunction(CkJwsLibId,"CkJwsU_SetPrivateKeyW")
  Global JwsSetProtectedHeader.cklMli = GetFunction(CkJwsLibId,"CkJwsU_SetProtectedHeaderW")
  Global JwsSetPublicKey.cklMli = GetFunction(CkJwsLibId,"CkJwsU_SetPublicKeyW")
  Global JwsSetUnprotectedHeader.cklMli = GetFunction(CkJwsLibId,"CkJwsU_SetUnprotectedHeaderW")
  Global JwsValidate.cklMl = GetFunction(CkJwsLibId,"CkJwsU_ValidateW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JwsCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JwsDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JwsDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JwsPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JwsLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JwsLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JwsLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JwsLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JwsPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumSignatures(obj.i) : ProcedureReturn JwsNumSignatures(obj) : EndProcedure
  Procedure.l ckPreferCompact(obj.i) : ProcedureReturn JwsPreferCompact(obj) : EndProcedure
  Procedure setCkPreferCompact(obj.i, value.l) : ProcedureReturn JwsPSetPreferCompact(obj,value) : EndProcedure
  Procedure.l ckPreferFlattened(obj.i) : ProcedureReturn JwsPreferFlattened(obj) : EndProcedure
  Procedure setCkPreferFlattened(obj.i, value.l) : ProcedureReturn JwsPSetPreferFlattened(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JwsVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JwsPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JwsVersion(obj)) : EndProcedure
  Procedure.s ckCreateJws(obj.i) :  ProcedureReturn PeekS(JwsCreateJws(obj)) :  EndProcedure
  Procedure.l ckCreateJwsSb(obj.i, sbJws.i) :  ProcedureReturn JwsCreateJwsSb(obj, sbJws) :  EndProcedure
  Procedure.s ckGetPayload(obj.i, charset.s) :  ProcedureReturn PeekS(JwsGetPayload(obj, charset)) :  EndProcedure
  Procedure.l ckGetPayloadBd(obj.i, binData.i) :  ProcedureReturn JwsGetPayloadBd(obj, binData) :  EndProcedure
  Procedure.l ckGetPayloadSb(obj.i, charset.s, sbPayload.i) :  ProcedureReturn JwsGetPayloadSb(obj, charset, sbPayload) :  EndProcedure
  Procedure.i ckGetProtectedHeader(obj.i, index.l) :  ProcedureReturn JwsGetProtectedHeader(obj, index) :  EndProcedure
  Procedure.i ckGetUnprotectedHeader(obj.i, index.l) :  ProcedureReturn JwsGetUnprotectedHeader(obj, index) :  EndProcedure
  Procedure.l ckLoadJws(obj.i, jwsStr.s) :  ProcedureReturn JwsLoadJws(obj, jwsStr) :  EndProcedure
  Procedure.l ckLoadJwsSb(obj.i, sbJws.i) :  ProcedureReturn JwsLoadJwsSb(obj, sbJws) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JwsSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetMacKey(obj.i, index.l, key.s, encoding.s) :  ProcedureReturn JwsSetMacKey(obj, index, key, encoding) :  EndProcedure
  Procedure.l ckSetMacKeyBd(obj.i, index.l, key.i) :  ProcedureReturn JwsSetMacKeyBd(obj, index, key) :  EndProcedure
  Procedure.l ckSetPayload(obj.i, payload.s, charset.s, includeBom.l) :  ProcedureReturn JwsSetPayload(obj, payload, charset, includeBom) :  EndProcedure
  Procedure.l ckSetPayloadBd(obj.i, binData.i) :  ProcedureReturn JwsSetPayloadBd(obj, binData) :  EndProcedure
  Procedure.l ckSetPayloadSb(obj.i, sbPayload.i, charset.s, includeBom.l) :  ProcedureReturn JwsSetPayloadSb(obj, sbPayload, charset, includeBom) :  EndProcedure
  Procedure.l ckSetPrivateKey(obj.i, index.l, privKey.i) :  ProcedureReturn JwsSetPrivateKey(obj, index, privKey) :  EndProcedure
  Procedure.l ckSetProtectedHeader(obj.i, index.l, json.i) :  ProcedureReturn JwsSetProtectedHeader(obj, index, json) :  EndProcedure
  Procedure.l ckSetPublicKey(obj.i, index.l, pubKey.i) :  ProcedureReturn JwsSetPublicKey(obj, index, pubKey) :  EndProcedure
  Procedure.l ckSetUnprotectedHeader(obj.i, index.l, json.i) :  ProcedureReturn JwsSetUnprotectedHeader(obj, index, json) :  EndProcedure
  Procedure.l ckValidate(obj.i, index.l) :  ProcedureReturn JwsValidate(obj, index) :  EndProcedure
EndModule

