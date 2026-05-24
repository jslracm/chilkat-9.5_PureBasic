DeclareModule CkSFtpFile
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckCreateTimeStr(obj.i)
  Declare.s ckFilename(obj.i)
  Declare.s ckFileType(obj.i)
  Declare.l ckGid(obj.i)
  Declare.s ckGroup(obj.i)
  Declare.l ckIsAppendOnly(obj.i)
  Declare.l ckIsArchive(obj.i)
  Declare.l ckIsCaseInsensitive(obj.i)
  Declare.l ckIsCompressed(obj.i)
  Declare.l ckIsDirectory(obj.i)
  Declare.l ckIsEncrypted(obj.i)
  Declare.l ckIsHidden(obj.i)
  Declare.l ckIsImmutable(obj.i)
  Declare.l ckIsReadOnly(obj.i)
  Declare.l ckIsRegular(obj.i)
  Declare.l ckIsSparse(obj.i)
  Declare.l ckIsSymLink(obj.i)
  Declare.l ckIsSync(obj.i)
  Declare.l ckIsSystem(obj.i)
  Declare.s ckLastAccessTimeStr(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLastModifiedTimeStr(obj.i)
  Declare.s ckOwner(obj.i)
  Declare.l ckPermissions(obj.i)
  Declare.l ckSize32(obj.i)
  Declare.q ckSize64(obj.i)
  Declare.s ckSizeStr(obj.i)
  Declare.l ckUid(obj.i)
  Declare.i ckGetCreateDt(obj.i)
  Declare.i ckGetLastAccessDt(obj.i)
  Declare.i ckGetLastModifiedDt(obj.i)
EndDeclareModule

Module CkSFtpFile
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i CkSFtpFileCreate()
  PrototypeC CkSFtpFileDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpFileLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSFtpFileLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSFtpFileLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSFtpFileLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSFtpFileLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SFtpFileCreate.CkSFtpFileCreate = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_CreateW")
  Global SFtpFileDispose.CkSFtpFileDispose = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_DisposeW")
  Global SFtpFileCreateTimeStr.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_createTimeStrW")
  Global SFtpFileFilename.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_filenameW")
  Global SFtpFileFileType.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_fileTypeW")
  Global SFtpFileGid.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getGidW")
  Global SFtpFileGroup.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_groupW")
  Global SFtpFileIsAppendOnly.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsAppendOnlyW")
  Global SFtpFileIsArchive.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsArchiveW")
  Global SFtpFileIsCaseInsensitive.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsCaseInsensitiveW")
  Global SFtpFileIsCompressed.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsCompressedW")
  Global SFtpFileIsDirectory.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsDirectoryW")
  Global SFtpFileIsEncrypted.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsEncryptedW")
  Global SFtpFileIsHidden.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsHiddenW")
  Global SFtpFileIsImmutable.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsImmutableW")
  Global SFtpFileIsReadOnly.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsReadOnlyW")
  Global SFtpFileIsRegular.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsRegularW")
  Global SFtpFileIsSparse.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsSparseW")
  Global SFtpFileIsSymLink.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsSymLinkW")
  Global SFtpFileIsSync.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsSyncW")
  Global SFtpFileIsSystem.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getIsSystemW")
  Global SFtpFileLastAccessTimeStr.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_lastAccessTimeStrW")
  Global SFtpFileLastMethodSuccess.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getLastMethodSuccessW")
  Global SFtpFilePSetLastMethodSuccess.cklPropSet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_putLastMethodSuccessW")
  Global SFtpFileLastModifiedTimeStr.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_lastModifiedTimeStrW")
  Global SFtpFileOwner.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_ownerW")
  Global SFtpFilePermissions.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getPermissionsW")
  Global SFtpFileSize32.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getSize32W")
  Global SFtpFileSize64.ckqPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getSize64W")
  Global SFtpFileSizeStr.cksPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_sizeStrW")
  Global SFtpFileUid.cklPropGet = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_getUidW")
  Global SFtpFileGetCreateDt.ckiM = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_GetCreateDtW")
  Global SFtpFileGetLastAccessDt.ckiM = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_GetLastAccessDtW")
  Global SFtpFileGetLastModifiedDt.ckiM = GetFunction(CkSFtpFileLibId,"CkSFtpFileU_GetLastModifiedDtW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SFtpFileCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SFtpFileDispose(obj) : EndProcedure
  Procedure.s ckCreateTimeStr(obj.i) : ProcedureReturn PeekS(SFtpFileCreateTimeStr(obj)) : EndProcedure
  Procedure.s ckFilename(obj.i) : ProcedureReturn PeekS(SFtpFileFilename(obj)) : EndProcedure
  Procedure.s ckFileType(obj.i) : ProcedureReturn PeekS(SFtpFileFileType(obj)) : EndProcedure
  Procedure.l ckGid(obj.i) : ProcedureReturn SFtpFileGid(obj) : EndProcedure
  Procedure.s ckGroup(obj.i) : ProcedureReturn PeekS(SFtpFileGroup(obj)) : EndProcedure
  Procedure.l ckIsAppendOnly(obj.i) : ProcedureReturn SFtpFileIsAppendOnly(obj) : EndProcedure
  Procedure.l ckIsArchive(obj.i) : ProcedureReturn SFtpFileIsArchive(obj) : EndProcedure
  Procedure.l ckIsCaseInsensitive(obj.i) : ProcedureReturn SFtpFileIsCaseInsensitive(obj) : EndProcedure
  Procedure.l ckIsCompressed(obj.i) : ProcedureReturn SFtpFileIsCompressed(obj) : EndProcedure
  Procedure.l ckIsDirectory(obj.i) : ProcedureReturn SFtpFileIsDirectory(obj) : EndProcedure
  Procedure.l ckIsEncrypted(obj.i) : ProcedureReturn SFtpFileIsEncrypted(obj) : EndProcedure
  Procedure.l ckIsHidden(obj.i) : ProcedureReturn SFtpFileIsHidden(obj) : EndProcedure
  Procedure.l ckIsImmutable(obj.i) : ProcedureReturn SFtpFileIsImmutable(obj) : EndProcedure
  Procedure.l ckIsReadOnly(obj.i) : ProcedureReturn SFtpFileIsReadOnly(obj) : EndProcedure
  Procedure.l ckIsRegular(obj.i) : ProcedureReturn SFtpFileIsRegular(obj) : EndProcedure
  Procedure.l ckIsSparse(obj.i) : ProcedureReturn SFtpFileIsSparse(obj) : EndProcedure
  Procedure.l ckIsSymLink(obj.i) : ProcedureReturn SFtpFileIsSymLink(obj) : EndProcedure
  Procedure.l ckIsSync(obj.i) : ProcedureReturn SFtpFileIsSync(obj) : EndProcedure
  Procedure.l ckIsSystem(obj.i) : ProcedureReturn SFtpFileIsSystem(obj) : EndProcedure
  Procedure.s ckLastAccessTimeStr(obj.i) : ProcedureReturn PeekS(SFtpFileLastAccessTimeStr(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SFtpFileLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SFtpFilePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLastModifiedTimeStr(obj.i) : ProcedureReturn PeekS(SFtpFileLastModifiedTimeStr(obj)) : EndProcedure
  Procedure.s ckOwner(obj.i) : ProcedureReturn PeekS(SFtpFileOwner(obj)) : EndProcedure
  Procedure.l ckPermissions(obj.i) : ProcedureReturn SFtpFilePermissions(obj) : EndProcedure
  Procedure.l ckSize32(obj.i) : ProcedureReturn SFtpFileSize32(obj) : EndProcedure
  Procedure.q ckSize64(obj.i) : ProcedureReturn SFtpFileSize64(obj) : EndProcedure
  Procedure.s ckSizeStr(obj.i) : ProcedureReturn PeekS(SFtpFileSizeStr(obj)) : EndProcedure
  Procedure.l ckUid(obj.i) : ProcedureReturn SFtpFileUid(obj) : EndProcedure
  Procedure.i ckGetCreateDt(obj.i) :  ProcedureReturn SFtpFileGetCreateDt(obj) :  EndProcedure
  Procedure.i ckGetLastAccessDt(obj.i) :  ProcedureReturn SFtpFileGetLastAccessDt(obj) :  EndProcedure
  Procedure.i ckGetLastModifiedDt(obj.i) :  ProcedureReturn SFtpFileGetLastModifiedDt(obj) :  EndProcedure
EndModule

