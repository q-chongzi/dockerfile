<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.data/record.crest">
			<xsl:variable name="catalog_id">
				<xsl:value-of select="catalog_id"/>
			</xsl:variable>
			<xsl:choose>
				<xsl:when test="count(/content/cludove.crest.spruce.permission_control[2]/record.crest[catalog_id = $catalog_id]) > 0"/>
				<xsl:otherwise>
					<parameter>
						<SECRET>
							<xsl:text disable-output-escaping="yes">7</xsl:text>
						</SECRET>
						<OWNER_TYPE>
							<xsl:value-of select="/content/parameter.cludove/owner_type"/>
						</OWNER_TYPE>
						<OWNER_CODE>
							<xsl:value-of select="/content/parameter.cludove/owner_code"/>
						</OWNER_CODE>
						<BUDDLE_ID>
							<xsl:value-of select="/content/parameter.cludove/buddle_id"/>
						</BUDDLE_ID>
						<CATALOG_ID>
							<xsl:value-of select="catalog_id"/>
						</CATALOG_ID>
						<OPERATION>
							<xsl:value-of select="operation"/>
						</OPERATION>
					</parameter>
					<xsl:choose>
						<xsl:when test="catalog_id = 'structure.buddle.search.view' or catalog_id = 'structure.catalog.search.view' or catalog_id = 'resource.connection.monitor.navigate.view' or catalog_id = 'serve.resource.show.process'">
							<parameter>
								<SECRET>
									<xsl:text disable-output-escaping="yes">7</xsl:text>
								</SECRET>
								<OWNER_TYPE>
									<xsl:value-of select="/content/parameter.cludove/owner_type"/>
								</OWNER_TYPE>
								<OWNER_CODE>
									<xsl:value-of select="/content/parameter.cludove/owner_code"/>
								</OWNER_CODE>
								<BUDDLE_ID>
									<xsl:text>infoinge</xsl:text>
								</BUDDLE_ID>
								<CATALOG_ID>
									<xsl:value-of select="catalog_id"/>
								</CATALOG_ID>
								<OPERATION>
									<xsl:value-of select="operation"/>
								</OPERATION>
							</parameter>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
