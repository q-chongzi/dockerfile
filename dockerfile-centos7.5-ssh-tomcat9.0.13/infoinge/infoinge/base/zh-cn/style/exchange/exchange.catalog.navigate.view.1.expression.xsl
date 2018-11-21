<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>(</xsl:text>
        <xsl:for-each select="cludove.crest.spruce.design_catalog/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text> or </xsl:text>
            </xsl:if>
            <xsl:text>CODE='</xsl:text>
            <xsl:value-of select="catalog_code"/>
            <xsl:text>' </xsl:text>
        </xsl:for-each>
        <xsl:text>)</xsl:text>
    </xsl:template>
</xsl:stylesheet>