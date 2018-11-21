<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询改右侧data是否拥有主数据-->
        <xsl:text> R_DATA_CODE='</xsl:text>
        <xsl:value-of select="parameter.cludove/r_data_code"/>
        <xsl:text>' and IS_MAIN = 'true'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
