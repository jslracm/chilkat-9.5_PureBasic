DeclareModule CkSecureString
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckMaintainHash(obj.i)
  Declare setCkMaintainHash(obj.i, value.s)
  Declare.l ckReadOnly(obj.i)
  Declare setCkReadOnly(obj.i, value.l)
  Declare.s ckAccess(obj.i)
  Declare.l ckAppend(obj.i, str.s)
  Declare.l ckAppendSb(obj.i, sb.i)
  Declare.l ckAppendSecure(obj.i, secStr.i)
  Declare.s ckHashVal(obj.i, encoding.s)
  Declare.l ckLoadFile(obj.i, path.s, charset.s)
  Declare.l ckSecStrEquals(obj.i, secStr.i)
  Declare.l ckVerifyHash(obj.i, hashVal.s, encoding.s)
EndDeclareModule

Module CkSecureString
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkSecureStringCreate()
  PrototypeC CkSecureStringDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSecureStringLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkSecureStringLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkSecureStringLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkSecureStringLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkSecureStringLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global SecureStringCreate.CkSecureStringCreate = GetFunction(CkSecureStringLibId,"CkSecureStringU_CreateW")
  Global SecureStringDispose.CkSecureStringDispose = GetFunction(CkSecureStringLibId,"CkSecureStringU_DisposeW")
  Global SecureStringLastMethodSuccess.cklPropGet = GetFunction(CkSecureStringLibId,"CkSecureStringU_getLastMethodSuccessW")
  Global SecureStringPSetLastMethodSuccess.cklPropSet = GetFunction(CkSecureStringLibId,"CkSecureStringU_putLastMethodSuccessW")
  Global SecureStringMaintainHash.cksPropGet = GetFunction(CkSecureStringLibId,"CkSecureStringU_maintainHashW")
  Global SecureStringPSetMaintainHash.cksPropSet = GetFunction(CkSecureStringLibId,"CkSecureStringU_putMaintainHashW")
  Global SecureStringReadOnly.cklPropGet = GetFunction(CkSecureStringLibId,"CkSecureStringU_getReadOnlyW")
  Global SecureStringPSetReadOnly.cklPropSet = GetFunction(CkSecureStringLibId,"CkSecureStringU_putReadOnlyW")
  Global SecureStringAccess.cklM = GetFunction(CkSecureStringLibId,"CkSecureStringU_accessW")
  Global SecureStringAppend.cklMs = GetFunction(CkSecureStringLibId,"CkSecureStringU_AppendW")
  Global SecureStringAppendSb.cklMi = GetFunction(CkSecureStringLibId,"CkSecureStringU_AppendSbW")
  Global SecureStringAppendSecure.cklMi = GetFunction(CkSecureStringLibId,"CkSecureStringU_AppendSecureW")
  Global SecureStringHashVal.cklMs = GetFunction(CkSecureStringLibId,"CkSecureStringU_hashValW")
  Global SecureStringLoadFile.cklMss = GetFunction(CkSecureStringLibId,"CkSecureStringU_LoadFileW")
  Global SecureStringSecStrEquals.cklMi = GetFunction(CkSecureStringLibId,"CkSecureStringU_SecStrEqualsW")
  Global SecureStringVerifyHash.cklMss = GetFunction(CkSecureStringLibId,"CkSecureStringU_VerifyHashW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn SecureStringCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn SecureStringDispose(obj) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn SecureStringLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn SecureStringPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckMaintainHash(obj.i) : ProcedureReturn PeekS(SecureStringMaintainHash(obj)) : EndProcedure
  Procedure setCkMaintainHash(obj.i, value.s) : ProcedureReturn SecureStringPSetMaintainHash(obj,value) : EndProcedure
  Procedure.l ckReadOnly(obj.i) : ProcedureReturn SecureStringReadOnly(obj) : EndProcedure
  Procedure setCkReadOnly(obj.i, value.l) : ProcedureReturn SecureStringPSetReadOnly(obj,value) : EndProcedure
  Procedure.s ckAccess(obj.i) :  ProcedureReturn PeekS(SecureStringAccess(obj)) :  EndProcedure
  Procedure.l ckAppend(obj.i, str.s) :  ProcedureReturn SecureStringAppend(obj, str) :  EndProcedure
  Procedure.l ckAppendSb(obj.i, sb.i) :  ProcedureReturn SecureStringAppendSb(obj, sb) :  EndProcedure
  Procedure.l ckAppendSecure(obj.i, secStr.i) :  ProcedureReturn SecureStringAppendSecure(obj, secStr) :  EndProcedure
  Procedure.s ckHashVal(obj.i, encoding.s) :  ProcedureReturn PeekS(SecureStringHashVal(obj, encoding)) :  EndProcedure
  Procedure.l ckLoadFile(obj.i, path.s, charset.s) :  ProcedureReturn SecureStringLoadFile(obj, path, charset) :  EndProcedure
  Procedure.l ckSecStrEquals(obj.i, secStr.i) :  ProcedureReturn SecureStringSecStrEquals(obj, secStr) :  EndProcedure
  Procedure.l ckVerifyHash(obj.i, hashVal.s, encoding.s) :  ProcedureReturn SecureStringVerifyHash(obj, hashVal, encoding) :  EndProcedure
EndModule

