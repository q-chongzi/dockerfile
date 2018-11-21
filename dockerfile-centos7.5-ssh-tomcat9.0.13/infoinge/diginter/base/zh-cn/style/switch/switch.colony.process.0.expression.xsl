<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="content">
		<xsl:text>(IS_DSB != 'true' or count(IS_DSB) = 0)</xsl:text>
		<xsl:text> and TYPE = 'Hinge'</xsl:text>
		<xsl:text> and IDENTIFIER ='</xsl:text>
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		<xsl:text>'</xsl:text>
	</xsl:template>
</xsl:stylesheet>