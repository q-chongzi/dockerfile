<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:text>BUDDLE_ID ='</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:choose>
			<xsl:when test="parameter.cludove/isDesign.cludove = '1'">
				<xsl:text>' and IS_METADATA ='true'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>'</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
