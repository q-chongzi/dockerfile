<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询左侧data是否为主数据-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_value[1]/record.crest) > 0">
                <xsl:text>VALUE_CODE='</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data_value[1]/record.crest/code"/>
                <xsl:text>' and R_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_data_code"/>
                <xsl:text>' and S_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_data_code"/>
                <xsl:text>' and IS_MAIN = 'true'</xsl:text>
                <!--<xsl:text> AND IS_ACTIVE = 'true'</xsl:text>-->
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>VALUE_CODE='</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data_value[2]/record.crest/code"/>
                <xsl:text>' and R_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_data_code"/>
                <xsl:text>' and S_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_data_code"/>
                <xsl:text>' and IS_MAIN = 'true'</xsl:text>
                <!--<xsl:text> AND IS_ACTIVE = 'true'</xsl:text>-->
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
