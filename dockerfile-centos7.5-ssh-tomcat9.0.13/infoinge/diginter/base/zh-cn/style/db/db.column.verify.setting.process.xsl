<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>{"field_name":"</xsl:text>
		<xsl:value-of select="parameter.cludove/field_name"/>
		<xsl:text>","resource_name":"</xsl:text>
		<xsl:value-of select="parameter.cludove/resource_name"/>
		<xsl:text>","data_code":"</xsl:text>
		<xsl:value-of select="parameter.cludove/data_code"/>
		<xsl:text>"}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
