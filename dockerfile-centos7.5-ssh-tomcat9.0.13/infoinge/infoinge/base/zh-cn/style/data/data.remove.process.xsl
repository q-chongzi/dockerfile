<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>[{</xsl:text>
		<xsl:choose>
			<xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true'   or cludove.crest.spruce.catalog/record.crest/is_issue_dsb != 'true'  or cludove.crest.spruce.catalog/record.crest/type != 'function'">
				<xsl:text>is_delete:"true"</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>is_delete:"false"</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>,code:"</xsl:text>
		<xsl:value-of select="parameter.cludove/data_record_code"/>
		<xsl:text>"}]</xsl:text>
	</xsl:template>
</xsl:stylesheet>
