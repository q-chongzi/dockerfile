<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0">
                <xsl:text>BUDDLE_ID LIKE '%</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.prefix_code[1]/record.crest/precode"/>
                <xsl:text>%'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>