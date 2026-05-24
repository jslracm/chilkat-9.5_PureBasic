DeclareModule CkOAuth1
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckAuthorizationHeader(obj.i)
  Declare.s ckBaseString(obj.i)
  Declare.s ckConsumerKey(obj.i)
  Declare setCkConsumerKey(obj.i, value.s)
  Declare.s ckConsumerSecret(obj.i)
  Declare setCkConsumerSecret(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEncodedSignature(obj.i)
  Declare.s ckGeneratedUrl(obj.i)
  Declare.s ckHmacKey(obj.i)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.s ckNonce(obj.i)
  Declare setCkNonce(obj.i, value.s)
  Declare.s ckOauthMethod(obj.i)
  Declare setCkOauthMethod(obj.i, value.s)
  Declare.s ckOauthUrl(obj.i)
  Declare setCkOauthUrl(obj.i, value.s)
  Declare.s ckOauthVersion(obj.i)
  Declare setCkOauthVersion(obj.i, value.s)
  Declare.s ckQueryString(obj.i)
  Declare.s ckRealm(obj.i)
  Declare setCkRealm(obj.i, value.s)
  Declare.s ckSignature(obj.i)
  Declare.s ckSignatureMethod(obj.i)
  Declare setCkSignatureMethod(obj.i, value.s)
  Declare.s ckTimestamp(obj.i)
  Declare setCkTimestamp(obj.i, value.s)
  Declare.s ckToken(obj.i)
  Declare setCkToken(obj.i, value.s)
  Declare.s ckTokenSecret(obj.i)
  Declare setCkTokenSecret(obj.i, value.s)
  Declare.s ckUncommonOptions(obj.i)
  Declare setCkUncommonOptions(obj.i, value.s)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckAddParam(obj.i, name.s, value.s)
  Declare.l ckGenerate(obj.i)
  Declare.l ckGenNonce(obj.i, numBytes.l)
  Declare.l ckGenTimestamp(obj.i)
  Declare.l ckRemoveParam(obj.i, name.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetRsaKey(obj.i, privKey.i)
EndDeclareModule

Module CkOAuth1
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC.i CkOAuth1Create()
  PrototypeC CkOAuth1Dispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkOAuth1LibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkOAuth1LibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkOAuth1LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkOAuth1LibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkOAuth1LibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global OAuth1Create.CkOAuth1Create = GetFunction(CkOAuth1LibId,"CkOAuth1U_CreateW")
  Global OAuth1Dispose.CkOAuth1Dispose = GetFunction(CkOAuth1LibId,"CkOAuth1U_DisposeW")
  Global OAuth1AuthorizationHeader.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_authorizationHeaderW")
  Global OAuth1BaseString.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_baseStringW")
  Global OAuth1ConsumerKey.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_consumerKeyW")
  Global OAuth1PSetConsumerKey.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putConsumerKeyW")
  Global OAuth1ConsumerSecret.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_consumerSecretW")
  Global OAuth1PSetConsumerSecret.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putConsumerSecretW")
  Global OAuth1DebugLogFilePath.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_debugLogFilePathW")
  Global OAuth1PSetDebugLogFilePath.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putDebugLogFilePathW")
  Global OAuth1EncodedSignature.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_encodedSignatureW")
  Global OAuth1GeneratedUrl.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_generatedUrlW")
  Global OAuth1HmacKey.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_hmacKeyW")
  Global OAuth1LastErrorHtml.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_lastErrorHtmlW")
  Global OAuth1LastErrorText.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_lastErrorTextW")
  Global OAuth1LastErrorXml.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_lastErrorXmlW")
  Global OAuth1LastMethodSuccess.cklPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_getLastMethodSuccessW")
  Global OAuth1PSetLastMethodSuccess.cklPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putLastMethodSuccessW")
  Global OAuth1Nonce.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_nonceW")
  Global OAuth1PSetNonce.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putNonceW")
  Global OAuth1OauthMethod.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_oauthMethodW")
  Global OAuth1PSetOauthMethod.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putOauthMethodW")
  Global OAuth1OauthUrl.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_oauthUrlW")
  Global OAuth1PSetOauthUrl.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putOauthUrlW")
  Global OAuth1OauthVersion.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_oauthVersionW")
  Global OAuth1PSetOauthVersion.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putOauthVersionW")
  Global OAuth1QueryString.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_queryStringW")
  Global OAuth1Realm.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_realmW")
  Global OAuth1PSetRealm.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putRealmW")
  Global OAuth1Signature.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_signatureW")
  Global OAuth1SignatureMethod.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_signatureMethodW")
  Global OAuth1PSetSignatureMethod.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putSignatureMethodW")
  Global OAuth1Timestamp.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_timestampW")
  Global OAuth1PSetTimestamp.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putTimestampW")
  Global OAuth1Token.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_tokenW")
  Global OAuth1PSetToken.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putTokenW")
  Global OAuth1TokenSecret.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_tokenSecretW")
  Global OAuth1PSetTokenSecret.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putTokenSecretW")
  Global OAuth1UncommonOptions.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_uncommonOptionsW")
  Global OAuth1PSetUncommonOptions.cksPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putUncommonOptionsW")
  Global OAuth1VerboseLogging.cklPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_getVerboseLoggingW")
  Global OAuth1PSetVerboseLogging.cklPropSet = GetFunction(CkOAuth1LibId,"CkOAuth1U_putVerboseLoggingW")
  Global OAuth1Version.cksPropGet = GetFunction(CkOAuth1LibId,"CkOAuth1U_versionW")
  Global OAuth1AddParam.cklMss = GetFunction(CkOAuth1LibId,"CkOAuth1U_AddParamW")
  Global OAuth1Generate.cklM = GetFunction(CkOAuth1LibId,"CkOAuth1U_GenerateW")
  Global OAuth1GenNonce.cklMl = GetFunction(CkOAuth1LibId,"CkOAuth1U_GenNonceW")
  Global OAuth1GenTimestamp.cklM = GetFunction(CkOAuth1LibId,"CkOAuth1U_GenTimestampW")
  Global OAuth1RemoveParam.cklMs = GetFunction(CkOAuth1LibId,"CkOAuth1U_RemoveParamW")
  Global OAuth1SaveLastError.cklMs = GetFunction(CkOAuth1LibId,"CkOAuth1U_SaveLastErrorW")
  Global OAuth1SetRsaKey.cklMi = GetFunction(CkOAuth1LibId,"CkOAuth1U_SetRsaKeyW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn OAuth1Create() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn OAuth1Dispose(obj) : EndProcedure
  Procedure.s ckAuthorizationHeader(obj.i) : ProcedureReturn PeekS(OAuth1AuthorizationHeader(obj)) : EndProcedure
  Procedure.s ckBaseString(obj.i) : ProcedureReturn PeekS(OAuth1BaseString(obj)) : EndProcedure
  Procedure.s ckConsumerKey(obj.i) : ProcedureReturn PeekS(OAuth1ConsumerKey(obj)) : EndProcedure
  Procedure setCkConsumerKey(obj.i, value.s) : ProcedureReturn OAuth1PSetConsumerKey(obj,value) : EndProcedure
  Procedure.s ckConsumerSecret(obj.i) : ProcedureReturn PeekS(OAuth1ConsumerSecret(obj)) : EndProcedure
  Procedure setCkConsumerSecret(obj.i, value.s) : ProcedureReturn OAuth1PSetConsumerSecret(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(OAuth1DebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn OAuth1PSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEncodedSignature(obj.i) : ProcedureReturn PeekS(OAuth1EncodedSignature(obj)) : EndProcedure
  Procedure.s ckGeneratedUrl(obj.i) : ProcedureReturn PeekS(OAuth1GeneratedUrl(obj)) : EndProcedure
  Procedure.s ckHmacKey(obj.i) : ProcedureReturn PeekS(OAuth1HmacKey(obj)) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(OAuth1LastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(OAuth1LastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(OAuth1LastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn OAuth1LastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn OAuth1PSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.s ckNonce(obj.i) : ProcedureReturn PeekS(OAuth1Nonce(obj)) : EndProcedure
  Procedure setCkNonce(obj.i, value.s) : ProcedureReturn OAuth1PSetNonce(obj,value) : EndProcedure
  Procedure.s ckOauthMethod(obj.i) : ProcedureReturn PeekS(OAuth1OauthMethod(obj)) : EndProcedure
  Procedure setCkOauthMethod(obj.i, value.s) : ProcedureReturn OAuth1PSetOauthMethod(obj,value) : EndProcedure
  Procedure.s ckOauthUrl(obj.i) : ProcedureReturn PeekS(OAuth1OauthUrl(obj)) : EndProcedure
  Procedure setCkOauthUrl(obj.i, value.s) : ProcedureReturn OAuth1PSetOauthUrl(obj,value) : EndProcedure
  Procedure.s ckOauthVersion(obj.i) : ProcedureReturn PeekS(OAuth1OauthVersion(obj)) : EndProcedure
  Procedure setCkOauthVersion(obj.i, value.s) : ProcedureReturn OAuth1PSetOauthVersion(obj,value) : EndProcedure
  Procedure.s ckQueryString(obj.i) : ProcedureReturn PeekS(OAuth1QueryString(obj)) : EndProcedure
  Procedure.s ckRealm(obj.i) : ProcedureReturn PeekS(OAuth1Realm(obj)) : EndProcedure
  Procedure setCkRealm(obj.i, value.s) : ProcedureReturn OAuth1PSetRealm(obj,value) : EndProcedure
  Procedure.s ckSignature(obj.i) : ProcedureReturn PeekS(OAuth1Signature(obj)) : EndProcedure
  Procedure.s ckSignatureMethod(obj.i) : ProcedureReturn PeekS(OAuth1SignatureMethod(obj)) : EndProcedure
  Procedure setCkSignatureMethod(obj.i, value.s) : ProcedureReturn OAuth1PSetSignatureMethod(obj,value) : EndProcedure
  Procedure.s ckTimestamp(obj.i) : ProcedureReturn PeekS(OAuth1Timestamp(obj)) : EndProcedure
  Procedure setCkTimestamp(obj.i, value.s) : ProcedureReturn OAuth1PSetTimestamp(obj,value) : EndProcedure
  Procedure.s ckToken(obj.i) : ProcedureReturn PeekS(OAuth1Token(obj)) : EndProcedure
  Procedure setCkToken(obj.i, value.s) : ProcedureReturn OAuth1PSetToken(obj,value) : EndProcedure
  Procedure.s ckTokenSecret(obj.i) : ProcedureReturn PeekS(OAuth1TokenSecret(obj)) : EndProcedure
  Procedure setCkTokenSecret(obj.i, value.s) : ProcedureReturn OAuth1PSetTokenSecret(obj,value) : EndProcedure
  Procedure.s ckUncommonOptions(obj.i) : ProcedureReturn PeekS(OAuth1UncommonOptions(obj)) : EndProcedure
  Procedure setCkUncommonOptions(obj.i, value.s) : ProcedureReturn OAuth1PSetUncommonOptions(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn OAuth1VerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn OAuth1PSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(OAuth1Version(obj)) : EndProcedure
  Procedure.l ckAddParam(obj.i, name.s, value.s) :  ProcedureReturn OAuth1AddParam(obj, name, value) :  EndProcedure
  Procedure.l ckGenerate(obj.i) :  ProcedureReturn OAuth1Generate(obj) :  EndProcedure
  Procedure.l ckGenNonce(obj.i, numBytes.l) :  ProcedureReturn OAuth1GenNonce(obj, numBytes) :  EndProcedure
  Procedure.l ckGenTimestamp(obj.i) :  ProcedureReturn OAuth1GenTimestamp(obj) :  EndProcedure
  Procedure.l ckRemoveParam(obj.i, name.s) :  ProcedureReturn OAuth1RemoveParam(obj, name) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn OAuth1SaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetRsaKey(obj.i, privKey.i) :  ProcedureReturn OAuth1SetRsaKey(obj, privKey) :  EndProcedure
EndModule

