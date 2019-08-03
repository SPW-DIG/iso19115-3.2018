<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:srv="http://standards.iso.org/iso/19115/-3/srv/2.1"
                xmlns:mds="http://standards.iso.org/iso/19115/-3/mds/2.0"
                xmlns:mcc="http://standards.iso.org/iso/19115/-3/mcc/1.0"
                xmlns:mri="http://standards.iso.org/iso/19115/-3/mri/1.0"
                xmlns:mrs="http://standards.iso.org/iso/19115/-3/mrs/1.0"
                xmlns:mrd="http://standards.iso.org/iso/19115/-3/mrd/1.0"
                xmlns:mdb="http://standards.iso.org/iso/19115/-3/mdb/2.0"
                xmlns:mrl="http://standards.iso.org/iso/19115/-3/mrl/2.0"
                xmlns:mrc="http://standards.iso.org/iso/19115/-3/mrc/2.0"
                xmlns:mmi="http://standards.iso.org/iso/19115/-3/mmi/1.0"
                xmlns:mco="http://standards.iso.org/iso/19115/-3/mco/1.0"
                xmlns:mdq="http://standards.iso.org/iso/19157/-2/mdq/1.0"
                xmlns:msr="http://standards.iso.org/iso/19115/-3/msr/2.0"
                xmlns:lan="http://standards.iso.org/iso/19115/-3/lan/1.0"
                xmlns:gcx="http://standards.iso.org/iso/19115/-3/gcx/1.0"
                xmlns:gex="http://standards.iso.org/iso/19115/-3/gex/1.0"
                xmlns:dqm="http://standards.iso.org/iso/19157/-2/dqm/1.0"
                xmlns:cit="http://standards.iso.org/iso/19115/-3/cit/2.0"
                xmlns:gco="http://standards.iso.org/iso/19115/-3/gco/1.0"
                xmlns:mac="http://standards.iso.org/iso/19115/-3/mac/2.0"
                xmlns:gfc="http://standards.iso.org/iso/19110/gfc/1.1"
                xmlns:gts="http://www.isotc211.org/2005/gts"
                xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
                xmlns:gml="http://www.opengis.net/gml/3.2"
                xmlns:xlink="http://www.w3.org/1999/xlink"
                xmlns:gn="http://www.fao.org/geonetwork"
                xmlns:saxon="http://saxon.sf.net/"
                extension-element-prefixes="saxon"
                exclude-result-prefixes="#all">


  <!--

      <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="https://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:accessConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="https://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="license" />
          </gmd:accessConstraints>
          <gmd:useConstraints>
            <gmd:MD_RestrictionCode codeList="https://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:useConstraints>
          <gmd:useConstraints>
            <gmd:MD_RestrictionCode codeList="https://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/codelist/ML_gmxCodelists.xml#MD_RestrictionCode" codeListValue="license" />
          </gmd:useConstraints>
          <gmd:otherConstraints>
            <gco:CharacterString>ACCÈS :
Les conditions générales d'accès s’appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf)

UTILISATION :
Les conditions générales d'utilisation s'appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf)</gco:CharacterString>
          </gmd:otherConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>

  <gmd:resourceConstraints>
    <gmd:MD_LegalConstraints>
      <gmd:accessConstraints>
        <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
      </gmd:accessConstraints>
      <gmd:otherConstraints>
        <gmx:Anchor xlink:href="http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"> No limitations on public access </gmx:Anchor>
      </gmd:otherConstraints>
    </gmd:MD_LegalConstraints>
  </gmd:resourceConstraints>
  <gmd:resourceConstraints>
    <gmd:MD_LegalConstraints>
      <gmd:useConstraints>
        <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
      </gmd:useConstraints>
      <gmd:otherConstraints>
        <gmx:Anchor xlink:href="http://inspire.ec.europa.eu/metadata-codelist/ ConditionsApplyingToAccessAndUse/noConditionsApply"> No conditions apply to access and use </gmx:Anchor>
        <gco:CharacterString>ACCÈS :
          Les conditions générales d'accès s’appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf)

          UTILISATION :
          Les conditions générales d'utilisation s'appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf)
        </gco:CharacterString>
      </gmd:otherConstraints>
    </gmd:MD_LegalConstraints>
  </gmd:resourceConstraints>
  <gmd:resourceConstraints>
    <gmd:MD_Constraints>
      <gmd:useLimitation>
        <gco:CharacterString>Aucune restriction d'accès public au service de visualisation</gco:CharacterString>
      </gmd:useLimitation>
    </gmd:MD_Constraints>
  </gmd:resourceConstraints>


http://staging-inspire-validator.eu-west-1.elasticbeanstalk.com/etf-webapp/v2/TestRuns/EID7c0b77f3-931a-4d11-90b6-4f4f96b49839.html

      <gmd:resourceConstraints>
        <gmd:MD_LegalConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="license" />
          </gmd:accessConstraints>
          <gmd:accessConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
          </gmd:accessConstraints>
          <gmd:useConstraints>
            <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="license" />
          </gmd:useConstraints>
          <gmd:otherConstraints>
            <gco:CharacterString>ACCÈS :
Les conditions générales d'accès s’appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf)

UTILISATION :
Les conditions générales d'utilisation s'appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf)</gco:CharacterString>
          </gmd:otherConstraints>
        </gmd:MD_LegalConstraints>
      </gmd:resourceConstraints>
      <gmd:resourceConstraints>
        <gmd:MD_Constraints>
          <gmd:useLimitation>
            <gco:CharacterString>Aucune restriction d'accès public au service de visualisation</gco:CharacterString>
          </gmd:useLimitation>
        </gmd:MD_Constraints>
      </gmd:resourceConstraints>



SQL query to get list value

<gmd:resourceConstraints>
		  <gmd:MD_LegalConstraints>
			  <gmd:accessConstraints>
				  <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
			  </gmd:accessConstraints>
			  <gmd:useConstraints>
				  <gmd:MD_RestrictionCode codeList="http://standards.iso.org/iso/19139/resources/gmxCodelists.xml#MD_RestrictionCode" codeListValue="otherRestrictions" />
			  </gmd:useConstraints>
			  <gmd:otherConstraints>
				  <gmx:Anchor xlink:href="http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations"> No limitations on public access </gmx:Anchor>
			  </gmd:otherConstraints>
			  <gmd:otherConstraints>
  <gco:CharacterString>ACCÈS :
    Les conditions générales d'accès s’appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGA.pdf)

    UTILISATION :
    Les conditions générales d'utilisation s'appliquent (http://geoportail.wallonie.be/files/documents/ConditionsSPW/DataSPW-CGU.pdf)
  </gco:CharacterString>
</gmd:otherConstraints>
  </gmd:MD_LegalConstraints>
  </gmd:resourceConstraints>

-->


  <!-- Why english ? -->
  <xsl:template match="gco:CharacterString[normalize-space(.) = 'RÈGLEMENT (UE) No 1089/2010 DE LA COMMISSION du 23 novembre 2010 portant modalités d''application de la directive 2007/2/CE du Parlement européen et du Conseil en ce qui concerne l''interopérabilité des séries et des services de données géographiques' or normalize-space(.) = 'RÈGLEMENT (UE) N o 1089/2010 DE LA COMMISSION du 23 novembre 2010 portant modalités d''application de la directive 2007/2/CE du Parlement européen et du Conseil en ce qui concerne l''interopérabilité des séries et des services de données géographiques']">
    <gcx:Anchor xlink:href="http://data.europa.eu/eli/reg/2010/1089/2014-12-31">Commission Regulation (EU) No 1089/2010 of 23 November 2010 implementing Directive 2007/2/EC of the European Parliament and of the Council as regards interoperability of spatial data sets and services</gcx:Anchor>
  </xsl:template>

  <!-- -->
  <xsl:template match="mrd:MD_Distribution">
    <xsl:copy>
      <xsl:for-each select="mrd:distributor/"></xsl:for-each>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="mri:resourceConstraints/*/mco:otherConstraints[gco:CharacterString = 'no limitation' or gco:CharacterString = 'no limitations' or gco:CharacterString = 'No limitations']">
    <mco:otherConstraints>
      <gcx:Anchor xlink:href="http://inspire.ec.europa.eu/metadata-codelist/LimitationsOnPublicAccess/noLimitations">No limitations to public access</gcx:Anchor>
    </mco:otherConstraints>
  </xsl:template>


  <xsl:template match="mri:resourceConstraints/*/mco:otherConstraints[gco:CharacterString = 'no conditions apply']">
    <mco:otherConstraints>
      <gcx:Anchor xlink:href="http://inspire.ec.europa.eu/metadata-codelist/ConditionsApplyingToAccessAndUse/noConditionsApply">No conditions apply to access and use</gcx:Anchor>
    </mco:otherConstraints>
  </xsl:template>

  <!-- TODO: Migrate Thèmes INSPIRE, priority dataset, Spatial scope = Regional (only if Reporting INSPIRE) -->


  <xsl:template match="mri:thesaurusName/*/cit:date/*/cit:dateType/*/@codeListValue">
    <xsl:attribute name="codeListValue">publication</xsl:attribute>
  </xsl:template>

  <!-- Add the 2 inspire decimals ... -->
  <xsl:template match="gex:EX_GeographicBoundingBox/*/gco:Decimal[matches(., '^([0-9]+|[0-9]+.[0-9]{1})$')]">
    <xsl:copy>
      <xsl:copy-of select="@*"/>
      <xsl:value-of select="format-number(., '#0.00')"/>
    </xsl:copy>
  </xsl:template>

  <!-- Remove geonet:* elements. -->
  <xsl:template match="gn:*" priority="2"/>
  
  <!-- Copy everything. -->
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
