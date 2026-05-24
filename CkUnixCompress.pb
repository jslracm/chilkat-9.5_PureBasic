DeclareModule CkUnixCompress
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
  Declare.l ckCompressFile(obj.i, inFilename.s, destPath.s)
  Declare.i ckCompressFileAsync(obj.i, inFilename.s, destPath.s)
  Declare.l ckCompressStringToFile(obj.i, inStr.s, charset.s, destPath.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUncompressFile(obj.i, inFilename.s, destPath.s)
  Declare.i ckUncompressFileAsync(obj.i, inFilename.s, destPath.s)
  Declare.s ckUncompressFileToString(obj.i, zFilename.s, charset.s)
  Declare.i ckUncompressFileToStringAsync(obj.i, zFilename.s, charset.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckUnTarZ(obj.i, zFilename.s, destDir.s, bNoAbsolute.l)
  Declare.i ckUnTarZAsync(obj.i, zFilename.s, destDir.s, bNoAbsolute.l)
EndDeclareModule

Module CkUnixCompress
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.i ckiMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkUnixCompressCreate()
  PrototypeC CkUnixCompressDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUnixCompressLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkUnixCompressLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkUnixCompressLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUnixCompressLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkUnixCompressLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global UnixCompressCreate.CkUnixCompressCreate = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_CreateW")
  Global UnixCompressDispose.CkUnixCompressDispose = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_DisposeW")
  Global UnixCompressAbortCurrent.cklPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_getAbortCurrentW")
  Global UnixCompressPSetAbortCurrent.cklPropSet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_putAbortCurrentW")
  Global UnixCompressDebugLogFilePath.cksPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_debugLogFilePathW")
  Global UnixCompressPSetDebugLogFilePath.cksPropSet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_putDebugLogFilePathW")
  Global UnixCompressHeartbeatMs.cklPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_getHeartbeatMsW")
  Global UnixCompressPSetHeartbeatMs.cklPropSet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_putHeartbeatMsW")
  Global UnixCompressLastErrorHtml.cksPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_lastErrorHtmlW")
  Global UnixCompressLastErrorText.cksPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_lastErrorTextW")
  Global UnixCompressLastErrorXml.cksPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_lastErrorXmlW")
  Global UnixCompressLastMethodSuccess.cklPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_getLastMethodSuccessW")
  Global UnixCompressPSetLastMethodSuccess.cklPropSet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_putLastMethodSuccessW")
  Global UnixCompressVerboseLogging.cklPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_getVerboseLoggingW")
  Global UnixCompressPSetVerboseLogging.cklPropSet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_putVerboseLoggingW")
  Global UnixCompressVersion.cksPropGet = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_versionW")
  Global UnixCompressCompressFile.cklMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_CompressFileW")
  Global UnixCompressCompressFileAsync.ckiMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_CompressFileAsyncW")
  Global UnixCompressCompressStringToFile.cklMsss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_CompressStringToFileW")
  Global UnixCompressLoadTaskCaller.cklMi = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_LoadTaskCallerW")
  Global UnixCompressSaveLastError.cklMs = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_SaveLastErrorW")
  Global UnixCompressUncompressFile.cklMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UncompressFileW")
  Global UnixCompressUncompressFileAsync.ckiMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UncompressFileAsyncW")
  Global UnixCompressUncompressFileToString.cklMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_uncompressFileToStringW")
  Global UnixCompressUncompressFileToStringAsync.ckiMss = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UncompressFileToStringAsyncW")
  Global UnixCompressUnlockComponent.cklMs = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UnlockComponentW")
  Global UnixCompressUnTarZ.cklMssl = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UnTarZW")
  Global UnixCompressUnTarZAsync.ckiMssl = GetFunction(CkUnixCompressLibId,"CkUnixCompressU_UnTarZAsyncW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn UnixCompressCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn UnixCompressDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn UnixCompressAbortCurrent(obj) : EndProcedure
  Procedure setCkAbortCurrent(obj.i, value.l) : ProcedureReturn UnixCompressPSetAbortCurrent(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(UnixCompressDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn UnixCompressPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckHeartbeatMs(obj.i) : ProcedureReturn UnixCompressHeartbeatMs(obj) : EndProcedure
  Procedure setCkHeartbeatMs(obj.i, value.l) : ProcedureReturn UnixCompressPSetHeartbeatMs(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(UnixCompressLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(UnixCompressLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(UnixCompressLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn UnixCompressLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn UnixCompressPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn UnixCompressVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn UnixCompressPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(UnixCompressVersion(obj)) : EndProcedure
  Procedure.l ckCompressFile(obj.i, inFilename.s, destPath.s) :  ProcedureReturn UnixCompressCompressFile(obj, inFilename, destPath) :  EndProcedure
  Procedure.i ckCompressFileAsync(obj.i, inFilename.s, destPath.s) :  ProcedureReturn UnixCompressCompressFileAsync(obj, inFilename, destPath) :  EndProcedure
  Procedure.l ckCompressStringToFile(obj.i, inStr.s, charset.s, destPath.s) :  ProcedureReturn UnixCompressCompressStringToFile(obj, inStr, charset, destPath) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn UnixCompressLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn UnixCompressSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUncompressFile(obj.i, inFilename.s, destPath.s) :  ProcedureReturn UnixCompressUncompressFile(obj, inFilename, destPath) :  EndProcedure
  Procedure.i ckUncompressFileAsync(obj.i, inFilename.s, destPath.s) :  ProcedureReturn UnixCompressUncompressFileAsync(obj, inFilename, destPath) :  EndProcedure
  Procedure.s ckUncompressFileToString(obj.i, zFilename.s, charset.s) :  ProcedureReturn PeekS(UnixCompressUncompressFileToString(obj, zFilename, charset)) :  EndProcedure
  Procedure.i ckUncompressFileToStringAsync(obj.i, zFilename.s, charset.s) :  ProcedureReturn UnixCompressUncompressFileToStringAsync(obj, zFilename, charset) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn UnixCompressUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckUnTarZ(obj.i, zFilename.s, destDir.s, bNoAbsolute.l) :  ProcedureReturn UnixCompressUnTarZ(obj, zFilename, destDir, bNoAbsolute) :  EndProcedure
  Procedure.i ckUnTarZAsync(obj.i, zFilename.s, destDir.s, bNoAbsolute.l) :  ProcedureReturn UnixCompressUnTarZAsync(obj, zFilename, destDir, bNoAbsolute) :  EndProcedure
EndModule

