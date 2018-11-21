<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.catalog[1]/record.crest[1]/is_synced_active = 'true'">
                <xsl:choose>
                    <xsl:when test="/content/result = 'success'">
                        <xsl:text>CODE='</xsl:text>
                        <xsl:value-of select="/content/cludove.crest.spruce.catalog[1]/record.crest[1]/code"/>
                        <xsl:text>'</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>count(CODE) = 0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
