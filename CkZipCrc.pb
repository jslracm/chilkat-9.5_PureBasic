DeclareModule CkZipCrc
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
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare ckBeginStream(obj.i)
  Declare.l ckCrcBd(obj.i, bd.i)
  Declare.l ckCrcSb(obj.i, sb.i, charset.s)
  Declare.l ckCrcString(obj.i, str.s, charset.s)
  Declare.l ckEndStream(obj.i)
  Declare.l ckFileCrc(obj.i, path.s)
  Declare.i ckFileCrcAsync(obj.i, path.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.s ckToHex(obj.i, crc.l)
EndDeclareModule

Module CkZipCrc
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i CkZipCrcCreate()
  PrototypeC CkZipCrcDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipCrcLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkZipCrcLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkZipCrcLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkZipCrcLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkZipCrcLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global ZipCrcCreate.CkZipCrcCreate = GetFunction(CkZipCrcLibId,"CkZipCrcU_CreateW")
  Global ZipCrcDispose.CkZipCrcDispose = GetFunction(CkZipCrcLibId,"CkZipCrcU_DisposeW")
  Global ZipCrcDebugLogFilePath.cksPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_debugLogFilePathW")
  Global ZipCrcPSetDebugLogFilePath.cksPropSet = GetFunction(CkZipCrcLibId,"CkZipCrcU_putDebugLogFilePathW")
  Global ZipCrcLastErrorHtml.cksPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_lastErrorHtmlW")
  Global ZipCrcLastErrorText.cksPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_lastErrorTextW")
  Global ZipCrcLastErrorXml.cksPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_lastErrorXmlW")
  Global ZipCrcLastMethodSuccess.cklPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_getLastMethodSuccessW")
  Global ZipCrcPSetLastMethodSuccess.cklPropSet = GetFunction(CkZipCrcLibId,"CkZipCrcU_putLastMethodSuccessW")
  Global ZipCrcVerboseLogging.cklPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_getVerboseLoggingW")
  Global ZipCrcPSetVerboseLogging.cklPropSet = GetFunction(CkZipCrcLibId,"CkZipCrcU_putVerboseLoggingW")
  Global ZipCrcVersion.cksPropGet = GetFunction(CkZipCrcLibId,"CkZipCrcU_versionW")
  Global ZipCrcBeginStream.ckvM = GetFunction(CkZipCrcLibId,"CkZipCrcU_BeginStreamW")
  Global ZipCrcCrcBd.cklMi = GetFunction(CkZipCrcLibId,"CkZipCrcU_CrcBdW")
  Global ZipCrcCrcSb.cklMis = GetFunction(CkZipCrcLibId,"CkZipCrcU_CrcSbW")
  Global ZipCrcCrcString.cklMss = GetFunction(CkZipCrcLibId,"CkZipCrcU_CrcStringW")
  Global ZipCrcEndStream.cklM = GetFunction(CkZipCrcLibId,"CkZipCrcU_EndStreamW")
  Global ZipCrcFileCrc.cklMs = GetFunction(CkZipCrcLibId,"CkZipCrcU_FileCrcW")
  Global ZipCrcFileCrcAsync.ckiMs = GetFunction(CkZipCrcLibId,"CkZipCrcU_FileCrcAsyncW")
  Global ZipCrcLoadTaskCaller.cklMi = GetFunction(CkZipCrcLibId,"CkZipCrcU_LoadTaskCallerW")
  Global ZipCrcSaveLastError.cklMs = GetFunction(CkZipCrcLibId,"CkZipCrcU_SaveLastErrorW")
  Global ZipCrcToHex.cklMl = GetFunction(CkZipCrcLibId,"CkZipCrcU_toHexW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn ZipCrcCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn ZipCrcDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(ZipCrcDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn ZipCrcPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(ZipCrcLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(ZipCrcLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(ZipCrcLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn ZipCrcLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn ZipCrcPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn ZipCrcVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn ZipCrcPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(ZipCrcVersion(obj)) : EndProcedure
  Procedure ckBeginStream(obj.i) :  ProcedureReturn ZipCrcBeginStream(obj) :  EndProcedure
  Procedure.l ckCrcBd(obj.i, bd.i) :  ProcedureReturn ZipCrcCrcBd(obj, bd) :  EndProcedure
  Procedure.l ckCrcSb(obj.i, sb.i, charset.s) :  ProcedureReturn ZipCrcCrcSb(obj, sb, charset) :  EndProcedure
  Procedure.l ckCrcString(obj.i, str.s, charset.s) :  ProcedureReturn ZipCrcCrcString(obj, str, charset) :  EndProcedure
  Procedure.l ckEndStream(obj.i) :  ProcedureReturn ZipCrcEndStream(obj) :  EndProcedure
  Procedure.l ckFileCrc(obj.i, path.s) :  ProcedureReturn ZipCrcFileCrc(obj, path) :  EndProcedure
  Procedure.i ckFileCrcAsync(obj.i, path.s) :  ProcedureReturn ZipCrcFileCrcAsync(obj, path) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn ZipCrcLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn ZipCrcSaveLastError(obj, path) :  EndProcedure
  Procedure.s ckToHex(obj.i, crc.l) :  ProcedureReturn PeekS(ZipCrcToHex(obj, crc)) :  EndProcedure
EndModule

