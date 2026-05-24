DeclareModule CkHttpResponse
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBodyQP(obj.i)
  Declare.s ckBodyStr(obj.i)
  Declare.s ckCharset(obj.i)
  Declare.l ckContentLength(obj.i)
  Declare.s ckDateStr(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDomain(obj.i)
  Declare.s ckFinalRedirectUrl(obj.i)
  Declare.s ckFullMime(obj.i)
  Declare.s ckHeader(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumCookies(obj.i)
  Declare.l ckNumHeaderFields(obj.i)
  Declare.l ckStatusCode(obj.i)
  Declare.s ckStatusLine(obj.i)
  Declare.s ckStatusText(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckGetBodyBd(obj.i, binData.i)
  Declare.l ckGetBodySb(obj.i, sb.i)
  Declare.s ckGetCookieDomain(obj.i, index.l)
  Declare.s ckGetCookieExpiresStr(obj.i, index.l)
  Declare.s ckGetCookieName(obj.i, index.l)
  Declare.s ckGetCookiePath(obj.i, index.l)
  Declare.s ckGetCookieValue(obj.i, index.l)
  Declare.s ckGetHeaderField(obj.i, fieldName.s)
  Declare.s ckGetHeaderFieldAttr(obj.i, fieldName.s, attrName.s)
  Declare.s ckGetHeaderName(obj.i, index.l)
  Declare.s ckGetHeaderValue(obj.i, index.l)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckSaveBodyBinary(obj.i, path.s)
  Declare.l ckSaveBodyText(obj.i, bCrlf.l, path.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckUrlEncParamValue(obj.i, encodedParamString.s, paramName.s)
EndDeclareModule

Module CkHttpResponse
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkHttpResponseCreate()
  PrototypeC CkHttpResponseDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpResponseLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHttpResponseLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHttpResponseLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpResponseLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHttpResponseLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HttpResponseCreate.CkHttpResponseCreate = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_CreateW")
  Global HttpResponseDispose.CkHttpResponseDispose = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_DisposeW")
  Global HttpResponseBodyQP.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_bodyQPW")
  Global HttpResponseBodyStr.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_bodyStrW")
  Global HttpResponseCharset.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_charsetW")
  Global HttpResponseContentLength.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getContentLengthW")
  Global HttpResponseDateStr.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_dateStrW")
  Global HttpResponseDebugLogFilePath.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_debugLogFilePathW")
  Global HttpResponsePSetDebugLogFilePath.cksPropSet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_putDebugLogFilePathW")
  Global HttpResponseDomain.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_domainW")
  Global HttpResponseFinalRedirectUrl.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_finalRedirectUrlW")
  Global HttpResponseFullMime.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_fullMimeW")
  Global HttpResponseHeader.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_headerW")
  Global HttpResponseLastErrorHtml.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_lastErrorHtmlW")
  Global HttpResponseLastErrorText.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_lastErrorTextW")
  Global HttpResponseLastErrorXml.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_lastErrorXmlW")
  Global HttpResponseLastMethodSuccess.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getLastMethodSuccessW")
  Global HttpResponsePSetLastMethodSuccess.cklPropSet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_putLastMethodSuccessW")
  Global HttpResponseNumCookies.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getNumCookiesW")
  Global HttpResponseNumHeaderFields.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getNumHeaderFieldsW")
  Global HttpResponseStatusCode.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getStatusCodeW")
  Global HttpResponseStatusLine.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_statusLineW")
  Global HttpResponseStatusText.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_statusTextW")
  Global HttpResponseVerboseLogging.cklPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getVerboseLoggingW")
  Global HttpResponsePSetVerboseLogging.cklPropSet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_putVerboseLoggingW")
  Global HttpResponseVersion.cksPropGet = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_versionW")
  Global HttpResponseGetBodyBd.cklMi = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_GetBodyBdW")
  Global HttpResponseGetBodySb.cklMi = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_GetBodySbW")
  Global HttpResponseGetCookieDomain.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getCookieDomainW")
  Global HttpResponseGetCookieExpiresStr.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getCookieExpiresStrW")
  Global HttpResponseGetCookieName.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getCookieNameW")
  Global HttpResponseGetCookiePath.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getCookiePathW")
  Global HttpResponseGetCookieValue.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getCookieValueW")
  Global HttpResponseGetHeaderField.cklMs = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getHeaderFieldW")
  Global HttpResponseGetHeaderFieldAttr.cklMss = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getHeaderFieldAttrW")
  Global HttpResponseGetHeaderName.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getHeaderNameW")
  Global HttpResponseGetHeaderValue.cklMl = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_getHeaderValueW")
  Global HttpResponseLoadTaskResult.cklMi = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_LoadTaskResultW")
  Global HttpResponseSaveBodyBinary.cklMs = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_SaveBodyBinaryW")
  Global HttpResponseSaveBodyText.cklMls = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_SaveBodyTextW")
  Global HttpResponseSaveLastError.cklMs = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_SaveLastErrorW")
  Global HttpResponseUrlEncParamValue.cklMss = GetFunction(CkHttpResponseLibId,"CkHttpResponseU_urlEncParamValueW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HttpResponseCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HttpResponseDispose(obj) : EndProcedure
  Procedure.s ckBodyQP(obj.i) : ProcedureReturn PeekS(HttpResponseBodyQP(obj)) : EndProcedure
  Procedure.s ckBodyStr(obj.i) : ProcedureReturn PeekS(HttpResponseBodyStr(obj)) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(HttpResponseCharset(obj)) : EndProcedure
  Procedure.l ckContentLength(obj.i) : ProcedureReturn HttpResponseContentLength(obj) : EndProcedure
  Procedure.s ckDateStr(obj.i) : ProcedureReturn PeekS(HttpResponseDateStr(obj)) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(HttpResponseDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn HttpResponsePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDomain(obj.i) : ProcedureReturn PeekS(HttpResponseDomain(obj)) : EndProcedure
  Procedure.s ckFinalRedirectUrl(obj.i) : ProcedureReturn PeekS(HttpResponseFinalRedirectUrl(obj)) : EndProcedure
  Procedure.s ckFullMime(obj.i) : ProcedureReturn PeekS(HttpResponseFullMime(obj)) : EndProcedure
  Procedure.s ckHeader(obj.i) : ProcedureReturn PeekS(HttpResponseHeader(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(HttpResponseLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(HttpResponseLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(HttpResponseLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HttpResponseLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HttpResponsePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCookies(obj.i) : ProcedureReturn HttpResponseNumCookies(obj) : EndProcedure
  Procedure.l ckNumHeaderFields(obj.i) : ProcedureReturn HttpResponseNumHeaderFields(obj) : EndProcedure
  Procedure.l ckStatusCode(obj.i) : ProcedureReturn HttpResponseStatusCode(obj) : EndProcedure
  Procedure.s ckStatusLine(obj.i) : ProcedureReturn PeekS(HttpResponseStatusLine(obj)) : EndProcedure
  Procedure.s ckStatusText(obj.i) : ProcedureReturn PeekS(HttpResponseStatusText(obj)) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn HttpResponseVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn HttpResponsePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(HttpResponseVersion(obj)) : EndProcedure
  Procedure.l ckGetBodyBd(obj.i, binData.i) :  ProcedureReturn HttpResponseGetBodyBd(obj, binData) :  EndProcedure
  Procedure.l ckGetBodySb(obj.i, sb.i) :  ProcedureReturn HttpResponseGetBodySb(obj, sb) :  EndProcedure
  Procedure.s ckGetCookieDomain(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetCookieDomain(obj, index)) :  EndProcedure
  Procedure.s ckGetCookieExpiresStr(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetCookieExpiresStr(obj, index)) :  EndProcedure
  Procedure.s ckGetCookieName(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetCookieName(obj, index)) :  EndProcedure
  Procedure.s ckGetCookiePath(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetCookiePath(obj, index)) :  EndProcedure
  Procedure.s ckGetCookieValue(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetCookieValue(obj, index)) :  EndProcedure
  Procedure.s ckGetHeaderField(obj.i, fieldName.s) :  ProcedureReturn PeekS(HttpResponseGetHeaderField(obj, fieldName)) :  EndProcedure
  Procedure.s ckGetHeaderFieldAttr(obj.i, fieldName.s, attrName.s) :  ProcedureReturn PeekS(HttpResponseGetHeaderFieldAttr(obj, fieldName, attrName)) :  EndProcedure
  Procedure.s ckGetHeaderName(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetHeaderName(obj, index)) :  EndProcedure
  Procedure.s ckGetHeaderValue(obj.i, index.l) :  ProcedureReturn PeekS(HttpResponseGetHeaderValue(obj, index)) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn HttpResponseLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckSaveBodyBinary(obj.i, path.s) :  ProcedureReturn HttpResponseSaveBodyBinary(obj, path) :  EndProcedure
  Procedure.l ckSaveBodyText(obj.i, bCrlf.l, path.s) :  ProcedureReturn HttpResponseSaveBodyText(obj, bCrlf, path) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn HttpResponseSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckUrlEncParamValue(obj.i, encodedParamString.s, paramName.s) :  ProcedureReturn PeekS(HttpResponseUrlEncParamValue(obj, encodedParamString, paramName)) :  EndProcedure
EndModule

