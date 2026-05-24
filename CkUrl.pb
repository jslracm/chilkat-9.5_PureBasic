DeclareModule CkUrl
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckFrag(obj.i)
  Declare.s ckHost(obj.i)
  Declare.s ckHostType(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckLogin(obj.i)
  Declare.s ckPassword(obj.i)
  Declare.s ckPath(obj.i)
  Declare.s ckPathWithQueryParams(obj.i)
  Declare.l ckPort(obj.i)
  Declare.s ckQuery(obj.i)
  Declare.l ckSsl(obj.i)
  Declare.l ckParseUrl(obj.i, url.s)
EndDeclareModule

Module CkUrl
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.i CkUrlCreate()
  PrototypeC CkUrlDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUrlLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkUrlLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkUrlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkUrlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkUrlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global UrlCreate.CkUrlCreate = GetFunction(CkUrlLibId,"CkUrlU_CreateW")
  Global UrlDispose.CkUrlDispose = GetFunction(CkUrlLibId,"CkUrlU_DisposeW")
  Global UrlFrag.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_fragW")
  Global UrlHost.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_hostW")
  Global UrlHostType.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_hostTypeW")
  Global UrlLastMethodSuccess.cklPropGet = GetFunction(CkUrlLibId,"CkUrlU_getLastMethodSuccessW")
  Global UrlPSetLastMethodSuccess.cklPropSet = GetFunction(CkUrlLibId,"CkUrlU_putLastMethodSuccessW")
  Global UrlLogin.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_loginW")
  Global UrlPassword.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_passwordW")
  Global UrlPath.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_pathW")
  Global UrlPathWithQueryParams.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_pathWithQueryParamsW")
  Global UrlPort.cklPropGet = GetFunction(CkUrlLibId,"CkUrlU_getPortW")
  Global UrlQuery.cksPropGet = GetFunction(CkUrlLibId,"CkUrlU_queryW")
  Global UrlSsl.cklPropGet = GetFunction(CkUrlLibId,"CkUrlU_getSslW")
  Global UrlParseUrl.cklMs = GetFunction(CkUrlLibId,"CkUrlU_ParseUrlW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn UrlCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn UrlDispose(obj) : EndProcedure
  Procedure.s ckFrag(obj.i) : ProcedureReturn PeekS(UrlFrag(obj)) : EndProcedure
  Procedure.s ckHost(obj.i) : ProcedureReturn PeekS(UrlHost(obj)) : EndProcedure
  Procedure.s ckHostType(obj.i) : ProcedureReturn PeekS(UrlHostType(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn UrlLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn UrlPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckLogin(obj.i) : ProcedureReturn PeekS(UrlLogin(obj)) : EndProcedure
  Procedure.s ckPassword(obj.i) : ProcedureReturn PeekS(UrlPassword(obj)) : EndProcedure
  Procedure.s ckPath(obj.i) : ProcedureReturn PeekS(UrlPath(obj)) : EndProcedure
  Procedure.s ckPathWithQueryParams(obj.i) : ProcedureReturn PeekS(UrlPathWithQueryParams(obj)) : EndProcedure
  Procedure.l ckPort(obj.i) : ProcedureReturn UrlPort(obj) : EndProcedure
  Procedure.s ckQuery(obj.i) : ProcedureReturn PeekS(UrlQuery(obj)) : EndProcedure
  Procedure.l ckSsl(obj.i) : ProcedureReturn UrlSsl(obj) : EndProcedure
  Procedure.l ckParseUrl(obj.i, url.s) :  ProcedureReturn UrlParseUrl(obj, url) :  EndProcedure
EndModule

