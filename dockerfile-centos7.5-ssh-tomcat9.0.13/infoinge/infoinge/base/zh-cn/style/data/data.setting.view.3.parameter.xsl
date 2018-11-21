<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<parameter>
			<TYPE>
				<xsl:value-of select="cludove.crest.spruce.data/record.crest/type"/>
			</TYPE>
			<CONNECTION_ID>
				<xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/>
			</CONNECTION_ID>
			<RESOURCE_NAME>
				<xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/>
			</RESOURCE_NAME>
			<RESOURCE_BUDDLE>
				<xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_buddle"/>
			</RESOURCE_BUDDLE>
		</parameter>
	</xsl:template>
</xsl:stylesheet>
