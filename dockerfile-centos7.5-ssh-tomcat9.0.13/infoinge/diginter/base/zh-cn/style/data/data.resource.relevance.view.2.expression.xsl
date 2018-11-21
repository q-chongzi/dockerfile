<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="parameter.cludove/data_r_type= 'Hinge'">
				<xsl:text>DATA_ID ='[</xsl:text>
				<xsl:value-of select="parameter.cludove/buddle_id"/>
				<xsl:text>].[</xsl:text>
				<xsl:value-of select="parameter.cludove/resource_name"/>
				<xsl:text>]' and DATA_DIRECT = 'output'</xsl:text>
			</xsl:when>
			<xsl:when test="parameter.cludove/data_r_type= 'WS' or parameter.cludove/data_r_type= 'Class'">
				<xsl:text>DATA_ID ='</xsl:text>
				<xsl:value-of select="parameter.cludove/resource_name"/>
				<xsl:text>' and DATA_DIRECT = 'output'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>count(CODE)=0</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
