<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>{ "data_buddle_id" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:text>", "data_catalog_id" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/catalog_id"/>
		<xsl:text>", "data_code" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/data_code"/>
		<xsl:text>", "data_type" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/data_type"/>
		<xsl:text>", "data_connection_id" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/data_connection_id"/>
		<xsl:text>", "data_resource_name" : "</xsl:text>
		<xsl:value-of select="parameter.cludove/data_resource_name"/>
		<xsl:text>"}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
