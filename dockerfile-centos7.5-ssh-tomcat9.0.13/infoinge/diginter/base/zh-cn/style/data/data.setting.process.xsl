<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>{"catalog_code":"</xsl:text>
		<xsl:value-of select="parameter.cludove/catalog_code"/>
		<xsl:text>","catalog_id":"</xsl:text>
		<xsl:value-of select="parameter.cludove/catalog_id"/>
		<xsl:text>"}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
