DeclareModule CkJsonObject
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDelimiterChar(obj.i)
  Declare setCkDelimiterChar(obj.i, value.s)
  Declare.l ckEmitCompact(obj.i)
  Declare setCkEmitCompact(obj.i, value.l)
  Declare.l ckEmitCrLf(obj.i)
  Declare setCkEmitCrLf(obj.i, value.l)
  Declare.l ckI(obj.i)
  Declare setCkI(obj.i, value.l)
  Declare.l ckJ(obj.i)
  Declare setCkJ(obj.i, value.l)
  Declare.l ckK(obj.i)
  Declare setCkK(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckPathPrefix(obj.i)
  Declare setCkPathPrefix(obj.i, value.s)
  Declare.l ckSize(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddArrayAt(obj.i, index.l, name.s)
  Declare.l ckAddArrayCopyAt(obj.i, index.l, name.s, jarr.i)
  Declare.l ckAddBoolAt(obj.i, index.l, name.s, value.l)
  Declare.l ckAddIntAt(obj.i, index.l, name.s, value.l)
  Declare.l ckAddNullAt(obj.i, index.l, name.s)
  Declare.l ckAddNumberAt(obj.i, index.l, name.s, numericStr.s)
  Declare.l ckAddObjectAt(obj.i, index.l, name.s)
  Declare.l ckAddObjectCopyAt(obj.i, index.l, name.s, jsonObj.i)
  Declare.l ckAddStringAt(obj.i, index.l, name.s, value.s)
  Declare.i ckAppendArray(obj.i, name.s)
  Declare.l ckAppendArrayCopy(obj.i, name.s, jarr.i)
  Declare.l ckAppendBool(obj.i, name.s, value.l)
  Declare.l ckAppendInt(obj.i, name.s, value.l)
  Declare.i ckAppendObject(obj.i, name.s)
  Declare.l ckAppendObjectCopy(obj.i, name.s, jsonObj.i)
  Declare.l ckAppendString(obj.i, name.s, value.s)
  Declare.l ckAppendStringArray(obj.i, name.s, values.i)
  Declare.i ckArrayAt(obj.i, index.l)
  Declare.i ckArrayOf(obj.i, jsonPath.s)
  Declare.l ckBoolAt(obj.i, index.l)
  Declare.l ckBoolOf(obj.i, jsonPath.s)
  Declare.l ckBytesOf(obj.i, jsonPath.s, encoding.s, bd.i)
  Declare ckClear(obj.i)
  Declare.i ckClone(obj.i)
  Declare.l ckDateOf(obj.i, jsonPath.s, dateTime.i)
  Declare.l ckDelete(obj.i, name.s)
  Declare.l ckDeleteAt(obj.i, index.l)
  Declare.l ckDtOf(obj.i, jsonPath.s, bLocal.l, dt.i)
  Declare.s ckEmit(obj.i)
  Declare.l ckEmitBd(obj.i, bd.i)
  Declare.l ckEmitSb(obj.i, sb.i)
  Declare.s ckEmitWithSubs(obj.i, subs.i, omitEmpty.l)
  Declare.i ckFindObjectWithMember(obj.i, name.s)
  Declare.i ckFindRecord(obj.i, arrayPath.s, relPath.s, value.s, caseSensitive.l)
  Declare.s ckFindRecordString(obj.i, arrayPath.s, relPath.s, value.s, caseSensitive.l, retRelPath.s)
  Declare.l ckFirebaseApplyEvent(obj.i, name.s, argData.s)
  Declare.l ckFirebasePatch(obj.i, jsonPath.s, jsonData.s)
  Declare.l ckFirebasePut(obj.i, jsonPath.s, value.s)
  Declare.i ckGetDocRoot(obj.i)
  Declare.l ckHasMember(obj.i, jsonPath.s)
  Declare.l ckIndexOf(obj.i, name.s)
  Declare.l ckIntAt(obj.i, index.l)
  Declare.l ckIntOf(obj.i, jsonPath.s)
  Declare.l ckIsNullAt(obj.i, index.l)
  Declare.l ckIsNullOf(obj.i, jsonPath.s)
  Declare.l ckJsonTypeOf(obj.i, jsonPath.s)
  Declare.l ckLoad(obj.i, json.s)
  Declare.l ckLoadBd(obj.i, bd.i)
  Declare.l ckLoadFile(obj.i, path.s)
  Declare.l ckLoadPredefined(obj.i, name.s)
  Declare.l ckLoadSb(obj.i, sb.i)
  Declare.l ckMoveMember(obj.i, fromIndex.l, toIndex.l)
  Declare.s ckNameAt(obj.i, index.l)
  Declare.i ckObjectAt(obj.i, index.l)
  Declare.i ckObjectOf(obj.i, jsonPath.s)
  Declare.l ckPredefine(obj.i, name.s)
  Declare.l ckRename(obj.i, oldName.s, newName.s)
  Declare.l ckRenameAt(obj.i, index.l, name.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetBoolAt(obj.i, index.l, value.l)
  Declare.l ckSetBoolOf(obj.i, jsonPath.s, value.l)
  Declare.l ckSetIntAt(obj.i, index.l, value.l)
  Declare.l ckSetIntOf(obj.i, jsonPath.s, value.l)
  Declare.l ckSetNullAt(obj.i, index.l)
  Declare.l ckSetNullOf(obj.i, jsonPath.s)
  Declare.l ckSetNumberAt(obj.i, index.l, value.s)
  Declare.l ckSetNumberOf(obj.i, jsonPath.s, value.s)
  Declare.l ckSetStringAt(obj.i, index.l, value.s)
  Declare.l ckSetStringOf(obj.i, jsonPath.s, value.s)
  Declare.l ckSizeOfArray(obj.i, jsonPath.s)
  Declare.s ckStringAt(obj.i, index.l)
  Declare.s ckStringOf(obj.i, jsonPath.s)
  Declare.l ckStringOfSb(obj.i, jsonPath.s, sb.i)
  Declare.l ckSwap(obj.i, index1.l, index2.l)
  Declare.l ckTypeAt(obj.i, index.l)
  Declare.l ckUpdateBd(obj.i, jsonPath.s, encoding.s, bd.i)
  Declare.l ckUpdateBool(obj.i, jsonPath.s, value.l)
  Declare.l ckUpdateInt(obj.i, jsonPath.s, value.l)
  Declare.l ckUpdateNewArray(obj.i, jsonPath.s)
  Declare.l ckUpdateNewObject(obj.i, jsonPath.s)
  Declare.l ckUpdateNull(obj.i, jsonPath.s)
  Declare.l ckUpdateNumber(obj.i, jsonPath.s, numericStr.s)
  Declare.l ckUpdateSb(obj.i, jsonPath.s, sb.i)
  Declare.l ckUpdateString(obj.i, jsonPath.s, value.s)
  Declare.l ckWriteFile(obj.i, path.s)
EndDeclareModule

Module CkJsonObject
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMlsl(obj.i, arg1.l, arg2.s, arg3.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMsli(obj.i, arg1.s, arg2.l, arg3.i)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMsssl(obj.i, arg1.s, arg2.s, arg3.s, arg4.l)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMssi(obj.i, arg1.s, arg2.s, arg3.i)
  PrototypeC.l cklMsssls(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMll(obj.i, arg1.l, arg2.l)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMls(obj.i, arg1.l, arg2.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.i ckiMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiMsssls(obj.i, arg1.s, arg2.s, arg3.s, arg4.l, arg5.s)
  PrototypeC.l cklMlsi(obj.i, arg1.l, arg2.s, arg3.i)
  PrototypeC.l cklMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i CkJsonObjectCreate()
  PrototypeC CkJsonObjectDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJsonObjectLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkJsonObjectLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkJsonObjectLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkJsonObjectLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkJsonObjectLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global JsonObjectCreate.CkJsonObjectCreate = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_CreateW")
  Global JsonObjectDispose.CkJsonObjectDispose = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_DisposeW")
  Global JsonObjectDebugLogFilePath.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_debugLogFilePathW")
  Global JsonObjectPSetDebugLogFilePath.cksPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putDebugLogFilePathW")
  Global JsonObjectDelimiterChar.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_delimiterCharW")
  Global JsonObjectPSetDelimiterChar.cksPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putDelimiterCharW")
  Global JsonObjectEmitCompact.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getEmitCompactW")
  Global JsonObjectPSetEmitCompact.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putEmitCompactW")
  Global JsonObjectEmitCrLf.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getEmitCrLfW")
  Global JsonObjectPSetEmitCrLf.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putEmitCrLfW")
  Global JsonObjectI.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getIW")
  Global JsonObjectPSetI.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putIW")
  Global JsonObjectJ.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getJW")
  Global JsonObjectPSetJ.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putJW")
  Global JsonObjectK.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getKW")
  Global JsonObjectPSetK.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putKW")
  Global JsonObjectLastErrorHtml.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_lastErrorHtmlW")
  Global JsonObjectLastErrorText.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_lastErrorTextW")
  Global JsonObjectLastErrorXml.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_lastErrorXmlW")
  Global JsonObjectLastMethodSuccess.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getLastMethodSuccessW")
  Global JsonObjectPSetLastMethodSuccess.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putLastMethodSuccessW")
  Global JsonObjectPathPrefix.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_pathPrefixW")
  Global JsonObjectPSetPathPrefix.cksPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putPathPrefixW")
  Global JsonObjectSize.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getSizeW")
  Global JsonObjectVerboseLogging.cklPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_getVerboseLoggingW")
  Global JsonObjectPSetVerboseLogging.cklPropSet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_putVerboseLoggingW")
  Global JsonObjectVersion.cksPropGet = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_versionW")
  Global JsonObjectAddArrayAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddArrayAtW")
  Global JsonObjectAddArrayCopyAt.cklMlsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddArrayCopyAtW")
  Global JsonObjectAddBoolAt.cklMlsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddBoolAtW")
  Global JsonObjectAddIntAt.cklMlsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddIntAtW")
  Global JsonObjectAddNullAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddNullAtW")
  Global JsonObjectAddNumberAt.cklMlss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddNumberAtW")
  Global JsonObjectAddObjectAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddObjectAtW")
  Global JsonObjectAddObjectCopyAt.cklMlsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddObjectCopyAtW")
  Global JsonObjectAddStringAt.cklMlss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AddStringAtW")
  Global JsonObjectAppendArray.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendArrayW")
  Global JsonObjectAppendArrayCopy.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendArrayCopyW")
  Global JsonObjectAppendBool.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendBoolW")
  Global JsonObjectAppendInt.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendIntW")
  Global JsonObjectAppendObject.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendObjectW")
  Global JsonObjectAppendObjectCopy.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendObjectCopyW")
  Global JsonObjectAppendString.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendStringW")
  Global JsonObjectAppendStringArray.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_AppendStringArrayW")
  Global JsonObjectArrayAt.ckiMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_ArrayAtW")
  Global JsonObjectArrayOf.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_ArrayOfW")
  Global JsonObjectBoolAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_BoolAtW")
  Global JsonObjectBoolOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_BoolOfW")
  Global JsonObjectBytesOf.cklMssi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_BytesOfW")
  Global JsonObjectClear.ckvM = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_ClearW")
  Global JsonObjectClone.ckiM = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_CloneW")
  Global JsonObjectDateOf.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_DateOfW")
  Global JsonObjectDelete.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_DeleteW")
  Global JsonObjectDeleteAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_DeleteAtW")
  Global JsonObjectDtOf.cklMsli = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_DtOfW")
  Global JsonObjectEmit.ckiM = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_emitW")
  Global JsonObjectEmitBd.cklMi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_EmitBdW")
  Global JsonObjectEmitSb.cklMi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_EmitSbW")
  Global JsonObjectEmitWithSubs.ckiMil = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_emitWithSubsW")
  Global JsonObjectFindObjectWithMember.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_FindObjectWithMemberW")
  Global JsonObjectFindRecord.ckiMsssl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_FindRecordW")
  Global JsonObjectFindRecordString.ckiMsssls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_findRecordStringW")
  Global JsonObjectFirebaseApplyEvent.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_FirebaseApplyEventW")
  Global JsonObjectFirebasePatch.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_FirebasePatchW")
  Global JsonObjectFirebasePut.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_FirebasePutW")
  Global JsonObjectGetDocRoot.ckiM = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_GetDocRootW")
  Global JsonObjectHasMember.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_HasMemberW")
  Global JsonObjectIndexOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_IndexOfW")
  Global JsonObjectIntAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_IntAtW")
  Global JsonObjectIntOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_IntOfW")
  Global JsonObjectIsNullAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_IsNullAtW")
  Global JsonObjectIsNullOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_IsNullOfW")
  Global JsonObjectJsonTypeOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_JsonTypeOfW")
  Global JsonObjectLoad.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_LoadW")
  Global JsonObjectLoadBd.cklMi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_LoadBdW")
  Global JsonObjectLoadFile.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_LoadFileW")
  Global JsonObjectLoadPredefined.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_LoadPredefinedW")
  Global JsonObjectLoadSb.cklMi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_LoadSbW")
  Global JsonObjectMoveMember.cklMll = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_MoveMemberW")
  Global JsonObjectNameAt.ckiMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_nameAtW")
  Global JsonObjectObjectAt.ckiMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_ObjectAtW")
  Global JsonObjectObjectOf.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_ObjectOfW")
  Global JsonObjectPredefine.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_PredefineW")
  Global JsonObjectRename.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_RenameW")
  Global JsonObjectRenameAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_RenameAtW")
  Global JsonObjectSaveLastError.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SaveLastErrorW")
  Global JsonObjectSetBoolAt.cklMll = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetBoolAtW")
  Global JsonObjectSetBoolOf.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetBoolOfW")
  Global JsonObjectSetIntAt.cklMll = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetIntAtW")
  Global JsonObjectSetIntOf.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetIntOfW")
  Global JsonObjectSetNullAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetNullAtW")
  Global JsonObjectSetNullOf.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetNullOfW")
  Global JsonObjectSetNumberAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetNumberAtW")
  Global JsonObjectSetNumberOf.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetNumberOfW")
  Global JsonObjectSetStringAt.cklMls = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetStringAtW")
  Global JsonObjectSetStringOf.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SetStringOfW")
  Global JsonObjectSizeOfArray.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SizeOfArrayW")
  Global JsonObjectStringAt.ckiMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_stringAtW")
  Global JsonObjectStringOf.ckiMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_stringOfW")
  Global JsonObjectStringOfSb.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_StringOfSbW")
  Global JsonObjectSwap.cklMll = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_SwapW")
  Global JsonObjectTypeAt.cklMl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_TypeAtW")
  Global JsonObjectUpdateBd.cklMssi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateBdW")
  Global JsonObjectUpdateBool.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateBoolW")
  Global JsonObjectUpdateInt.cklMsl = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateIntW")
  Global JsonObjectUpdateNewArray.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateNewArrayW")
  Global JsonObjectUpdateNewObject.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateNewObjectW")
  Global JsonObjectUpdateNull.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateNullW")
  Global JsonObjectUpdateNumber.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateNumberW")
  Global JsonObjectUpdateSb.cklMsi = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateSbW")
  Global JsonObjectUpdateString.cklMss = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_UpdateStringW")
  Global JsonObjectWriteFile.cklMs = GetFunction(CkJsonObjectLibId,"CkJsonObjectU_WriteFileW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn JsonObjectCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn JsonObjectDispose(obj) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(JsonObjectDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn JsonObjectPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDelimiterChar(obj.i) : ProcedureReturn PeekS(JsonObjectDelimiterChar(obj)) : EndProcedure
  Procedure setCkDelimiterChar(obj.i, value.s) : ProcedureReturn JsonObjectPSetDelimiterChar(obj,value) : EndProcedure
  Procedure.l ckEmitCompact(obj.i) : ProcedureReturn JsonObjectEmitCompact(obj) : EndProcedure
  Procedure setCkEmitCompact(obj.i, value.l) : ProcedureReturn JsonObjectPSetEmitCompact(obj,value) : EndProcedure
  Procedure.l ckEmitCrLf(obj.i) : ProcedureReturn JsonObjectEmitCrLf(obj) : EndProcedure
  Procedure setCkEmitCrLf(obj.i, value.l) : ProcedureReturn JsonObjectPSetEmitCrLf(obj,value) : EndProcedure
  Procedure.l ckI(obj.i) : ProcedureReturn JsonObjectI(obj) : EndProcedure
  Procedure setCkI(obj.i, value.l) : ProcedureReturn JsonObjectPSetI(obj,value) : EndProcedure
  Procedure.l ckJ(obj.i) : ProcedureReturn JsonObjectJ(obj) : EndProcedure
  Procedure setCkJ(obj.i, value.l) : ProcedureReturn JsonObjectPSetJ(obj,value) : EndProcedure
  Procedure.l ckK(obj.i) : ProcedureReturn JsonObjectK(obj) : EndProcedure
  Procedure setCkK(obj.i, value.l) : ProcedureReturn JsonObjectPSetK(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(JsonObjectLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(JsonObjectLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(JsonObjectLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn JsonObjectLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn JsonObjectPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckPathPrefix(obj.i) : ProcedureReturn PeekS(JsonObjectPathPrefix(obj)) : EndProcedure
  Procedure setCkPathPrefix(obj.i, value.s) : ProcedureReturn JsonObjectPSetPathPrefix(obj,value) : EndProcedure
  Procedure.l ckSize(obj.i) : ProcedureReturn JsonObjectSize(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn JsonObjectVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn JsonObjectPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(JsonObjectVersion(obj)) : EndProcedure
  Procedure.l ckAddArrayAt(obj.i, index.l, name.s) :  ProcedureReturn JsonObjectAddArrayAt(obj, index, name) :  EndProcedure
  Procedure.l ckAddArrayCopyAt(obj.i, index.l, name.s, jarr.i) :  ProcedureReturn JsonObjectAddArrayCopyAt(obj, index, name, jarr) :  EndProcedure
  Procedure.l ckAddBoolAt(obj.i, index.l, name.s, value.l) :  ProcedureReturn JsonObjectAddBoolAt(obj, index, name, value) :  EndProcedure
  Procedure.l ckAddIntAt(obj.i, index.l, name.s, value.l) :  ProcedureReturn JsonObjectAddIntAt(obj, index, name, value) :  EndProcedure
  Procedure.l ckAddNullAt(obj.i, index.l, name.s) :  ProcedureReturn JsonObjectAddNullAt(obj, index, name) :  EndProcedure
  Procedure.l ckAddNumberAt(obj.i, index.l, name.s, numericStr.s) :  ProcedureReturn JsonObjectAddNumberAt(obj, index, name, numericStr) :  EndProcedure
  Procedure.l ckAddObjectAt(obj.i, index.l, name.s) :  ProcedureReturn JsonObjectAddObjectAt(obj, index, name) :  EndProcedure
  Procedure.l ckAddObjectCopyAt(obj.i, index.l, name.s, jsonObj.i) :  ProcedureReturn JsonObjectAddObjectCopyAt(obj, index, name, jsonObj) :  EndProcedure
  Procedure.l ckAddStringAt(obj.i, index.l, name.s, value.s) :  ProcedureReturn JsonObjectAddStringAt(obj, index, name, value) :  EndProcedure
  Procedure.i ckAppendArray(obj.i, name.s) :  ProcedureReturn JsonObjectAppendArray(obj, name) :  EndProcedure
  Procedure.l ckAppendArrayCopy(obj.i, name.s, jarr.i) :  ProcedureReturn JsonObjectAppendArrayCopy(obj, name, jarr) :  EndProcedure
  Procedure.l ckAppendBool(obj.i, name.s, value.l) :  ProcedureReturn JsonObjectAppendBool(obj, name, value) :  EndProcedure
  Procedure.l ckAppendInt(obj.i, name.s, value.l) :  ProcedureReturn JsonObjectAppendInt(obj, name, value) :  EndProcedure
  Procedure.i ckAppendObject(obj.i, name.s) :  ProcedureReturn JsonObjectAppendObject(obj, name) :  EndProcedure
  Procedure.l ckAppendObjectCopy(obj.i, name.s, jsonObj.i) :  ProcedureReturn JsonObjectAppendObjectCopy(obj, name, jsonObj) :  EndProcedure
  Procedure.l ckAppendString(obj.i, name.s, value.s) :  ProcedureReturn JsonObjectAppendString(obj, name, value) :  EndProcedure
  Procedure.l ckAppendStringArray(obj.i, name.s, values.i) :  ProcedureReturn JsonObjectAppendStringArray(obj, name, values) :  EndProcedure
  Procedure.i ckArrayAt(obj.i, index.l) :  ProcedureReturn JsonObjectArrayAt(obj, index) :  EndProcedure
  Procedure.i ckArrayOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectArrayOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckBoolAt(obj.i, index.l) :  ProcedureReturn JsonObjectBoolAt(obj, index) :  EndProcedure
  Procedure.l ckBoolOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectBoolOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckBytesOf(obj.i, jsonPath.s, encoding.s, bd.i) :  ProcedureReturn JsonObjectBytesOf(obj, jsonPath, encoding, bd) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn JsonObjectClear(obj) :  EndProcedure
  Procedure.i ckClone(obj.i) :  ProcedureReturn JsonObjectClone(obj) :  EndProcedure
  Procedure.l ckDateOf(obj.i, jsonPath.s, dateTime.i) :  ProcedureReturn JsonObjectDateOf(obj, jsonPath, dateTime) :  EndProcedure
  Procedure.l ckDelete(obj.i, name.s) :  ProcedureReturn JsonObjectDelete(obj, name) :  EndProcedure
  Procedure.l ckDeleteAt(obj.i, index.l) :  ProcedureReturn JsonObjectDeleteAt(obj, index) :  EndProcedure
  Procedure.l ckDtOf(obj.i, jsonPath.s, bLocal.l, dt.i) :  ProcedureReturn JsonObjectDtOf(obj, jsonPath, bLocal, dt) :  EndProcedure
  Procedure.s ckEmit(obj.i) :  ProcedureReturn PeekS(JsonObjectEmit(obj)) :  EndProcedure
  Procedure.l ckEmitBd(obj.i, bd.i) :  ProcedureReturn JsonObjectEmitBd(obj, bd) :  EndProcedure
  Procedure.l ckEmitSb(obj.i, sb.i) :  ProcedureReturn JsonObjectEmitSb(obj, sb) :  EndProcedure
  Procedure.s ckEmitWithSubs(obj.i, subs.i, omitEmpty.l) :  ProcedureReturn PeekS(JsonObjectEmitWithSubs(obj, subs, omitEmpty)) :  EndProcedure
  Procedure.i ckFindObjectWithMember(obj.i, name.s) :  ProcedureReturn JsonObjectFindObjectWithMember(obj, name) :  EndProcedure
  Procedure.i ckFindRecord(obj.i, arrayPath.s, relPath.s, value.s, caseSensitive.l) :  ProcedureReturn JsonObjectFindRecord(obj, arrayPath, relPath, value, caseSensitive) :  EndProcedure
  Procedure.s ckFindRecordString(obj.i, arrayPath.s, relPath.s, value.s, caseSensitive.l, retRelPath.s) :  ProcedureReturn PeekS(JsonObjectFindRecordString(obj, arrayPath, relPath, value, caseSensitive, retRelPath)) :  EndProcedure
  Procedure.l ckFirebaseApplyEvent(obj.i, name.s, argData.s) :  ProcedureReturn JsonObjectFirebaseApplyEvent(obj, name, argData) :  EndProcedure
  Procedure.l ckFirebasePatch(obj.i, jsonPath.s, jsonData.s) :  ProcedureReturn JsonObjectFirebasePatch(obj, jsonPath, jsonData) :  EndProcedure
  Procedure.l ckFirebasePut(obj.i, jsonPath.s, value.s) :  ProcedureReturn JsonObjectFirebasePut(obj, jsonPath, value) :  EndProcedure
  Procedure.i ckGetDocRoot(obj.i) :  ProcedureReturn JsonObjectGetDocRoot(obj) :  EndProcedure
  Procedure.l ckHasMember(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectHasMember(obj, jsonPath) :  EndProcedure
  Procedure.l ckIndexOf(obj.i, name.s) :  ProcedureReturn JsonObjectIndexOf(obj, name) :  EndProcedure
  Procedure.l ckIntAt(obj.i, index.l) :  ProcedureReturn JsonObjectIntAt(obj, index) :  EndProcedure
  Procedure.l ckIntOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectIntOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckIsNullAt(obj.i, index.l) :  ProcedureReturn JsonObjectIsNullAt(obj, index) :  EndProcedure
  Procedure.l ckIsNullOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectIsNullOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckJsonTypeOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectJsonTypeOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckLoad(obj.i, json.s) :  ProcedureReturn JsonObjectLoad(obj, json) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, bd.i) :  ProcedureReturn JsonObjectLoadBd(obj, bd) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, path.s) :  ProcedureReturn JsonObjectLoadFile(obj, path) :  EndProcedure
  Procedure.l ckLoadPredefined(obj.i, name.s) :  ProcedureReturn JsonObjectLoadPredefined(obj, name) :  EndProcedure
  Procedure.l ckLoadSb(obj.i, sb.i) :  ProcedureReturn JsonObjectLoadSb(obj, sb) :  EndProcedure
  Procedure.l ckMoveMember(obj.i, fromIndex.l, toIndex.l) :  ProcedureReturn JsonObjectMoveMember(obj, fromIndex, toIndex) :  EndProcedure
  Procedure.s ckNameAt(obj.i, index.l) :  ProcedureReturn PeekS(JsonObjectNameAt(obj, index)) :  EndProcedure
  Procedure.i ckObjectAt(obj.i, index.l) :  ProcedureReturn JsonObjectObjectAt(obj, index) :  EndProcedure
  Procedure.i ckObjectOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectObjectOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckPredefine(obj.i, name.s) :  ProcedureReturn JsonObjectPredefine(obj, name) :  EndProcedure
  Procedure.l ckRename(obj.i, oldName.s, newName.s) :  ProcedureReturn JsonObjectRename(obj, oldName, newName) :  EndProcedure
  Procedure.l ckRenameAt(obj.i, index.l, name.s) :  ProcedureReturn JsonObjectRenameAt(obj, index, name) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn JsonObjectSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetBoolAt(obj.i, index.l, value.l) :  ProcedureReturn JsonObjectSetBoolAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetBoolOf(obj.i, jsonPath.s, value.l) :  ProcedureReturn JsonObjectSetBoolOf(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckSetIntAt(obj.i, index.l, value.l) :  ProcedureReturn JsonObjectSetIntAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetIntOf(obj.i, jsonPath.s, value.l) :  ProcedureReturn JsonObjectSetIntOf(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckSetNullAt(obj.i, index.l) :  ProcedureReturn JsonObjectSetNullAt(obj, index) :  EndProcedure
  Procedure.l ckSetNullOf(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectSetNullOf(obj, jsonPath) :  EndProcedure
  Procedure.l ckSetNumberAt(obj.i, index.l, value.s) :  ProcedureReturn JsonObjectSetNumberAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetNumberOf(obj.i, jsonPath.s, value.s) :  ProcedureReturn JsonObjectSetNumberOf(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckSetStringAt(obj.i, index.l, value.s) :  ProcedureReturn JsonObjectSetStringAt(obj, index, value) :  EndProcedure
  Procedure.l ckSetStringOf(obj.i, jsonPath.s, value.s) :  ProcedureReturn JsonObjectSetStringOf(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckSizeOfArray(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectSizeOfArray(obj, jsonPath) :  EndProcedure
  Procedure.s ckStringAt(obj.i, index.l) :  ProcedureReturn PeekS(JsonObjectStringAt(obj, index)) :  EndProcedure
  Procedure.s ckStringOf(obj.i, jsonPath.s) :  ProcedureReturn PeekS(JsonObjectStringOf(obj, jsonPath)) :  EndProcedure
  Procedure.l ckStringOfSb(obj.i, jsonPath.s, sb.i) :  ProcedureReturn JsonObjectStringOfSb(obj, jsonPath, sb) :  EndProcedure
  Procedure.l ckSwap(obj.i, index1.l, index2.l) :  ProcedureReturn JsonObjectSwap(obj, index1, index2) :  EndProcedure
  Procedure.l ckTypeAt(obj.i, index.l) :  ProcedureReturn JsonObjectTypeAt(obj, index) :  EndProcedure
  Procedure.l ckUpdateBd(obj.i, jsonPath.s, encoding.s, bd.i) :  ProcedureReturn JsonObjectUpdateBd(obj, jsonPath, encoding, bd) :  EndProcedure
  Procedure.l ckUpdateBool(obj.i, jsonPath.s, value.l) :  ProcedureReturn JsonObjectUpdateBool(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckUpdateInt(obj.i, jsonPath.s, value.l) :  ProcedureReturn JsonObjectUpdateInt(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckUpdateNewArray(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectUpdateNewArray(obj, jsonPath) :  EndProcedure
  Procedure.l ckUpdateNewObject(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectUpdateNewObject(obj, jsonPath) :  EndProcedure
  Procedure.l ckUpdateNull(obj.i, jsonPath.s) :  ProcedureReturn JsonObjectUpdateNull(obj, jsonPath) :  EndProcedure
  Procedure.l ckUpdateNumber(obj.i, jsonPath.s, numericStr.s) :  ProcedureReturn JsonObjectUpdateNumber(obj, jsonPath, numericStr) :  EndProcedure
  Procedure.l ckUpdateSb(obj.i, jsonPath.s, sb.i) :  ProcedureReturn JsonObjectUpdateSb(obj, jsonPath, sb) :  EndProcedure
  Procedure.l ckUpdateString(obj.i, jsonPath.s, value.s) :  ProcedureReturn JsonObjectUpdateString(obj, jsonPath, value) :  EndProcedure
  Procedure.l ckWriteFile(obj.i, path.s) :  ProcedureReturn JsonObjectWriteFile(obj, path) :  EndProcedure
EndModule


; IDE Options = PureBasic 6.40 (Windows - x64)
; Folding = ---------------------
; EnableThread
; EnableXP
; DPIAware