DeclareModule CkHttpRequest
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBoundary(obj.i)
  Declare setCkBoundary(obj.i, value.s)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckContentType(obj.i)
  Declare setCkContentType(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEntireHeader(obj.i)
  Declare setCkEntireHeader(obj.i, value.s)
  Declare.s ckHttpVerb(obj.i)
  Declare setCkHttpVerb(obj.i, value.s)
  Declare.s ckHttpVersion(obj.i)
  Declare setCkHttpVersion(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumHeaderFields(obj.i)
  Declare.l ckNumParams(obj.i)
  Declare.s ckPath(obj.i)
  Declare setCkPath(obj.i, value.s)
  Declare.l ckSendCharset(obj.i)
  Declare setCkSendCharset(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddBdForUpload(obj.i, name.s, remoteFilename.s, byteData.i, contentType.s)
  Declare.l ckAddFileForUpload(obj.i, name.s, filePath.s)
  Declare.l ckAddFileForUpload2(obj.i, name.s, filePath.s, contentType.s)
  Declare ckAddHeader(obj.i, name.s, value.s)
  Declare.l ckAddMwsSignature(obj.i, domain.s, mwsSecretKey.s)
  Declare ckAddParam(obj.i, name.s, value.s)
  Declare.l ckAddStringForUpload(obj.i, name.s, filename.s, strData.s, charset.s)
  Declare.l ckAddStringForUpload2(obj.i, name.s, filename.s, strData.s, charset.s, contentType.s)
  Declare.l ckAddSubHeader(obj.i, index.l, name.s, value.s)
  Declare.l ckGenerateRequestFile(obj.i, path.s)
  Declare.s ckGenerateRequestText(obj.i)
  Declare.s ckGetHeaderField(obj.i, name.s)
  Declare.s ckGetHeaderName(obj.i, index.l)
  Declare.s ckGetHeaderValue(obj.i, index.l)
  Declare.s ckGetParam(obj.i, name.s)
  Declare.s ckGetParamName(obj.i, index.l)
  Declare.s ckGetParamValue(obj.i, index.l)
  Declare.s ckGetUrlEncodedParams(obj.i)
  Declare.l ckLoadBodyFromBd(obj.i, requestBody.i)
  Declare.l ckLoadBodyFromFile(obj.i, filePath.s)
  Declare.l ckLoadBodyFromSb(obj.i, requestBody.i, charset.s)
  Declare.l ckLoadBodyFromString(obj.i, bodyStr.s, charset.s)
  Declare ckRemoveAllParams(obj.i)
  Declare.l ckRemoveHeader(obj.i, name.s)
  Declare ckRemoveParam(obj.i, name.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetFromUrl(obj.i, url.s)
  Declare.l ckStreamBodyFromFile(obj.i, filePath.s)
  Declare.l ckStreamChunkFromFile(obj.i, path.s, offset.s, numBytes.s)
  Declare ckUseGet(obj.i)
  Declare ckUseHead(obj.i)
  Declare ckUsePost(obj.i)
  Declare ckUsePostMultipartForm(obj.i)
  Declare ckUsePut(obj.i)
  Declare ckUseUpload(obj.i)
  Declare ckUseUploadPut(obj.i)
  Declare ckUseXmlHttp(obj.i, xmlBody.s)
EndDeclareModule

Module CkHttpRequest
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMssis(obj.i, arg1.s, arg2.s, arg3.i, arg4.s)
  PrototypeC.l cklMsssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s, arg5.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkHttpRequestCreate()
  PrototypeC CkHttpRequestDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpRequestLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHttpRequestLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHttpRequestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHttpRequestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHttpRequestLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HttpRequestCreate.CkHttpRequestCreate = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_CreateW")
  Global HttpRequestDispose.CkHttpRequestDispose = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_DisposeW")
  Global HttpRequestBoundary.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_boundaryW")
  Global HttpRequestPSetBoundary.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putBoundaryW")
  Global HttpRequestCharset.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_charsetW")
  Global HttpRequestPSetCharset.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putCharsetW")
  Global HttpRequestContentType.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_contentTypeW")
  Global HttpRequestPSetContentType.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putContentTypeW")
  Global HttpRequestDebugLogFilePath.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_debugLogFilePathW")
  Global HttpRequestPSetDebugLogFilePath.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putDebugLogFilePathW")
  Global HttpRequestEntireHeader.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_entireHeaderW")
  Global HttpRequestPSetEntireHeader.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putEntireHeaderW")
  Global HttpRequestHttpVerb.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_httpVerbW")
  Global HttpRequestPSetHttpVerb.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putHttpVerbW")
  Global HttpRequestHttpVersion.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_httpVersionW")
  Global HttpRequestPSetHttpVersion.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putHttpVersionW")
  Global HttpRequestLastErrorHtml.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_lastErrorHtmlW")
  Global HttpRequestLastErrorText.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_lastErrorTextW")
  Global HttpRequestLastErrorXml.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_lastErrorXmlW")
  Global HttpRequestLastMethodSuccess.cklPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getLastMethodSuccessW")
  Global HttpRequestPSetLastMethodSuccess.cklPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putLastMethodSuccessW")
  Global HttpRequestNumHeaderFields.cklPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getNumHeaderFieldsW")
  Global HttpRequestNumParams.cklPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getNumParamsW")
  Global HttpRequestPath.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_pathW")
  Global HttpRequestPSetPath.cksPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putPathW")
  Global HttpRequestSendCharset.cklPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getSendCharsetW")
  Global HttpRequestPSetSendCharset.cklPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putSendCharsetW")
  Global HttpRequestVerboseLogging.cklPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getVerboseLoggingW")
  Global HttpRequestPSetVerboseLogging.cklPropSet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_putVerboseLoggingW")
  Global HttpRequestVersion.cksPropGet = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_versionW")
  Global HttpRequestAddBdForUpload.cklMssis = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddBdForUploadW")
  Global HttpRequestAddFileForUpload.cklMss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddFileForUploadW")
  Global HttpRequestAddFileForUpload2.cklMsss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddFileForUpload2W")
  Global HttpRequestAddHeader.ckvMss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddHeaderW")
  Global HttpRequestAddMwsSignature.cklMss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddMwsSignatureW")
  Global HttpRequestAddParam.ckvMss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddParamW")
  Global HttpRequestAddStringForUpload.cklMssss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddStringForUploadW")
  Global HttpRequestAddStringForUpload2.cklMsssss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddStringForUpload2W")
  Global HttpRequestAddSubHeader.cklMlss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_AddSubHeaderW")
  Global HttpRequestGenerateRequestFile.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_GenerateRequestFileW")
  Global HttpRequestGenerateRequestText.cklM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_generateRequestTextW")
  Global HttpRequestGetHeaderField.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getHeaderFieldW")
  Global HttpRequestGetHeaderName.cklMl = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getHeaderNameW")
  Global HttpRequestGetHeaderValue.cklMl = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getHeaderValueW")
  Global HttpRequestGetParam.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getParamW")
  Global HttpRequestGetParamName.cklMl = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getParamNameW")
  Global HttpRequestGetParamValue.cklMl = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getParamValueW")
  Global HttpRequestGetUrlEncodedParams.cklM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_getUrlEncodedParamsW")
  Global HttpRequestLoadBodyFromBd.cklMi = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_LoadBodyFromBdW")
  Global HttpRequestLoadBodyFromFile.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_LoadBodyFromFileW")
  Global HttpRequestLoadBodyFromSb.cklMis = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_LoadBodyFromSbW")
  Global HttpRequestLoadBodyFromString.cklMss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_LoadBodyFromStringW")
  Global HttpRequestRemoveAllParams.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_RemoveAllParamsW")
  Global HttpRequestRemoveHeader.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_RemoveHeaderW")
  Global HttpRequestRemoveParam.ckvMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_RemoveParamW")
  Global HttpRequestSaveLastError.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_SaveLastErrorW")
  Global HttpRequestSetFromUrl.ckvMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_SetFromUrlW")
  Global HttpRequestStreamBodyFromFile.cklMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_StreamBodyFromFileW")
  Global HttpRequestStreamChunkFromFile.cklMsss = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_StreamChunkFromFileW")
  Global HttpRequestUseGet.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UseGetW")
  Global HttpRequestUseHead.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UseHeadW")
  Global HttpRequestUsePost.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UsePostW")
  Global HttpRequestUsePostMultipartForm.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UsePostMultipartFormW")
  Global HttpRequestUsePut.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UsePutW")
  Global HttpRequestUseUpload.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UseUploadW")
  Global HttpRequestUseUploadPut.ckvM = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UseUploadPutW")
  Global HttpRequestUseXmlHttp.ckvMs = GetFunction(CkHttpRequestLibId,"CkHttpRequestU_UseXmlHttpW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HttpRequestCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HttpRequestDispose(obj) : EndProcedure
  Procedure.s ckBoundary(obj.i) : ProcedureReturn PeekS(HttpRequestBoundary(obj)) : EndProcedure
  Procedure setCkBoundary(obj.i, value.s) : ProcedureReturn HttpRequestPSetBoundary(obj,value) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(HttpRequestCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn HttpRequestPSetCharset(obj,value) : EndProcedure
  Procedure.s ckContentType(obj.i) : ProcedureReturn PeekS(HttpRequestContentType(obj)) : EndProcedure
  Procedure setCkContentType(obj.i, value.s) : ProcedureReturn HttpRequestPSetContentType(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(HttpRequestDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn HttpRequestPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEntireHeader(obj.i) : ProcedureReturn PeekS(HttpRequestEntireHeader(obj)) : EndProcedure
  Procedure setCkEntireHeader(obj.i, value.s) : ProcedureReturn HttpRequestPSetEntireHeader(obj,value) : EndProcedure
  Procedure.s ckHttpVerb(obj.i) : ProcedureReturn PeekS(HttpRequestHttpVerb(obj)) : EndProcedure
  Procedure setCkHttpVerb(obj.i, value.s) : ProcedureReturn HttpRequestPSetHttpVerb(obj,value) : EndProcedure
  Procedure.s ckHttpVersion(obj.i) : ProcedureReturn PeekS(HttpRequestHttpVersion(obj)) : EndProcedure
  Procedure setCkHttpVersion(obj.i, value.s) : ProcedureReturn HttpRequestPSetHttpVersion(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(HttpRequestLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(HttpRequestLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(HttpRequestLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HttpRequestLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HttpRequestPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumHeaderFields(obj.i) : ProcedureReturn HttpRequestNumHeaderFields(obj) : EndProcedure
  Procedure.l ckNumParams(obj.i) : ProcedureReturn HttpRequestNumParams(obj) : EndProcedure
  Procedure.s ckPath(obj.i) : ProcedureReturn PeekS(HttpRequestPath(obj)) : EndProcedure
  Procedure setCkPath(obj.i, value.s) : ProcedureReturn HttpRequestPSetPath(obj,value) : EndProcedure
  Procedure.l ckSendCharset(obj.i) : ProcedureReturn HttpRequestSendCharset(obj) : EndProcedure
  Procedure setCkSendCharset(obj.i, value.l) : ProcedureReturn HttpRequestPSetSendCharset(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn HttpRequestVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn HttpRequestPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(HttpRequestVersion(obj)) : EndProcedure
  Procedure.l ckAddBdForUpload(obj.i, name.s, remoteFilename.s, byteData.i, contentType.s) :  ProcedureReturn HttpRequestAddBdForUpload(obj, name, remoteFilename, byteData, contentType) :  EndProcedure
  Procedure.l ckAddFileForUpload(obj.i, name.s, filePath.s) :  ProcedureReturn HttpRequestAddFileForUpload(obj, name, filePath) :  EndProcedure
  Procedure.l ckAddFileForUpload2(obj.i, name.s, filePath.s, contentType.s) :  ProcedureReturn HttpRequestAddFileForUpload2(obj, name, filePath, contentType) :  EndProcedure
  Procedure ckAddHeader(obj.i, name.s, value.s) :  ProcedureReturn HttpRequestAddHeader(obj, name, value) :  EndProcedure
  Procedure.l ckAddMwsSignature(obj.i, domain.s, mwsSecretKey.s) :  ProcedureReturn HttpRequestAddMwsSignature(obj, domain, mwsSecretKey) :  EndProcedure
  Procedure ckAddParam(obj.i, name.s, value.s) :  ProcedureReturn HttpRequestAddParam(obj, name, value) :  EndProcedure
  Procedure.l ckAddStringForUpload(obj.i, name.s, filename.s, strData.s, charset.s) :  ProcedureReturn HttpRequestAddStringForUpload(obj, name, filename, strData, charset) :  EndProcedure
  Procedure.l ckAddStringForUpload2(obj.i, name.s, filename.s, strData.s, charset.s, contentType.s) :  ProcedureReturn HttpRequestAddStringForUpload2(obj, name, filename, strData, charset, contentType) :  EndProcedure
  Procedure.l ckAddSubHeader(obj.i, index.l, name.s, value.s) :  ProcedureReturn HttpRequestAddSubHeader(obj, index, name, value) :  EndProcedure
  Procedure.l ckGenerateRequestFile(obj.i, path.s) :  ProcedureReturn HttpRequestGenerateRequestFile(obj, path) :  EndProcedure
  Procedure.s ckGenerateRequestText(obj.i) :  ProcedureReturn PeekS(HttpRequestGenerateRequestText(obj)) :  EndProcedure
  Procedure.s ckGetHeaderField(obj.i, name.s) :  ProcedureReturn PeekS(HttpRequestGetHeaderField(obj, name)) :  EndProcedure
  Procedure.s ckGetHeaderName(obj.i, index.l) :  ProcedureReturn PeekS(HttpRequestGetHeaderName(obj, index)) :  EndProcedure
  Procedure.s ckGetHeaderValue(obj.i, index.l) :  ProcedureReturn PeekS(HttpRequestGetHeaderValue(obj, index)) :  EndProcedure
  Procedure.s ckGetParam(obj.i, name.s) :  ProcedureReturn PeekS(HttpRequestGetParam(obj, name)) :  EndProcedure
  Procedure.s ckGetParamName(obj.i, index.l) :  ProcedureReturn PeekS(HttpRequestGetParamName(obj, index)) :  EndProcedure
  Procedure.s ckGetParamValue(obj.i, index.l) :  ProcedureReturn PeekS(HttpRequestGetParamValue(obj, index)) :  EndProcedure
  Procedure.s ckGetUrlEncodedParams(obj.i) :  ProcedureReturn PeekS(HttpRequestGetUrlEncodedParams(obj)) :  EndProcedure
  Procedure.l ckLoadBodyFromBd(obj.i, requestBody.i) :  ProcedureReturn HttpRequestLoadBodyFromBd(obj, requestBody) :  EndProcedure
  Procedure.l ckLoadBodyFromFile(obj.i, filePath.s) :  ProcedureReturn HttpRequestLoadBodyFromFile(obj, filePath) :  EndProcedure
  Procedure.l ckLoadBodyFromSb(obj.i, requestBody.i, charset.s) :  ProcedureReturn HttpRequestLoadBodyFromSb(obj, requestBody, charset) :  EndProcedure
  Procedure.l ckLoadBodyFromString(obj.i, bodyStr.s, charset.s) :  ProcedureReturn HttpRequestLoadBodyFromString(obj, bodyStr, charset) :  EndProcedure
  Procedure ckRemoveAllParams(obj.i) :  ProcedureReturn HttpRequestRemoveAllParams(obj) :  EndProcedure
  Procedure.l ckRemoveHeader(obj.i, name.s) :  ProcedureReturn HttpRequestRemoveHeader(obj, name) :  EndProcedure
  Procedure ckRemoveParam(obj.i, name.s) :  ProcedureReturn HttpRequestRemoveParam(obj, name) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn HttpRequestSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetFromUrl(obj.i, url.s) :  ProcedureReturn HttpRequestSetFromUrl(obj, url) :  EndProcedure
  Procedure.l ckStreamBodyFromFile(obj.i, filePath.s) :  ProcedureReturn HttpRequestStreamBodyFromFile(obj, filePath) :  EndProcedure
  Procedure.l ckStreamChunkFromFile(obj.i, path.s, offset.s, numBytes.s) :  ProcedureReturn HttpRequestStreamChunkFromFile(obj, path, offset, numBytes) :  EndProcedure
  Procedure ckUseGet(obj.i) :  ProcedureReturn HttpRequestUseGet(obj) :  EndProcedure
  Procedure ckUseHead(obj.i) :  ProcedureReturn HttpRequestUseHead(obj) :  EndProcedure
  Procedure ckUsePost(obj.i) :  ProcedureReturn HttpRequestUsePost(obj) :  EndProcedure
  Procedure ckUsePostMultipartForm(obj.i) :  ProcedureReturn HttpRequestUsePostMultipartForm(obj) :  EndProcedure
  Procedure ckUsePut(obj.i) :  ProcedureReturn HttpRequestUsePut(obj) :  EndProcedure
  Procedure ckUseUpload(obj.i) :  ProcedureReturn HttpRequestUseUpload(obj) :  EndProcedure
  Procedure ckUseUploadPut(obj.i) :  ProcedureReturn HttpRequestUseUploadPut(obj) :  EndProcedure
  Procedure ckUseXmlHttp(obj.i, xmlBody.s) :  ProcedureReturn HttpRequestUseXmlHttp(obj, xmlBody) :  EndProcedure
EndModule

