<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
                <xsl:text>EXCHANGE_CODE='</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data_exchange/record.crest/code"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>