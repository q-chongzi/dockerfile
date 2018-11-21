<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:text>TYPE ='</xsl:text>
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.data/record.crest/type != '' and cludove.crest.spruce.data/record.crest/type != 'Metadata'">
				<xsl:value-of select="cludove.crest.spruce.data/record.crest/type"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>DB</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>'</xsl:text>
	</xsl:template>
</xsl:stylesheet>
