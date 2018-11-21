<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[is_local != 'true']) > 0">
                <xsl:text>(</xsl:text>
                <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest[is_local != 'true']">
                    <xsl:if test="position() > 1">
                        <xsl:text> or </xsl:text>
                    </xsl:if>
                    <xsl:text>HOST='</xsl:text>
                        <xsl:value-of select="host"/>
                    <xsl:text>'</xsl:text>
                </xsl:for-each>
                <xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE)=0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>