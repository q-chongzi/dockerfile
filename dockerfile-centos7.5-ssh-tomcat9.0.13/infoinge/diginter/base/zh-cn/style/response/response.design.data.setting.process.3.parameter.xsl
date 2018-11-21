<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:if test="cludove.crest.spruce.catalog/record.crest/has_set_metadata != 'true'">
			<parameter>
				<BUDDLE_ID>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
				</BUDDLE_ID>
				<CATALOG_ID>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
				</CATALOG_ID>
				<DATA_POSITION>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/position"/>
				</DATA_POSITION>
				<DATA_CODE>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
				</DATA_CODE>
				<DATA_NAME>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
				</DATA_NAME>
				<DATA_TYPE>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/type"/>
				</DATA_TYPE>
				<CONNECTION_ID>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/>
				</CONNECTION_ID>
				<RESOURCE_BUDDLE>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_buddle"/>
				</RESOURCE_BUDDLE>
				<IS_EXCHANGE>
					<xsl:value-of select="parameter.cludove/is_exchange"/>
				</IS_EXCHANGE>
				<DATA_DIRECT>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.data/record.crest/operation = 'build'">
							<xsl:text>input</xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text>output</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</DATA_DIRECT>
				<RESOURCE_NAME>
					<xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/>
				</RESOURCE_NAME>
			</parameter>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
