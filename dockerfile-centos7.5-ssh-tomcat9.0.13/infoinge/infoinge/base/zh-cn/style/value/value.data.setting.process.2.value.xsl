<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:for-each select="metadata/record.crest">
			<xsl:choose>
				<xsl:when test="name = 'CODE' or name = 'IS_ACTIVE' or name = 'CHANGE_FROM' or name = 'CHANGE_INDEX' or name = 'CHANGE_NUMBER' or name = 'SECRET' or name = 'SECRECY' or name = 'BUILDER' or name = 'OWNER' or name = 'START_DATE' or name = 'END_DATE' or name = 'CONNECTION_CODE'"/>
				<xsl:otherwise>
					<parameter>
						<BUDDLE_ID>
							<xsl:value-of select="/content/parameter.cludove/buddle_id"/>
						</BUDDLE_ID>
						<CATALOG_ID>
							<xsl:value-of select="/content/parameter.cludove/catalog_id"/>
						</CATALOG_ID>
						<DATA_CODE>
							<xsl:value-of select="/content/parameter.cludove/data_code"/>
						</DATA_CODE>
						<VALUE_CODE>
							<xsl:value-of select="/content/cludove.crest.spruce.data_value/record.crest/code"/>
						</VALUE_CODE>
						<POSITION>
							<xsl:value-of select="position() - 1"/>
						</POSITION>
						<TAG_NAME>
							<xsl:value-of select="name"/>
						</TAG_NAME>
					</parameter>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
