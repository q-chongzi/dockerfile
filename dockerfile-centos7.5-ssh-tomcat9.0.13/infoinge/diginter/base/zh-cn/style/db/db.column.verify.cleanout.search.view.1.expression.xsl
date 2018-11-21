<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(/content/cludove.crest.spruce.field_cleanout/record.crest) > 0">
                <xsl:for-each select="/content/cludove.crest.spruce.field_cleanout/record.crest">
                    <xsl:if test="position() > 1">
                        <xsl:text> or </xsl:text>
                    </xsl:if>
                    <xsl:text>CODE ='</xsl:text>
                    <xsl:value-of select="cleanout_code"/>
                    <xsl:text>'</xsl:text>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE)=0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>