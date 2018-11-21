<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<parameter>
			<TYPE>
				<xsl:value-of select="parameter.cludove/data_type"/>
			</TYPE>
			<CONNECTION_ID>
				<xsl:value-of select="parameter.cludove/data_connection_id"/>
			</CONNECTION_ID>
			<RESOURCE_NAME>
				<xsl:value-of select="parameter.cludove/data_resource_name"/>
			</RESOURCE_NAME>
			<RESOURCE_BUDDLE>
				<xsl:value-of select="parameter.cludove/data_resource_buddle"/>
			</RESOURCE_BUDDLE>
		</parameter>
	</xsl:template>
</xsl:stylesheet>
