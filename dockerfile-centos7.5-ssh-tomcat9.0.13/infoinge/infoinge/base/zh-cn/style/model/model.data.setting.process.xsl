<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>{data_code:"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/code"/>
		<xsl:text>",location:"</xsl:text>
			<xsl:value-of select="parameter.cludove/location"/>
		<xsl:text>"}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
