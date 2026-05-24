DeclareModule CkPdf
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
  Declare.l ckNumPages(obj.i)
  Declare.l ckNumSignatures(obj.i)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddSigningCert(obj.i, cert.i)
  Declare.l ckGetDss(obj.i, json.i)
  Declare.l ckLoadBd(obj.i, pdfData.i)
  Declare.l ckLoadFile(obj.i, filePath.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetHttpObj(obj.i, http.i)
  Declare.l ckSetSignatureJpeg(obj.i, jpgData.i)
  Declare.l ckSetSigningCert(obj.i, cert.i)
  Declare.l ckSetSigningCert2(obj.i, cert.i, privateKey.i)
  Declare.l ckSignPdf(obj.i, jsonOptions.i, outFilePath.s)
  Declare.i ckSignPdfAsync(obj.i, jsonOptions.i, outFilePath.s)
  Declare.l ckVerifySignature(obj.i, index.l, sigInfo.i)
EndDeclareModule

Module CkPdf
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC.i CkPdfCreate()
  PrototypeC CkPdfDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPdfLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPdfLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPdfLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPdfLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPdfLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PdfCreate.CkPdfCreate = GetFunction(CkPdfLibId,"CkPdfU_CreateW")
  Global PdfDispose.CkPdfDispose = GetFunction(CkPdfLibId,"CkPdfU_DisposeW")
  Global PdfDebugLogFilePath.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_debugLogFilePathW")
  Global PdfPSetDebugLogFilePath.cksPropSet = GetFunction(CkPdfLibId,"CkPdfU_putDebugLogFilePathW")
  Global PdfLastErrorHtml.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_lastErrorHtmlW")
  Global PdfLastErrorText.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_lastErrorTextW")
  Global PdfLastErrorXml.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_lastErrorXmlW")
  Global PdfLastMethodSuccess.cklPropGet = GetFunction(CkPdfLibId,"CkPdfU_getLastMethodSuccessW")
  Global PdfPSetLastMethodSuccess.cklPropSet = GetFunction(CkPdfLibId,"CkPdfU_putLastMethodSuccessW")
  Global PdfNumPages.cklPropGet = GetFunction(CkPdfLibId,"CkPdfU_getNumPagesW")
  Global PdfNumSignatures.cklPropGet = GetFunction(CkPdfLibId,"CkPdfU_getNumSignaturesW")
  Global PdfUncommonOptions.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_uncommonOptionsW")
  Global PdfPSetUncommonOptions.cksPropSet = GetFunction(CkPdfLibId,"CkPdfU_putUncommonOptionsW")
  Global PdfVerboseLogging.cklPropGet = GetFunction(CkPdfLibId,"CkPdfU_getVerboseLoggingW")
  Global PdfPSetVerboseLogging.cklPropSet = GetFunction(CkPdfLibId,"CkPdfU_putVerboseLoggingW")
  Global PdfVersion.cksPropGet = GetFunction(CkPdfLibId,"CkPdfU_versionW")
  Global PdfAddSigningCert.cklMi = GetFunction(CkPdfLibId,"CkPdfU_AddSigningCertW")
  Global PdfGetDss.cklMi = GetFunction(CkPdfLibId,"CkPdfU_GetDssW")
  Global PdfLoadBd.cklMi = GetFunction(CkPdfLibId,"CkPdfU_LoadBdW")
  Global PdfLoadFile.cklMs = GetFunction(CkPdfLibId,"CkPdfU_LoadFileW")
  Global PdfSaveLastError.cklMs = GetFunction(CkPdfLibId,"CkPdfU_SaveLastErrorW")
  Global PdfSetHttpObj.ckvMi = GetFunction(CkPdfLibId,"CkPdfU_SetHttpObjW")
  Global PdfSetSignatureJpeg.cklMi = GetFunction(CkPdfLibId,"CkPdfU_SetSignatureJpegW")
  Global PdfSetSigningCert.cklMi = GetFunction(CkPdfLibId,"CkPdfU_SetSigningCertW")
  Global PdfSetSigningCert2.cklMii = GetFunction(CkPdfLibId,"CkPdfU_SetSigningCert2W")
  Global PdfSignPdf.cklMis = GetFunction(CkPdfLibId,"CkPdfU_SignPdfW")
  Global PdfSignPdfAsync.ckiMis = GetFunction(CkPdfLibId,"CkPdfU_SignPdfAsyncW")
  Global PdfVerifySignature.cklMli = GetFunction(CkPdfLibId,"CkPdfU_VerifySignatureW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PdfCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PdfDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PdfDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PdfPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PdfLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PdfLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PdfLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PdfLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PdfPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumPages(obj.i) : ProcedureReturn PdfNumPages(obj) : EndProcedure
  Procedure.l ckNumSignatures(obj.i) : ProcedureReturn PdfNumSignatures(obj) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(PdfUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn PdfPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PdfVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PdfPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PdfVersion(obj)) : EndProcedure
  Procedure.l ckAddSigningCert(obj.i, cert.i) :  ProcedureReturn PdfAddSigningCert(obj, cert) :  EndProcedure
  Procedure.l ckGetDss(obj.i, json.i) :  ProcedureReturn PdfGetDss(obj, json) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, pdfData.i) :  ProcedureReturn PdfLoadBd(obj, pdfData) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, filePath.s) :  ProcedureReturn PdfLoadFile(obj, filePath) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PdfSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetHttpObj(obj.i, http.i) :  ProcedureReturn PdfSetHttpObj(obj, http) :  EndProcedure
  Procedure.l ckSetSignatureJpeg(obj.i, jpgData.i) :  ProcedureReturn PdfSetSignatureJpeg(obj, jpgData) :  EndProcedure
  Procedure.l ckSetSigningCert(obj.i, cert.i) :  ProcedureReturn PdfSetSigningCert(obj, cert) :  EndProcedure
  Procedure.l ckSetSigningCert2(obj.i, cert.i, privateKey.i) :  ProcedureReturn PdfSetSigningCert2(obj, cert, privateKey) :  EndProcedure
  Procedure.l ckSignPdf(obj.i, jsonOptions.i, outFilePath.s) :  ProcedureReturn PdfSignPdf(obj, jsonOptions, outFilePath) :  EndProcedure
  Procedure.i ckSignPdfAsync(obj.i, jsonOptions.i, outFilePath.s) :  ProcedureReturn PdfSignPdfAsync(obj, jsonOptions, outFilePath) :  EndProcedure
  Procedure.l ckVerifySignature(obj.i, index.l, sigInfo.i) :  ProcedureReturn PdfVerifySignature(obj, index, sigInfo) :  EndProcedure
EndModule

