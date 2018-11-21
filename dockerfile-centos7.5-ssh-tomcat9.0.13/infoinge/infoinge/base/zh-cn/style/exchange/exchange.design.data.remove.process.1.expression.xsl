<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="/content/parameter.cludove/exchange_select_expression = ''">
                    <xsl:text>DATA_CODE='</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/code"/>
                    <xsl:text>' and BUDDLE_ID='</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                    <xsl:text>' and CATALOG_ID='</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                    <xsl:text>'</xsl:text>
                </xsl:when>
            <xsl:otherwise>
                    <xsl:text>BUDDLE_ID='</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                    <xsl:text>' and CATALOG_ID='</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                    <xsl:text>'</xsl:text>
                </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
