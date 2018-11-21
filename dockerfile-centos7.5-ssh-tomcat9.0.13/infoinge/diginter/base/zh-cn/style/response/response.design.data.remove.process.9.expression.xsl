<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除目录数据时候，删除该目录数据所有数据元数据-->
        <xsl:choose>
            <xsl:when test="parameter.cludove/is_exchange = 'true' and parameter.cludove/position = '0'">
                <xsl:text>DATA_ID ='[</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
                <xsl:text>].[</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
                <xsl:text>]'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE)=0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>