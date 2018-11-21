<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--location 删除所有data_mapping数据关联-->
        <xsl:choose>
            <xsl:when test="parameter.cludove/location = '1'">
                <xsl:text>S_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/code"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>R_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/code"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>