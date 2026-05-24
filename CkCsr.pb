DeclareModule CkCsr
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckCommonName(obj.i)
  Declare setCkCommonName(obj.i, value.s)
  Declare.s ckCompany(obj.i)
  Declare setCkCompany(obj.i, value.s)
  Declare.s ckCompanyDivision(obj.i)
  Declare setCkCompanyDivision(obj.i, value.s)
  Declare.s ckCountry(obj.i)
  Declare setCkCountry(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEmailAddress(obj.i)
  Declare setCkEmailAddress(obj.i, value.s)
  Declare.s ckHashAlgorithm(obj.i)
  Declare setCkHashAlgorithm(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLocality(obj.i)
  Declare setCkLocality(obj.i, value.s)
  Declare.s ckMgfHashAlg(obj.i)
  Declare setCkMgfHashAlg(obj.i, value.s)
  Declare.l ckPssPadding(obj.i)
  Declare setCkPssPadding(obj.i, value.l)
  Declare.s ckState(obj.i)
  Declare setCkState(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddSan(obj.i, sanType.s, sanValue.s)
  Declare.l ckGenCsrBd(obj.i, privKey.i, csrData.i)
  Declare.s ckGenCsrPem(obj.i, privKey.i)
  Declare.l ckGetPublicKey(obj.i, pubkey.i)
  Declare.s ckGetSubjectField(obj.i, oid.s)
  Declare.l ckLoadCsrPem(obj.i, csrPemStr.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetSubjectField(obj.i, oid.s, value.s, asnType.s)
  Declare.l ckVerifyCsr(obj.i)
EndDeclareModule

Module CkCsr
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMii(obj.i, arg1.i, arg2.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkCsrCreate()
  PrototypeC CkCsrDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCsrLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkCsrLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkCsrLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkCsrLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkCsrLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global CsrCreate.CkCsrCreate = GetFunction(CkCsrLibId,"CkCsrU_CreateW")
  Global CsrDispose.CkCsrDispose = GetFunction(CkCsrLibId,"CkCsrU_DisposeW")
  Global CsrCommonName.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_commonNameW")
  Global CsrPSetCommonName.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putCommonNameW")
  Global CsrCompany.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_companyW")
  Global CsrPSetCompany.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putCompanyW")
  Global CsrCompanyDivision.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_companyDivisionW")
  Global CsrPSetCompanyDivision.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putCompanyDivisionW")
  Global CsrCountry.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_countryW")
  Global CsrPSetCountry.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putCountryW")
  Global CsrDebugLogFilePath.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_debugLogFilePathW")
  Global CsrPSetDebugLogFilePath.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putDebugLogFilePathW")
  Global CsrEmailAddress.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_emailAddressW")
  Global CsrPSetEmailAddress.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putEmailAddressW")
  Global CsrHashAlgorithm.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_hashAlgorithmW")
  Global CsrPSetHashAlgorithm.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putHashAlgorithmW")
  Global CsrLastErrorHtml.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_lastErrorHtmlW")
  Global CsrLastErrorText.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_lastErrorTextW")
  Global CsrLastErrorXml.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_lastErrorXmlW")
  Global CsrLastMethodSuccess.cklPropGet = GetFunction(CkCsrLibId,"CkCsrU_getLastMethodSuccessW")
  Global CsrPSetLastMethodSuccess.cklPropSet = GetFunction(CkCsrLibId,"CkCsrU_putLastMethodSuccessW")
  Global CsrLocality.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_localityW")
  Global CsrPSetLocality.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putLocalityW")
  Global CsrMgfHashAlg.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_mgfHashAlgW")
  Global CsrPSetMgfHashAlg.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putMgfHashAlgW")
  Global CsrPssPadding.cklPropGet = GetFunction(CkCsrLibId,"CkCsrU_getPssPaddingW")
  Global CsrPSetPssPadding.cklPropSet = GetFunction(CkCsrLibId,"CkCsrU_putPssPaddingW")
  Global CsrState.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_stateW")
  Global CsrPSetState.cksPropSet = GetFunction(CkCsrLibId,"CkCsrU_putStateW")
  Global CsrVerboseLogging.cklPropGet = GetFunction(CkCsrLibId,"CkCsrU_getVerboseLoggingW")
  Global CsrPSetVerboseLogging.cklPropSet = GetFunction(CkCsrLibId,"CkCsrU_putVerboseLoggingW")
  Global CsrVersion.cksPropGet = GetFunction(CkCsrLibId,"CkCsrU_versionW")
  Global CsrAddSan.cklMss = GetFunction(CkCsrLibId,"CkCsrU_AddSanW")
  Global CsrGenCsrBd.cklMii = GetFunction(CkCsrLibId,"CkCsrU_GenCsrBdW")
  Global CsrGenCsrPem.cklMi = GetFunction(CkCsrLibId,"CkCsrU_genCsrPemW")
  Global CsrGetPublicKey.cklMi = GetFunction(CkCsrLibId,"CkCsrU_GetPublicKeyW")
  Global CsrGetSubjectField.cklMs = GetFunction(CkCsrLibId,"CkCsrU_getSubjectFieldW")
  Global CsrLoadCsrPem.cklMs = GetFunction(CkCsrLibId,"CkCsrU_LoadCsrPemW")
  Global CsrSaveLastError.cklMs = GetFunction(CkCsrLibId,"CkCsrU_SaveLastErrorW")
  Global CsrSetSubjectField.cklMsss = GetFunction(CkCsrLibId,"CkCsrU_SetSubjectFieldW")
  Global CsrVerifyCsr.cklM = GetFunction(CkCsrLibId,"CkCsrU_VerifyCsrW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn CsrCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn CsrDispose(obj) : EndProcedure
  Procedure.s ckCommonName(obj.i) : ProcedureReturn PeekS(CsrCommonName(obj)) : EndProcedure
  Procedure setCkCommonName(obj.i, value.s) : ProcedureReturn CsrPSetCommonName(obj,value) : EndProcedure
  Procedure.s ckCompany(obj.i) : ProcedureReturn PeekS(CsrCompany(obj)) : EndProcedure
  Procedure setCkCompany(obj.i, value.s) : ProcedureReturn CsrPSetCompany(obj,value) : EndProcedure
  Procedure.s ckCompanyDivision(obj.i) : ProcedureReturn PeekS(CsrCompanyDivision(obj)) : EndProcedure
  Procedure setCkCompanyDivision(obj.i, value.s) : ProcedureReturn CsrPSetCompanyDivision(obj,value) : EndProcedure
  Procedure.s ckCountry(obj.i) : ProcedureReturn PeekS(CsrCountry(obj)) : EndProcedure
  Procedure setCkCountry(obj.i, value.s) : ProcedureReturn CsrPSetCountry(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(CsrDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn CsrPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEmailAddress(obj.i) : ProcedureReturn PeekS(CsrEmailAddress(obj)) : EndProcedure
  Procedure setCkEmailAddress(obj.i, value.s) : ProcedureReturn CsrPSetEmailAddress(obj,value) : EndProcedure
  Procedure.s ckHashAlgorithm(obj.i) : ProcedureReturn PeekS(CsrHashAlgorithm(obj)) : EndProcedure
  Procedure setCkHashAlgorithm(obj.i, value.s) : ProcedureReturn CsrPSetHashAlgorithm(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(CsrLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(CsrLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(CsrLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn CsrLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn CsrPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLocality(obj.i) : ProcedureReturn PeekS(CsrLocality(obj)) : EndProcedure
  Procedure setCkLocality(obj.i, value.s) : ProcedureReturn CsrPSetLocality(obj,value) : EndProcedure
  Procedure.s ckMgfHashAlg(obj.i) : ProcedureReturn PeekS(CsrMgfHashAlg(obj)) : EndProcedure
  Procedure setCkMgfHashAlg(obj.i, value.s) : ProcedureReturn CsrPSetMgfHashAlg(obj,value) : EndProcedure
  Procedure.l ckPssPadding(obj.i) : ProcedureReturn CsrPssPadding(obj) : EndProcedure
  Procedure setCkPssPadding(obj.i, value.l) : ProcedureReturn CsrPSetPssPadding(obj,value) : EndProcedure
  Procedure.s ckState(obj.i) : ProcedureReturn PeekS(CsrState(obj)) : EndProcedure
  Procedure setCkState(obj.i, value.s) : ProcedureReturn CsrPSetState(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn CsrVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn CsrPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(CsrVersion(obj)) : EndProcedure
  Procedure.l ckAddSan(obj.i, sanType.s, sanValue.s) :  ProcedureReturn CsrAddSan(obj, sanType, sanValue) :  EndProcedure
  Procedure.l ckGenCsrBd(obj.i, privKey.i, csrData.i) :  ProcedureReturn CsrGenCsrBd(obj, privKey, csrData) :  EndProcedure
  Procedure.s ckGenCsrPem(obj.i, privKey.i) :  ProcedureReturn PeekS(CsrGenCsrPem(obj, privKey)) :  EndProcedure
  Procedure.l ckGetPublicKey(obj.i, pubkey.i) :  ProcedureReturn CsrGetPublicKey(obj, pubkey) :  EndProcedure
  Procedure.s ckGetSubjectField(obj.i, oid.s) :  ProcedureReturn PeekS(CsrGetSubjectField(obj, oid)) :  EndProcedure
  Procedure.l ckLoadCsrPem(obj.i, csrPemStr.s) :  ProcedureReturn CsrLoadCsrPem(obj, csrPemStr) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn CsrSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetSubjectField(obj.i, oid.s, value.s, asnType.s) :  ProcedureReturn CsrSetSubjectField(obj, oid, value, asnType) :  EndProcedure
  Procedure.l ckVerifyCsr(obj.i) :  ProcedureReturn CsrVerifyCsr(obj) :  EndProcedure
EndModule

