<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<metadata>
			<xsl:for-each select="cludove.crest.spruce.catalog/record.crest">
				<xsl:sort order="ascending" select="identifier"/>
				<xsl:variable name="buddle_id">
					<xsl:value-of select="buddle_id"/>
				</xsl:variable>
				<xsl:variable name="catalog_id">
					<xsl:value-of select="identifier"/>
				</xsl:variable>
				<xsl:choose>
					<!--<xsl:when test="is_permit = 'false' or count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = $buddle_id and catalog_id = $catalog_id]) > 0 or /content/parameter.cludove/account.cludove = 'admin'">-->
					<xsl:when test="is_permit = 'false' or (count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='catalog.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='data.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='resource.decomposing.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='resource.connection.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='metadata.catalog.search.view'])>0) or /content/parameter.cludove/account.cludove = 'admin'">
						<record.crest>
							<name>
								<xsl:value-of select="identifier" />
							</name>
							<remark>
								<xsl:value-of select="name" />
							</remark>
							<type>
								<xsl:value-of select="type" />
							</type>
							<display>
								<xsl:value-of select="name" />
							</display>
						</record.crest>
					</xsl:when>
					<xsl:otherwise />
				</xsl:choose>
			</xsl:for-each>
		</metadata>
	</xsl:template>
</xsl:stylesheet>