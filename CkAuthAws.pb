DeclareModule CkAuthAws
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAccessKey(obj.i)
  Declare setCkAccessKey(obj.i, value.s)
  Declare.s ckCanonicalizedResourceV2(obj.i)
  Declare setCkCanonicalizedResourceV2(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckPrecomputedMd5(obj.i)
  Declare setCkPrecomputedMd5(obj.i, value.s)
  Declare.s ckPrecomputedSha256(obj.i)
  Declare setCkPrecomputedSha256(obj.i, value.s)
  Declare.s ckRegion(obj.i)
  Declare setCkRegion(obj.i, value.s)
  Declare.s ckSecretKey(obj.i)
  Declare setCkSecretKey(obj.i, value.s)
  Declare.s ckServiceName(obj.i)
  Declare setCkServiceName(obj.i, value.s)
  Declare.l ckSignatureVersion(obj.i)
  Declare setCkSignatureVersion(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckGenPresignedUrl(obj.i, httpVerb.s, useHttps.l, domain.s, path.s, numSecondsValid.l, awsService.s)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkAuthAws
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMslssls(obj.i, arg1.s, arg2.l, arg3.s, arg4.s, arg5.l, arg6.s)
  PrototypeC.i CkAuthAwsCreate()
  PrototypeC CkAuthAwsDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAwsLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAuthAwsLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAuthAwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAuthAwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAuthAwsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AuthAwsCreate.CkAuthAwsCreate = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_CreateW")
  Global AuthAwsDispose.CkAuthAwsDispose = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_DisposeW")
  Global AuthAwsAccessKey.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_accessKeyW")
  Global AuthAwsPSetAccessKey.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putAccessKeyW")
  Global AuthAwsCanonicalizedResourceV2.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_canonicalizedResourceV2W")
  Global AuthAwsPSetCanonicalizedResourceV2.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putCanonicalizedResourceV2W")
  Global AuthAwsDebugLogFilePath.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_debugLogFilePathW")
  Global AuthAwsPSetDebugLogFilePath.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putDebugLogFilePathW")
  Global AuthAwsLastErrorHtml.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_lastErrorHtmlW")
  Global AuthAwsLastErrorText.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_lastErrorTextW")
  Global AuthAwsLastErrorXml.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_lastErrorXmlW")
  Global AuthAwsLastMethodSuccess.cklPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_getLastMethodSuccessW")
  Global AuthAwsPSetLastMethodSuccess.cklPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putLastMethodSuccessW")
  Global AuthAwsPrecomputedMd5.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_precomputedMd5W")
  Global AuthAwsPSetPrecomputedMd5.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putPrecomputedMd5W")
  Global AuthAwsPrecomputedSha256.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_precomputedSha256W")
  Global AuthAwsPSetPrecomputedSha256.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putPrecomputedSha256W")
  Global AuthAwsRegion.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_regionW")
  Global AuthAwsPSetRegion.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putRegionW")
  Global AuthAwsSecretKey.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_secretKeyW")
  Global AuthAwsPSetSecretKey.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putSecretKeyW")
  Global AuthAwsServiceName.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_serviceNameW")
  Global AuthAwsPSetServiceName.cksPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putServiceNameW")
  Global AuthAwsSignatureVersion.cklPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_getSignatureVersionW")
  Global AuthAwsPSetSignatureVersion.cklPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putSignatureVersionW")
  Global AuthAwsVerboseLogging.cklPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_getVerboseLoggingW")
  Global AuthAwsPSetVerboseLogging.cklPropSet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_putVerboseLoggingW")
  Global AuthAwsVersion.cksPropGet = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_versionW")
  Global AuthAwsGenPresignedUrl.cklMslssls = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_genPresignedUrlW")
  Global AuthAwsSaveLastError.cklMs = GetFunction(CkAuthAwsLibId,"CkAuthAwsU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AuthAwsCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AuthAwsDispose(obj) : EndProcedure
  Procedure.s ckAccessKey(obj.i) : ProcedureReturn PeekS(AuthAwsAccessKey(obj)) : EndProcedure
  Procedure setCkAccessKey(obj.i, value.s) : ProcedureReturn AuthAwsPSetAccessKey(obj,value) : EndProcedure
  Procedure.s ckCanonicalizedResourceV2(obj.i) : ProcedureReturn PeekS(AuthAwsCanonicalizedResourceV2(obj)) : EndProcedure
  Procedure setCkCanonicalizedResourceV2(obj.i, value.s) : ProcedureReturn AuthAwsPSetCanonicalizedResourceV2(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AuthAwsDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AuthAwsPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AuthAwsLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AuthAwsLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AuthAwsLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AuthAwsLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AuthAwsPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckPrecomputedMd5(obj.i) : ProcedureReturn PeekS(AuthAwsPrecomputedMd5(obj)) : EndProcedure
  Procedure setCkPrecomputedMd5(obj.i, value.s) : ProcedureReturn AuthAwsPSetPrecomputedMd5(obj,value) : EndProcedure
  Procedure.s ckPrecomputedSha256(obj.i) : ProcedureReturn PeekS(AuthAwsPrecomputedSha256(obj)) : EndProcedure
  Procedure setCkPrecomputedSha256(obj.i, value.s) : ProcedureReturn AuthAwsPSetPrecomputedSha256(obj,value) : EndProcedure
  Procedure.s ckRegion(obj.i) : ProcedureReturn PeekS(AuthAwsRegion(obj)) : EndProcedure
  Procedure setCkRegion(obj.i, value.s) : ProcedureReturn AuthAwsPSetRegion(obj,value) : EndProcedure
  Procedure.s ckSecretKey(obj.i) : ProcedureReturn PeekS(AuthAwsSecretKey(obj)) : EndProcedure
  Procedure setCkSecretKey(obj.i, value.s) : ProcedureReturn AuthAwsPSetSecretKey(obj,value) : EndProcedure
  Procedure.s ckServiceName(obj.i) : ProcedureReturn PeekS(AuthAwsServiceName(obj)) : EndProcedure
  Procedure setCkServiceName(obj.i, value.s) : ProcedureReturn AuthAwsPSetServiceName(obj,value) : EndProcedure
  Procedure.l ckSignatureVersion(obj.i) : ProcedureReturn AuthAwsSignatureVersion(obj) : EndProcedure
  Procedure setCkSignatureVersion(obj.i, value.l) : ProcedureReturn AuthAwsPSetSignatureVersion(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AuthAwsVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AuthAwsPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AuthAwsVersion(obj)) : EndProcedure
  Procedure.s ckGenPresignedUrl(obj.i, httpVerb.s, useHttps.l, domain.s, path.s, numSecondsValid.l, awsService.s) :  ProcedureReturn PeekS(AuthAwsGenPresignedUrl(obj, httpVerb, useHttps, domain, path, numSecondsValid, awsService)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AuthAwsSaveLastError(obj, path) :  EndProcedure
EndModule

