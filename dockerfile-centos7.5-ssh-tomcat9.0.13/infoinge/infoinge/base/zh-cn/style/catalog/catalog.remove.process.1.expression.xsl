<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<!--判断数据是否能删除-->
		<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
			<xsl:choose>
				<xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true' or parameter.cludove/type !='function' or parameter.cludove/buddle_id ='infoinge' or parameter.cludove/buddle_id ='lock' or parameter.cludove/buddle_id ='diginter'">
					<xsl:text>CODE='</xsl:text>
					<xsl:value-of select="parameter.cludove/catalog_record_code"/>
					<xsl:text>'</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>CODE='</xsl:text>
					<xsl:value-of select="parameter.cludove/catalog_record_code"/>
					<xsl:text>' and (IS_SYNCED_DSB !='true' or count(IS_SYNCED_DSB) = 0)</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) > 0">
			<xsl:text>count(CODE) = 0</xsl:text>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>