<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<metadata>
			<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/infoinge_connection_id"/><xsl:text>.</xsl:text><xsl:value-of select="parameter.cludove/data_id"/></xsl:attribute>
			<xsl:for-each select="/content/cludove.crest.spruce.data_metadata/record.crest">
				<xsl:sort order="ascending" select="name"/>
				<record.crest>
					<name>
						<xsl:value-of select="name" />
					</name>
					<remark>
						<xsl:value-of select="remark" />
					</remark>
					<type>
						<xsl:value-of select="type" />
					</type>
					<display>
						<xsl:value-of select="display" />
					</display>
					<length>
						<xsl:value-of select="length" />
					</length>
					<primary>
						<xsl:value-of select="primary_name" />
					</primary>
					<data_direct>
						<xsl:value-of select="data_direct" />
					</data_direct>
				</record.crest>
			</xsl:for-each>
		</metadata>
	</xsl:template>
</xsl:stylesheet>
