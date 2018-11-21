<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:text>BUDDLE_ID='</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:text>'</xsl:text>
		<xsl:text> AND CATALOG_ID IN ('</xsl:text>
		<xsl:value-of select="parameter.cludove/catalog_id"/>
		<xsl:text>')</xsl:text>
		<xsl:if test="organization.belong.account/duty.account = '' and organization.belong.account/department.account = '' and organization.belong.account/organization.account = ''">
			<xsl:text> AND OWNER_TYPE='' AND OWNER_CODE='-1'</xsl:text>
		</xsl:if>
		<xsl:text> AND (1=-1</xsl:text>
		<xsl:if test="organization.belong.account/duty.account != ''">
			<xsl:text> OR (OWNER_TYPE='duty' AND OWNER_CODE IN(</xsl:text>
			<xsl:value-of select="organization.belong.account/duty.account"/>
			<xsl:text>))</xsl:text>
		</xsl:if>
		<xsl:if test="organization.belong.account/department.account != ''">
			<xsl:text> OR (OWNER_TYPE='department' AND OWNER_CODE IN(</xsl:text>
			<xsl:value-of select="organization.belong.account/department.account"/>
			<xsl:text>))</xsl:text>
		</xsl:if>
		<xsl:if test="organization.belong.account/organization.account != ''">
			<xsl:text> OR (OWNER_TYPE='organization' AND OWNER_CODE IN(</xsl:text>
			<xsl:value-of select="organization.belong.account/organization.account"/>
			<xsl:text>))</xsl:text>
		</xsl:if>
		<xsl:text>)</xsl:text>
	</xsl:template>
</xsl:stylesheet>
