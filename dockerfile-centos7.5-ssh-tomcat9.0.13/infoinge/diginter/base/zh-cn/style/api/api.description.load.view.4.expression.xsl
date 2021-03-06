<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(parameter.cludove/catalog_id) = 0">
                <xsl:text>BUDDLE_ID = '</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>BUDDLE_ID = '</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>'</xsl:text>
                <xsl:text> and IDENTIFIER = '</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
