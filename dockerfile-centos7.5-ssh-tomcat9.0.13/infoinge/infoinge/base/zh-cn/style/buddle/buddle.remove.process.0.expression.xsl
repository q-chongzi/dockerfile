<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<!--判断数据是否能删除-->
			<xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true' or parameter.cludove/identifier ='infoinge' or parameter.cludove/identifier ='lock' or parameter.cludove/identifier ='diginter'">
				<xsl:text>CODE='</xsl:text>
				<xsl:value-of select="parameter.cludove/buddle_record_code"/>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>CODE='</xsl:text>
				<xsl:value-of select="parameter.cludove/buddle_record_code"/>
				<xsl:text>' and (IS_SYNCED_DSB !='true' or count(IS_SYNCED_DSB) = 0)</xsl:text>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>