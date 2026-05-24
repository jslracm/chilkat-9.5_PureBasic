DeclareModule CkSFtpDir
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumFilesAndDirs(obj.i)
  Declare.s ckOriginalPath(obj.i)
  Declare.s ckGetFilename(obj.i, index.l)
  Declare.i ckGetFileObject(obj.i, index.l)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare ckSort(obj.i, field.s, ascending.l)
EndDeclareModule

Module CkSFtpDir
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkSFtpDirCreate()
  PrototypeC CkSFtpDirDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpDirLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSFtpDirLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSFtpDirLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpDirLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSFtpDirLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SFtpDirCreate.CkSFtpDirCreate = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_CreateW")
  Global SFtpDirDispose.CkSFtpDirDispose = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_DisposeW")
  Global SFtpDirLastMethodSuccess.cklPropGet = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_getLastMethodSuccessW")
  Global SFtpDirPSetLastMethodSuccess.cklPropSet = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_putLastMethodSuccessW")
  Global SFtpDirNumFilesAndDirs.cklPropGet = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_getNumFilesAndDirsW")
  Global SFtpDirOriginalPath.cksPropGet = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_originalPathW")
  Global SFtpDirGetFilename.cklMl = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_getFilenameW")
  Global SFtpDirGetFileObject.ckiMl = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_GetFileObjectW")
  Global SFtpDirLoadTaskResult.cklMi = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_LoadTaskResultW")
  Global SFtpDirSort.ckvMsl = GetFunction(CkSFtpDirLibId,"CkSFtpDirU_SortW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SFtpDirCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SFtpDirDispose(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SFtpDirLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SFtpDirPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumFilesAndDirs(obj.i) : ProcedureReturn SFtpDirNumFilesAndDirs(obj) : EndProcedure
  Procedure.s ckOriginalPath(obj.i) : ProcedureReturn PeekS(SFtpDirOriginalPath(obj)) : EndProcedure
  Procedure.s ckGetFilename(obj.i, index.l) :  ProcedureReturn PeekS(SFtpDirGetFilename(obj, index)) :  EndProcedure
  Procedure.i ckGetFileObject(obj.i, index.l) :  ProcedureReturn SFtpDirGetFileObject(obj, index) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn SFtpDirLoadTaskResult(obj, task) :  EndProcedure
  Procedure ckSort(obj.i, field.s, ascending.l) :  ProcedureReturn SFtpDirSort(obj, field, ascending) :  EndProcedure
EndModule

