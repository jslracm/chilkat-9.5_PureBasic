DeclareModule CkRss
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
  Declare.l ckNumChannels(obj.i)
  Declare.l ckNumItems(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.i ckAddNewChannel(obj.i)
  Declare.i ckAddNewImage(obj.i)
  Declare.i ckAddNewItem(obj.i)
  Declare.l ckDownloadRss(obj.i, url.s)
  Declare.i ckDownloadRssAsync(obj.i, url.s)
  Declare.s ckGetAttr(obj.i, tag.s, attrName.s)
  Declare.i ckGetChannel(obj.i, index.l)
  Declare.l ckGetCount(obj.i, tag.s)
  Declare.s ckGetDateStr(obj.i, tag.s)
  Declare.i ckGetImage(obj.i)
  Declare.l ckGetInt(obj.i, tag.s)
  Declare.i ckGetItem(obj.i, index.l)
  Declare.s ckGetString(obj.i, tag.s)
  Declare.l ckLoadRssFile(obj.i, filePath.s)
  Declare.l ckLoadRssString(obj.i, rssString.s)
  Declare.l ckLoadTaskCaller(obj.i, task.i)
  Declare.s ckMGetAttr(obj.i, tag.s, index.l, attrName.s)
  Declare.s ckMGetString(obj.i, tag.s, index.l)
  Declare.l ckMSetAttr(obj.i, tag.s, idx.l, attrName.s, value.s)
  Declare.l ckMSetString(obj.i, tag.s, idx.l, value.s)
  Declare ckNewRss(obj.i)
  Declare ckRemove(obj.i, tag.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare ckSetAttr(obj.i, tag.s, attrName.s, value.s)
  Declare ckSetDateNow(obj.i, tag.s)
  Declare ckSetDateStr(obj.i, tag.s, dateTimeStr.s)
  Declare ckSetInt(obj.i, tag.s, value.l)
  Declare ckSetString(obj.i, tag.s, value.s)
  Declare.s ckToXmlString(obj.i)
EndDeclareModule

Module CkRss
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC ckvMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.i CkRssCreate()
  PrototypeC CkRssDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRssLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkRssLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkRssLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRssLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkRssLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global RssCreate.CkRssCreate = GetFunction(CkRssLibId,"CkRssU_CreateW")
  Global RssDispose.CkRssDispose = GetFunction(CkRssLibId,"CkRssU_DisposeW")
  Global RssDebugLogFilePath.cksPropGet = GetFunction(CkRssLibId,"CkRssU_debugLogFilePathW")
  Global RssPSetDebugLogFilePath.cksPropSet = GetFunction(CkRssLibId,"CkRssU_putDebugLogFilePathW")
  Global RssLastErrorHtml.cksPropGet = GetFunction(CkRssLibId,"CkRssU_lastErrorHtmlW")
  Global RssLastErrorText.cksPropGet = GetFunction(CkRssLibId,"CkRssU_lastErrorTextW")
  Global RssLastErrorXml.cksPropGet = GetFunction(CkRssLibId,"CkRssU_lastErrorXmlW")
  Global RssLastMethodSuccess.cklPropGet = GetFunction(CkRssLibId,"CkRssU_getLastMethodSuccessW")
  Global RssPSetLastMethodSuccess.cklPropSet = GetFunction(CkRssLibId,"CkRssU_putLastMethodSuccessW")
  Global RssNumChannels.cklPropGet = GetFunction(CkRssLibId,"CkRssU_getNumChannelsW")
  Global RssNumItems.cklPropGet = GetFunction(CkRssLibId,"CkRssU_getNumItemsW")
  Global RssVerboseLogging.cklPropGet = GetFunction(CkRssLibId,"CkRssU_getVerboseLoggingW")
  Global RssPSetVerboseLogging.cklPropSet = GetFunction(CkRssLibId,"CkRssU_putVerboseLoggingW")
  Global RssVersion.cksPropGet = GetFunction(CkRssLibId,"CkRssU_versionW")
  Global RssAddNewChannel.ckiM = GetFunction(CkRssLibId,"CkRssU_AddNewChannelW")
  Global RssAddNewImage.ckiM = GetFunction(CkRssLibId,"CkRssU_AddNewImageW")
  Global RssAddNewItem.ckiM = GetFunction(CkRssLibId,"CkRssU_AddNewItemW")
  Global RssDownloadRss.cklMs = GetFunction(CkRssLibId,"CkRssU_DownloadRssW")
  Global RssDownloadRssAsync.ckiMs = GetFunction(CkRssLibId,"CkRssU_DownloadRssAsyncW")
  Global RssGetAttr.cklMss = GetFunction(CkRssLibId,"CkRssU_getAttrW")
  Global RssGetChannel.ckiMl = GetFunction(CkRssLibId,"CkRssU_GetChannelW")
  Global RssGetCount.cklMs = GetFunction(CkRssLibId,"CkRssU_GetCountW")
  Global RssGetDateStr.cklMs = GetFunction(CkRssLibId,"CkRssU_getDateStrW")
  Global RssGetImage.ckiM = GetFunction(CkRssLibId,"CkRssU_GetImageW")
  Global RssGetInt.cklMs = GetFunction(CkRssLibId,"CkRssU_GetIntW")
  Global RssGetItem.ckiMl = GetFunction(CkRssLibId,"CkRssU_GetItemW")
  Global RssGetString.cklMs = GetFunction(CkRssLibId,"CkRssU_getStringW")
  Global RssLoadRssFile.cklMs = GetFunction(CkRssLibId,"CkRssU_LoadRssFileW")
  Global RssLoadRssString.cklMs = GetFunction(CkRssLibId,"CkRssU_LoadRssStringW")
  Global RssLoadTaskCaller.cklMi = GetFunction(CkRssLibId,"CkRssU_LoadTaskCallerW")
  Global RssMGetAttr.cklMsls = GetFunction(CkRssLibId,"CkRssU_mGetAttrW")
  Global RssMGetString.cklMsl = GetFunction(CkRssLibId,"CkRssU_mGetStringW")
  Global RssMSetAttr.cklMslss = GetFunction(CkRssLibId,"CkRssU_MSetAttrW")
  Global RssMSetString.cklMsls = GetFunction(CkRssLibId,"CkRssU_MSetStringW")
  Global RssNewRss.ckvM = GetFunction(CkRssLibId,"CkRssU_NewRssW")
  Global RssRemove.ckvMs = GetFunction(CkRssLibId,"CkRssU_RemoveW")
  Global RssSaveLastError.cklMs = GetFunction(CkRssLibId,"CkRssU_SaveLastErrorW")
  Global RssSetAttr.ckvMsss = GetFunction(CkRssLibId,"CkRssU_SetAttrW")
  Global RssSetDateNow.ckvMs = GetFunction(CkRssLibId,"CkRssU_SetDateNowW")
  Global RssSetDateStr.ckvMss = GetFunction(CkRssLibId,"CkRssU_SetDateStrW")
  Global RssSetInt.ckvMsl = GetFunction(CkRssLibId,"CkRssU_SetIntW")
  Global RssSetString.ckvMss = GetFunction(CkRssLibId,"CkRssU_SetStringW")
  Global RssToXmlString.cklM = GetFunction(CkRssLibId,"CkRssU_toXmlStringW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn RssCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn RssDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(RssDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn RssPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(RssLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(RssLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(RssLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn RssLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn RssPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumChannels(obj.i) : ProcedureReturn RssNumChannels(obj) : EndProcedure
  Procedure.l ckNumItems(obj.i) : ProcedureReturn RssNumItems(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn RssVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn RssPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(RssVersion(obj)) : EndProcedure
  Procedure.i ckAddNewChannel(obj.i) :  ProcedureReturn RssAddNewChannel(obj) :  EndProcedure
  Procedure.i ckAddNewImage(obj.i) :  ProcedureReturn RssAddNewImage(obj) :  EndProcedure
  Procedure.i ckAddNewItem(obj.i) :  ProcedureReturn RssAddNewItem(obj) :  EndProcedure
  Procedure.l ckDownloadRss(obj.i, url.s) :  ProcedureReturn RssDownloadRss(obj, url) :  EndProcedure
  Procedure.i ckDownloadRssAsync(obj.i, url.s) :  ProcedureReturn RssDownloadRssAsync(obj, url) :  EndProcedure
  Procedure.s ckGetAttr(obj.i, tag.s, attrName.s) :  ProcedureReturn PeekS(RssGetAttr(obj, tag, attrName)) :  EndProcedure
  Procedure.i ckGetChannel(obj.i, index.l) :  ProcedureReturn RssGetChannel(obj, index) :  EndProcedure
  Procedure.l ckGetCount(obj.i, tag.s) :  ProcedureReturn RssGetCount(obj, tag) :  EndProcedure
  Procedure.s ckGetDateStr(obj.i, tag.s) :  ProcedureReturn PeekS(RssGetDateStr(obj, tag)) :  EndProcedure
  Procedure.i ckGetImage(obj.i) :  ProcedureReturn RssGetImage(obj) :  EndProcedure
  Procedure.l ckGetInt(obj.i, tag.s) :  ProcedureReturn RssGetInt(obj, tag) :  EndProcedure
  Procedure.i ckGetItem(obj.i, index.l) :  ProcedureReturn RssGetItem(obj, index) :  EndProcedure
  Procedure.s ckGetString(obj.i, tag.s) :  ProcedureReturn PeekS(RssGetString(obj, tag)) :  EndProcedure
  Procedure.l ckLoadRssFile(obj.i, filePath.s) :  ProcedureReturn RssLoadRssFile(obj, filePath) :  EndProcedure
  Procedure.l ckLoadRssString(obj.i, rssString.s) :  ProcedureReturn RssLoadRssString(obj, rssString) :  EndProcedure
  Procedure.l ckLoadTaskCaller(obj.i, task.i) :  ProcedureReturn RssLoadTaskCaller(obj, task) :  EndProcedure
  Procedure.s ckMGetAttr(obj.i, tag.s, index.l, attrName.s) :  ProcedureReturn PeekS(RssMGetAttr(obj, tag, index, attrName)) :  EndProcedure
  Procedure.s ckMGetString(obj.i, tag.s, index.l) :  ProcedureReturn PeekS(RssMGetString(obj, tag, index)) :  EndProcedure
  Procedure.l ckMSetAttr(obj.i, tag.s, idx.l, attrName.s, value.s) :  ProcedureReturn RssMSetAttr(obj, tag, idx, attrName, value) :  EndProcedure
  Procedure.l ckMSetString(obj.i, tag.s, idx.l, value.s) :  ProcedureReturn RssMSetString(obj, tag, idx, value) :  EndProcedure
  Procedure ckNewRss(obj.i) :  ProcedureReturn RssNewRss(obj) :  EndProcedure
  Procedure ckRemove(obj.i, tag.s) :  ProcedureReturn RssRemove(obj, tag) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn RssSaveLastError(obj, path) :  EndProcedure
  Procedure ckSetAttr(obj.i, tag.s, attrName.s, value.s) :  ProcedureReturn RssSetAttr(obj, tag, attrName, value) :  EndProcedure
  Procedure ckSetDateNow(obj.i, tag.s) :  ProcedureReturn RssSetDateNow(obj, tag) :  EndProcedure
  Procedure ckSetDateStr(obj.i, tag.s, dateTimeStr.s) :  ProcedureReturn RssSetDateStr(obj, tag, dateTimeStr) :  EndProcedure
  Procedure ckSetInt(obj.i, tag.s, value.l) :  ProcedureReturn RssSetInt(obj, tag, value) :  EndProcedure
  Procedure ckSetString(obj.i, tag.s, value.s) :  ProcedureReturn RssSetString(obj, tag, value) :  EndProcedure
  Procedure.s ckToXmlString(obj.i) :  ProcedureReturn PeekS(RssToXmlString(obj)) :  EndProcedure
EndModule

