DeclareModule CkXmp
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
  Declare.l ckNumEmbedded(obj.i)
  Declare.l ckStructInnerDescrip(obj.i)
  Declare setCkStructInnerDescrip(obj.i, value.l)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddArray(obj.i, xml.i, arrType.s, propName.s, values.i)
  Declare ckAddNsMapping(obj.i, ns.s, uri.s)
  Declare.l ckAddSimpleInt(obj.i, iXml.i, propName.s, propVal.l)
  Declare.l ckAddSimpleStr(obj.i, iXml.i, propName.s, propVal.s)
  Declare.l ckAddStructProp(obj.i, iChilkatXml.i, structName.s, propName.s, propValue.s)
  Declare.l ckAppend(obj.i, iXml.i)
  Declare.i ckGetArray(obj.i, iXml.i, propName.s)
  Declare.i ckGetEmbedded(obj.i, index.l)
  Declare.i ckGetProperty(obj.i, iXml.i, propName.s)
  Declare.l ckGetSimpleInt(obj.i, iXml.i, propName.s)
  Declare.s ckGetSimpleStr(obj.i, iXml.i, propName.s)
  Declare.i ckGetStructPropNames(obj.i, iXml.i, structName.s)
  Declare.s ckGetStructValue(obj.i, iXml.i, structName.s, propName.s)
  Declare.l ckLoadAppFile(obj.i, filename.s)
  Declare.i ckNewXmp(obj.i)
  Declare.l ckRemoveAllEmbedded(obj.i)
  Declare.l ckRemoveArray(obj.i, iXml.i, propName.s)
  Declare.l ckRemoveEmbedded(obj.i, index.l)
  Declare ckRemoveNsMapping(obj.i, ns.s)
  Declare.l ckRemoveSimple(obj.i, iXml.i, propName.s)
  Declare.l ckRemoveStruct(obj.i, iXml.i, structName.s)
  Declare.l ckRemoveStructProp(obj.i, iXml.i, structName.s, propName.s)
  Declare.l ckSaveAppFile(obj.i, filename.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
EndDeclareModule

Module CkXmp
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMiss(obj.i, arg1.i, arg2.s, arg3.s)
  PrototypeC.l cklMisl(obj.i, arg1.i, arg2.s, arg3.l)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMissi(obj.i, arg1.i, arg2.s, arg3.s, arg4.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMisss(obj.i, arg1.i, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkXmpCreate()
  PrototypeC CkXmpDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmpLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkXmpLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkXmpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkXmpLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global XmpCreate.CkXmpCreate = GetFunction(CkXmpLibId,"CkXmpU_CreateW")
  Global XmpDispose.CkXmpDispose = GetFunction(CkXmpLibId,"CkXmpU_DisposeW")
  Global XmpDebugLogFilePath.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_debugLogFilePathW")
  Global XmpPSetDebugLogFilePath.cksPropSet = GetFunction(CkXmpLibId,"CkXmpU_putDebugLogFilePathW")
  Global XmpLastErrorHtml.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_lastErrorHtmlW")
  Global XmpLastErrorText.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_lastErrorTextW")
  Global XmpLastErrorXml.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_lastErrorXmlW")
  Global XmpLastMethodSuccess.cklPropGet = GetFunction(CkXmpLibId,"CkXmpU_getLastMethodSuccessW")
  Global XmpPSetLastMethodSuccess.cklPropSet = GetFunction(CkXmpLibId,"CkXmpU_putLastMethodSuccessW")
  Global XmpNumEmbedded.cklPropGet = GetFunction(CkXmpLibId,"CkXmpU_getNumEmbeddedW")
  Global XmpStructInnerDescrip.cklPropGet = GetFunction(CkXmpLibId,"CkXmpU_getStructInnerDescripW")
  Global XmpPSetStructInnerDescrip.cklPropSet = GetFunction(CkXmpLibId,"CkXmpU_putStructInnerDescripW")
  Global XmpUncommonOptions.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_uncommonOptionsW")
  Global XmpPSetUncommonOptions.cksPropSet = GetFunction(CkXmpLibId,"CkXmpU_putUncommonOptionsW")
  Global XmpVerboseLogging.cklPropGet = GetFunction(CkXmpLibId,"CkXmpU_getVerboseLoggingW")
  Global XmpPSetVerboseLogging.cklPropSet = GetFunction(CkXmpLibId,"CkXmpU_putVerboseLoggingW")
  Global XmpVersion.cksPropGet = GetFunction(CkXmpLibId,"CkXmpU_versionW")
  Global XmpAddArray.cklMissi = GetFunction(CkXmpLibId,"CkXmpU_AddArrayW")
  Global XmpAddNsMapping.ckvMss = GetFunction(CkXmpLibId,"CkXmpU_AddNsMappingW")
  Global XmpAddSimpleInt.cklMisl = GetFunction(CkXmpLibId,"CkXmpU_AddSimpleIntW")
  Global XmpAddSimpleStr.cklMiss = GetFunction(CkXmpLibId,"CkXmpU_AddSimpleStrW")
  Global XmpAddStructProp.cklMisss = GetFunction(CkXmpLibId,"CkXmpU_AddStructPropW")
  Global XmpAppend.cklMi = GetFunction(CkXmpLibId,"CkXmpU_AppendW")
  Global XmpGetArray.ckiMis = GetFunction(CkXmpLibId,"CkXmpU_GetArrayW")
  Global XmpGetEmbedded.ckiMl = GetFunction(CkXmpLibId,"CkXmpU_GetEmbeddedW")
  Global XmpGetProperty.ckiMis = GetFunction(CkXmpLibId,"CkXmpU_GetPropertyW")
  Global XmpGetSimpleInt.cklMis = GetFunction(CkXmpLibId,"CkXmpU_GetSimpleIntW")
  Global XmpGetSimpleStr.cklMis = GetFunction(CkXmpLibId,"CkXmpU_getSimpleStrW")
  Global XmpGetStructPropNames.ckiMis = GetFunction(CkXmpLibId,"CkXmpU_GetStructPropNamesW")
  Global XmpGetStructValue.cklMiss = GetFunction(CkXmpLibId,"CkXmpU_getStructValueW")
  Global XmpLoadAppFile.cklMs = GetFunction(CkXmpLibId,"CkXmpU_LoadAppFileW")
  Global XmpNewXmp.ckiM = GetFunction(CkXmpLibId,"CkXmpU_NewXmpW")
  Global XmpRemoveAllEmbedded.cklM = GetFunction(CkXmpLibId,"CkXmpU_RemoveAllEmbeddedW")
  Global XmpRemoveArray.cklMis = GetFunction(CkXmpLibId,"CkXmpU_RemoveArrayW")
  Global XmpRemoveEmbedded.cklMl = GetFunction(CkXmpLibId,"CkXmpU_RemoveEmbeddedW")
  Global XmpRemoveNsMapping.ckvMs = GetFunction(CkXmpLibId,"CkXmpU_RemoveNsMappingW")
  Global XmpRemoveSimple.cklMis = GetFunction(CkXmpLibId,"CkXmpU_RemoveSimpleW")
  Global XmpRemoveStruct.cklMis = GetFunction(CkXmpLibId,"CkXmpU_RemoveStructW")
  Global XmpRemoveStructProp.cklMiss = GetFunction(CkXmpLibId,"CkXmpU_RemoveStructPropW")
  Global XmpSaveAppFile.cklMs = GetFunction(CkXmpLibId,"CkXmpU_SaveAppFileW")
  Global XmpSaveLastError.cklMs = GetFunction(CkXmpLibId,"CkXmpU_SaveLastErrorW")
  Global XmpUnlockComponent.cklMs = GetFunction(CkXmpLibId,"CkXmpU_UnlockComponentW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn XmpCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn XmpDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(XmpDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn XmpPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(XmpLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(XmpLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(XmpLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn XmpLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn XmpPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumEmbedded(obj.i) : ProcedureReturn XmpNumEmbedded(obj) : EndProcedure
  Procedure.l ckStructInnerDescrip(obj.i) : ProcedureReturn XmpStructInnerDescrip(obj) : EndProcedure
  Procedure setCkStructInnerDescrip(obj.i, value.l) : ProcedureReturn XmpPSetStructInnerDescrip(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(XmpUncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn XmpPSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn XmpVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn XmpPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(XmpVersion(obj)) : EndProcedure
  Procedure.l ckAddArray(obj.i, xml.i, arrType.s, propName.s, values.i) :  ProcedureReturn XmpAddArray(obj, xml, arrType, propName, values) :  EndProcedure
  Procedure ckAddNsMapping(obj.i, ns.s, uri.s) :  ProcedureReturn XmpAddNsMapping(obj, ns, uri) :  EndProcedure
  Procedure.l ckAddSimpleInt(obj.i, iXml.i, propName.s, propVal.l) :  ProcedureReturn XmpAddSimpleInt(obj, iXml, propName, propVal) :  EndProcedure
  Procedure.l ckAddSimpleStr(obj.i, iXml.i, propName.s, propVal.s) :  ProcedureReturn XmpAddSimpleStr(obj, iXml, propName, propVal) :  EndProcedure
  Procedure.l ckAddStructProp(obj.i, iChilkatXml.i, structName.s, propName.s, propValue.s) :  ProcedureReturn XmpAddStructProp(obj, iChilkatXml, structName, propName, propValue) :  EndProcedure
  Procedure.l ckAppend(obj.i, iXml.i) :  ProcedureReturn XmpAppend(obj, iXml) :  EndProcedure
  Procedure.i ckGetArray(obj.i, iXml.i, propName.s) :  ProcedureReturn XmpGetArray(obj, iXml, propName) :  EndProcedure
  Procedure.i ckGetEmbedded(obj.i, index.l) :  ProcedureReturn XmpGetEmbedded(obj, index) :  EndProcedure
  Procedure.i ckGetProperty(obj.i, iXml.i, propName.s) :  ProcedureReturn XmpGetProperty(obj, iXml, propName) :  EndProcedure
  Procedure.l ckGetSimpleInt(obj.i, iXml.i, propName.s) :  ProcedureReturn XmpGetSimpleInt(obj, iXml, propName) :  EndProcedure
  Procedure.s ckGetSimpleStr(obj.i, iXml.i, propName.s) :  ProcedureReturn PeekS(XmpGetSimpleStr(obj, iXml, propName)) :  EndProcedure
  Procedure.i ckGetStructPropNames(obj.i, iXml.i, structName.s) :  ProcedureReturn XmpGetStructPropNames(obj, iXml, structName) :  EndProcedure
  Procedure.s ckGetStructValue(obj.i, iXml.i, structName.s, propName.s) :  ProcedureReturn PeekS(XmpGetStructValue(obj, iXml, structName, propName)) :  EndProcedure
  Procedure.l ckLoadAppFile(obj.i, filename.s) :  ProcedureReturn XmpLoadAppFile(obj, filename) :  EndProcedure
  Procedure.i ckNewXmp(obj.i) :  ProcedureReturn XmpNewXmp(obj) :  EndProcedure
  Procedure.l ckRemoveAllEmbedded(obj.i) :  ProcedureReturn XmpRemoveAllEmbedded(obj) :  EndProcedure
  Procedure.l ckRemoveArray(obj.i, iXml.i, propName.s) :  ProcedureReturn XmpRemoveArray(obj, iXml, propName) :  EndProcedure
  Procedure.l ckRemoveEmbedded(obj.i, index.l) :  ProcedureReturn XmpRemoveEmbedded(obj, index) :  EndProcedure
  Procedure ckRemoveNsMapping(obj.i, ns.s) :  ProcedureReturn XmpRemoveNsMapping(obj, ns) :  EndProcedure
  Procedure.l ckRemoveSimple(obj.i, iXml.i, propName.s) :  ProcedureReturn XmpRemoveSimple(obj, iXml, propName) :  EndProcedure
  Procedure.l ckRemoveStruct(obj.i, iXml.i, structName.s) :  ProcedureReturn XmpRemoveStruct(obj, iXml, structName) :  EndProcedure
  Procedure.l ckRemoveStructProp(obj.i, iXml.i, structName.s, propName.s) :  ProcedureReturn XmpRemoveStructProp(obj, iXml, structName, propName) :  EndProcedure
  Procedure.l ckSaveAppFile(obj.i, filename.s) :  ProcedureReturn XmpSaveAppFile(obj, filename) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn XmpSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn XmpUnlockComponent(obj, unlockCode) :  EndProcedure
EndModule

