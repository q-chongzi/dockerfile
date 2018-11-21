<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(/content/cludove.crest.spruce.resource_connection/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.resource_connection/record.crest">
                    <xsl:text>IDENTIFIER !='</xsl:text>
                    <xsl:value-of select="identifier"/>
                    <xsl:text>' and </xsl:text>
                </xsl:for-each>
                <xsl:text>TYPE='</xsl:text>
                <xsl:value-of select="parameter.cludove/type"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>TYPE='</xsl:text>
                <xsl:value-of select="parameter.cludove/type"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>