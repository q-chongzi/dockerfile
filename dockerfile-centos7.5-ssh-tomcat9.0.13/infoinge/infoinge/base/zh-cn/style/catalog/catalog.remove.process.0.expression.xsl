<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<xsl:apply-templates select="content"/>
	</xsl:template>
	<xsl:template match="content">
	<!--判断数据是否能删除应该判断是否数据迁移、数据同步开始运行了，应该以data_exchange中迁移位置内容不为空-->
		<xsl:text>BUDDLE_ID='</xsl:text>
		<xsl:value-of select="parameter.cludove/buddle_id"/>
		<xsl:text>' and CATALOG_ID='</xsl:text>
		<xsl:value-of select="parameter.cludove/identifier"/>
		<xsl:text>'</xsl:text>
	</xsl:template>
</xsl:stylesheet>