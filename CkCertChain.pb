DeclareModule CkCertChain
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
  Declare.l ckNumCerts(obj.i)
  Declare.l ckNumExpiredCerts(obj.i)
  Declare.l ckReachesRoot(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.i ckGetCert(obj.i, index.l)
  Declare.l ckIsRootTrusted(obj.i, trustedRoots.i)
  Declare.l ckLoadX5C(obj.i, jwk.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckVerifyCertSignatures(obj.i)
EndDeclareModule

Module CkCertChain
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkCertChainCreate()
  PrototypeC CkCertChainDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertChainLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCertChainLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCertChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCertChainLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CertChainCreate.CkCertChainCreate = GetFunction(CkCertChainLibId,"CkCertChainU_CreateW")
  Global CertChainDispose.CkCertChainDispose = GetFunction(CkCertChainLibId,"CkCertChainU_DisposeW")
  Global CertChainDebugLogFilePath.cksPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_debugLogFilePathW")
  Global CertChainPSetDebugLogFilePath.cksPropSet = GetFunction(CkCertChainLibId,"CkCertChainU_putDebugLogFilePathW")
  Global CertChainLastErrorHtml.cksPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_lastErrorHtmlW")
  Global CertChainLastErrorText.cksPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_lastErrorTextW")
  Global CertChainLastErrorXml.cksPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_lastErrorXmlW")
  Global CertChainLastMethodSuccess.cklPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_getLastMethodSuccessW")
  Global CertChainPSetLastMethodSuccess.cklPropSet = GetFunction(CkCertChainLibId,"CkCertChainU_putLastMethodSuccessW")
  Global CertChainNumCerts.cklPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_getNumCertsW")
  Global CertChainNumExpiredCerts.cklPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_getNumExpiredCertsW")
  Global CertChainReachesRoot.cklPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_getReachesRootW")
  Global CertChainVerboseLogging.cklPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_getVerboseLoggingW")
  Global CertChainPSetVerboseLogging.cklPropSet = GetFunction(CkCertChainLibId,"CkCertChainU_putVerboseLoggingW")
  Global CertChainVersion.cksPropGet = GetFunction(CkCertChainLibId,"CkCertChainU_versionW")
  Global CertChainGetCert.ckiMl = GetFunction(CkCertChainLibId,"CkCertChainU_GetCertW")
  Global CertChainIsRootTrusted.cklMi = GetFunction(CkCertChainLibId,"CkCertChainU_IsRootTrustedW")
  Global CertChainLoadX5C.cklMi = GetFunction(CkCertChainLibId,"CkCertChainU_LoadX5CW")
  Global CertChainSaveLastError.cklMs = GetFunction(CkCertChainLibId,"CkCertChainU_SaveLastErrorW")
  Global CertChainVerifyCertSignatures.cklM = GetFunction(CkCertChainLibId,"CkCertChainU_VerifyCertSignaturesW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CertChainCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CertChainDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CertChainDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CertChainPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CertChainLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CertChainLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CertChainLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CertChainLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CertChainPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCerts(obj.i) : ProcedureReturn CertChainNumCerts(obj) : EndProcedure
  Procedure.l ckNumExpiredCerts(obj.i) : ProcedureReturn CertChainNumExpiredCerts(obj) : EndProcedure
  Procedure.l ckReachesRoot(obj.i) : ProcedureReturn CertChainReachesRoot(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CertChainVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CertChainPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CertChainVersion(obj)) : EndProcedure
  Procedure.i ckGetCert(obj.i, index.l) :  ProcedureReturn CertChainGetCert(obj, index) :  EndProcedure
  Procedure.l ckIsRootTrusted(obj.i, trustedRoots.i) :  ProcedureReturn CertChainIsRootTrusted(obj, trustedRoots) :  EndProcedure
  Procedure.l ckLoadX5C(obj.i, jwk.i) :  ProcedureReturn CertChainLoadX5C(obj, jwk) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CertChainSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckVerifyCertSignatures(obj.i) :  ProcedureReturn CertChainVerifyCertSignatures(obj) :  EndProcedure
EndModule

