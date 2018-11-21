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
		<xsl:choose>
			<xsl:when test="organization.belong.account/duty.account != '' or organization.belong.account/department.account != '' or organization.belong.account/organization.account != ''">
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
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="parameter.cludove/owner_code != ''">
						<xsl:text> AND (OWNER_TYPE IS NULL</xsl:text>
						<xsl:text> OR OWNER_TYPE='</xsl:text>
						<xsl:value-of select="parameter.cludove/owner_type"/>
						<xsl:text>'</xsl:text>
						<xsl:text>)</xsl:text>
						<xsl:text> AND OWNER_CODE='</xsl:text>
						<xsl:value-of select="parameter.cludove/owner_code"/>
						<xsl:text>'</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text> AND OWNER_TYPE='' AND OWNER_CODE='-1'</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
