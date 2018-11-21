<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--若location=2 则为右侧库表，应提示主数据-->
        <xsl:if test="parameter.cludove/location = '2'">
            <xsl:text>R_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/code"/>
            <xsl:text>'</xsl:text>
            <xsl:text> and IS_MAIN = 'true'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>