<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text>[{</xsl:text>
		<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
			<xsl:choose>
				<xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true' or parameter.cludove/type !='function'">
					<xsl:text>is_delete:"true"</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>is_delete:"false"</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) > 0">
				<xsl:text>is_delete:"stop"</xsl:text>
		</xsl:if>
		<xsl:text>,code:"</xsl:text>
		<xsl:value-of select="parameter.cludove/catalog_record_code"/>
		<xsl:text>"}]</xsl:text>
	</xsl:template>
</xsl:stylesheet>
