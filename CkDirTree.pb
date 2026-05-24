DeclareModule CkDirTree
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckBaseDir(obj.i)
  Declare setCkBaseDir(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.l ckDoneIterating(obj.i)
  Declare.l ckFileSize32(obj.i)
  Declare.q ckFileSize64(obj.i)
  Declare.s ckFullPath(obj.i)
  Declare.s ckFullUncPath(obj.i)
  Declare.l ckIsDirectory(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckRecurse(obj.i)
  Declare setCkRecurse(obj.i, value.l)
  Declare.s ckRelativePath(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAdvancePosition(obj.i)
  Declare.l ckBeginIterate(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
EndDeclareModule

Module CkDirTree
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkDirTreeCreate()
  PrototypeC CkDirTreeDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDirTreeLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkDirTreeLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkDirTreeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkDirTreeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkDirTreeLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global DirTreeCreate.CkDirTreeCreate = GetFunction(CkDirTreeLibId,"CkDirTreeU_CreateW")
  Global DirTreeDispose.CkDirTreeDispose = GetFunction(CkDirTreeLibId,"CkDirTreeU_DisposeW")
  Global DirTreeBaseDir.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_baseDirW")
  Global DirTreePSetBaseDir.cksPropSet = GetFunction(CkDirTreeLibId,"CkDirTreeU_putBaseDirW")
  Global DirTreeDebugLogFilePath.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_debugLogFilePathW")
  Global DirTreePSetDebugLogFilePath.cksPropSet = GetFunction(CkDirTreeLibId,"CkDirTreeU_putDebugLogFilePathW")
  Global DirTreeDoneIterating.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getDoneIteratingW")
  Global DirTreeFileSize32.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getFileSize32W")
  Global DirTreeFileSize64.ckqPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getFileSize64W")
  Global DirTreeFullPath.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_fullPathW")
  Global DirTreeFullUncPath.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_fullUncPathW")
  Global DirTreeIsDirectory.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getIsDirectoryW")
  Global DirTreeLastErrorHtml.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_lastErrorHtmlW")
  Global DirTreeLastErrorText.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_lastErrorTextW")
  Global DirTreeLastErrorXml.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_lastErrorXmlW")
  Global DirTreeLastMethodSuccess.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getLastMethodSuccessW")
  Global DirTreePSetLastMethodSuccess.cklPropSet = GetFunction(CkDirTreeLibId,"CkDirTreeU_putLastMethodSuccessW")
  Global DirTreeRecurse.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getRecurseW")
  Global DirTreePSetRecurse.cklPropSet = GetFunction(CkDirTreeLibId,"CkDirTreeU_putRecurseW")
  Global DirTreeRelativePath.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_relativePathW")
  Global DirTreeVerboseLogging.cklPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_getVerboseLoggingW")
  Global DirTreePSetVerboseLogging.cklPropSet = GetFunction(CkDirTreeLibId,"CkDirTreeU_putVerboseLoggingW")
  Global DirTreeVersion.cksPropGet = GetFunction(CkDirTreeLibId,"CkDirTreeU_versionW")
  Global DirTreeAdvancePosition.cklM = GetFunction(CkDirTreeLibId,"CkDirTreeU_AdvancePositionW")
  Global DirTreeBeginIterate.cklM = GetFunction(CkDirTreeLibId,"CkDirTreeU_BeginIterateW")
  Global DirTreeSaveLastError.cklMs = GetFunction(CkDirTreeLibId,"CkDirTreeU_SaveLastErrorW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn DirTreeCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn DirTreeDispose(obj) : EndProcedure
  Procedure.s ckBaseDir(obj.i) : ProcedureReturn PeekS(DirTreeBaseDir(obj)) : EndProcedure
  Procedure setCkBaseDir(obj.i, value.s) : ProcedureReturn DirTreePSetBaseDir(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(DirTreeDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn DirTreePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.l ckDoneIterating(obj.i) : ProcedureReturn DirTreeDoneIterating(obj) : EndProcedure
  Procedure.l ckFileSize32(obj.i) : ProcedureReturn DirTreeFileSize32(obj) : EndProcedure
  Procedure.q ckFileSize64(obj.i) : ProcedureReturn DirTreeFileSize64(obj) : EndProcedure
  Procedure.s ckFullPath(obj.i) : ProcedureReturn PeekS(DirTreeFullPath(obj)) : EndProcedure
  Procedure.s ckFullUncPath(obj.i) : ProcedureReturn PeekS(DirTreeFullUncPath(obj)) : EndProcedure
  Procedure.l ckIsDirectory(obj.i) : ProcedureReturn DirTreeIsDirectory(obj) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(DirTreeLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(DirTreeLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(DirTreeLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn DirTreeLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn DirTreePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckRecurse(obj.i) : ProcedureReturn DirTreeRecurse(obj) : EndProcedure
  Procedure setCkRecurse(obj.i, value.l) : ProcedureReturn DirTreePSetRecurse(obj,value) : EndProcedure
  Procedure.s ckRelativePath(obj.i) : ProcedureReturn PeekS(DirTreeRelativePath(obj)) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn DirTreeVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn DirTreePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(DirTreeVersion(obj)) : EndProcedure
  Procedure.l ckAdvancePosition(obj.i) :  ProcedureReturn DirTreeAdvancePosition(obj) :  EndProcedure
  Procedure.l ckBeginIterate(obj.i) :  ProcedureReturn DirTreeBeginIterate(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn DirTreeSaveLastError(obj, path) :  EndProcedure
EndModule

