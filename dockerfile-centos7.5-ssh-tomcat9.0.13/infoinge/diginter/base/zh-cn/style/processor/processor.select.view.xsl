<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="html"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:if test="parameter.cludove/select_blank != ''">
			<option value="">
				<xsl:if test="/content/parameter.cludove/selected_value = ''">
					<xsl:attribute name="selected">selected</xsl:attribute>
				</xsl:if>
				<xsl:value-of select="parameter.cludove/select_blank"/>
			</option>
		</xsl:if>
		<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
			<option>
				<xsl:if test="class = /content/parameter.cludove/selected_value">
					<xsl:attribute name="selected">selected</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
				<xsl:value-of select="name"/>
			</option>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
