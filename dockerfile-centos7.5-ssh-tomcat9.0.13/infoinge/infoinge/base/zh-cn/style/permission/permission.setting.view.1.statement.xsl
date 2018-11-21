<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:text>SELECT DISTINCT DATA.BUDDLE_ID, DATA.NAME FROM DATA WHERE DATA.BUDDLE_ID='</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:text>' and DATA.POSITION=0 AND DATA.IS_PERMIT='true' and DATA.OPERATION!='';</xsl:text>
	</xsl:template>
</xsl:stylesheet>
