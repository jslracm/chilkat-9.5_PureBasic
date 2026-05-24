DeclareModule CkCertStore
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAvoidWindowsPkAccess(obj.i)
  Declare setCkAvoidWindowsPkAccess(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumCertificates(obj.i)
  Declare.l ckNumEmailCerts(obj.i)
  Declare.s ckSmartCardPin(obj.i)
  Declare setCkSmartCardPin(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddCertificate(obj.i, cert.i)
  Declare.l ckCreateFileStore(obj.i, filename.s)
  Declare.l ckCreateMemoryStore(obj.i)
  Declare.l ckCreateRegistryStore(obj.i, regRoot.s, regPath.s)
  Declare.i ckFindCertByKeyContainer(obj.i, name.s)
  Declare.i ckFindCertByRfc822Name(obj.i, name.s)
  Declare.i ckFindCertBySerial(obj.i, str.s)
  Declare.i ckFindCertBySha1Thumbprint(obj.i, str.s)
  Declare.i ckFindCertBySubject(obj.i, str.s)
  Declare.i ckFindCertBySubjectCN(obj.i, str.s)
  Declare.i ckFindCertBySubjectE(obj.i, str.s)
  Declare.i ckFindCertBySubjectO(obj.i, str.s)
  Declare.i ckFindCertForEmail(obj.i, emailAddress.s)
  Declare.i ckGetCertificate(obj.i, index.l)
  Declare.i ckGetEmailCert(obj.i, index.l)
  Declare.l ckLoadPemFile(obj.i, pemPath.s)
  Declare.l ckLoadPemStr(obj.i, pemString.s)
  Declare.l ckLoadPfxFile(obj.i, pfxFilename.s, password.s)
  Declare.l ckOpenChilkatStore(obj.i, readOnly.l)
  Declare.l ckOpenCurrentUserStore(obj.i, readOnly.l)
  Declare.l ckOpenFileStore(obj.i, filename.s, readOnly.l)
  Declare.l ckOpenLocalSystemStore(obj.i, readOnly.l)
  Declare.l ckOpenOutlookStore(obj.i, readOnly.l)
  Declare.l ckOpenRegistryStore(obj.i, regRoot.s, regPath.s, readOnly.l)
  Declare.l ckOpenSmartcard(obj.i, csp.s)
  Declare.l ckOpenWindowsStore(obj.i, storeLocation.s, storeName.s, readOnly.l)
  Declare.l ckRemoveCertificate(obj.i, cert.i)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkCertStore
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkCertStoreCreate()
  PrototypeC CkCertStoreDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertStoreLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCertStoreLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCertStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCertStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCertStoreLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CertStoreCreate.CkCertStoreCreate = GetFunction(CkCertStoreLibId,"CkCertStoreU_CreateW")
  Global CertStoreDispose.CkCertStoreDispose = GetFunction(CkCertStoreLibId,"CkCertStoreU_DisposeW")
  Global CertStoreAvoidWindowsPkAccess.cklPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_getAvoidWindowsPkAccessW")
  Global CertStorePSetAvoidWindowsPkAccess.cklPropSet = GetFunction(CkCertStoreLibId,"CkCertStoreU_putAvoidWindowsPkAccessW")
  Global CertStoreDebugLogFilePath.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_debugLogFilePathW")
  Global CertStorePSetDebugLogFilePath.cksPropSet = GetFunction(CkCertStoreLibId,"CkCertStoreU_putDebugLogFilePathW")
  Global CertStoreLastErrorHtml.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_lastErrorHtmlW")
  Global CertStoreLastErrorText.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_lastErrorTextW")
  Global CertStoreLastErrorXml.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_lastErrorXmlW")
  Global CertStoreLastMethodSuccess.cklPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_getLastMethodSuccessW")
  Global CertStorePSetLastMethodSuccess.cklPropSet = GetFunction(CkCertStoreLibId,"CkCertStoreU_putLastMethodSuccessW")
  Global CertStoreNumCertificates.cklPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_getNumCertificatesW")
  Global CertStoreNumEmailCerts.cklPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_getNumEmailCertsW")
  Global CertStoreSmartCardPin.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_smartCardPinW")
  Global CertStorePSetSmartCardPin.cksPropSet = GetFunction(CkCertStoreLibId,"CkCertStoreU_putSmartCardPinW")
  Global CertStoreVerboseLogging.cklPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_getVerboseLoggingW")
  Global CertStorePSetVerboseLogging.cklPropSet = GetFunction(CkCertStoreLibId,"CkCertStoreU_putVerboseLoggingW")
  Global CertStoreVersion.cksPropGet = GetFunction(CkCertStoreLibId,"CkCertStoreU_versionW")
  Global CertStoreAddCertificate.cklMi = GetFunction(CkCertStoreLibId,"CkCertStoreU_AddCertificateW")
  Global CertStoreCreateFileStore.cklMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_CreateFileStoreW")
  Global CertStoreCreateMemoryStore.cklM = GetFunction(CkCertStoreLibId,"CkCertStoreU_CreateMemoryStoreW")
  Global CertStoreCreateRegistryStore.cklMss = GetFunction(CkCertStoreLibId,"CkCertStoreU_CreateRegistryStoreW")
  Global CertStoreFindCertByKeyContainer.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertByKeyContainerW")
  Global CertStoreFindCertByRfc822Name.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertByRfc822NameW")
  Global CertStoreFindCertBySerial.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySerialW")
  Global CertStoreFindCertBySha1Thumbprint.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySha1ThumbprintW")
  Global CertStoreFindCertBySubject.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySubjectW")
  Global CertStoreFindCertBySubjectCN.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySubjectCNW")
  Global CertStoreFindCertBySubjectE.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySubjectEW")
  Global CertStoreFindCertBySubjectO.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertBySubjectOW")
  Global CertStoreFindCertForEmail.ckiMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_FindCertForEmailW")
  Global CertStoreGetCertificate.ckiMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_GetCertificateW")
  Global CertStoreGetEmailCert.ckiMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_GetEmailCertW")
  Global CertStoreLoadPemFile.cklMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_LoadPemFileW")
  Global CertStoreLoadPemStr.cklMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_LoadPemStrW")
  Global CertStoreLoadPfxFile.cklMss = GetFunction(CkCertStoreLibId,"CkCertStoreU_LoadPfxFileW")
  Global CertStoreOpenChilkatStore.cklMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenChilkatStoreW")
  Global CertStoreOpenCurrentUserStore.cklMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenCurrentUserStoreW")
  Global CertStoreOpenFileStore.cklMsl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenFileStoreW")
  Global CertStoreOpenLocalSystemStore.cklMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenLocalSystemStoreW")
  Global CertStoreOpenOutlookStore.cklMl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenOutlookStoreW")
  Global CertStoreOpenRegistryStore.cklMssl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenRegistryStoreW")
  Global CertStoreOpenSmartcard.cklMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenSmartcardW")
  Global CertStoreOpenWindowsStore.cklMssl = GetFunction(CkCertStoreLibId,"CkCertStoreU_OpenWindowsStoreW")
  Global CertStoreRemoveCertificate.cklMi = GetFunction(CkCertStoreLibId,"CkCertStoreU_RemoveCertificateW")
  Global CertStoreSaveLastError.cklMs = GetFunction(CkCertStoreLibId,"CkCertStoreU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CertStoreCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CertStoreDispose(obj) : EndProcedure
  Procedure.l ckAvoidWindowsPkAccess(obj.i) : ProcedureReturn CertStoreAvoidWindowsPkAccess(obj) : EndProcedure
  Procedure setCkAvoidWindowsPkAccess(obj.i, value.l) : ProcedureReturn CertStorePSetAvoidWindowsPkAccess(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CertStoreDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CertStorePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CertStoreLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CertStoreLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CertStoreLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CertStoreLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CertStorePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumCertificates(obj.i) : ProcedureReturn CertStoreNumCertificates(obj) : EndProcedure
  Procedure.l ckNumEmailCerts(obj.i) : ProcedureReturn CertStoreNumEmailCerts(obj) : EndProcedure
  Procedure.s ckSmartCardPin(obj.i) : ProcedureReturn PeekS(CertStoreSmartCardPin(obj)) : EndProcedure
  Procedure setCkSmartCardPin(obj.i, value.s) : ProcedureReturn CertStorePSetSmartCardPin(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CertStoreVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CertStorePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CertStoreVersion(obj)) : EndProcedure
  Procedure.l ckAddCertificate(obj.i, cert.i) :  ProcedureReturn CertStoreAddCertificate(obj, cert) :  EndProcedure
  Procedure.l ckCreateFileStore(obj.i, filename.s) :  ProcedureReturn CertStoreCreateFileStore(obj, filename) :  EndProcedure
  Procedure.l ckCreateMemoryStore(obj.i) :  ProcedureReturn CertStoreCreateMemoryStore(obj) :  EndProcedure
  Procedure.l ckCreateRegistryStore(obj.i, regRoot.s, regPath.s) :  ProcedureReturn CertStoreCreateRegistryStore(obj, regRoot, regPath) :  EndProcedure
  Procedure.i ckFindCertByKeyContainer(obj.i, name.s) :  ProcedureReturn CertStoreFindCertByKeyContainer(obj, name) :  EndProcedure
  Procedure.i ckFindCertByRfc822Name(obj.i, name.s) :  ProcedureReturn CertStoreFindCertByRfc822Name(obj, name) :  EndProcedure
  Procedure.i ckFindCertBySerial(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySerial(obj, str) :  EndProcedure
  Procedure.i ckFindCertBySha1Thumbprint(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySha1Thumbprint(obj, str) :  EndProcedure
  Procedure.i ckFindCertBySubject(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySubject(obj, str) :  EndProcedure
  Procedure.i ckFindCertBySubjectCN(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySubjectCN(obj, str) :  EndProcedure
  Procedure.i ckFindCertBySubjectE(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySubjectE(obj, str) :  EndProcedure
  Procedure.i ckFindCertBySubjectO(obj.i, str.s) :  ProcedureReturn CertStoreFindCertBySubjectO(obj, str) :  EndProcedure
  Procedure.i ckFindCertForEmail(obj.i, emailAddress.s) :  ProcedureReturn CertStoreFindCertForEmail(obj, emailAddress) :  EndProcedure
  Procedure.i ckGetCertificate(obj.i, index.l) :  ProcedureReturn CertStoreGetCertificate(obj, index) :  EndProcedure
  Procedure.i ckGetEmailCert(obj.i, index.l) :  ProcedureReturn CertStoreGetEmailCert(obj, index) :  EndProcedure
  Procedure.l ckLoadPemFile(obj.i, pemPath.s) :  ProcedureReturn CertStoreLoadPemFile(obj, pemPath) :  EndProcedure
  Procedure.l ckLoadPemStr(obj.i, pemString.s) :  ProcedureReturn CertStoreLoadPemStr(obj, pemString) :  EndProcedure
  Procedure.l ckLoadPfxFile(obj.i, pfxFilename.s, password.s) :  ProcedureReturn CertStoreLoadPfxFile(obj, pfxFilename, password) :  EndProcedure
  Procedure.l ckOpenChilkatStore(obj.i, readOnly.l) :  ProcedureReturn CertStoreOpenChilkatStore(obj, readOnly) :  EndProcedure
  Procedure.l ckOpenCurrentUserStore(obj.i, readOnly.l) :  ProcedureReturn CertStoreOpenCurrentUserStore(obj, readOnly) :  EndProcedure
  Procedure.l ckOpenFileStore(obj.i, filename.s, readOnly.l) :  ProcedureReturn CertStoreOpenFileStore(obj, filename, readOnly) :  EndProcedure
  Procedure.l ckOpenLocalSystemStore(obj.i, readOnly.l) :  ProcedureReturn CertStoreOpenLocalSystemStore(obj, readOnly) :  EndProcedure
  Procedure.l ckOpenOutlookStore(obj.i, readOnly.l) :  ProcedureReturn CertStoreOpenOutlookStore(obj, readOnly) :  EndProcedure
  Procedure.l ckOpenRegistryStore(obj.i, regRoot.s, regPath.s, readOnly.l) :  ProcedureReturn CertStoreOpenRegistryStore(obj, regRoot, regPath, readOnly) :  EndProcedure
  Procedure.l ckOpenSmartcard(obj.i, csp.s) :  ProcedureReturn CertStoreOpenSmartcard(obj, csp) :  EndProcedure
  Procedure.l ckOpenWindowsStore(obj.i, storeLocation.s, storeName.s, readOnly.l) :  ProcedureReturn CertStoreOpenWindowsStore(obj, storeLocation, storeName, readOnly) :  EndProcedure
  Procedure.l ckRemoveCertificate(obj.i, cert.i) :  ProcedureReturn CertStoreRemoveCertificate(obj, cert) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CertStoreSaveLastError(obj, path) :  EndProcedure
EndModule

