<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--location =2 则为右侧库表，查询判断data_value是否有值-->
        <xsl:if test="parameter.cludove/location = '2'">
            <xsl:text>DATA_CODE='</xsl:text>
            <xsl:value-of select="parameter.cludove/code"/>
            <xsl:text>'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>