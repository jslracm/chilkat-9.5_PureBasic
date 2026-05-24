DeclareModule CkAtom
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckAbortCurrent(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumEntries(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddElement(obj.i, tag.s, value.s)
  Declare.l ckAddElementDateStr(obj.i, tag.s, dateTimeStr.s)
  Declare.l ckAddElementDt(obj.i, tag.s, dateTime.i)
  Declare.l ckAddElementHtml(obj.i, tag.s, htmlStr.s)
  Declare.l ckAddElementXHtml(obj.i, tag.s, xmlStr.s)
  Declare.l ckAddElementXml(obj.i, tag.s, xmlStr.s)
  Declare ckAddEntry(obj.i, xmlStr.s)
  Declare ckAddLink(obj.i, rel.s, href.s, title.s, typ.s)
  Declare ckAddPerson(obj.i, tag.s, name.s, uri.s, email.s)
  Declare ckDeleteElement(obj.i, tag.s, index.l)
  Declare ckDeleteElementAttr(obj.i, tag.s, index.l, attrName.s)
  Declare ckDeletePerson(obj.i, tag.s, index.l)
  Declare.l ckDownloadAtom(obj.i, url.s)
  Declare.i ckDownloadAtomAsync(obj.i, url.s)
  Declare.s ckGetElement(obj.i, tag.s, index.l)
  Declare.s ckGetElementAttr(obj.i, tag.s, index.l, attrName.s)
  Declare.l ckGetElementCount(obj.i, tag.s)
  Declare.s ckGetElementDateStr(obj.i, tag.s, index.l)
  Declare.i ckGetElementDt(obj.i, tag.s, index.l)
  Declare.i ckGetEntry(obj.i, index.l)
  Declare.s ckGetLinkHref(obj.i, relName.s)
  Declare.s ckGetPersonInfo(obj.i, tag.s, index.l, tag2.s)
  Declare.s ckGetTopAttr(obj.i, attrName.s)
  Declare.l ckHasElement(obj.i, tag.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.l ckLoadXml(obj.i, xmlStr.s)
  Declare ckNewEntry(obj.i)
  Declare ckNewFeed(obj.i)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetElementAttr(obj.i, tag.s, index.l, attrName.s, attrValue.s)
  Declare ckSetTopAttr(obj.i, attrName.s, value.s)
  Declare.s ckToXmlString(obj.i)
  Declare ckUpdateElement(obj.i, tag.s, index.l, value.s)
  Declare ckUpdateElementDateStr(obj.i, tag.s, index.l, dateTimeStr.s)
  Declare ckUpdateElementDt(obj.i, tag.s, index.l, dateTime.i)
  Declare ckUpdateElementHtml(obj.i, tag.s, index.l, htmlStr.s)
  Declare ckUpdateElementXHtml(obj.i, tag.s, index.l, xmlStr.s)
  Declare ckUpdateElementXml(obj.i, tag.s, index.l, xmlStr.s)
  Declare ckUpdatePerson(obj.i, tag.s, index.l, name.s, uri.s, email.s)
EndDeclareModule

Module CkAtom
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC ckvMssss(obj.i, arg1.s, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC ckvMsli(obj.i, arg1.s, arg2.l, arg3.i)
  PrototypeC ckvMslsss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s, arg5.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC ckvM(obj.i)
  PrototypeC ckvMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkAtomCreate()
  PrototypeC CkAtomDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAtomLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkAtomLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkAtomLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkAtomLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkAtomLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global AtomCreate.CkAtomCreate = GetFunction(CkAtomLibId,"CkAtomU_CreateW")
  Global AtomDispose.CkAtomDispose = GetFunction(CkAtomLibId,"CkAtomU_DisposeW")
  Global AtomAbortCurrent.cklPropGet = GetFunction(CkAtomLibId,"CkAtomU_getAbortCurrentW")
  Global AtomDebugLogFilePath.cksPropGet = GetFunction(CkAtomLibId,"CkAtomU_debugLogFilePathW")
  Global AtomPSetDebugLogFilePath.cksPropSet = GetFunction(CkAtomLibId,"CkAtomU_putDebugLogFilePathW")
  Global AtomLastErrorHtml.cksPropGet = GetFunction(CkAtomLibId,"CkAtomU_lastErrorHtmlW")
  Global AtomLastErrorText.cksPropGet = GetFunction(CkAtomLibId,"CkAtomU_lastErrorTextW")
  Global AtomLastErrorXml.cksPropGet = GetFunction(CkAtomLibId,"CkAtomU_lastErrorXmlW")
  Global AtomLastMethodSuccess.cklPropGet = GetFunction(CkAtomLibId,"CkAtomU_getLastMethodSuccessW")
  Global AtomPSetLastMethodSuccess.cklPropSet = GetFunction(CkAtomLibId,"CkAtomU_putLastMethodSuccessW")
  Global AtomNumEntries.cklPropGet = GetFunction(CkAtomLibId,"CkAtomU_getNumEntriesW")
  Global AtomVerboseLogging.cklPropGet = GetFunction(CkAtomLibId,"CkAtomU_getVerboseLoggingW")
  Global AtomPSetVerboseLogging.cklPropSet = GetFunction(CkAtomLibId,"CkAtomU_putVerboseLoggingW")
  Global AtomVersion.cksPropGet = GetFunction(CkAtomLibId,"CkAtomU_versionW")
  Global AtomAddElement.cklMss = GetFunction(CkAtomLibId,"CkAtomU_AddElementW")
  Global AtomAddElementDateStr.cklMss = GetFunction(CkAtomLibId,"CkAtomU_AddElementDateStrW")
  Global AtomAddElementDt.cklMsi = GetFunction(CkAtomLibId,"CkAtomU_AddElementDtW")
  Global AtomAddElementHtml.cklMss = GetFunction(CkAtomLibId,"CkAtomU_AddElementHtmlW")
  Global AtomAddElementXHtml.cklMss = GetFunction(CkAtomLibId,"CkAtomU_AddElementXHtmlW")
  Global AtomAddElementXml.cklMss = GetFunction(CkAtomLibId,"CkAtomU_AddElementXmlW")
  Global AtomAddEntry.ckvMs = GetFunction(CkAtomLibId,"CkAtomU_AddEntryW")
  Global AtomAddLink.ckvMssss = GetFunction(CkAtomLibId,"CkAtomU_AddLinkW")
  Global AtomAddPerson.ckvMssss = GetFunction(CkAtomLibId,"CkAtomU_AddPersonW")
  Global AtomDeleteElement.ckvMsl = GetFunction(CkAtomLibId,"CkAtomU_DeleteElementW")
  Global AtomDeleteElementAttr.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_DeleteElementAttrW")
  Global AtomDeletePerson.ckvMsl = GetFunction(CkAtomLibId,"CkAtomU_DeletePersonW")
  Global AtomDownloadAtom.cklMs = GetFunction(CkAtomLibId,"CkAtomU_DownloadAtomW")
  Global AtomDownloadAtomAsync.ckiMs = GetFunction(CkAtomLibId,"CkAtomU_DownloadAtomAsyncW")
  Global AtomGetElement.cklMsl = GetFunction(CkAtomLibId,"CkAtomU_getElementW")
  Global AtomGetElementAttr.cklMsls = GetFunction(CkAtomLibId,"CkAtomU_getElementAttrW")
  Global AtomGetElementCount.cklMs = GetFunction(CkAtomLibId,"CkAtomU_GetElementCountW")
  Global AtomGetElementDateStr.cklMsl = GetFunction(CkAtomLibId,"CkAtomU_getElementDateStrW")
  Global AtomGetElementDt.ckiMsl = GetFunction(CkAtomLibId,"CkAtomU_GetElementDtW")
  Global AtomGetEntry.ckiMl = GetFunction(CkAtomLibId,"CkAtomU_GetEntryW")
  Global AtomGetLinkHref.cklMs = GetFunction(CkAtomLibId,"CkAtomU_getLinkHrefW")
  Global AtomGetPersonInfo.cklMsls = GetFunction(CkAtomLibId,"CkAtomU_getPersonInfoW")
  Global AtomGetTopAttr.cklMs = GetFunction(CkAtomLibId,"CkAtomU_getTopAttrW")
  Global AtomHasElement.cklMs = GetFunction(CkAtomLibId,"CkAtomU_HasElementW")
  Global AtomLoadTaskCaller.cklMi = GetFunction(CkAtomLibId,"CkAtomU_LoadTaskCallerW")
  Global AtomLoadXml.cklMs = GetFunction(CkAtomLibId,"CkAtomU_LoadXmlW")
  Global AtomNewEntry.ckvM = GetFunction(CkAtomLibId,"CkAtomU_NewEntryW")
  Global AtomNewFeed.ckvM = GetFunction(CkAtomLibId,"CkAtomU_NewFeedW")
  Global AtomSaveLastError.cklMs = GetFunction(CkAtomLibId,"CkAtomU_SaveLastErrorW")
  Global AtomSetElementAttr.ckvMslss = GetFunction(CkAtomLibId,"CkAtomU_SetElementAttrW")
  Global AtomSetTopAttr.ckvMss = GetFunction(CkAtomLibId,"CkAtomU_SetTopAttrW")
  Global AtomToXmlString.cklM = GetFunction(CkAtomLibId,"CkAtomU_toXmlStringW")
  Global AtomUpdateElement.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementW")
  Global AtomUpdateElementDateStr.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementDateStrW")
  Global AtomUpdateElementDt.ckvMsli = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementDtW")
  Global AtomUpdateElementHtml.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementHtmlW")
  Global AtomUpdateElementXHtml.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementXHtmlW")
  Global AtomUpdateElementXml.ckvMsls = GetFunction(CkAtomLibId,"CkAtomU_UpdateElementXmlW")
  Global AtomUpdatePerson.ckvMslsss = GetFunction(CkAtomLibId,"CkAtomU_UpdatePersonW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn AtomCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn AtomDispose(obj) : EndProcedure
  Procedure.l ckAbortCurrent(obj.i) : ProcedureReturn AtomAbortCurrent(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(AtomDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn AtomPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(AtomLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(AtomLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(AtomLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn AtomLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn AtomPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumEntries(obj.i) : ProcedureReturn AtomNumEntries(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn AtomVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn AtomPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(AtomVersion(obj)) : EndProcedure
  Procedure.l ckAddElement(obj.i, tag.s, value.s) :  ProcedureReturn AtomAddElement(obj, tag, value) :  EndProcedure
  Procedure.l ckAddElementDateStr(obj.i, tag.s, dateTimeStr.s) :  ProcedureReturn AtomAddElementDateStr(obj, tag, dateTimeStr) :  EndProcedure
  Procedure.l ckAddElementDt(obj.i, tag.s, dateTime.i) :  ProcedureReturn AtomAddElementDt(obj, tag, dateTime) :  EndProcedure
  Procedure.l ckAddElementHtml(obj.i, tag.s, htmlStr.s) :  ProcedureReturn AtomAddElementHtml(obj, tag, htmlStr) :  EndProcedure
  Procedure.l ckAddElementXHtml(obj.i, tag.s, xmlStr.s) :  ProcedureReturn AtomAddElementXHtml(obj, tag, xmlStr) :  EndProcedure
  Procedure.l ckAddElementXml(obj.i, tag.s, xmlStr.s) :  ProcedureReturn AtomAddElementXml(obj, tag, xmlStr) :  EndProcedure
  Procedure ckAddEntry(obj.i, xmlStr.s) :  ProcedureReturn AtomAddEntry(obj, xmlStr) :  EndProcedure
  Procedure ckAddLink(obj.i, rel.s, href.s, title.s, typ.s) :  ProcedureReturn AtomAddLink(obj, rel, href, title, typ) :  EndProcedure
  Procedure ckAddPerson(obj.i, tag.s, name.s, uri.s, email.s) :  ProcedureReturn AtomAddPerson(obj, tag, name, uri, email) :  EndProcedure
  Procedure ckDeleteElement(obj.i, tag.s, index.l) :  ProcedureReturn AtomDeleteElement(obj, tag, index) :  EndProcedure
  Procedure ckDeleteElementAttr(obj.i, tag.s, index.l, attrName.s) :  ProcedureReturn AtomDeleteElementAttr(obj, tag, index, attrName) :  EndProcedure
  Procedure ckDeletePerson(obj.i, tag.s, index.l) :  ProcedureReturn AtomDeletePerson(obj, tag, index) :  EndProcedure
  Procedure.l ckDownloadAtom(obj.i, url.s) :  ProcedureReturn AtomDownloadAtom(obj, url) :  EndProcedure
  Procedure.i ckDownloadAtomAsync(obj.i, url.s) :  ProcedureReturn AtomDownloadAtomAsync(obj, url) :  EndProcedure
  Procedure.s ckGetElement(obj.i, tag.s, index.l) :  ProcedureReturn PeekS(AtomGetElement(obj, tag, index)) :  EndProcedure
  Procedure.s ckGetElementAttr(obj.i, tag.s, index.l, attrName.s) :  ProcedureReturn PeekS(AtomGetElementAttr(obj, tag, index, attrName)) :  EndProcedure
  Procedure.l ckGetElementCount(obj.i, tag.s) :  ProcedureReturn AtomGetElementCount(obj, tag) :  EndProcedure
  Procedure.s ckGetElementDateStr(obj.i, tag.s, index.l) :  ProcedureReturn PeekS(AtomGetElementDateStr(obj, tag, index)) :  EndProcedure
  Procedure.i ckGetElementDt(obj.i, tag.s, index.l) :  ProcedureReturn AtomGetElementDt(obj, tag, index) :  EndProcedure
  Procedure.i ckGetEntry(obj.i, index.l) :  ProcedureReturn AtomGetEntry(obj, index) :  EndProcedure
  Procedure.s ckGetLinkHref(obj.i, relName.s) :  ProcedureReturn PeekS(AtomGetLinkHref(obj, relName)) :  EndProcedure
  Procedure.s ckGetPersonInfo(obj.i, tag.s, index.l, tag2.s) :  ProcedureReturn PeekS(AtomGetPersonInfo(obj, tag, index, tag2)) :  EndProcedure
  Procedure.s ckGetTopAttr(obj.i, attrName.s) :  ProcedureReturn PeekS(AtomGetTopAttr(obj, attrName)) :  EndProcedure
  Procedure.l ckHasElement(obj.i, tag.s) :  ProcedureReturn AtomHasElement(obj, tag) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn AtomLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xmlStr.s) :  ProcedureReturn AtomLoadXml(obj, xmlStr) :  EndProcedure
  Procedure ckNewEntry(obj.i) :  ProcedureReturn AtomNewEntry(obj) :  EndProcedure
  Procedure ckNewFeed(obj.i) :  ProcedureReturn AtomNewFeed(obj) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn AtomSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetElementAttr(obj.i, tag.s, index.l, attrName.s, attrValue.s) :  ProcedureReturn AtomSetElementAttr(obj, tag, index, attrName, attrValue) :  EndProcedure
  Procedure ckSetTopAttr(obj.i, attrName.s, value.s) :  ProcedureReturn AtomSetTopAttr(obj, attrName, value) :  EndProcedure
  Procedure.s ckToXmlString(obj.i) :  ProcedureReturn PeekS(AtomToXmlString(obj)) :  EndProcedure
  Procedure ckUpdateElement(obj.i, tag.s, index.l, value.s) :  ProcedureReturn AtomUpdateElement(obj, tag, index, value) :  EndProcedure
  Procedure ckUpdateElementDateStr(obj.i, tag.s, index.l, dateTimeStr.s) :  ProcedureReturn AtomUpdateElementDateStr(obj, tag, index, dateTimeStr) :  EndProcedure
  Procedure ckUpdateElementDt(obj.i, tag.s, index.l, dateTime.i) :  ProcedureReturn AtomUpdateElementDt(obj, tag, index, dateTime) :  EndProcedure
  Procedure ckUpdateElementHtml(obj.i, tag.s, index.l, htmlStr.s) :  ProcedureReturn AtomUpdateElementHtml(obj, tag, index, htmlStr) :  EndProcedure
  Procedure ckUpdateElementXHtml(obj.i, tag.s, index.l, xmlStr.s) :  ProcedureReturn AtomUpdateElementXHtml(obj, tag, index, xmlStr) :  EndProcedure
  Procedure ckUpdateElementXml(obj.i, tag.s, index.l, xmlStr.s) :  ProcedureReturn AtomUpdateElementXml(obj, tag, index, xmlStr) :  EndProcedure
  Procedure ckUpdatePerson(obj.i, tag.s, index.l, name.s, uri.s, email.s) :  ProcedureReturn AtomUpdatePerson(obj, tag, index, name, uri, email) :  EndProcedure
EndModule

