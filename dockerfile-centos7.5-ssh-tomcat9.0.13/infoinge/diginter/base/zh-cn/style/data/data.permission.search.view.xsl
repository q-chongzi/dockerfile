<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='catalog.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='data.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='resource.decomposing.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='resource.connection.search.view'])>0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id='metadata.catalog.search.view'])>0">
				<xsl:text>true</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>false</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
