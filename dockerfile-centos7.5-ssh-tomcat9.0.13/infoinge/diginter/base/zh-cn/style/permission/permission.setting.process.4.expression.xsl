<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:if test="parameter.cludove/is_active = 'false'">
			<xsl:for-each select="cludove.crest.spruce.permission_control[2]/record.crest">
				<xsl:choose>
					<xsl:when test="position()=1"/>
					<xsl:otherwise>
						<xsl:text> or </xsl:text>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:text>CODE ='</xsl:text>
				<xsl:value-of select="code"/>
				<xsl:text>'</xsl:text>
			</xsl:for-each>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
