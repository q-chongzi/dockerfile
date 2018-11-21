<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="parameter.cludove/parent_code != ''">
				<xsl:text>PARENT_CODE='</xsl:text>
				<xsl:value-of select="parameter.cludove/parent_code"/>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>PARENT_CODE='-1' or count(PARENT_CODE) = 0 or PARENT_CODE=''</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
