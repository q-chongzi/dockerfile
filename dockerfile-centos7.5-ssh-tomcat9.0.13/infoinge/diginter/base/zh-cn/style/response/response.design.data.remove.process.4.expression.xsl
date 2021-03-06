<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="main_code">
            <xsl:value-of select="parameter.cludove/data_main_code"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="parameter.cludove/code = $main_code">
                <xsl:text>BUDDLE_ID='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' and CATALOG_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>S_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/code"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>