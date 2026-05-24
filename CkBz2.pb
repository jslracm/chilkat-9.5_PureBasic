DeclareModule CkBz2
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare setCkAbortCurrent(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckHeartbeatMs(obj.i)
  Declare setCkHeartbeatMs(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckCompressFile(obj.i, inFilename.s, toPath.s)
  Declare.i ckCompressFileAsync(obj.i, inFilename.s, toPath.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUncompressFile(obj.i, inFilename.s, toPath.s)
  Declare.i ckUncompressFileAsync(obj.i, inFilename.s, toPath.s)
  Declare.l ckUnlockComponent(obj.i, regCode.s)
EndDeclareModule

Module CkBz2
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkBz2Create()
  PrototypeC CkBz2Dispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBz2LibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkBz2LibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkBz2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkBz2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkBz2LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global Bz2Create.CkBz2Create = GetFunction(CkBz2LibId,"CkBz2U_CreateW")
  Global Bz2Dispose.CkBz2Dispose = GetFunction(CkBz2LibId,"CkBz2U_DisposeW")
  Global Bz2AbortCurrent.cklPropGet = GetFunction(CkBz2LibId,"CkBz2U_getAbortCurrentW")
  Global Bz2PSetAbortCurrent.cklPropSet = GetFunction(CkBz2LibId,"CkBz2U_putAbortCurrentW")
  Global Bz2DebugLogFilePath.cksPropGet = GetFunction(CkBz2LibId,"CkBz2U_debugLogFilePathW")
  Global Bz2PSetDebugLogFilePath.cksPropSet = GetFunction(CkBz2LibId,"CkBz2U_putDebugLogFilePathW")
  Global Bz2HeartbeatMs.cklPropGet = GetFunction(CkBz2LibId,"CkBz2U_getHeartbeatMsW")
  Global Bz2PSetHeartbeatMs.cklPropSet = GetFunction(CkBz2LibId,"CkBz2U_putHeartbeatMsW")
  Global Bz2LastErrorHtml.cksPropGet = GetFunction(CkBz2LibId,"CkBz2U_lastErrorHtmlW")
  Global Bz2LastErrorText.cksPropGet = GetFunction(CkBz2LibId,"CkBz2U_lastErrorTextW")
  Global Bz2LastErrorXml.cksPropGet = GetFunction(CkBz2LibId,"CkBz2U_lastErrorXmlW")
  Global Bz2LastMethodSuccess.cklPropGet = GetFunction(CkBz2LibId,"CkBz2U_getLastMethodSuccessW")
  Global Bz2PSetLastMethodSuccess.cklPropSet = GetFunction(CkBz2LibId,"CkBz2U_putLastMethodSuccessW")
  Global Bz2VerboseLogging.cklPropGet = GetFunction(CkBz2LibId,"CkBz2U_getVerboseLoggingW")
  Global Bz2PSetVerboseLogging.cklPropSet = GetFunction(CkBz2LibId,"CkBz2U_putVerboseLoggingW")
  Global Bz2Version.cksPropGet = GetFunction(CkBz2LibId,"CkBz2U_versionW")
  Global Bz2CompressFile.cklMss = GetFunction(CkBz2LibId,"CkBz2U_CompressFileW")
  Global Bz2CompressFileAsync.ckiMss = GetFunction(CkBz2LibId,"CkBz2U_CompressFileAsyncW")
  Global Bz2LoadTaskCaller.cklMi = GetFunction(CkBz2LibId,"CkBz2U_LoadTaskCallerW")
  Global Bz2SaveLastError.cklMs = GetFunction(CkBz2LibId,"CkBz2U_SaveLastErrorW")
  Global Bz2UncompressFile.cklMss = GetFunction(CkBz2LibId,"CkBz2U_UncompressFileW")
  Global Bz2UncompressFileAsync.ckiMss = GetFunction(CkBz2LibId,"CkBz2U_UncompressFileAsyncW")
  Global Bz2UnlockComponent.cklMs = GetFunction(CkBz2LibId,"CkBz2U_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn Bz2Create() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn Bz2Dispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn Bz2AbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn Bz2PSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(Bz2DebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn Bz2PSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn Bz2HeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn Bz2PSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(Bz2LastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(Bz2LastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(Bz2LastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn Bz2LastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn Bz2PSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn Bz2VerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn Bz2PSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(Bz2Version(obj)) : EndProcedure
  Procedure.l ckCompressFile(obj.i, inFilename.s, toPath.s) :  ProcedureReturn Bz2CompressFile(obj, inFilename, toPath) :  EndProcedure
  Procedure.i ckCompressFileAsync(obj.i, inFilename.s, toPath.s) :  ProcedureReturn Bz2CompressFileAsync(obj, inFilename, toPath) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn Bz2LoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn Bz2SaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUncompressFile(obj.i, inFilename.s, toPath.s) :  ProcedureReturn Bz2UncompressFile(obj, inFilename, toPath) :  EndProcedure
  Procedure.i ckUncompressFileAsync(obj.i, inFilename.s, toPath.s) :  ProcedureReturn Bz2UncompressFileAsync(obj, inFilename, toPath) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, regCode.s) :  ProcedureReturn Bz2UnlockComponent(obj, regCode) :  EndProcedure
EndModule

