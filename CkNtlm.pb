DeclareModule CkNtlm
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckClientChallenge(obj.i)
  Declare setCkClientChallenge(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDnsComputerName(obj.i)
  Declare setCkDnsComputerName(obj.i, value.s)
  Declare.s ckDnsDomainName(obj.i)
  Declare setCkDnsDomainName(obj.i, value.s)
  Declare.s ckDomain(obj.i)
  Declare setCkDomain(obj.i, value.s)
  Declare.s ckEncodingMode(obj.i)
  Declare setCkEncodingMode(obj.i, value.s)
  Declare.s ckFlags(obj.i)
  Declare setCkFlags(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckNetBiosComputerName(obj.i)
  Declare setCkNetBiosComputerName(obj.i, value.s)
  Declare.s ckNetBiosDomainName(obj.i)
  Declare setCkNetBiosDomainName(obj.i, value.s)
  Declare.l ckNtlmVersion(obj.i)
  Declare setCkNtlmVersion(obj.i, value.l)
  Declare.l ckOemCodePage(obj.i)
  Declare setCkOemCodePage(obj.i, value.l)
  Declare.s ckPassword(obj.i)
  Declare setCkPassword(obj.i, value.s)
  Declare.s ckServerChallenge(obj.i)
  Declare setCkServerChallenge(obj.i, value.s)
  Declare.s ckTargetName(obj.i)
  Declare setCkTargetName(obj.i, value.s)
  Declare.s ckUserName(obj.i)
  Declare setCkUserName(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckWorkstation(obj.i)
  Declare setCkWorkstation(obj.i, value.s)
  Declare.l ckCompareType3(obj.i, msg1.s, msg2.s)
  Declare.s ckGenType1(obj.i)
  Declare.s ckGenType2(obj.i, type1Msg.s)
  Declare.s ckGenType3(obj.i, type2Msg.s)
  Declare.l ckLoadType3(obj.i, type3Msg.s)
  Declare.s ckParseType1(obj.i, type1Msg.s)
  Declare.s ckParseType2(obj.i, type2Msg.s)
  Declare.s ckParseType3(obj.i, type3Msg.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetFlag(obj.i, flagLetter.s, onOrOff.l)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkNtlm
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkNtlmCreate()
  PrototypeC CkNtlmDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkNtlmLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkNtlmLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkNtlmLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkNtlmLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkNtlmLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global NtlmCreate.CkNtlmCreate = GetFunction(CkNtlmLibId,"CkNtlmU_CreateW")
  Global NtlmDispose.CkNtlmDispose = GetFunction(CkNtlmLibId,"CkNtlmU_DisposeW")
  Global NtlmClientChallenge.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_clientChallengeW")
  Global NtlmPSetClientChallenge.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putClientChallengeW")
  Global NtlmDebugLogFilePath.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_debugLogFilePathW")
  Global NtlmPSetDebugLogFilePath.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putDebugLogFilePathW")
  Global NtlmDnsComputerName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_dnsComputerNameW")
  Global NtlmPSetDnsComputerName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putDnsComputerNameW")
  Global NtlmDnsDomainName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_dnsDomainNameW")
  Global NtlmPSetDnsDomainName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putDnsDomainNameW")
  Global NtlmDomain.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_domainW")
  Global NtlmPSetDomain.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putDomainW")
  Global NtlmEncodingMode.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_encodingModeW")
  Global NtlmPSetEncodingMode.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putEncodingModeW")
  Global NtlmFlags.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_flagsW")
  Global NtlmPSetFlags.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putFlagsW")
  Global NtlmLastErrorHtml.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_lastErrorHtmlW")
  Global NtlmLastErrorText.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_lastErrorTextW")
  Global NtlmLastErrorXml.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_lastErrorXmlW")
  Global NtlmLastMethodSuccess.cklPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_getLastMethodSuccessW")
  Global NtlmPSetLastMethodSuccess.cklPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putLastMethodSuccessW")
  Global NtlmNetBiosComputerName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_netBiosComputerNameW")
  Global NtlmPSetNetBiosComputerName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putNetBiosComputerNameW")
  Global NtlmNetBiosDomainName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_netBiosDomainNameW")
  Global NtlmPSetNetBiosDomainName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putNetBiosDomainNameW")
  Global NtlmNtlmVersion.cklPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_getNtlmVersionW")
  Global NtlmPSetNtlmVersion.cklPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putNtlmVersionW")
  Global NtlmOemCodePage.cklPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_getOemCodePageW")
  Global NtlmPSetOemCodePage.cklPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putOemCodePageW")
  Global NtlmPassword.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_passwordW")
  Global NtlmPSetPassword.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putPasswordW")
  Global NtlmServerChallenge.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_serverChallengeW")
  Global NtlmPSetServerChallenge.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putServerChallengeW")
  Global NtlmTargetName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_targetNameW")
  Global NtlmPSetTargetName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putTargetNameW")
  Global NtlmUserName.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_userNameW")
  Global NtlmPSetUserName.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putUserNameW")
  Global NtlmVerboseLogging.cklPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_getVerboseLoggingW")
  Global NtlmPSetVerboseLogging.cklPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putVerboseLoggingW")
  Global NtlmVersion.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_versionW")
  Global NtlmWorkstation.cksPropGet = GetFunction(CkNtlmLibId,"CkNtlmU_workstationW")
  Global NtlmPSetWorkstation.cksPropSet = GetFunction(CkNtlmLibId,"CkNtlmU_putWorkstationW")
  Global NtlmCompareType3.cklMss = GetFunction(CkNtlmLibId,"CkNtlmU_CompareType3W")
  Global NtlmGenType1.cklM = GetFunction(CkNtlmLibId,"CkNtlmU_genType1W")
  Global NtlmGenType2.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_genType2W")
  Global NtlmGenType3.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_genType3W")
  Global NtlmLoadType3.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_LoadType3W")
  Global NtlmParseType1.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_parseType1W")
  Global NtlmParseType2.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_parseType2W")
  Global NtlmParseType3.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_parseType3W")
  Global NtlmSaveLastError.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_SaveLastErrorW")
  Global NtlmSetFlag.cklMsl = GetFunction(CkNtlmLibId,"CkNtlmU_SetFlagW")
  Global NtlmUnlockComponent.cklMs = GetFunction(CkNtlmLibId,"CkNtlmU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn NtlmCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn NtlmDispose(obj) : EndProcedure
  Procedure.s ckClientChallenge(obj.i) : ProcedureReturn PeekS(NtlmClientChallenge(obj)) : EndProcedure
  Procedure setCkClientChallenge(obj.i, value.s) : ProcedureReturn NtlmPSetClientChallenge(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(NtlmDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn NtlmPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDnsComputerName(obj.i) : ProcedureReturn PeekS(NtlmDnsComputerName(obj)) : EndProcedure
  Procedure setCkDnsComputerName(obj.i, value.s) : ProcedureReturn NtlmPSetDnsComputerName(obj,value) : EndProcedure
  Procedure.s ckDnsDomainName(obj.i) : ProcedureReturn PeekS(NtlmDnsDomainName(obj)) : EndProcedure
  Procedure setCkDnsDomainName(obj.i, value.s) : ProcedureReturn NtlmPSetDnsDomainName(obj,value) : EndProcedure
  Procedure.s ckDomain(obj.i) : ProcedureReturn PeekS(NtlmDomain(obj)) : EndProcedure
  Procedure setCkDomain(obj.i, value.s) : ProcedureReturn NtlmPSetDomain(obj,value) : EndProcedure
  Procedure.s ckEncodingMode(obj.i) : ProcedureReturn PeekS(NtlmEncodingMode(obj)) : EndProcedure
  Procedure setCkEncodingMode(obj.i, value.s) : ProcedureReturn NtlmPSetEncodingMode(obj,value) : EndProcedure
  Procedure.s ckFlags(obj.i) : ProcedureReturn PeekS(NtlmFlags(obj)) : EndProcedure
  Procedure setCkFlags(obj.i, value.s) : ProcedureReturn NtlmPSetFlags(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(NtlmLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(NtlmLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(NtlmLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn NtlmLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn NtlmPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckNetBiosComputerName(obj.i) : ProcedureReturn PeekS(NtlmNetBiosComputerName(obj)) : EndProcedure
  Procedure setCkNetBiosComputerName(obj.i, value.s) : ProcedureReturn NtlmPSetNetBiosComputerName(obj,value) : EndProcedure
  Procedure.s ckNetBiosDomainName(obj.i) : ProcedureReturn PeekS(NtlmNetBiosDomainName(obj)) : EndProcedure
  Procedure setCkNetBiosDomainName(obj.i, value.s) : ProcedureReturn NtlmPSetNetBiosDomainName(obj,value) : EndProcedure
  Procedure.l ckNtlmVersion(obj.i) : ProcedureReturn NtlmNtlmVersion(obj) : EndProcedure
  Procedure setCkNtlmVersion(obj.i, value.l) : ProcedureReturn NtlmPSetNtlmVersion(obj,value) : EndProcedure
  Procedure.l ckOemCodePage(obj.i) : ProcedureReturn NtlmOemCodePage(obj) : EndProcedure
  Procedure setCkOemCodePage(obj.i, value.l) : ProcedureReturn NtlmPSetOemCodePage(obj,value) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(NtlmPassword(obj)) : EndProcedure
  Procedure setCkPassword(obj.i, value.s) : ProcedureReturn NtlmPSetPassword(obj,value) : EndProcedure
  Procedure.s ckServerChallenge(obj.i) : ProcedureReturn PeekS(NtlmServerChallenge(obj)) : EndProcedure
  Procedure setCkServerChallenge(obj.i, value.s) : ProcedureReturn NtlmPSetServerChallenge(obj,value) : EndProcedure
  Procedure.s ckTargetName(obj.i) : ProcedureReturn PeekS(NtlmTargetName(obj)) : EndProcedure
  Procedure setCkTargetName(obj.i, value.s) : ProcedureReturn NtlmPSetTargetName(obj,value) : EndProcedure
  Procedure.s ckUserName(obj.i) : ProcedureReturn PeekS(NtlmUserName(obj)) : EndProcedure
  Procedure setCkUserName(obj.i, value.s) : ProcedureReturn NtlmPSetUserName(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn NtlmVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn NtlmPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(NtlmVersion(obj)) : EndProcedure
  Procedure.s ckWorkstation(obj.i) : ProcedureReturn PeekS(NtlmWorkstation(obj)) : EndProcedure
  Procedure setCkWorkstation(obj.i, value.s) : ProcedureReturn NtlmPSetWorkstation(obj,value) : EndProcedure
  Procedure.l ckCompareType3(obj.i, msg1.s, msg2.s) :  ProcedureReturn NtlmCompareType3(obj, msg1, msg2) :  EndProcedure
  Procedure.s ckGenType1(obj.i) :  ProcedureReturn PeekS(NtlmGenType1(obj)) :  EndProcedure
  Procedure.s ckGenType2(obj.i, type1Msg.s) :  ProcedureReturn PeekS(NtlmGenType2(obj, type1Msg)) :  EndProcedure
  Procedure.s ckGenType3(obj.i, type2Msg.s) :  ProcedureReturn PeekS(NtlmGenType3(obj, type2Msg)) :  EndProcedure
  Procedure.l ckLoadType3(obj.i, type3Msg.s) :  ProcedureReturn NtlmLoadType3(obj, type3Msg) :  EndProcedure
  Procedure.s ckParseType1(obj.i, type1Msg.s) :  ProcedureReturn PeekS(NtlmParseType1(obj, type1Msg)) :  EndProcedure
  Procedure.s ckParseType2(obj.i, type2Msg.s) :  ProcedureReturn PeekS(NtlmParseType2(obj, type2Msg)) :  EndProcedure
  Procedure.s ckParseType3(obj.i, type3Msg.s) :  ProcedureReturn PeekS(NtlmParseType3(obj, type3Msg)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn NtlmSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetFlag(obj.i, flagLetter.s, onOrOff.l) :  ProcedureReturn NtlmSetFlag(obj, flagLetter, onOrOff) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn NtlmUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

