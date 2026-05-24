DeclareModule CkRsa
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.s ckCharset(obj.i)
  Declare setCkCharset(obj.i, value.s)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckEncodingMode(obj.i)
  Declare setCkEncodingMode(obj.i, value.s)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckLittleEndian(obj.i)
  Declare setCkLittleEndian(obj.i, value.l)
  Declare.l ckNoUnpad(obj.i)
  Declare setCkNoUnpad(obj.i, value.l)
  Declare.l ckNumBits(obj.i)
  Declare.s ckOaepHash(obj.i)
  Declare setCkOaepHash(obj.i, value.s)
  Declare.s ckOaepMgfHash(obj.i)
  Declare setCkOaepMgfHash(obj.i, value.s)
  Declare.l ckOaepPadding(obj.i)
  Declare setCkOaepPadding(obj.i, value.l)
  Declare.l ckPssSaltLen(obj.i)
  Declare setCkPssSaltLen(obj.i, value.l)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.l ckDecryptBd(obj.i, bd.i, usePrivateKey.l)
  Declare.s ckDecryptStringENC(obj.i, encodedSig.s, usePrivateKey.l)
  Declare.l ckEncryptBd(obj.i, bd.i, usePrivateKey.l)
  Declare.s ckEncryptStringENC(obj.i, str.s, bUsePrivateKey.l)
  Declare.s ckExportPrivateKey(obj.i)
  Declare.i ckExportPrivateKeyObj(obj.i)
  Declare.s ckExportPublicKey(obj.i)
  Declare.i ckExportPublicKeyObj(obj.i)
  Declare.l ckGenerateKey(obj.i, numBits.l)
  Declare.l ckImportPrivateKey(obj.i, xmlKey.s)
  Declare.l ckImportPrivateKeyObj(obj.i, key.i)
  Declare.l ckImportPublicKey(obj.i, xmlKey.s)
  Declare.l ckImportPublicKeyObj(obj.i, key.i)
  Declare.l ckOpenSslSignBd(obj.i, bd.i)
  Declare.s ckOpenSslSignStringENC(obj.i, str.s)
  Declare.l ckOpenSslVerifyBd(obj.i, bd.i)
  Declare.s ckOpenSslVerifyStringENC(obj.i, str.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSetX509Cert(obj.i, cert.i, usePrivateKey.l)
  Declare.l ckSignBd(obj.i, bdData.i, hashAlgorithm.s, bdSig.i)
  Declare.s ckSignHashENC(obj.i, encodedHash.s, hashAlg.s)
  Declare.s ckSignStringENC(obj.i, strToBeHashed.s, hashAlgorithm.s)
  Declare.s ckSnkToXml(obj.i, filename.s)
  Declare.l ckUnlockComponent(obj.i, unlockCode.s)
  Declare.l ckVerifyBd(obj.i, bdData.i, hashAlgorithm.s, bdSig.i)
  Declare.l ckVerifyHashENC(obj.i, encodedHash.s, hashAlg.s, encodedSig.s)
  Declare.l ckVerifyPrivateKey(obj.i, xml.s)
  Declare.l ckVerifyStringENC(obj.i, originalString.s, hashAlgorithm.s, encodedSig.s)
EndDeclareModule

Module CkRsa
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.l cklM(obj.i)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMisi(obj.i, arg1.i, arg2.s, arg3.i)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.i CkRsaCreate()
  PrototypeC CkRsaDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRsaLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkRsaLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkRsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkRsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkRsaLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global RsaCreate.CkRsaCreate = GetFunction(CkRsaLibId,"CkRsaU_CreateW")
  Global RsaDispose.CkRsaDispose = GetFunction(CkRsaLibId,"CkRsaU_DisposeW")
  Global RsaCharset.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_charsetW")
  Global RsaPSetCharset.cksPropSet = GetFunction(CkRsaLibId,"CkRsaU_putCharsetW")
  Global RsaDebugLogFilePath.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_debugLogFilePathW")
  Global RsaPSetDebugLogFilePath.cksPropSet = GetFunction(CkRsaLibId,"CkRsaU_putDebugLogFilePathW")
  Global RsaEncodingMode.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_encodingModeW")
  Global RsaPSetEncodingMode.cksPropSet = GetFunction(CkRsaLibId,"CkRsaU_putEncodingModeW")
  Global RsaLastErrorHtml.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_lastErrorHtmlW")
  Global RsaLastErrorText.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_lastErrorTextW")
  Global RsaLastErrorXml.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_lastErrorXmlW")
  Global RsaLastMethodSuccess.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getLastMethodSuccessW")
  Global RsaPSetLastMethodSuccess.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putLastMethodSuccessW")
  Global RsaLittleEndian.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getLittleEndianW")
  Global RsaPSetLittleEndian.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putLittleEndianW")
  Global RsaNoUnpad.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getNoUnpadW")
  Global RsaPSetNoUnpad.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putNoUnpadW")
  Global RsaNumBits.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getNumBitsW")
  Global RsaOaepHash.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_oaepHashW")
  Global RsaPSetOaepHash.cksPropSet = GetFunction(CkRsaLibId,"CkRsaU_putOaepHashW")
  Global RsaOaepMgfHash.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_oaepMgfHashW")
  Global RsaPSetOaepMgfHash.cksPropSet = GetFunction(CkRsaLibId,"CkRsaU_putOaepMgfHashW")
  Global RsaOaepPadding.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getOaepPaddingW")
  Global RsaPSetOaepPadding.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putOaepPaddingW")
  Global RsaPssSaltLen.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getPssSaltLenW")
  Global RsaPSetPssSaltLen.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putPssSaltLenW")
  Global RsaVerboseLogging.cklPropGet = GetFunction(CkRsaLibId,"CkRsaU_getVerboseLoggingW")
  Global RsaPSetVerboseLogging.cklPropSet = GetFunction(CkRsaLibId,"CkRsaU_putVerboseLoggingW")
  Global RsaVersion.cksPropGet = GetFunction(CkRsaLibId,"CkRsaU_versionW")
  Global RsaDecryptBd.cklMil = GetFunction(CkRsaLibId,"CkRsaU_DecryptBdW")
  Global RsaDecryptStringENC.cklMsl = GetFunction(CkRsaLibId,"CkRsaU_decryptStringENCW")
  Global RsaEncryptBd.cklMil = GetFunction(CkRsaLibId,"CkRsaU_EncryptBdW")
  Global RsaEncryptStringENC.cklMsl = GetFunction(CkRsaLibId,"CkRsaU_encryptStringENCW")
  Global RsaExportPrivateKey.cklM = GetFunction(CkRsaLibId,"CkRsaU_exportPrivateKeyW")
  Global RsaExportPrivateKeyObj.ckiM = GetFunction(CkRsaLibId,"CkRsaU_ExportPrivateKeyObjW")
  Global RsaExportPublicKey.cklM = GetFunction(CkRsaLibId,"CkRsaU_exportPublicKeyW")
  Global RsaExportPublicKeyObj.ckiM = GetFunction(CkRsaLibId,"CkRsaU_ExportPublicKeyObjW")
  Global RsaGenerateKey.cklMl = GetFunction(CkRsaLibId,"CkRsaU_GenerateKeyW")
  Global RsaImportPrivateKey.cklMs = GetFunction(CkRsaLibId,"CkRsaU_ImportPrivateKeyW")
  Global RsaImportPrivateKeyObj.cklMi = GetFunction(CkRsaLibId,"CkRsaU_ImportPrivateKeyObjW")
  Global RsaImportPublicKey.cklMs = GetFunction(CkRsaLibId,"CkRsaU_ImportPublicKeyW")
  Global RsaImportPublicKeyObj.cklMi = GetFunction(CkRsaLibId,"CkRsaU_ImportPublicKeyObjW")
  Global RsaOpenSslSignBd.cklMi = GetFunction(CkRsaLibId,"CkRsaU_OpenSslSignBdW")
  Global RsaOpenSslSignStringENC.cklMs = GetFunction(CkRsaLibId,"CkRsaU_openSslSignStringENCW")
  Global RsaOpenSslVerifyBd.cklMi = GetFunction(CkRsaLibId,"CkRsaU_OpenSslVerifyBdW")
  Global RsaOpenSslVerifyStringENC.cklMs = GetFunction(CkRsaLibId,"CkRsaU_openSslVerifyStringENCW")
  Global RsaSaveLastError.cklMs = GetFunction(CkRsaLibId,"CkRsaU_SaveLastErrorW")
  Global RsaSetX509Cert.cklMil = GetFunction(CkRsaLibId,"CkRsaU_SetX509CertW")
  Global RsaSignBd.cklMisi = GetFunction(CkRsaLibId,"CkRsaU_SignBdW")
  Global RsaSignHashENC.cklMss = GetFunction(CkRsaLibId,"CkRsaU_signHashENCW")
  Global RsaSignStringENC.cklMss = GetFunction(CkRsaLibId,"CkRsaU_signStringENCW")
  Global RsaSnkToXml.cklMs = GetFunction(CkRsaLibId,"CkRsaU_snkToXmlW")
  Global RsaUnlockComponent.cklMs = GetFunction(CkRsaLibId,"CkRsaU_UnlockComponentW")
  Global RsaVerifyBd.cklMisi = GetFunction(CkRsaLibId,"CkRsaU_VerifyBdW")
  Global RsaVerifyHashENC.cklMsss = GetFunction(CkRsaLibId,"CkRsaU_VerifyHashENCW")
  Global RsaVerifyPrivateKey.cklMs = GetFunction(CkRsaLibId,"CkRsaU_VerifyPrivateKeyW")
  Global RsaVerifyStringENC.cklMsss = GetFunction(CkRsaLibId,"CkRsaU_VerifyStringENCW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn RsaCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn RsaDispose(obj) : EndProcedure
  Procedure.s ckCharset(obj.i) : ProcedureReturn PeekS(RsaCharset(obj)) : EndProcedure
  Procedure setCkCharset(obj.i, value.s) : ProcedureReturn RsaPSetCharset(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(RsaDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn RsaPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckEncodingMode(obj.i) : ProcedureReturn PeekS(RsaEncodingMode(obj)) : EndProcedure
  Procedure setCkEncodingMode(obj.i, value.s) : ProcedureReturn RsaPSetEncodingMode(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(RsaLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(RsaLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(RsaLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn RsaLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn RsaPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckLittleEndian(obj.i) : ProcedureReturn RsaLittleEndian(obj) : EndProcedure
  Procedure setCkLittleEndian(obj.i, value.l) : ProcedureReturn RsaPSetLittleEndian(obj,value) : EndProcedure
  Procedure.l ckNoUnpad(obj.i) : ProcedureReturn RsaNoUnpad(obj) : EndProcedure
  Procedure setCkNoUnpad(obj.i, value.l) : ProcedureReturn RsaPSetNoUnpad(obj,value) : EndProcedure
  Procedure.l ckNumBits(obj.i) : ProcedureReturn RsaNumBits(obj) : EndProcedure
  Procedure.s ckOaepHash(obj.i) : ProcedureReturn PeekS(RsaOaepHash(obj)) : EndProcedure
  Procedure setCkOaepHash(obj.i, value.s) : ProcedureReturn RsaPSetOaepHash(obj,value) : EndProcedure
  Procedure.s ckOaepMgfHash(obj.i) : ProcedureReturn PeekS(RsaOaepMgfHash(obj)) : EndProcedure
  Procedure setCkOaepMgfHash(obj.i, value.s) : ProcedureReturn RsaPSetOaepMgfHash(obj,value) : EndProcedure
  Procedure.l ckOaepPadding(obj.i) : ProcedureReturn RsaOaepPadding(obj) : EndProcedure
  Procedure setCkOaepPadding(obj.i, value.l) : ProcedureReturn RsaPSetOaepPadding(obj,value) : EndProcedure
  Procedure.l ckPssSaltLen(obj.i) : ProcedureReturn RsaPssSaltLen(obj) : EndProcedure
  Procedure setCkPssSaltLen(obj.i, value.l) : ProcedureReturn RsaPSetPssSaltLen(obj,value) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn RsaVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn RsaPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(RsaVersion(obj)) : EndProcedure
  Procedure.l ckDecryptBd(obj.i, bd.i, usePrivateKey.l) :  ProcedureReturn RsaDecryptBd(obj, bd, usePrivateKey) :  EndProcedure
  Procedure.s ckDecryptStringENC(obj.i, encodedSig.s, usePrivateKey.l) :  ProcedureReturn PeekS(RsaDecryptStringENC(obj, encodedSig, usePrivateKey)) :  EndProcedure
  Procedure.l ckEncryptBd(obj.i, bd.i, usePrivateKey.l) :  ProcedureReturn RsaEncryptBd(obj, bd, usePrivateKey) :  EndProcedure
  Procedure.s ckEncryptStringENC(obj.i, str.s, bUsePrivateKey.l) :  ProcedureReturn PeekS(RsaEncryptStringENC(obj, str, bUsePrivateKey)) :  EndProcedure
  Procedure.s ckExportPrivateKey(obj.i) :  ProcedureReturn PeekS(RsaExportPrivateKey(obj)) :  EndProcedure
  Procedure.i ckExportPrivateKeyObj(obj.i) :  ProcedureReturn RsaExportPrivateKeyObj(obj) :  EndProcedure
  Procedure.s ckExportPublicKey(obj.i) :  ProcedureReturn PeekS(RsaExportPublicKey(obj)) :  EndProcedure
  Procedure.i ckExportPublicKeyObj(obj.i) :  ProcedureReturn RsaExportPublicKeyObj(obj) :  EndProcedure
  Procedure.l ckGenerateKey(obj.i, numBits.l) :  ProcedureReturn RsaGenerateKey(obj, numBits) :  EndProcedure
  Procedure.l ckImportPrivateKey(obj.i, xmlKey.s) :  ProcedureReturn RsaImportPrivateKey(obj, xmlKey) :  EndProcedure
  Procedure.l ckImportPrivateKeyObj(obj.i, key.i) :  ProcedureReturn RsaImportPrivateKeyObj(obj, key) :  EndProcedure
  Procedure.l ckImportPublicKey(obj.i, xmlKey.s) :  ProcedureReturn RsaImportPublicKey(obj, xmlKey) :  EndProcedure
  Procedure.l ckImportPublicKeyObj(obj.i, key.i) :  ProcedureReturn RsaImportPublicKeyObj(obj, key) :  EndProcedure
  Procedure.l ckOpenSslSignBd(obj.i, bd.i) :  ProcedureReturn RsaOpenSslSignBd(obj, bd) :  EndProcedure
  Procedure.s ckOpenSslSignStringENC(obj.i, str.s) :  ProcedureReturn PeekS(RsaOpenSslSignStringENC(obj, str)) :  EndProcedure
  Procedure.l ckOpenSslVerifyBd(obj.i, bd.i) :  ProcedureReturn RsaOpenSslVerifyBd(obj, bd) :  EndProcedure
  Procedure.s ckOpenSslVerifyStringENC(obj.i, str.s) :  ProcedureReturn PeekS(RsaOpenSslVerifyStringENC(obj, str)) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn RsaSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSetX509Cert(obj.i, cert.i, usePrivateKey.l) :  ProcedureReturn RsaSetX509Cert(obj, cert, usePrivateKey) :  EndProcedure
  Procedure.l ckSignBd(obj.i, bdData.i, hashAlgorithm.s, bdSig.i) :  ProcedureReturn RsaSignBd(obj, bdData, hashAlgorithm, bdSig) :  EndProcedure
  Procedure.s ckSignHashENC(obj.i, encodedHash.s, hashAlg.s) :  ProcedureReturn PeekS(RsaSignHashENC(obj, encodedHash, hashAlg)) :  EndProcedure
  Procedure.s ckSignStringENC(obj.i, strToBeHashed.s, hashAlgorithm.s) :  ProcedureReturn PeekS(RsaSignStringENC(obj, strToBeHashed, hashAlgorithm)) :  EndProcedure
  Procedure.s ckSnkToXml(obj.i, filename.s) :  ProcedureReturn PeekS(RsaSnkToXml(obj, filename)) :  EndProcedure
  Procedure.l ckUnlockComponent(obj.i, unlockCode.s) :  ProcedureReturn RsaUnlockComponent(obj, unlockCode) :  EndProcedure
  Procedure.l ckVerifyBd(obj.i, bdData.i, hashAlgorithm.s, bdSig.i) :  ProcedureReturn RsaVerifyBd(obj, bdData, hashAlgorithm, bdSig) :  EndProcedure
  Procedure.l ckVerifyHashENC(obj.i, encodedHash.s, hashAlg.s, encodedSig.s) :  ProcedureReturn RsaVerifyHashENC(obj, encodedHash, hashAlg, encodedSig) :  EndProcedure
  Procedure.l ckVerifyPrivateKey(obj.i, xml.s) :  ProcedureReturn RsaVerifyPrivateKey(obj, xml) :  EndProcedure
  Procedure.l ckVerifyStringENC(obj.i, originalString.s, hashAlgorithm.s, encodedSig.s) :  ProcedureReturn RsaVerifyStringENC(obj, originalString, hashAlgorithm, encodedSig) :  EndProcedure
EndModule

