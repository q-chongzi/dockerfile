<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:if test="count(cludove.crest.spruce.data[2]/record.crest) = 0">
            <xsl:choose>
                <xsl:when test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">
                    <xsl:text>BUDDLE_ID='</xsl:text>
                    <xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
                    <xsl:text>' and NAME='</xsl:text>
                    <xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
                    <xsl:text>'</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>count(CODE) = 0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>