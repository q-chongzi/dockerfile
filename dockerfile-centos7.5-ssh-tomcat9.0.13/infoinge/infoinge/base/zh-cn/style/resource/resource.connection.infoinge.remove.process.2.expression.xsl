<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<!--不是总线即可删除资源连接-->
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/identifier = $identifier">
				<xsl:text>CODE='</xsl:text>
				<xsl:value-of select="parameter.cludove/resource_connection_record_code"/>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/is_dsb = 'true'"></xsl:when>
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