<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="text"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.buddle/record.crest/identifier != ''">
				<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>infoinge</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text disable-output-escaping="yes">/</xsl:text>
		<xsl:value-of select="parameter.cludove/styleSetting.cludove"/>
		<xsl:text disable-output-escaping="yes">/</xsl:text>
		<xsl:value-of select="parameter.cludove/langSetting.cludove"/>
	</xsl:template>
</xsl:stylesheet>
