DeclareModule CkXml
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Declare ckInitGlobal()
CompilerEndIf
  Declare.i ckCreate()
  Declare ckDispose(obj.i)
  Declare.l ckCdata(obj.i)
  Declare setCkCdata(obj.i, value.l)
  Declare.s ckContent(obj.i)
  Declare setCkContent(obj.i, value.s)
  Declare.l ckContentInt(obj.i)
  Declare setCkContentInt(obj.i, value.l)
  Declare.s ckDebugLogFilePath(obj.i)
  Declare setCkDebugLogFilePath(obj.i, value.s)
  Declare.s ckDocType(obj.i)
  Declare setCkDocType(obj.i, value.s)
  Declare.l ckEmitBom(obj.i)
  Declare setCkEmitBom(obj.i, value.l)
  Declare.l ckEmitCompact(obj.i)
  Declare setCkEmitCompact(obj.i, value.l)
  Declare.l ckEmitXmlDecl(obj.i)
  Declare setCkEmitXmlDecl(obj.i, value.l)
  Declare.s ckEncoding(obj.i)
  Declare setCkEncoding(obj.i, value.s)
  Declare.l ckI(obj.i)
  Declare setCkI(obj.i, value.l)
  Declare.l ckIsBase64(obj.i)
  Declare.l ckJ(obj.i)
  Declare setCkJ(obj.i, value.l)
  Declare.l ckK(obj.i)
  Declare setCkK(obj.i, value.l)
  Declare.s ckLastErrorHtml(obj.i)
  Declare.s ckLastErrorText(obj.i)
  Declare.s ckLastErrorXml(obj.i)
  Declare.l ckLastMethodSuccess(obj.i)
  Declare setCkLastMethodSuccess(obj.i, value.l)
  Declare.l ckNumAttributes(obj.i)
  Declare.l ckNumChildren(obj.i)
  Declare.l ckSortCaseInsensitive(obj.i)
  Declare setCkSortCaseInsensitive(obj.i, value.l)
  Declare.l ckStandalone(obj.i)
  Declare setCkStandalone(obj.i, value.l)
  Declare.s ckTag(obj.i)
  Declare setCkTag(obj.i, value.s)
  Declare.s ckTagNsPrefix(obj.i)
  Declare setCkTagNsPrefix(obj.i, value.s)
  Declare.s ckTagPath(obj.i)
  Declare.s ckTagUnprefixed(obj.i)
  Declare setCkTagUnprefixed(obj.i, value.s)
  Declare.l ckTreeId(obj.i)
  Declare.l ckVerboseLogging(obj.i)
  Declare setCkVerboseLogging(obj.i, value.l)
  Declare.s ckVersion(obj.i)
  Declare.s ckAccumulateTagContent(obj.i, tag.s, skipTags.s)
  Declare.l ckAddAttribute(obj.i, name.s, value.s)
  Declare.l ckAddAttributeInt(obj.i, name.s, value.l)
  Declare.l ckAddChildTree(obj.i, tree.i)
  Declare ckAddOrUpdateAttribute(obj.i, name.s, value.s)
  Declare ckAddOrUpdateAttributeI(obj.i, name.s, value.l)
  Declare ckAddStyleSheet(obj.i, styleSheet.s)
  Declare ckAddToAttribute(obj.i, name.s, amount.l)
  Declare ckAddToChildContent(obj.i, tag.s, amount.l)
  Declare ckAddToContent(obj.i, amount.l)
  Declare.l ckAppendToContent(obj.i, str.s)
  Declare.l ckChildContentMatches(obj.i, tagPath.s, pattern.s, caseSensitive.l)
  Declare.s ckChilkatPath(obj.i, pathCmd.s)
  Declare ckClear(obj.i)
  Declare.l ckContentMatches(obj.i, pattern.s, caseSensitive.l)
  Declare ckCopy(obj.i, node.i)
  Declare ckCopyRef(obj.i, copyFromNode.i)
  Declare.s ckDecodeEntities(obj.i, str.s)
  Declare.l ckDecryptContent(obj.i, password.s)
  Declare.l ckEncryptContent(obj.i, password.s)
  Declare.i ckExtractChildByIndex(obj.i, index.l)
  Declare.i ckExtractChildByName(obj.i, tagPath.s, attrName.s, attrValue.s)
  Declare.i ckFindChild(obj.i, tagPath.s)
  Declare.l ckFindChild2(obj.i, tagPath.s)
  Declare.i ckFindNextRecord(obj.i, tagPath.s, contentPattern.s)
  Declare.i ckFindOrAddNewChild(obj.i, tagPath.s)
  Declare.i ckFirstChild(obj.i)
  Declare.l ckFirstChild2(obj.i)
  Declare.s ckGetAttributeName(obj.i, index.l)
  Declare.s ckGetAttributeValue(obj.i, index.l)
  Declare.l ckGetAttributeValueInt(obj.i, index.l)
  Declare.s ckGetAttrValue(obj.i, name.s)
  Declare.l ckGetAttrValueInt(obj.i, name.s)
  Declare.i ckGetChild(obj.i, index.l)
  Declare.l ckGetChild2(obj.i, index.l)
  Declare.s ckGetChildAttrValue(obj.i, tagPath.s, attrName.s)
  Declare.l ckGetChildBoolValue(obj.i, tagPath.s)
  Declare.s ckGetChildContent(obj.i, tagPath.s)
  Declare.s ckGetChildContentByIndex(obj.i, index.l)
  Declare.l ckGetChildContentSb(obj.i, tagPath.s, sb.i)
  Declare.i ckGetChildExact(obj.i, tag.s, content.s)
  Declare.l ckGetChildIntValue(obj.i, tagPath.s)
  Declare.s ckGetChildTag(obj.i, index.l)
  Declare.s ckGetChildTagByIndex(obj.i, index.l)
  Declare.i ckGetChildWithAttr(obj.i, tagPath.s, attrName.s, attrValue.s)
  Declare.i ckGetChildWithContent(obj.i, content.s)
  Declare.i ckGetChildWithTag(obj.i, tagPath.s)
  Declare.i ckGetNthChildWithTag(obj.i, tag.s, n.l)
  Declare.l ckGetNthChildWithTag2(obj.i, tag.s, n.l)
  Declare.i ckGetParent(obj.i)
  Declare.l ckGetParent2(obj.i)
  Declare.i ckGetRoot(obj.i)
  Declare ckGetRoot2(obj.i)
  Declare.i ckGetSelf(obj.i)
  Declare.s ckGetXml(obj.i)
  Declare.l ckGetXmlBd(obj.i, bd.i)
  Declare.l ckGetXmlSb(obj.i, sb.i)
  Declare.l ckHasAttribute(obj.i, name.s)
  Declare.l ckHasAttrWithValue(obj.i, name.s, value.s)
  Declare.l ckHasChildWithContent(obj.i, content.s)
  Declare.l ckHasChildWithTag(obj.i, tagPath.s)
  Declare.l ckHasChildWithTagAndContent(obj.i, tagPath.s, content.s)
  Declare ckInsertChildTreeAfter(obj.i, index.l, tree.i)
  Declare ckInsertChildTreeBefore(obj.i, index.l, tree.i)
  Declare.i ckLastChild(obj.i)
  Declare.l ckLastChild2(obj.i)
  Declare.l ckLoadBd(obj.i, bd.i, autoTrim.l)
  Declare.l ckLoadSb(obj.i, sb.i, autoTrim.l)
  Declare.l ckLoadXml(obj.i, xmlData.s)
  Declare.l ckLoadXml2(obj.i, xmlData.s, autoTrim.l)
  Declare.l ckLoadXmlFile(obj.i, fileName.s)
  Declare.l ckLoadXmlFile2(obj.i, fileName.s, autoTrim.l)
  Declare.i ckNewChild(obj.i, tagPath.s, content.s)
  Declare ckNewChild2(obj.i, tagPath.s, content.s)
  Declare.i ckNewChildAfter(obj.i, index.l, tag.s, content.s)
  Declare.i ckNewChildBefore(obj.i, index.l, tag.s, content.s)
  Declare ckNewChildInt2(obj.i, tagPath.s, value.l)
  Declare.l ckNextInTraversal2(obj.i, sbState.i)
  Declare.i ckNextSibling(obj.i)
  Declare.l ckNextSibling2(obj.i)
  Declare.l ckNumChildrenAt(obj.i, tagPath.s)
  Declare.l ckNumChildrenHavingTag(obj.i, tag.s)
  Declare.i ckPreviousSibling(obj.i)
  Declare.l ckPreviousSibling2(obj.i)
  Declare.l ckPruneAttribute(obj.i, attrName.s)
  Declare.l ckPruneTag(obj.i, tag.s)
  Declare.l ckRemoveAllAttributes(obj.i)
  Declare ckRemoveAllChildren(obj.i)
  Declare.l ckRemoveAttribute(obj.i, name.s)
  Declare ckRemoveChild(obj.i, tagPath.s)
  Declare ckRemoveChildByIndex(obj.i, index.l)
  Declare ckRemoveChildWithContent(obj.i, content.s)
  Declare ckRemoveFromTree(obj.i)
  Declare.l ckRemoveStyleSheet(obj.i, attrName.s, attrValue.s)
  Declare.l ckSaveBinaryContent(obj.i, filename.s, unzipFlag.l, decryptFlag.l, password.s)
  Declare.l ckSaveLastError(obj.i, path.s)
  Declare.l ckSaveXml(obj.i, fileName.s)
  Declare ckScrub(obj.i, directives.s)
  Declare.i ckSearchAllForContent(obj.i, afterPtr.i, contentPattern.s)
  Declare.l ckSearchAllForContent2(obj.i, afterPtr.i, contentPattern.s)
  Declare.i ckSearchForAttribute(obj.i, afterPtr.i, tag.s, attr.s, valuePattern.s)
  Declare.l ckSearchForAttribute2(obj.i, afterPtr.i, tag.s, attr.s, valuePattern.s)
  Declare.i ckSearchForContent(obj.i, afterPtr.i, tag.s, contentPattern.s)
  Declare.l ckSearchForContent2(obj.i, afterPtr.i, tag.s, contentPattern.s)
  Declare.i ckSearchForTag(obj.i, afterPtr.i, tag.s)
  Declare.l ckSearchForTag2(obj.i, afterPtr.i, tag.s)
  Declare.l ckSetBinaryContentFromFile(obj.i, filename.s, zipFlag.l, encryptFlag.l, password.s)
  Declare ckSortByAttribute(obj.i, attrName.s, ascending.l)
  Declare ckSortByAttributeInt(obj.i, attrName.s, ascending.l)
  Declare ckSortByContent(obj.i, ascending.l)
  Declare ckSortByTag(obj.i, ascending.l)
  Declare ckSortRecordsByAttribute(obj.i, sortTag.s, attrName.s, ascending.l)
  Declare ckSortRecordsByContent(obj.i, sortTag.s, ascending.l)
  Declare ckSortRecordsByContentInt(obj.i, sortTag.s, ascending.l)
  Declare.l ckSwapNode(obj.i, node.i)
  Declare.l ckSwapTree(obj.i, tree.i)
  Declare.s ckTagContent(obj.i, tagName.s)
  Declare.l ckTagEquals(obj.i, tag.s)
  Declare.l ckTagIndex(obj.i, tagPath.s)
  Declare.l ckTagNsEquals(obj.i, ns.s)
  Declare.l ckTagUnpEquals(obj.i, unprefixedTag.s)
  Declare.l ckUnzipContent(obj.i)
  Declare.l ckUnzipTree(obj.i)
  Declare.l ckUpdateAt(obj.i, tagPath.s, autoCreate.l, value.s)
  Declare.l ckUpdateAttrAt(obj.i, tagPath.s, autoCreate.l, attrName.s, attrValue.s)
  Declare.l ckUpdateAttribute(obj.i, attrName.s, attrValue.s)
  Declare.l ckUpdateAttributeInt(obj.i, attrName.s, value.l)
  Declare ckUpdateChildContent(obj.i, tagPath.s, value.s)
  Declare ckUpdateChildContentInt(obj.i, tagPath.s, value.l)
  Declare.l ckZipContent(obj.i)
  Declare.l ckZipTree(obj.i)
EndDeclareModule

Module CkXml
  PrototypeC.i cksPropGet(obj.i)
  PrototypeC.l cklPropGet(obj.i)
  PrototypeC.q ckqPropGet(obj.i)
  PrototypeC cksPropSet(obj.i, value.s)
  PrototypeC cklPropSet(obj.i, value.l)
  PrototypeC ckqPropSet(obj.i, value.q)
  PrototypeC.i ckiMss(obj.i, arg1.s, arg2.s)
  PrototypeC.i ckiMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMiss(obj.i, arg1.i, arg2.s, arg3.s)
  PrototypeC.i ckiMs(obj.i, arg1.s)
  PrototypeC.i ckiMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMss(obj.i, arg1.s, arg2.s)
  PrototypeC.l cklMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMsls(obj.i, arg1.s, arg2.l, arg3.s)
  PrototypeC.l cklMslls(obj.i, arg1.s, arg2.l, arg3.l, arg4.s)
  PrototypeC.i ckiMsss(obj.i, arg1.s, arg2.s, arg3.s)
  PrototypeC ckvMli(obj.i, arg1.l, arg2.i)
  PrototypeC.l cklMisss(obj.i, arg1.i, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMslss(obj.i, arg1.s, arg2.l, arg3.s, arg4.s)
  PrototypeC.i ckiMl(obj.i, arg1.l)
  PrototypeC.l cklMis(obj.i, arg1.i, arg2.s)
  PrototypeC.l cklMl(obj.i, arg1.l)
  PrototypeC.l cklMil(obj.i, arg1.i, arg2.l)
  PrototypeC ckvMl(obj.i, arg1.l)
  PrototypeC ckvMi(obj.i, arg1.i)
  PrototypeC.i ckiMlss(obj.i, arg1.l, arg2.s, arg3.s)
  PrototypeC.i ckiMiss(obj.i, arg1.i, arg2.s, arg3.s)
  PrototypeC ckvMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvMss(obj.i, arg1.s, arg2.s)
  PrototypeC ckvMsl(obj.i, arg1.s, arg2.l)
  PrototypeC.l cklMssl(obj.i, arg1.s, arg2.s, arg3.l)
  PrototypeC ckvMs(obj.i, arg1.s)
  PrototypeC.l cklMs(obj.i, arg1.s)
  PrototypeC.l cklMsi(obj.i, arg1.s, arg2.i)
  PrototypeC.l cklM(obj.i)
  PrototypeC ckvM(obj.i)
  PrototypeC.i ckiM(obj.i)
  PrototypeC.i ckiMisss(obj.i, arg1.i, arg2.s, arg3.s, arg4.s)
  PrototypeC.l cklMi(obj.i, arg1.i)
  PrototypeC.i CkXmlCreate()
  PrototypeC CkXmlDispose(obj.i)

CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   Procedure ckInitGlobal()
CompilerEndIf

  CompilerSelect #PB_Compiler_OS
    CompilerCase #PB_OS_Windows
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlLibId.i = OpenLibrary(#PB_Any, "chilkatPb32-9_5_0.dll")
      CompilerElse
        CkXmlLibId.i = OpenLibrary(#PB_Any, "chilkatPb-9_5_0.dll")
      CompilerEndIf
    CompilerCase #PB_OS_MacOS
        CkXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.dylib")
    CompilerCase #PB_OS_Linux
      CompilerIf #PB_Compiler_Processor = #PB_Processor_x86
        CkXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb32-9_5_0.so")
      CompilerElse
        CkXmlLibId.i = OpenLibrary(#PB_Any, "libchilkatPb-9_5_0.so")
      CompilerEndIf
  CompilerEndSelect
  Global XmlCreate.CkXmlCreate = GetFunction(CkXmlLibId,"CkXmlU_CreateW")
  Global XmlDispose.CkXmlDispose = GetFunction(CkXmlLibId,"CkXmlU_DisposeW")
  Global XmlCdata.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getCdataW")
  Global XmlPSetCdata.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putCdataW")
  Global XmlContent.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_contentW")
  Global XmlPSetContent.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putContentW")
  Global XmlContentInt.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getContentIntW")
  Global XmlPSetContentInt.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putContentIntW")
  Global XmlDebugLogFilePath.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_debugLogFilePathW")
  Global XmlPSetDebugLogFilePath.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putDebugLogFilePathW")
  Global XmlDocType.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_docTypeW")
  Global XmlPSetDocType.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putDocTypeW")
  Global XmlEmitBom.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getEmitBomW")
  Global XmlPSetEmitBom.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putEmitBomW")
  Global XmlEmitCompact.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getEmitCompactW")
  Global XmlPSetEmitCompact.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putEmitCompactW")
  Global XmlEmitXmlDecl.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getEmitXmlDeclW")
  Global XmlPSetEmitXmlDecl.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putEmitXmlDeclW")
  Global XmlEncoding.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_encodingW")
  Global XmlPSetEncoding.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putEncodingW")
  Global XmlI.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getIW")
  Global XmlPSetI.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putIW")
  Global XmlIsBase64.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getIsBase64W")
  Global XmlJ.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getJW")
  Global XmlPSetJ.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putJW")
  Global XmlK.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getKW")
  Global XmlPSetK.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putKW")
  Global XmlLastErrorHtml.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_lastErrorHtmlW")
  Global XmlLastErrorText.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_lastErrorTextW")
  Global XmlLastErrorXml.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_lastErrorXmlW")
  Global XmlLastMethodSuccess.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getLastMethodSuccessW")
  Global XmlPSetLastMethodSuccess.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putLastMethodSuccessW")
  Global XmlNumAttributes.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getNumAttributesW")
  Global XmlNumChildren.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getNumChildrenW")
  Global XmlSortCaseInsensitive.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getSortCaseInsensitiveW")
  Global XmlPSetSortCaseInsensitive.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putSortCaseInsensitiveW")
  Global XmlStandalone.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getStandaloneW")
  Global XmlPSetStandalone.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putStandaloneW")
  Global XmlTag.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_tagW")
  Global XmlPSetTag.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putTagW")
  Global XmlTagNsPrefix.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_tagNsPrefixW")
  Global XmlPSetTagNsPrefix.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putTagNsPrefixW")
  Global XmlTagPath.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_tagPathW")
  Global XmlTagUnprefixed.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_tagUnprefixedW")
  Global XmlPSetTagUnprefixed.cksPropSet = GetFunction(CkXmlLibId,"CkXmlU_putTagUnprefixedW")
  Global XmlTreeId.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getTreeIdW")
  Global XmlVerboseLogging.cklPropGet = GetFunction(CkXmlLibId,"CkXmlU_getVerboseLoggingW")
  Global XmlPSetVerboseLogging.cklPropSet = GetFunction(CkXmlLibId,"CkXmlU_putVerboseLoggingW")
  Global XmlVersion.cksPropGet = GetFunction(CkXmlLibId,"CkXmlU_versionW")
  Global XmlAccumulateTagContent.cklMss = GetFunction(CkXmlLibId,"CkXmlU_accumulateTagContentW")
  Global XmlAddAttribute.cklMss = GetFunction(CkXmlLibId,"CkXmlU_AddAttributeW")
  Global XmlAddAttributeInt.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_AddAttributeIntW")
  Global XmlAddChildTree.cklMi = GetFunction(CkXmlLibId,"CkXmlU_AddChildTreeW")
  Global XmlAddOrUpdateAttribute.ckvMss = GetFunction(CkXmlLibId,"CkXmlU_AddOrUpdateAttributeW")
  Global XmlAddOrUpdateAttributeI.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_AddOrUpdateAttributeIW")
  Global XmlAddStyleSheet.ckvMs = GetFunction(CkXmlLibId,"CkXmlU_AddStyleSheetW")
  Global XmlAddToAttribute.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_AddToAttributeW")
  Global XmlAddToChildContent.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_AddToChildContentW")
  Global XmlAddToContent.ckvMl = GetFunction(CkXmlLibId,"CkXmlU_AddToContentW")
  Global XmlAppendToContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_AppendToContentW")
  Global XmlChildContentMatches.cklMssl = GetFunction(CkXmlLibId,"CkXmlU_ChildContentMatchesW")
  Global XmlChilkatPath.cklMs = GetFunction(CkXmlLibId,"CkXmlU_chilkatPathW")
  Global XmlClear.ckvM = GetFunction(CkXmlLibId,"CkXmlU_ClearW")
  Global XmlContentMatches.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_ContentMatchesW")
  Global XmlCopy.ckvMi = GetFunction(CkXmlLibId,"CkXmlU_CopyW")
  Global XmlCopyRef.ckvMi = GetFunction(CkXmlLibId,"CkXmlU_CopyRefW")
  Global XmlDecodeEntities.cklMs = GetFunction(CkXmlLibId,"CkXmlU_decodeEntitiesW")
  Global XmlDecryptContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_DecryptContentW")
  Global XmlEncryptContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_EncryptContentW")
  Global XmlExtractChildByIndex.ckiMl = GetFunction(CkXmlLibId,"CkXmlU_ExtractChildByIndexW")
  Global XmlExtractChildByName.ckiMsss = GetFunction(CkXmlLibId,"CkXmlU_ExtractChildByNameW")
  Global XmlFindChild.ckiMs = GetFunction(CkXmlLibId,"CkXmlU_FindChildW")
  Global XmlFindChild2.cklMs = GetFunction(CkXmlLibId,"CkXmlU_FindChild2W")
  Global XmlFindNextRecord.ckiMss = GetFunction(CkXmlLibId,"CkXmlU_FindNextRecordW")
  Global XmlFindOrAddNewChild.ckiMs = GetFunction(CkXmlLibId,"CkXmlU_FindOrAddNewChildW")
  Global XmlFirstChild.ckiM = GetFunction(CkXmlLibId,"CkXmlU_FirstChildW")
  Global XmlFirstChild2.cklM = GetFunction(CkXmlLibId,"CkXmlU_FirstChild2W")
  Global XmlGetAttributeName.cklMl = GetFunction(CkXmlLibId,"CkXmlU_getAttributeNameW")
  Global XmlGetAttributeValue.cklMl = GetFunction(CkXmlLibId,"CkXmlU_getAttributeValueW")
  Global XmlGetAttributeValueInt.cklMl = GetFunction(CkXmlLibId,"CkXmlU_GetAttributeValueIntW")
  Global XmlGetAttrValue.cklMs = GetFunction(CkXmlLibId,"CkXmlU_getAttrValueW")
  Global XmlGetAttrValueInt.cklMs = GetFunction(CkXmlLibId,"CkXmlU_GetAttrValueIntW")
  Global XmlGetChild.ckiMl = GetFunction(CkXmlLibId,"CkXmlU_GetChildW")
  Global XmlGetChild2.cklMl = GetFunction(CkXmlLibId,"CkXmlU_GetChild2W")
  Global XmlGetChildAttrValue.cklMss = GetFunction(CkXmlLibId,"CkXmlU_getChildAttrValueW")
  Global XmlGetChildBoolValue.cklMs = GetFunction(CkXmlLibId,"CkXmlU_GetChildBoolValueW")
  Global XmlGetChildContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_getChildContentW")
  Global XmlGetChildContentByIndex.cklMl = GetFunction(CkXmlLibId,"CkXmlU_getChildContentByIndexW")
  Global XmlGetChildContentSb.cklMsi = GetFunction(CkXmlLibId,"CkXmlU_GetChildContentSbW")
  Global XmlGetChildExact.ckiMss = GetFunction(CkXmlLibId,"CkXmlU_GetChildExactW")
  Global XmlGetChildIntValue.cklMs = GetFunction(CkXmlLibId,"CkXmlU_GetChildIntValueW")
  Global XmlGetChildTag.cklMl = GetFunction(CkXmlLibId,"CkXmlU_getChildTagW")
  Global XmlGetChildTagByIndex.cklMl = GetFunction(CkXmlLibId,"CkXmlU_getChildTagByIndexW")
  Global XmlGetChildWithAttr.ckiMsss = GetFunction(CkXmlLibId,"CkXmlU_GetChildWithAttrW")
  Global XmlGetChildWithContent.ckiMs = GetFunction(CkXmlLibId,"CkXmlU_GetChildWithContentW")
  Global XmlGetChildWithTag.ckiMs = GetFunction(CkXmlLibId,"CkXmlU_GetChildWithTagW")
  Global XmlGetNthChildWithTag.ckiMsl = GetFunction(CkXmlLibId,"CkXmlU_GetNthChildWithTagW")
  Global XmlGetNthChildWithTag2.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_GetNthChildWithTag2W")
  Global XmlGetParent.ckiM = GetFunction(CkXmlLibId,"CkXmlU_GetParentW")
  Global XmlGetParent2.cklM = GetFunction(CkXmlLibId,"CkXmlU_GetParent2W")
  Global XmlGetRoot.ckiM = GetFunction(CkXmlLibId,"CkXmlU_GetRootW")
  Global XmlGetRoot2.ckvM = GetFunction(CkXmlLibId,"CkXmlU_GetRoot2W")
  Global XmlGetSelf.ckiM = GetFunction(CkXmlLibId,"CkXmlU_GetSelfW")
  Global XmlGetXml.cklM = GetFunction(CkXmlLibId,"CkXmlU_getXmlW")
  Global XmlGetXmlBd.cklMi = GetFunction(CkXmlLibId,"CkXmlU_GetXmlBdW")
  Global XmlGetXmlSb.cklMi = GetFunction(CkXmlLibId,"CkXmlU_GetXmlSbW")
  Global XmlHasAttribute.cklMs = GetFunction(CkXmlLibId,"CkXmlU_HasAttributeW")
  Global XmlHasAttrWithValue.cklMss = GetFunction(CkXmlLibId,"CkXmlU_HasAttrWithValueW")
  Global XmlHasChildWithContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_HasChildWithContentW")
  Global XmlHasChildWithTag.cklMs = GetFunction(CkXmlLibId,"CkXmlU_HasChildWithTagW")
  Global XmlHasChildWithTagAndContent.cklMss = GetFunction(CkXmlLibId,"CkXmlU_HasChildWithTagAndContentW")
  Global XmlInsertChildTreeAfter.ckvMli = GetFunction(CkXmlLibId,"CkXmlU_InsertChildTreeAfterW")
  Global XmlInsertChildTreeBefore.ckvMli = GetFunction(CkXmlLibId,"CkXmlU_InsertChildTreeBeforeW")
  Global XmlLastChild.ckiM = GetFunction(CkXmlLibId,"CkXmlU_LastChildW")
  Global XmlLastChild2.cklM = GetFunction(CkXmlLibId,"CkXmlU_LastChild2W")
  Global XmlLoadBd.cklMil = GetFunction(CkXmlLibId,"CkXmlU_LoadBdW")
  Global XmlLoadSb.cklMil = GetFunction(CkXmlLibId,"CkXmlU_LoadSbW")
  Global XmlLoadXml.cklMs = GetFunction(CkXmlLibId,"CkXmlU_LoadXmlW")
  Global XmlLoadXml2.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_LoadXml2W")
  Global XmlLoadXmlFile.cklMs = GetFunction(CkXmlLibId,"CkXmlU_LoadXmlFileW")
  Global XmlLoadXmlFile2.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_LoadXmlFile2W")
  Global XmlNewChild.ckiMss = GetFunction(CkXmlLibId,"CkXmlU_NewChildW")
  Global XmlNewChild2.ckvMss = GetFunction(CkXmlLibId,"CkXmlU_NewChild2W")
  Global XmlNewChildAfter.ckiMlss = GetFunction(CkXmlLibId,"CkXmlU_NewChildAfterW")
  Global XmlNewChildBefore.ckiMlss = GetFunction(CkXmlLibId,"CkXmlU_NewChildBeforeW")
  Global XmlNewChildInt2.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_NewChildInt2W")
  Global XmlNextInTraversal2.cklMi = GetFunction(CkXmlLibId,"CkXmlU_NextInTraversal2W")
  Global XmlNextSibling.ckiM = GetFunction(CkXmlLibId,"CkXmlU_NextSiblingW")
  Global XmlNextSibling2.cklM = GetFunction(CkXmlLibId,"CkXmlU_NextSibling2W")
  Global XmlNumChildrenAt.cklMs = GetFunction(CkXmlLibId,"CkXmlU_NumChildrenAtW")
  Global XmlNumChildrenHavingTag.cklMs = GetFunction(CkXmlLibId,"CkXmlU_NumChildrenHavingTagW")
  Global XmlPreviousSibling.ckiM = GetFunction(CkXmlLibId,"CkXmlU_PreviousSiblingW")
  Global XmlPreviousSibling2.cklM = GetFunction(CkXmlLibId,"CkXmlU_PreviousSibling2W")
  Global XmlPruneAttribute.cklMs = GetFunction(CkXmlLibId,"CkXmlU_PruneAttributeW")
  Global XmlPruneTag.cklMs = GetFunction(CkXmlLibId,"CkXmlU_PruneTagW")
  Global XmlRemoveAllAttributes.cklM = GetFunction(CkXmlLibId,"CkXmlU_RemoveAllAttributesW")
  Global XmlRemoveAllChildren.ckvM = GetFunction(CkXmlLibId,"CkXmlU_RemoveAllChildrenW")
  Global XmlRemoveAttribute.cklMs = GetFunction(CkXmlLibId,"CkXmlU_RemoveAttributeW")
  Global XmlRemoveChild.ckvMs = GetFunction(CkXmlLibId,"CkXmlU_RemoveChildW")
  Global XmlRemoveChildByIndex.ckvMl = GetFunction(CkXmlLibId,"CkXmlU_RemoveChildByIndexW")
  Global XmlRemoveChildWithContent.ckvMs = GetFunction(CkXmlLibId,"CkXmlU_RemoveChildWithContentW")
  Global XmlRemoveFromTree.ckvM = GetFunction(CkXmlLibId,"CkXmlU_RemoveFromTreeW")
  Global XmlRemoveStyleSheet.cklMss = GetFunction(CkXmlLibId,"CkXmlU_RemoveStyleSheetW")
  Global XmlSaveBinaryContent.cklMslls = GetFunction(CkXmlLibId,"CkXmlU_SaveBinaryContentW")
  Global XmlSaveLastError.cklMs = GetFunction(CkXmlLibId,"CkXmlU_SaveLastErrorW")
  Global XmlSaveXml.cklMs = GetFunction(CkXmlLibId,"CkXmlU_SaveXmlW")
  Global XmlScrub.ckvMs = GetFunction(CkXmlLibId,"CkXmlU_ScrubW")
  Global XmlSearchAllForContent.ckiMis = GetFunction(CkXmlLibId,"CkXmlU_SearchAllForContentW")
  Global XmlSearchAllForContent2.cklMis = GetFunction(CkXmlLibId,"CkXmlU_SearchAllForContent2W")
  Global XmlSearchForAttribute.ckiMisss = GetFunction(CkXmlLibId,"CkXmlU_SearchForAttributeW")
  Global XmlSearchForAttribute2.cklMisss = GetFunction(CkXmlLibId,"CkXmlU_SearchForAttribute2W")
  Global XmlSearchForContent.ckiMiss = GetFunction(CkXmlLibId,"CkXmlU_SearchForContentW")
  Global XmlSearchForContent2.cklMiss = GetFunction(CkXmlLibId,"CkXmlU_SearchForContent2W")
  Global XmlSearchForTag.ckiMis = GetFunction(CkXmlLibId,"CkXmlU_SearchForTagW")
  Global XmlSearchForTag2.cklMis = GetFunction(CkXmlLibId,"CkXmlU_SearchForTag2W")
  Global XmlSetBinaryContentFromFile.cklMslls = GetFunction(CkXmlLibId,"CkXmlU_SetBinaryContentFromFileW")
  Global XmlSortByAttribute.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_SortByAttributeW")
  Global XmlSortByAttributeInt.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_SortByAttributeIntW")
  Global XmlSortByContent.ckvMl = GetFunction(CkXmlLibId,"CkXmlU_SortByContentW")
  Global XmlSortByTag.ckvMl = GetFunction(CkXmlLibId,"CkXmlU_SortByTagW")
  Global XmlSortRecordsByAttribute.ckvMssl = GetFunction(CkXmlLibId,"CkXmlU_SortRecordsByAttributeW")
  Global XmlSortRecordsByContent.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_SortRecordsByContentW")
  Global XmlSortRecordsByContentInt.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_SortRecordsByContentIntW")
  Global XmlSwapNode.cklMi = GetFunction(CkXmlLibId,"CkXmlU_SwapNodeW")
  Global XmlSwapTree.cklMi = GetFunction(CkXmlLibId,"CkXmlU_SwapTreeW")
  Global XmlTagContent.cklMs = GetFunction(CkXmlLibId,"CkXmlU_tagContentW")
  Global XmlTagEquals.cklMs = GetFunction(CkXmlLibId,"CkXmlU_TagEqualsW")
  Global XmlTagIndex.cklMs = GetFunction(CkXmlLibId,"CkXmlU_TagIndexW")
  Global XmlTagNsEquals.cklMs = GetFunction(CkXmlLibId,"CkXmlU_TagNsEqualsW")
  Global XmlTagUnpEquals.cklMs = GetFunction(CkXmlLibId,"CkXmlU_TagUnpEqualsW")
  Global XmlUnzipContent.cklM = GetFunction(CkXmlLibId,"CkXmlU_UnzipContentW")
  Global XmlUnzipTree.cklM = GetFunction(CkXmlLibId,"CkXmlU_UnzipTreeW")
  Global XmlUpdateAt.cklMsls = GetFunction(CkXmlLibId,"CkXmlU_UpdateAtW")
  Global XmlUpdateAttrAt.cklMslss = GetFunction(CkXmlLibId,"CkXmlU_UpdateAttrAtW")
  Global XmlUpdateAttribute.cklMss = GetFunction(CkXmlLibId,"CkXmlU_UpdateAttributeW")
  Global XmlUpdateAttributeInt.cklMsl = GetFunction(CkXmlLibId,"CkXmlU_UpdateAttributeIntW")
  Global XmlUpdateChildContent.ckvMss = GetFunction(CkXmlLibId,"CkXmlU_UpdateChildContentW")
  Global XmlUpdateChildContentInt.ckvMsl = GetFunction(CkXmlLibId,"CkXmlU_UpdateChildContentIntW")
  Global XmlZipContent.cklM = GetFunction(CkXmlLibId,"CkXmlU_ZipContentW")
  Global XmlZipTree.cklM = GetFunction(CkXmlLibId,"CkXmlU_ZipTreeW")
CompilerIf #PB_Compiler_ExecutableFormat = #PB_Compiler_DLL
   EndProcedure
CompilerEndIf

  Procedure.i ckCreate() : ProcedureReturn XmlCreate() : EndProcedure
  Procedure ckDispose(obj.i) : ProcedureReturn XmlDispose(obj) : EndProcedure
  Procedure.l ckCdata(obj.i) : ProcedureReturn XmlCdata(obj) : EndProcedure
  Procedure setCkCdata(obj.i, value.l) : ProcedureReturn XmlPSetCdata(obj,value) : EndProcedure
  Procedure.s ckContent(obj.i) : ProcedureReturn PeekS(XmlContent(obj)) : EndProcedure
  Procedure setCkContent(obj.i, value.s) : ProcedureReturn XmlPSetContent(obj,value) : EndProcedure
  Procedure.l ckContentInt(obj.i) : ProcedureReturn XmlContentInt(obj) : EndProcedure
  Procedure setCkContentInt(obj.i, value.l) : ProcedureReturn XmlPSetContentInt(obj,value) : EndProcedure
  Procedure.s ckDebugLogFilePath(obj.i) : ProcedureReturn PeekS(XmlDebugLogFilePath(obj)) : EndProcedure
  Procedure setCkDebugLogFilePath(obj.i, value.s) : ProcedureReturn XmlPSetDebugLogFilePath(obj,value) : EndProcedure
  Procedure.s ckDocType(obj.i) : ProcedureReturn PeekS(XmlDocType(obj)) : EndProcedure
  Procedure setCkDocType(obj.i, value.s) : ProcedureReturn XmlPSetDocType(obj,value) : EndProcedure
  Procedure.l ckEmitBom(obj.i) : ProcedureReturn XmlEmitBom(obj) : EndProcedure
  Procedure setCkEmitBom(obj.i, value.l) : ProcedureReturn XmlPSetEmitBom(obj,value) : EndProcedure
  Procedure.l ckEmitCompact(obj.i) : ProcedureReturn XmlEmitCompact(obj) : EndProcedure
  Procedure setCkEmitCompact(obj.i, value.l) : ProcedureReturn XmlPSetEmitCompact(obj,value) : EndProcedure
  Procedure.l ckEmitXmlDecl(obj.i) : ProcedureReturn XmlEmitXmlDecl(obj) : EndProcedure
  Procedure setCkEmitXmlDecl(obj.i, value.l) : ProcedureReturn XmlPSetEmitXmlDecl(obj,value) : EndProcedure
  Procedure.s ckEncoding(obj.i) : ProcedureReturn PeekS(XmlEncoding(obj)) : EndProcedure
  Procedure setCkEncoding(obj.i, value.s) : ProcedureReturn XmlPSetEncoding(obj,value) : EndProcedure
  Procedure.l ckI(obj.i) : ProcedureReturn XmlI(obj) : EndProcedure
  Procedure setCkI(obj.i, value.l) : ProcedureReturn XmlPSetI(obj,value) : EndProcedure
  Procedure.l ckIsBase64(obj.i) : ProcedureReturn XmlIsBase64(obj) : EndProcedure
  Procedure.l ckJ(obj.i) : ProcedureReturn XmlJ(obj) : EndProcedure
  Procedure setCkJ(obj.i, value.l) : ProcedureReturn XmlPSetJ(obj,value) : EndProcedure
  Procedure.l ckK(obj.i) : ProcedureReturn XmlK(obj) : EndProcedure
  Procedure setCkK(obj.i, value.l) : ProcedureReturn XmlPSetK(obj,value) : EndProcedure
  Procedure.s ckLastErrorHtml(obj.i) : ProcedureReturn PeekS(XmlLastErrorHtml(obj)) : EndProcedure
  Procedure.s ckLastErrorText(obj.i) : ProcedureReturn PeekS(XmlLastErrorText(obj)) : EndProcedure
  Procedure.s ckLastErrorXml(obj.i) : ProcedureReturn PeekS(XmlLastErrorXml(obj)) : EndProcedure
  Procedure.l ckLastMethodSuccess(obj.i) : ProcedureReturn XmlLastMethodSuccess(obj) : EndProcedure
  Procedure setCkLastMethodSuccess(obj.i, value.l) : ProcedureReturn XmlPSetLastMethodSuccess(obj,value) : EndProcedure
  Procedure.l ckNumAttributes(obj.i) : ProcedureReturn XmlNumAttributes(obj) : EndProcedure
  Procedure.l ckNumChildren(obj.i) : ProcedureReturn XmlNumChildren(obj) : EndProcedure
  Procedure.l ckSortCaseInsensitive(obj.i) : ProcedureReturn XmlSortCaseInsensitive(obj) : EndProcedure
  Procedure setCkSortCaseInsensitive(obj.i, value.l) : ProcedureReturn XmlPSetSortCaseInsensitive(obj,value) : EndProcedure
  Procedure.l ckStandalone(obj.i) : ProcedureReturn XmlStandalone(obj) : EndProcedure
  Procedure setCkStandalone(obj.i, value.l) : ProcedureReturn XmlPSetStandalone(obj,value) : EndProcedure
  Procedure.s ckTag(obj.i) : ProcedureReturn PeekS(XmlTag(obj)) : EndProcedure
  Procedure setCkTag(obj.i, value.s) : ProcedureReturn XmlPSetTag(obj,value) : EndProcedure
  Procedure.s ckTagNsPrefix(obj.i) : ProcedureReturn PeekS(XmlTagNsPrefix(obj)) : EndProcedure
  Procedure setCkTagNsPrefix(obj.i, value.s) : ProcedureReturn XmlPSetTagNsPrefix(obj,value) : EndProcedure
  Procedure.s ckTagPath(obj.i) : ProcedureReturn PeekS(XmlTagPath(obj)) : EndProcedure
  Procedure.s ckTagUnprefixed(obj.i) : ProcedureReturn PeekS(XmlTagUnprefixed(obj)) : EndProcedure
  Procedure setCkTagUnprefixed(obj.i, value.s) : ProcedureReturn XmlPSetTagUnprefixed(obj,value) : EndProcedure
  Procedure.l ckTreeId(obj.i) : ProcedureReturn XmlTreeId(obj) : EndProcedure
  Procedure.l ckVerboseLogging(obj.i) : ProcedureReturn XmlVerboseLogging(obj) : EndProcedure
  Procedure setCkVerboseLogging(obj.i, value.l) : ProcedureReturn XmlPSetVerboseLogging(obj,value) : EndProcedure
  Procedure.s ckVersion(obj.i) : ProcedureReturn PeekS(XmlVersion(obj)) : EndProcedure
  Procedure.s ckAccumulateTagContent(obj.i, tag.s, skipTags.s) :  ProcedureReturn PeekS(XmlAccumulateTagContent(obj, tag, skipTags)) :  EndProcedure
  Procedure.l ckAddAttribute(obj.i, name.s, value.s) :  ProcedureReturn XmlAddAttribute(obj, name, value) :  EndProcedure
  Procedure.l ckAddAttributeInt(obj.i, name.s, value.l) :  ProcedureReturn XmlAddAttributeInt(obj, name, value) :  EndProcedure
  Procedure.l ckAddChildTree(obj.i, tree.i) :  ProcedureReturn XmlAddChildTree(obj, tree) :  EndProcedure
  Procedure ckAddOrUpdateAttribute(obj.i, name.s, value.s) :  ProcedureReturn XmlAddOrUpdateAttribute(obj, name, value) :  EndProcedure
  Procedure ckAddOrUpdateAttributeI(obj.i, name.s, value.l) :  ProcedureReturn XmlAddOrUpdateAttributeI(obj, name, value) :  EndProcedure
  Procedure ckAddStyleSheet(obj.i, styleSheet.s) :  ProcedureReturn XmlAddStyleSheet(obj, styleSheet) :  EndProcedure
  Procedure ckAddToAttribute(obj.i, name.s, amount.l) :  ProcedureReturn XmlAddToAttribute(obj, name, amount) :  EndProcedure
  Procedure ckAddToChildContent(obj.i, tag.s, amount.l) :  ProcedureReturn XmlAddToChildContent(obj, tag, amount) :  EndProcedure
  Procedure ckAddToContent(obj.i, amount.l) :  ProcedureReturn XmlAddToContent(obj, amount) :  EndProcedure
  Procedure.l ckAppendToContent(obj.i, str.s) :  ProcedureReturn XmlAppendToContent(obj, str) :  EndProcedure
  Procedure.l ckChildContentMatches(obj.i, tagPath.s, pattern.s, caseSensitive.l) :  ProcedureReturn XmlChildContentMatches(obj, tagPath, pattern, caseSensitive) :  EndProcedure
  Procedure.s ckChilkatPath(obj.i, pathCmd.s) :  ProcedureReturn PeekS(XmlChilkatPath(obj, pathCmd)) :  EndProcedure
  Procedure ckClear(obj.i) :  ProcedureReturn XmlClear(obj) :  EndProcedure
  Procedure.l ckContentMatches(obj.i, pattern.s, caseSensitive.l) :  ProcedureReturn XmlContentMatches(obj, pattern, caseSensitive) :  EndProcedure
  Procedure ckCopy(obj.i, node.i) :  ProcedureReturn XmlCopy(obj, node) :  EndProcedure
  Procedure ckCopyRef(obj.i, copyFromNode.i) :  ProcedureReturn XmlCopyRef(obj, copyFromNode) :  EndProcedure
  Procedure.s ckDecodeEntities(obj.i, str.s) :  ProcedureReturn PeekS(XmlDecodeEntities(obj, str)) :  EndProcedure
  Procedure.l ckDecryptContent(obj.i, password.s) :  ProcedureReturn XmlDecryptContent(obj, password) :  EndProcedure
  Procedure.l ckEncryptContent(obj.i, password.s) :  ProcedureReturn XmlEncryptContent(obj, password) :  EndProcedure
  Procedure.i ckExtractChildByIndex(obj.i, index.l) :  ProcedureReturn XmlExtractChildByIndex(obj, index) :  EndProcedure
  Procedure.i ckExtractChildByName(obj.i, tagPath.s, attrName.s, attrValue.s) :  ProcedureReturn XmlExtractChildByName(obj, tagPath, attrName, attrValue) :  EndProcedure
  Procedure.i ckFindChild(obj.i, tagPath.s) :  ProcedureReturn XmlFindChild(obj, tagPath) :  EndProcedure
  Procedure.l ckFindChild2(obj.i, tagPath.s) :  ProcedureReturn XmlFindChild2(obj, tagPath) :  EndProcedure
  Procedure.i ckFindNextRecord(obj.i, tagPath.s, contentPattern.s) :  ProcedureReturn XmlFindNextRecord(obj, tagPath, contentPattern) :  EndProcedure
  Procedure.i ckFindOrAddNewChild(obj.i, tagPath.s) :  ProcedureReturn XmlFindOrAddNewChild(obj, tagPath) :  EndProcedure
  Procedure.i ckFirstChild(obj.i) :  ProcedureReturn XmlFirstChild(obj) :  EndProcedure
  Procedure.l ckFirstChild2(obj.i) :  ProcedureReturn XmlFirstChild2(obj) :  EndProcedure
  Procedure.s ckGetAttributeName(obj.i, index.l) :  ProcedureReturn PeekS(XmlGetAttributeName(obj, index)) :  EndProcedure
  Procedure.s ckGetAttributeValue(obj.i, index.l) :  ProcedureReturn PeekS(XmlGetAttributeValue(obj, index)) :  EndProcedure
  Procedure.l ckGetAttributeValueInt(obj.i, index.l) :  ProcedureReturn XmlGetAttributeValueInt(obj, index) :  EndProcedure
  Procedure.s ckGetAttrValue(obj.i, name.s) :  ProcedureReturn PeekS(XmlGetAttrValue(obj, name)) :  EndProcedure
  Procedure.l ckGetAttrValueInt(obj.i, name.s) :  ProcedureReturn XmlGetAttrValueInt(obj, name) :  EndProcedure
  Procedure.i ckGetChild(obj.i, index.l) :  ProcedureReturn XmlGetChild(obj, index) :  EndProcedure
  Procedure.l ckGetChild2(obj.i, index.l) :  ProcedureReturn XmlGetChild2(obj, index) :  EndProcedure
  Procedure.s ckGetChildAttrValue(obj.i, tagPath.s, attrName.s) :  ProcedureReturn PeekS(XmlGetChildAttrValue(obj, tagPath, attrName)) :  EndProcedure
  Procedure.l ckGetChildBoolValue(obj.i, tagPath.s) :  ProcedureReturn XmlGetChildBoolValue(obj, tagPath) :  EndProcedure
  Procedure.s ckGetChildContent(obj.i, tagPath.s) :  ProcedureReturn PeekS(XmlGetChildContent(obj, tagPath)) :  EndProcedure
  Procedure.s ckGetChildContentByIndex(obj.i, index.l) :  ProcedureReturn PeekS(XmlGetChildContentByIndex(obj, index)) :  EndProcedure
  Procedure.l ckGetChildContentSb(obj.i, tagPath.s, sb.i) :  ProcedureReturn XmlGetChildContentSb(obj, tagPath, sb) :  EndProcedure
  Procedure.i ckGetChildExact(obj.i, tag.s, content.s) :  ProcedureReturn XmlGetChildExact(obj, tag, content) :  EndProcedure
  Procedure.l ckGetChildIntValue(obj.i, tagPath.s) :  ProcedureReturn XmlGetChildIntValue(obj, tagPath) :  EndProcedure
  Procedure.s ckGetChildTag(obj.i, index.l) :  ProcedureReturn PeekS(XmlGetChildTag(obj, index)) :  EndProcedure
  Procedure.s ckGetChildTagByIndex(obj.i, index.l) :  ProcedureReturn PeekS(XmlGetChildTagByIndex(obj, index)) :  EndProcedure
  Procedure.i ckGetChildWithAttr(obj.i, tagPath.s, attrName.s, attrValue.s) :  ProcedureReturn XmlGetChildWithAttr(obj, tagPath, attrName, attrValue) :  EndProcedure
  Procedure.i ckGetChildWithContent(obj.i, content.s) :  ProcedureReturn XmlGetChildWithContent(obj, content) :  EndProcedure
  Procedure.i ckGetChildWithTag(obj.i, tagPath.s) :  ProcedureReturn XmlGetChildWithTag(obj, tagPath) :  EndProcedure
  Procedure.i ckGetNthChildWithTag(obj.i, tag.s, n.l) :  ProcedureReturn XmlGetNthChildWithTag(obj, tag, n) :  EndProcedure
  Procedure.l ckGetNthChildWithTag2(obj.i, tag.s, n.l) :  ProcedureReturn XmlGetNthChildWithTag2(obj, tag, n) :  EndProcedure
  Procedure.i ckGetParent(obj.i) :  ProcedureReturn XmlGetParent(obj) :  EndProcedure
  Procedure.l ckGetParent2(obj.i) :  ProcedureReturn XmlGetParent2(obj) :  EndProcedure
  Procedure.i ckGetRoot(obj.i) :  ProcedureReturn XmlGetRoot(obj) :  EndProcedure
  Procedure ckGetRoot2(obj.i) :  ProcedureReturn XmlGetRoot2(obj) :  EndProcedure
  Procedure.i ckGetSelf(obj.i) :  ProcedureReturn XmlGetSelf(obj) :  EndProcedure
  Procedure.s ckGetXml(obj.i) :  ProcedureReturn PeekS(XmlGetXml(obj)) :  EndProcedure
  Procedure.l ckGetXmlBd(obj.i, bd.i) :  ProcedureReturn XmlGetXmlBd(obj, bd) :  EndProcedure
  Procedure.l ckGetXmlSb(obj.i, sb.i) :  ProcedureReturn XmlGetXmlSb(obj, sb) :  EndProcedure
  Procedure.l ckHasAttribute(obj.i, name.s) :  ProcedureReturn XmlHasAttribute(obj, name) :  EndProcedure
  Procedure.l ckHasAttrWithValue(obj.i, name.s, value.s) :  ProcedureReturn XmlHasAttrWithValue(obj, name, value) :  EndProcedure
  Procedure.l ckHasChildWithContent(obj.i, content.s) :  ProcedureReturn XmlHasChildWithContent(obj, content) :  EndProcedure
  Procedure.l ckHasChildWithTag(obj.i, tagPath.s) :  ProcedureReturn XmlHasChildWithTag(obj, tagPath) :  EndProcedure
  Procedure.l ckHasChildWithTagAndContent(obj.i, tagPath.s, content.s) :  ProcedureReturn XmlHasChildWithTagAndContent(obj, tagPath, content) :  EndProcedure
  Procedure ckInsertChildTreeAfter(obj.i, index.l, tree.i) :  ProcedureReturn XmlInsertChildTreeAfter(obj, index, tree) :  EndProcedure
  Procedure ckInsertChildTreeBefore(obj.i, index.l, tree.i) :  ProcedureReturn XmlInsertChildTreeBefore(obj, index, tree) :  EndProcedure
  Procedure.i ckLastChild(obj.i) :  ProcedureReturn XmlLastChild(obj) :  EndProcedure
  Procedure.l ckLastChild2(obj.i) :  ProcedureReturn XmlLastChild2(obj) :  EndProcedure
  Procedure.l ckLoadBd(obj.i, bd.i, autoTrim.l) :  ProcedureReturn XmlLoadBd(obj, bd, autoTrim) :  EndProcedure
  Procedure.l ckLoadSb(obj.i, sb.i, autoTrim.l) :  ProcedureReturn XmlLoadSb(obj, sb, autoTrim) :  EndProcedure
  Procedure.l ckLoadXml(obj.i, xmlData.s) :  ProcedureReturn XmlLoadXml(obj, xmlData) :  EndProcedure
  Procedure.l ckLoadXml2(obj.i, xmlData.s, autoTrim.l) :  ProcedureReturn XmlLoadXml2(obj, xmlData, autoTrim) :  EndProcedure
  Procedure.l ckLoadXmlFile(obj.i, fileName.s) :  ProcedureReturn XmlLoadXmlFile(obj, fileName) :  EndProcedure
  Procedure.l ckLoadXmlFile2(obj.i, fileName.s, autoTrim.l) :  ProcedureReturn XmlLoadXmlFile2(obj, fileName, autoTrim) :  EndProcedure
  Procedure.i ckNewChild(obj.i, tagPath.s, content.s) :  ProcedureReturn XmlNewChild(obj, tagPath, content) :  EndProcedure
  Procedure ckNewChild2(obj.i, tagPath.s, content.s) :  ProcedureReturn XmlNewChild2(obj, tagPath, content) :  EndProcedure
  Procedure.i ckNewChildAfter(obj.i, index.l, tag.s, content.s) :  ProcedureReturn XmlNewChildAfter(obj, index, tag, content) :  EndProcedure
  Procedure.i ckNewChildBefore(obj.i, index.l, tag.s, content.s) :  ProcedureReturn XmlNewChildBefore(obj, index, tag, content) :  EndProcedure
  Procedure ckNewChildInt2(obj.i, tagPath.s, value.l) :  ProcedureReturn XmlNewChildInt2(obj, tagPath, value) :  EndProcedure
  Procedure.l ckNextInTraversal2(obj.i, sbState.i) :  ProcedureReturn XmlNextInTraversal2(obj, sbState) :  EndProcedure
  Procedure.i ckNextSibling(obj.i) :  ProcedureReturn XmlNextSibling(obj) :  EndProcedure
  Procedure.l ckNextSibling2(obj.i) :  ProcedureReturn XmlNextSibling2(obj) :  EndProcedure
  Procedure.l ckNumChildrenAt(obj.i, tagPath.s) :  ProcedureReturn XmlNumChildrenAt(obj, tagPath) :  EndProcedure
  Procedure.l ckNumChildrenHavingTag(obj.i, tag.s) :  ProcedureReturn XmlNumChildrenHavingTag(obj, tag) :  EndProcedure
  Procedure.i ckPreviousSibling(obj.i) :  ProcedureReturn XmlPreviousSibling(obj) :  EndProcedure
  Procedure.l ckPreviousSibling2(obj.i) :  ProcedureReturn XmlPreviousSibling2(obj) :  EndProcedure
  Procedure.l ckPruneAttribute(obj.i, attrName.s) :  ProcedureReturn XmlPruneAttribute(obj, attrName) :  EndProcedure
  Procedure.l ckPruneTag(obj.i, tag.s) :  ProcedureReturn XmlPruneTag(obj, tag) :  EndProcedure
  Procedure.l ckRemoveAllAttributes(obj.i) :  ProcedureReturn XmlRemoveAllAttributes(obj) :  EndProcedure
  Procedure ckRemoveAllChildren(obj.i) :  ProcedureReturn XmlRemoveAllChildren(obj) :  EndProcedure
  Procedure.l ckRemoveAttribute(obj.i, name.s) :  ProcedureReturn XmlRemoveAttribute(obj, name) :  EndProcedure
  Procedure ckRemoveChild(obj.i, tagPath.s) :  ProcedureReturn XmlRemoveChild(obj, tagPath) :  EndProcedure
  Procedure ckRemoveChildByIndex(obj.i, index.l) :  ProcedureReturn XmlRemoveChildByIndex(obj, index) :  EndProcedure
  Procedure ckRemoveChildWithContent(obj.i, content.s) :  ProcedureReturn XmlRemoveChildWithContent(obj, content) :  EndProcedure
  Procedure ckRemoveFromTree(obj.i) :  ProcedureReturn XmlRemoveFromTree(obj) :  EndProcedure
  Procedure.l ckRemoveStyleSheet(obj.i, attrName.s, attrValue.s) :  ProcedureReturn XmlRemoveStyleSheet(obj, attrName, attrValue) :  EndProcedure
  Procedure.l ckSaveBinaryContent(obj.i, filename.s, unzipFlag.l, decryptFlag.l, password.s) :  ProcedureReturn XmlSaveBinaryContent(obj, filename, unzipFlag, decryptFlag, password) :  EndProcedure
  Procedure.l ckSaveLastError(obj.i, path.s) :  ProcedureReturn XmlSaveLastError(obj, path) :  EndProcedure
  Procedure.l ckSaveXml(obj.i, fileName.s) :  ProcedureReturn XmlSaveXml(obj, fileName) :  EndProcedure
  Procedure ckScrub(obj.i, directives.s) :  ProcedureReturn XmlScrub(obj, directives) :  EndProcedure
  Procedure.i ckSearchAllForContent(obj.i, afterPtr.i, contentPattern.s) :  ProcedureReturn XmlSearchAllForContent(obj, afterPtr, contentPattern) :  EndProcedure
  Procedure.l ckSearchAllForContent2(obj.i, afterPtr.i, contentPattern.s) :  ProcedureReturn XmlSearchAllForContent2(obj, afterPtr, contentPattern) :  EndProcedure
  Procedure.i ckSearchForAttribute(obj.i, afterPtr.i, tag.s, attr.s, valuePattern.s) :  ProcedureReturn XmlSearchForAttribute(obj, afterPtr, tag, attr, valuePattern) :  EndProcedure
  Procedure.l ckSearchForAttribute2(obj.i, afterPtr.i, tag.s, attr.s, valuePattern.s) :  ProcedureReturn XmlSearchForAttribute2(obj, afterPtr, tag, attr, valuePattern) :  EndProcedure
  Procedure.i ckSearchForContent(obj.i, afterPtr.i, tag.s, contentPattern.s) :  ProcedureReturn XmlSearchForContent(obj, afterPtr, tag, contentPattern) :  EndProcedure
  Procedure.l ckSearchForContent2(obj.i, afterPtr.i, tag.s, contentPattern.s) :  ProcedureReturn XmlSearchForContent2(obj, afterPtr, tag, contentPattern) :  EndProcedure
  Procedure.i ckSearchForTag(obj.i, afterPtr.i, tag.s) :  ProcedureReturn XmlSearchForTag(obj, afterPtr, tag) :  EndProcedure
  Procedure.l ckSearchForTag2(obj.i, afterPtr.i, tag.s) :  ProcedureReturn XmlSearchForTag2(obj, afterPtr, tag) :  EndProcedure
  Procedure.l ckSetBinaryContentFromFile(obj.i, filename.s, zipFlag.l, encryptFlag.l, password.s) :  ProcedureReturn XmlSetBinaryContentFromFile(obj, filename, zipFlag, encryptFlag, password) :  EndProcedure
  Procedure ckSortByAttribute(obj.i, attrName.s, ascending.l) :  ProcedureReturn XmlSortByAttribute(obj, attrName, ascending) :  EndProcedure
  Procedure ckSortByAttributeInt(obj.i, attrName.s, ascending.l) :  ProcedureReturn XmlSortByAttributeInt(obj, attrName, ascending) :  EndProcedure
  Procedure ckSortByContent(obj.i, ascending.l) :  ProcedureReturn XmlSortByContent(obj, ascending) :  EndProcedure
  Procedure ckSortByTag(obj.i, ascending.l) :  ProcedureReturn XmlSortByTag(obj, ascending) :  EndProcedure
  Procedure ckSortRecordsByAttribute(obj.i, sortTag.s, attrName.s, ascending.l) :  ProcedureReturn XmlSortRecordsByAttribute(obj, sortTag, attrName, ascending) :  EndProcedure
  Procedure ckSortRecordsByContent(obj.i, sortTag.s, ascending.l) :  ProcedureReturn XmlSortRecordsByContent(obj, sortTag, ascending) :  EndProcedure
  Procedure ckSortRecordsByContentInt(obj.i, sortTag.s, ascending.l) :  ProcedureReturn XmlSortRecordsByContentInt(obj, sortTag, ascending) :  EndProcedure
  Procedure.l ckSwapNode(obj.i, node.i) :  ProcedureReturn XmlSwapNode(obj, node) :  EndProcedure
  Procedure.l ckSwapTree(obj.i, tree.i) :  ProcedureReturn XmlSwapTree(obj, tree) :  EndProcedure
  Procedure.s ckTagContent(obj.i, tagName.s) :  ProcedureReturn PeekS(XmlTagContent(obj, tagName)) :  EndProcedure
  Procedure.l ckTagEquals(obj.i, tag.s) :  ProcedureReturn XmlTagEquals(obj, tag) :  EndProcedure
  Procedure.l ckTagIndex(obj.i, tagPath.s) :  ProcedureReturn XmlTagIndex(obj, tagPath) :  EndProcedure
  Procedure.l ckTagNsEquals(obj.i, ns.s) :  ProcedureReturn XmlTagNsEquals(obj, ns) :  EndProcedure
  Procedure.l ckTagUnpEquals(obj.i, unprefixedTag.s) :  ProcedureReturn XmlTagUnpEquals(obj, unprefixedTag) :  EndProcedure
  Procedure.l ckUnzipContent(obj.i) :  ProcedureReturn XmlUnzipContent(obj) :  EndProcedure
  Procedure.l ckUnzipTree(obj.i) :  ProcedureReturn XmlUnzipTree(obj) :  EndProcedure
  Procedure.l ckUpdateAt(obj.i, tagPath.s, autoCreate.l, value.s) :  ProcedureReturn XmlUpdateAt(obj, tagPath, autoCreate, value) :  EndProcedure
  Procedure.l ckUpdateAttrAt(obj.i, tagPath.s, autoCreate.l, attrName.s, attrValue.s) :  ProcedureReturn XmlUpdateAttrAt(obj, tagPath, autoCreate, attrName, attrValue) :  EndProcedure
  Procedure.l ckUpdateAttribute(obj.i, attrName.s, attrValue.s) :  ProcedureReturn XmlUpdateAttribute(obj, attrName, attrValue) :  EndProcedure
  Procedure.l ckUpdateAttributeInt(obj.i, attrName.s, value.l) :  ProcedureReturn XmlUpdateAttributeInt(obj, attrName, value) :  EndProcedure
  Procedure ckUpdateChildContent(obj.i, tagPath.s, value.s) :  ProcedureReturn XmlUpdateChildContent(obj, tagPath, value) :  EndProcedure
  Procedure ckUpdateChildContentInt(obj.i, tagPath.s, value.l) :  ProcedureReturn XmlUpdateChildContentInt(obj, tagPath, value) :  EndProcedure
  Procedure.l ckZipContent(obj.i) :  ProcedureReturn XmlZipContent(obj) :  EndProcedure
  Procedure.l ckZipTree(obj.i) :  ProcedureReturn XmlZipTree(obj) :  EndProcedure
EndModule

