DeclareModule CkHashtable
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckAddFromXmlSb(obj.i, sbXml.i)
  Declare.l ckAddInt(obj.i, key.s, value.l)
  Declare.l ckAddQueryParams(obj.i, queryParams.s)
  Declare.l ckAddStr(obj.i, key.s, value.s)
  Declare ckClear(obj.i)
  Declare.l ckClearWithNewCapacity(obj.i, capacity.l)
  Declare.l ckContains(obj.i, key.s)
  Declare.l ckContainsIntKey(obj.i, key.l)
  Declare.l ckGetKeys(obj.i, strTable.i)
  Declare.l ckLookupInt(obj.i, key.s)
  Declare.s ckLookupStr(obj.i, key.s)
  Declare.l ckRemove(obj.i, key.s)
  Declare.l ckToXmlSb(obj.i, sbXml.i)
EndDeclareModule

Module CkHashtable
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC ckvM(obj.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkHashtableCreate()
  PrototypeC CkHashtableDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHashtableLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkHashtableLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkHashtableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkHashtableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkHashtableLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global HashtableCreate.CkHashtableCreate = GetFunction(CkHashtableLibId,"CkHashtableU_CreateW")
  Global HashtableDispose.CkHashtableDispose = GetFunction(CkHashtableLibId,"CkHashtableU_DisposeW")
  Global HashtableLastMethodSuccess.cklPropGet = GetFunction(CkHashtableLibId,"CkHashtableU_getLastMethodSuccessW")
  Global HashtablePSetLastMethodSuccess.cklPropSet = GetFunction(CkHashtableLibId,"CkHashtableU_putLastMethodSuccessW")
  Global HashtableAddFromXmlSb.cklMi = GetFunction(CkHashtableLibId,"CkHashtableU_AddFromXmlSbW")
  Global HashtableAddInt.cklMsl = GetFunction(CkHashtableLibId,"CkHashtableU_AddIntW")
  Global HashtableAddQueryParams.cklMs = GetFunction(CkHashtableLibId,"CkHashtableU_AddQueryParamsW")
  Global HashtableAddStr.cklMss = GetFunction(CkHashtableLibId,"CkHashtableU_AddStrW")
  Global HashtableClear.ckvM = GetFunction(CkHashtableLibId,"CkHashtableU_ClearW")
  Global HashtableClearWithNewCapacity.cklMl = GetFunction(CkHashtableLibId,"CkHashtableU_ClearWithNewCapacityW")
  Global HashtableContains.cklMs = GetFunction(CkHashtableLibId,"CkHashtableU_ContainsW")
  Global HashtableContainsIntKey.cklMl = GetFunction(CkHashtableLibId,"CkHashtableU_ContainsIntKeyW")
  Global HashtableGetKeys.cklMi = GetFunction(CkHashtableLibId,"CkHashtableU_GetKeysW")
  Global HashtableLookupInt.cklMs = GetFunction(CkHashtableLibId,"CkHashtableU_LookupIntW")
  Global HashtableLookupStr.cklMs = GetFunction(CkHashtableLibId,"CkHashtableU_lookupStrW")
  Global HashtableRemove.cklMs = GetFunction(CkHashtableLibId,"CkHashtableU_RemoveW")
  Global HashtableToXmlSb.cklMi = GetFunction(CkHashtableLibId,"CkHashtableU_ToXmlSbW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn HashtableCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn HashtableDispose(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn HashtableLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn HashtablePSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckAddFromXmlSb(obj.i, sbXml.i) :  ProcedureReturn HashtableAddFromXmlSb(obj, sbXml) :  EndProcedure
  Procedure.l ckAddInt(obj.i, key.s, value.l) :  ProcedureReturn HashtableAddInt(obj, key, value) :  EndProcedure
  Procedure.l ckAddQueryParams(obj.i, queryParams.s) :  ProcedureReturn HashtableAddQueryParams(obj, queryParams) :  EndProcedure
  Procedure.l ckAddStr(obj.i, key.s, value.s) :  ProcedureReturn HashtableAddStr(obj, key, value) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn HashtableClear(obj) :  EndProcedure
  Procedure.l ckClearWithNewCapacity(obj.i, capacity.l) :  ProcedureReturn HashtableClearWithNewCapacity(obj, capacity) :  EndProcedure
  Procedure.l ckContains(obj.i, key.s) :  ProcedureReturn HashtableContains(obj, key) :  EndProcedure
  Procedure.l ckContainsIntKey(obj.i, key.l) :  ProcedureReturn HashtableContainsIntKey(obj, key) :  EndProcedure
  Procedure.l ckGetKeys(obj.i, strTable.i) :  ProcedureReturn HashtableGetKeys(obj, strTable) :  EndProcedure
  Procedure.l ckLookupInt(obj.i, key.s) :  ProcedureReturn HashtableLookupInt(obj, key) :  EndProcedure
  Procedure.s ckLookupStr(obj.i, key.s) :  ProcedureReturn PeekS(HashtableLookupStr(obj, key)) :  EndProcedure
  Procedure.l ckRemove(obj.i, key.s) :  ProcedureReturn HashtableRemove(obj, key) :  EndProcedure
  Procedure.l ckToXmlSb(obj.i, sbXml.i) :  ProcedureReturn HashtableToXmlSb(obj, sbXml) :  EndProcedure
EndModule

