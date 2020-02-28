<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:gn="http://www.fao.org/geonetwork"
  xmlns:gco115-3="http://standards.iso.org/iso/19115/-3/gco/1.0"
  xmlns:gco="http://www.isotc211.org/2005/gco"
  xmlns:gmd="http://www.isotc211.org/2005/gmd"
  xmlns:srv="http://www.isotc211.org/2005/srv"
  xmlns:gcx="http://standards.iso.org/iso/19115/-3/gcx/1.0"
  xmlns:mdb="http://standards.iso.org/iso/19115/-3/mdb/2.0"
  xmlns:mri="http://standards.iso.org/iso/19115/-3/mri/1.0"
  xmlns:srv115-3="http://standards.iso.org/iso/19115/-3/srv/2.1"
  xmlns:mco="http://standards.iso.org/iso/19115/-3/mco/1.0"
  xmlns:cit="http://standards.iso.org/iso/19115/-3/cit/2.0"
  xmlns:xlink="http://www.w3.org/1999/xlink"
  exclude-result-prefixes="#all">

  <xsl:import href="../../convert/ISO19139/toISO19139.xsl"/>

  <xsl:param name="displayInfo"/>

  <!-- Replace all 115-3 anchors by CharacterString -->
  <xsl:template match="gcx:Anchor[count(ancestor::mdb:referenceSystemInfo) = 0]"
                priority="99999">
    <gco:CharacterString><xsl:value-of select="."/></gco:CharacterString>
  </xsl:template>

  <xsl:variable name="isUsingAnchorForConstraints"
                select="count(//mco:otherConstraints/*[@xlink:href]) > 0"/>

  <xsl:variable name="isService"
                select="count(//srv115-3:SV_ServiceIdentification) > 0"/>

  <xsl:variable name="isInspireRecord"
                select="count(//mri:keyword[gco:CharacterString = 'Reporting INSPIRE']) > 0"/>

  <xsl:variable name="isCGU"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf']) > 0"/>

  <xsl:variable name="isCGA"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf']) > 0"/>

  <xsl:variable name="isRestrictedA1"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPA-TypeA1.pdf']) > 0"/>

  <xsl:variable name="isRestrictedD1"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPA-TypeD1.pdf']) > 0"/>

  <xsl:variable name="isRestrictedCPUC"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPU-TypeC.pdf']) > 0"/>

  <xsl:variable name="isRestrictedCPUA"
                select="count(//mco:otherConstraints/*[@xlink:href='https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPU-TypeA.pdf']) > 0"/>


  <xsl:template match="mri:resourceConstraints/*[mco:useLimitation/*/text() = 'Conditions d''accès et d''utilisation spécifiques' and $isUsingAnchorForConstraints]">
    <gmd:MD_LegalConstraints>
      <xsl:apply-templates select="mco:useLimitation|mco:useConstraints"/>

      <gmd:otherConstraints>
        <xsl:choose>
          <xsl:when test="$isRestrictedA1">
            <gco:CharacterString>ACCÈS : Les conditions générales d'accès s’appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf) mais sont restreintes par les conditions particulières de type A1 (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPA-TypeA1.pdf).
              UTILISATION : Les conditions générales d'utilisation s'appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf).</gco:CharacterString>
          </xsl:when>
          <xsl:when test="$isRestrictedD1">
            <gco:CharacterString>ACCÈS : Les conditions générales d'accès s’appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf) mais sont restreintes par les conditions particulières de type D1 (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPA-TypeD1.pdf).
              UTILISATION : Les conditions générales d'utilisation s'appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf).</gco:CharacterString>
          </xsl:when>
          <xsl:when test="$isRestrictedCPUA">
            <gco:CharacterString>ACCÈS : Les conditions générales d'accès s’appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf).
              UTILISATION : Les conditions générales d'utilisation s'appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf) mais sont étendues par les conditions particulières de type A(https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPU-TypeA.pdf).</gco:CharacterString>
          </xsl:when>
          <xsl:when test="$isRestrictedCPUC">
            <gco:CharacterString>ACCÈS : Les conditions générales d'accès s’appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf).
              UTILISATION : Les conditions générales d'utilisation s'appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf) mais sont restreintes par les conditions particulières de type C (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CPU-TypeC.pdf).</gco:CharacterString>
          </xsl:when>
          <xsl:otherwise>
            <gco:CharacterString>ACCÈS : Les conditions générales d'accès s’appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf).
              UTILISATION : Les conditions générales d'utilisation s'appliquent (https://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf).</gco:CharacterString>
          </xsl:otherwise>
        </xsl:choose>
      </gmd:otherConstraints>
    </gmd:MD_LegalConstraints>
  </xsl:template>



  <xsl:template match="/">
    <xsl:for-each select="/*">
      <xsl:variable name="info" select="gn:info"/>
      <xsl:variable name="nameSpacePrefix">
        <xsl:call-template name="getNamespacePrefix"/>
      </xsl:variable>
      <xsl:element name="{concat($nameSpacePrefix,':',local-name(.))}">
        <xsl:call-template name="add-namespaces"/>
        <xsl:apply-templates select="mdb:metadataIdentifier"/>
        <xsl:apply-templates select="mdb:defaultLocale"/>
        <xsl:apply-templates select="mdb:parentMetadata"/>
        <xsl:apply-templates select="mdb:metadataScope"/>
        <xsl:apply-templates select="mdb:contact"/>
        <xsl:apply-templates select="mdb:dateInfo"/>
        <xsl:apply-templates select="mdb:metadataStandard"/>
        <xsl:apply-templates select="mdb:metadataProfile"/>
        <xsl:apply-templates select="mdb:alternativeMetadataReference"/>
        <xsl:apply-templates select="mdb:otherLocale"/>
        <xsl:apply-templates select="mdb:metadataLinkage"/>
        <xsl:apply-templates select="mdb:spatialRepresentationInfo"/>
        <xsl:apply-templates select="mdb:referenceSystemInfo"/>
        <xsl:apply-templates select="mdb:metadataExtensionInfo"/>
        <xsl:apply-templates select="mdb:identificationInfo"/>
        <xsl:apply-templates select="mdb:contentInfo"/>
        <xsl:apply-templates select="mdb:distributionInfo"/>
        <xsl:apply-templates select="mdb:dataQualityInfo"/>
        <xsl:apply-templates select="mdb:resourceLineage"/>
        <xsl:apply-templates select="mdb:portrayalCatalogueInfo"/>
        <xsl:apply-templates select="mdb:metadataConstraints"/>
        <xsl:apply-templates select="mdb:applicationSchemaInfo"/>
        <xsl:apply-templates select="mdb:metadataMaintenance"/>
        <xsl:if test="$displayInfo = 'true'">
          <xsl:copy-of select="$info"/>
        </xsl:if>
      </xsl:element>
    </xsl:for-each>
  </xsl:template>
</xsl:stylesheet>
