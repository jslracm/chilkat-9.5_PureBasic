DeclareModule CkJwt
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAutoCompact(obj.i)
  Declare setCkAutoCompact(obj.i, value.l)
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
  Declare.s ckCreateJwt(obj.i, header.s, payload.s, password.s)
  Declare.s ckCreateJwtPk(obj.i, header.s, payload.s, key.i)
  Declare.l ckGenNumericDate(obj.i, numSecOffset.l)
  Declare.s ckGetHeader(obj.i, token.s)
  Declare.s ckGetPayload(obj.i, token.s)
  Declare.l ckIsTimeValid(obj.i, jwt.s, leeway.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckVerifyJwt(obj.i, token.s, password.s)
  Declare.l ckVerifyJwtPk(obj.i, token.s, key.i)
EndDeclareModule

Module CkJwt
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.i CkJwtCreate()
  PrototypeC CkJwtDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJwtLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJwtLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJwtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJwtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJwtLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JwtCreate.CkJwtCreate = GetFunction(CkJwtLibId,"CkJwtU_CreateW")
  Global JwtDispose.CkJwtDispose = GetFunction(CkJwtLibId,"CkJwtU_DisposeW")
  Global JwtAutoCompact.cklPropGet = GetFunction(CkJwtLibId,"CkJwtU_getAutoCompactW")
  Global JwtPSetAutoCompact.cklPropSet = GetFunction(CkJwtLibId,"CkJwtU_putAutoCompactW")
  Global JwtDebugLogFilePath.cksPropGet = GetFunction(CkJwtLibId,"CkJwtU_debugLogFilePathW")
  Global JwtPSetDebugLogFilePath.cksPropSet = GetFunction(CkJwtLibId,"CkJwtU_putDebugLogFilePathW")
  Global JwtLastErrorHtml.cksPropGet = GetFunction(CkJwtLibId,"CkJwtU_lastErrorHtmlW")
  Global JwtLastErrorText.cksPropGet = GetFunction(CkJwtLibId,"CkJwtU_lastErrorTextW")
  Global JwtLastErrorXml.cksPropGet = GetFunction(CkJwtLibId,"CkJwtU_lastErrorXmlW")
  Global JwtLastMethodSuccess.cklPropGet = GetFunction(CkJwtLibId,"CkJwtU_getLastMethodSuccessW")
  Global JwtPSetLastMethodSuccess.cklPropSet = GetFunction(CkJwtLibId,"CkJwtU_putLastMethodSuccessW")
  Global JwtVerboseLogging.cklPropGet = GetFunction(CkJwtLibId,"CkJwtU_getVerboseLoggingW")
  Global JwtPSetVerboseLogging.cklPropSet = GetFunction(CkJwtLibId,"CkJwtU_putVerboseLoggingW")
  Global JwtVersion.cksPropGet = GetFunction(CkJwtLibId,"CkJwtU_versionW")
  Global JwtCreateJwt.cklMsss = GetFunction(CkJwtLibId,"CkJwtU_createJwtW")
  Global JwtCreateJwtPk.cklMssi = GetFunction(CkJwtLibId,"CkJwtU_createJwtPkW")
  Global JwtGenNumericDate.cklMl = GetFunction(CkJwtLibId,"CkJwtU_GenNumericDateW")
  Global JwtGetHeader.cklMs = GetFunction(CkJwtLibId,"CkJwtU_getHeaderW")
  Global JwtGetPayload.cklMs = GetFunction(CkJwtLibId,"CkJwtU_getPayloadW")
  Global JwtIsTimeValid.cklMsl = GetFunction(CkJwtLibId,"CkJwtU_IsTimeValidW")
  Global JwtSaveLastError.cklMs = GetFunction(CkJwtLibId,"CkJwtU_SaveLastErrorW")
  Global JwtVerifyJwt.cklMss = GetFunction(CkJwtLibId,"CkJwtU_VerifyJwtW")
  Global JwtVerifyJwtPk.cklMsi = GetFunction(CkJwtLibId,"CkJwtU_VerifyJwtPkW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JwtCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JwtDispose(obj) : EndProcedure
  Procedure.l ckAutoCompact(obj.i) : ProcedureReturn JwtAutoCompact(obj) : EndProcedure
  Procedure setCkAutoCompact(obj.i, value.l) : ProcedureReturn JwtPSetAutoCompact(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JwtDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JwtPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JwtLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JwtLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JwtLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JwtLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JwtPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JwtVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JwtPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JwtVersion(obj)) : EndProcedure
  Procedure.s ckCreateJwt(obj.i, header.s, payload.s, password.s) :  ProcedureReturn PeekS(JwtCreateJwt(obj, header, payload, password)) :  EndProcedure
  Procedure.s ckCreateJwtPk(obj.i, header.s, payload.s, key.i) :  ProcedureReturn PeekS(JwtCreateJwtPk(obj, header, payload, key)) :  EndProcedure
  Procedure.l ckGenNumericDate(obj.i, numSecOffset.l) :  ProcedureReturn JwtGenNumericDate(obj, numSecOffset) :  EndProcedure
  Procedure.s ckGetHeader(obj.i, token.s) :  ProcedureReturn PeekS(JwtGetHeader(obj, token)) :  EndProcedure
  Procedure.s ckGetPayload(obj.i, token.s) :  ProcedureReturn PeekS(JwtGetPayload(obj, token)) :  EndProcedure
  Procedure.l ckIsTimeValid(obj.i, jwt.s, leeway.l) :  ProcedureReturn JwtIsTimeValid(obj, jwt, leeway) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JwtSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckVerifyJwt(obj.i, token.s, password.s) :  ProcedureReturn JwtVerifyJwt(obj, token, password) :  EndProcedure
  Procedure.l ckVerifyJwtPk(obj.i, token.s, key.i) :  ProcedureReturn JwtVerifyJwtPk(obj, token, key) :  EndProcedure
EndModule

