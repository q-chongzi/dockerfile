<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询改条数据的 的 左侧同一库表是否有 is_main为true的值-->
        <xsl:text>VALUE_CODE='</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/value_code"/>
        <xsl:text>' and S_DATA_CODE='</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/s_data_code"/>
        <xsl:text>' and R_DATA_CODE='</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/r_data_code"/>
        <xsl:text>' and IS_MAIN = 'true'</xsl:text>
        <!--<xsl:text> AND IS_ACTIVE = 'true'</xsl:text>-->
    </xsl:template>
</xsl:stylesheet>
