<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="parameter.cludove/account.cludove = 'admin'">
				<xsl:text>ACCOUNT_NAME='admin_guide'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>ACCOUNT_NAME='</xsl:text>
				<xsl:value-of select="parameter.cludove/account.cludove"/>
				<xsl:text>'</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>