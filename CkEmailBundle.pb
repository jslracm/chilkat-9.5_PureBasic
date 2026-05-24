DeclareModule CkEmailBundle
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
  Declare.l ckMessageCount(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddEmail(obj.i, email.i)
  Declare.i ckFindByHeader(obj.i, headerFieldName.s, headerFieldValue.s)
  Declare.i ckGetEmail(obj.i, index.l)
  Declare.i ckGetUidls(obj.i)
  Declare.s ckGetXml(obj.i)
  Declare.l ckLoadTaskResult(obj.i, task.i)
  Declare.l ckLoadXml(obj.i, filename.s)
  Declare.l ckLoadXmlString(obj.i, xmlStr.s)
  Declare.l ckRemoveEmail(obj.i, email.i)
  Declare.l ckRemoveEmailByIndex(obj.i, index.l)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveXml(obj.i, filename.s)
  Declare ckSortByDate(obj.i, ascending.l)
  Declare ckSortByRecipient(obj.i, ascending.l)
  Declare ckSortBySender(obj.i, ascending.l)
  Declare ckSortBySubject(obj.i, ascending.l)
EndDeclareModule

Module CkEmailBundle
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkEmailBundleCreate()
  PrototypeC CkEmailBundleDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEmailBundleLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkEmailBundleLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkEmailBundleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkEmailBundleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkEmailBundleLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global EmailBundleCreate.CkEmailBundleCreate = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_CreateW")
  Global EmailBundleDispose.CkEmailBundleDispose = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_DisposeW")
  Global EmailBundleDebugLogFilePath.cksPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_debugLogFilePathW")
  Global EmailBundlePSetDebugLogFilePath.cksPropSet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_putDebugLogFilePathW")
  Global EmailBundleLastErrorHtml.cksPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_lastErrorHtmlW")
  Global EmailBundleLastErrorText.cksPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_lastErrorTextW")
  Global EmailBundleLastErrorXml.cksPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_lastErrorXmlW")
  Global EmailBundleLastMethodSuccess.cklPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_getLastMethodSuccessW")
  Global EmailBundlePSetLastMethodSuccess.cklPropSet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_putLastMethodSuccessW")
  Global EmailBundleMessageCount.cklPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_getMessageCountW")
  Global EmailBundleVerboseLogging.cklPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_getVerboseLoggingW")
  Global EmailBundlePSetVerboseLogging.cklPropSet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_putVerboseLoggingW")
  Global EmailBundleVersion.cksPropGet = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_versionW")
  Global EmailBundleAddEmail.cklMi = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_AddEmailW")
  Global EmailBundleFindByHeader.ckiMss = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_FindByHeaderW")
  Global EmailBundleGetEmail.ckiMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_GetEmailW")
  Global EmailBundleGetUidls.ckiM = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_GetUidlsW")
  Global EmailBundleGetXml.cklM = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_getXmlW")
  Global EmailBundleLoadTaskResult.cklMi = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_LoadTaskResultW")
  Global EmailBundleLoadXml.cklMs = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_LoadXmlW")
  Global EmailBundleLoadXmlString.cklMs = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_LoadXmlStringW")
  Global EmailBundleRemoveEmail.cklMi = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_RemoveEmailW")
  Global EmailBundleRemoveEmailByIndex.cklMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_RemoveEmailByIndexW")
  Global EmailBundleSaveLastError.cklMs = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SaveLastErrorW")
  Global EmailBundleSaveXml.cklMs = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SaveXmlW")
  Global EmailBundleSortByDate.ckvMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SortByDateW")
  Global EmailBundleSortByRecipient.ckvMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SortByRecipientW")
  Global EmailBundleSortBySender.ckvMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SortBySenderW")
  Global EmailBundleSortBySubject.ckvMl = GetFunction(CkEmailBundleLibId,"CkEmailBundleU_SortBySubjectW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn EmailBundleCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn EmailBundleDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(EmailBundleDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn EmailBundlePSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(EmailBundleLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(EmailBundleLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(EmailBundleLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn EmailBundleLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn EmailBundlePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckMessageCount(obj.i) : ProcedureReturn EmailBundleMessageCount(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn EmailBundleVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn EmailBundlePSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(EmailBundleVersion(obj)) : EndProcedure
  Procedure.l ckAddEmail(obj.i, email.i) :  ProcedureReturn EmailBundleAddEmail(obj, email) :  EndProcedure
  Procedure.i ckFindByHeader(obj.i, headerFieldName.s, headerFieldValue.s) :  ProcedureReturn EmailBundleFindByHeader(obj, headerFieldName, headerFieldValue) :  EndProcedure
  Procedure.i ckGetEmail(obj.i, index.l) :  ProcedureReturn EmailBundleGetEmail(obj, index) :  EndProcedure
  Procedure.i ckGetUidls(obj.i) :  ProcedureReturn EmailBundleGetUidls(obj) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(EmailBundleGetXml(obj)) :  EndProcedure
  Procedure.l ckLoadTaskResult(obj.i, task.i) :  ProcedureReturn EmailBundleLoadTaskResult(obj, task) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, filename.s) :  ProcedureReturn EmailBundleLoadXml(obj, filename) :  EndProcedure
  Procedure.l ckLoadXmlString(obj.i, xmlStr.s) :  ProcedureReturn EmailBundleLoadXmlString(obj, xmlStr) :  EndProcedure
  Procedure.l ckRemoveEmail(obj.i, email.i) :  ProcedureReturn EmailBundleRemoveEmail(obj, email) :  EndProcedure
  Procedure.l ckRemoveEmailByIndex(obj.i, index.l) :  ProcedureReturn EmailBundleRemoveEmailByIndex(obj, index) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn EmailBundleSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveXml(obj.i, filename.s) :  ProcedureReturn EmailBundleSaveXml(obj, filename) :  EndProcedure
  Procedure ckSortByDate(obj.i, ascending.l) :  ProcedureReturn EmailBundleSortByDate(obj, ascending) :  EndProcedure
  Procedure ckSortByRecipient(obj.i, ascending.l) :  ProcedureReturn EmailBundleSortByRecipient(obj, ascending) :  EndProcedure
  Procedure ckSortBySender(obj.i, ascending.l) :  ProcedureReturn EmailBundleSortBySender(obj, ascending) :  EndProcedure
  Procedure ckSortBySubject(obj.i, ascending.l) :  ProcedureReturn EmailBundleSortBySubject(obj, ascending) :  EndProcedure
EndModule

