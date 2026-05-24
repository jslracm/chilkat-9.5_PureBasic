DeclareModule CkPrng
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
  Declare.s ckPrngName(obj.i)
  Declare setCkPrngName(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddEntropy(obj.i, entropy.s, encoding.s)
  Declare.s ckExportEntropy(obj.i)
  Declare.s ckFirebasePushId(obj.i)
  Declare.s ckGenRandom(obj.i, numBytes.l, encoding.s)
  Declare.l ckGenRandomBd(obj.i, numBytes.l, bd.i)
  Declare.s ckGetEntropy(obj.i, numBytes.l, encoding.s)
  Declare.l ckImportEntropy(obj.i, entropy.s)
  Declare.l ckRandomInt(obj.i, low.l, high.l)
  Declare.s ckRandomPassword(obj.i, length.l, mustIncludeDigit.l, upperAndLowercase.l, mustHaveOneOf.s, excludeChars.s)
  Declare.s ckRandomString(obj.i, length.l, bDigits.l, bLower.l, bUpper.l)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkPrng
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMllll(obj.i, arg1.l, arg2.l, arg3.l, arg4.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMlllss(obj.i, arg1.l, arg2.l, arg3.l, arg4.s, arg5.s)
  PrototypeC.i CkPrngCreate()
  PrototypeC CkPrngDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPrngLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkPrngLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkPrngLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkPrngLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkPrngLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global PrngCreate.CkPrngCreate = GetFunction(CkPrngLibId,"CkPrngU_CreateW")
  Global PrngDispose.CkPrngDispose = GetFunction(CkPrngLibId,"CkPrngU_DisposeW")
  Global PrngDebugLogFilePath.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_debugLogFilePathW")
  Global PrngPSetDebugLogFilePath.cksPropSet = GetFunction(CkPrngLibId,"CkPrngU_putDebugLogFilePathW")
  Global PrngLastErrorHtml.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_lastErrorHtmlW")
  Global PrngLastErrorText.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_lastErrorTextW")
  Global PrngLastErrorXml.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_lastErrorXmlW")
  Global PrngLastMethodSuccess.cklPropGet = GetFunction(CkPrngLibId,"CkPrngU_getLastMethodSuccessW")
  Global PrngPSetLastMethodSuccess.cklPropSet = GetFunction(CkPrngLibId,"CkPrngU_putLastMethodSuccessW")
  Global PrngPrngName.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_prngNameW")
  Global PrngPSetPrngName.cksPropSet = GetFunction(CkPrngLibId,"CkPrngU_putPrngNameW")
  Global PrngVerboseLogging.cklPropGet = GetFunction(CkPrngLibId,"CkPrngU_getVerboseLoggingW")
  Global PrngPSetVerboseLogging.cklPropSet = GetFunction(CkPrngLibId,"CkPrngU_putVerboseLoggingW")
  Global PrngVersion.cksPropGet = GetFunction(CkPrngLibId,"CkPrngU_versionW")
  Global PrngAddEntropy.cklMss = GetFunction(CkPrngLibId,"CkPrngU_AddEntropyW")
  Global PrngExportEntropy.cklM = GetFunction(CkPrngLibId,"CkPrngU_exportEntropyW")
  Global PrngFirebasePushId.cklM = GetFunction(CkPrngLibId,"CkPrngU_firebasePushIdW")
  Global PrngGenRandom.cklMls = GetFunction(CkPrngLibId,"CkPrngU_genRandomW")
  Global PrngGenRandomBd.cklMli = GetFunction(CkPrngLibId,"CkPrngU_GenRandomBdW")
  Global PrngGetEntropy.cklMls = GetFunction(CkPrngLibId,"CkPrngU_getEntropyW")
  Global PrngImportEntropy.cklMs = GetFunction(CkPrngLibId,"CkPrngU_ImportEntropyW")
  Global PrngRandomInt.cklMll = GetFunction(CkPrngLibId,"CkPrngU_RandomIntW")
  Global PrngRandomPassword.cklMlllss = GetFunction(CkPrngLibId,"CkPrngU_randomPasswordW")
  Global PrngRandomString.cklMllll = GetFunction(CkPrngLibId,"CkPrngU_randomStringW")
  Global PrngSaveLastError.cklMs = GetFunction(CkPrngLibId,"CkPrngU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn PrngCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn PrngDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(PrngDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn PrngPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(PrngLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(PrngLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(PrngLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn PrngLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn PrngPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckPrngName(obj.i) : ProcedureReturn PeekS(PrngPrngName(obj)) : EndProcedure
  Procedure setCkPrngName(obj.i, value.s) : ProcedureReturn PrngPSetPrngName(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn PrngVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn PrngPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(PrngVersion(obj)) : EndProcedure
  Procedure.l ckAddEntropy(obj.i, entropy.s, encoding.s) :  ProcedureReturn PrngAddEntropy(obj, entropy, encoding) :  EndProcedure
  Procedure.s ckExportEntropy(obj.i) :  ProcedureReturn PeekS(PrngExportEntropy(obj)) :  EndProcedure
  Procedure.s ckFirebasePushId(obj.i) :  ProcedureReturn PeekS(PrngFirebasePushId(obj)) :  EndProcedure
  Procedure.s ckGenRandom(obj.i, numBytes.l, encoding.s) :  ProcedureReturn PeekS(PrngGenRandom(obj, numBytes, encoding)) :  EndProcedure
  Procedure.l ckGenRandomBd(obj.i, numBytes.l, bd.i) :  ProcedureReturn PrngGenRandomBd(obj, numBytes, bd) :  EndProcedure
  Procedure.s ckGetEntropy(obj.i, numBytes.l, encoding.s) :  ProcedureReturn PeekS(PrngGetEntropy(obj, numBytes, encoding)) :  EndProcedure
  Procedure.l ckImportEntropy(obj.i, entropy.s) :  ProcedureReturn PrngImportEntropy(obj, entropy) :  EndProcedure
  Procedure.l ckRandomInt(obj.i, low.l, high.l) :  ProcedureReturn PrngRandomInt(obj, low, high) :  EndProcedure
  Procedure.s ckRandomPassword(obj.i, length.l, mustIncludeDigit.l, upperAndLowercase.l, mustHaveOneOf.s, excludeChars.s) :  ProcedureReturn PeekS(PrngRandomPassword(obj, length, mustIncludeDigit, upperAndLowercase, mustHaveOneOf, excludeChars)) :  EndProcedure
  Procedure.s ckRandomString(obj.i, length.l, bDigits.l, bLower.l, bUpper.l) :  ProcedureReturn PeekS(PrngRandomString(obj, length, bDigits, bLower, bUpper)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn PrngSaveLastError(obj, path) :  EndProcedure
EndModule

