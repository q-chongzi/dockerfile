<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_dsb = 'true'"></xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/identifier = $identifier"></xsl:when>
					<xsl:otherwise>
						<xsl:text>IDENTIFIER='</xsl:text>
						<xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/identifier"/>
						<xsl:text>'</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>