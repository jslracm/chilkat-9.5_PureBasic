DeclareModule CkTrustedRoots
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
  Declare.l ckRejectSelfSignedCerts(obj.i)
  Declare setCkRejectSelfSignedCerts(obj.i, value.l)
  Declare.l ckTrustSystemCaRoots(obj.i)
  Declare setCkTrustSystemCaRoots(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckActivate(obj.i)
  Declare.l ckAddCert(obj.i, cert.i)
  Declare.l ckAddJavaKeyStore(obj.i, keystore.i)
  Declare.i ckAddJavaKeyStoreAsync(obj.i, keystore.i)
  Declare.l ckDeactivate(obj.i)
  Declare.i ckGetCert(obj.i, index.l)
  Declare.l ckLoadCaCertsPem(obj.i, path.s)
  Declare.i ckLoadCaCertsPemAsync(obj.i, path.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkTrustedRoots
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.i ckiMi(obj.i, arg1.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkTrustedRootsCreate()
  PrototypeC CkTrustedRootsDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTrustedRootsLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkTrustedRootsLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkTrustedRootsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkTrustedRootsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkTrustedRootsLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global TrustedRootsCreate.CkTrustedRootsCreate = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_CreateW")
  Global TrustedRootsDispose.CkTrustedRootsDispose = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_DisposeW")
  Global TrustedRootsDebugLogFilePath.cksPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_debugLogFilePathW")
  Global TrustedRootsPSetDebugLogFilePath.cksPropSet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_putDebugLogFilePathW")
  Global TrustedRootsLastErrorHtml.cksPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_lastErrorHtmlW")
  Global TrustedRootsLastErrorText.cksPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_lastErrorTextW")
  Global TrustedRootsLastErrorXml.cksPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_lastErrorXmlW")
  Global TrustedRootsLastMethodSuccess.cklPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_getLastMethodSuccessW")
  Global TrustedRootsPSetLastMethodSuccess.cklPropSet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_putLastMethodSuccessW")
  Global TrustedRootsNumCerts.cklPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_getNumCertsW")
  Global TrustedRootsRejectSelfSignedCerts.cklPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_getRejectSelfSignedCertsW")
  Global TrustedRootsPSetRejectSelfSignedCerts.cklPropSet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_putRejectSelfSignedCertsW")
  Global TrustedRootsTrustSystemCaRoots.cklPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_getTrustSystemCaRootsW")
  Global TrustedRootsPSetTrustSystemCaRoots.cklPropSet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_putTrustSystemCaRootsW")
  Global TrustedRootsVerboseLogging.cklPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_getVerboseLoggingW")
  Global TrustedRootsPSetVerboseLogging.cklPropSet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_putVerboseLoggingW")
  Global TrustedRootsVersion.cksPropGet = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_versionW")
  Global TrustedRootsActivate.cklM = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_ActivateW")
  Global TrustedRootsAddCert.cklMi = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_AddCertW")
  Global TrustedRootsAddJavaKeyStore.cklMi = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_AddJavaKeyStoreW")
  Global TrustedRootsAddJavaKeyStoreAsync.ckiMi = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_AddJavaKeyStoreAsyncW")
  Global TrustedRootsDeactivate.cklM = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_DeactivateW")
  Global TrustedRootsGetCert.ckiMl = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_GetCertW")
  Global TrustedRootsLoadCaCertsPem.cklMs = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_LoadCaCertsPemW")
  Global TrustedRootsLoadCaCertsPemAsync.ckiMs = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_LoadCaCertsPemAsyncW")
  Global TrustedRootsLoadTaskCaller.cklMi = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_LoadTaskCallerW")
  Global TrustedRootsSaveLastError.cklMs = GetFunction(CkTrustedRootsLibId,"CkTrustedRootsU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn TrustedRootsCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn TrustedRootsDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(TrustedRootsDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn TrustedRootsPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(TrustedRootsLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(TrustedRootsLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(TrustedRootsLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn TrustedRootsLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn TrustedRootsPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCerts(obj.i) : ProcedureReturn TrustedRootsNumCerts(obj) : EndProcedure
  Procedure.l ckRejectSelfSignedCerts(obj.i) : ProcedureReturn TrustedRootsRejectSelfSignedCerts(obj) : EndProcedure
  Procedure setCkRejectSelfSignedCerts(obj.i, value.l) : ProcedureReturn TrustedRootsPSetRejectSelfSignedCerts(obj,value) : EndProcedure
  Procedure.l ckTrustSystemCaRoots(obj.i) : ProcedureReturn TrustedRootsTrustSystemCaRoots(obj) : EndProcedure
  Procedure setCkTrustSystemCaRoots(obj.i, value.l) : ProcedureReturn TrustedRootsPSetTrustSystemCaRoots(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn TrustedRootsVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn TrustedRootsPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(TrustedRootsVersion(obj)) : EndProcedure
  Procedure.l ckActivate(obj.i) :  ProcedureReturn TrustedRootsActivate(obj) :  EndProcedure
  Procedure.l ckAddCert(obj.i, cert.i) :  ProcedureReturn TrustedRootsAddCert(obj, cert) :  EndProcedure
  Procedure.l ckAddJavaKeyStore(obj.i, keystore.i) :  ProcedureReturn TrustedRootsAddJavaKeyStore(obj, keystore) :  EndProcedure
  Procedure.i ckAddJavaKeyStoreAsync(obj.i, keystore.i) :  ProcedureReturn TrustedRootsAddJavaKeyStoreAsync(obj, keystore) :  EndProcedure
  Procedure.l ckDeactivate(obj.i) :  ProcedureReturn TrustedRootsDeactivate(obj) :  EndProcedure
  Procedure.i ckGetCert(obj.i, index.l) :  ProcedureReturn TrustedRootsGetCert(obj, index) :  EndProcedure
  Procedure.l ckLoadCaCertsPem(obj.i, path.s) :  ProcedureReturn TrustedRootsLoadCaCertsPem(obj, path) :  EndProcedure
  Procedure.i ckLoadCaCertsPemAsync(obj.i, path.s) :  ProcedureReturn TrustedRootsLoadCaCertsPemAsync(obj, path) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn TrustedRootsLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn TrustedRootsSaveLastError(obj, path) :  EndProcedure
EndModule

