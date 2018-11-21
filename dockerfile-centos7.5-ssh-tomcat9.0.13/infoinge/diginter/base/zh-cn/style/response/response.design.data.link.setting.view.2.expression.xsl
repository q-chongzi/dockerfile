<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:for-each select="cludove.crest.spruce.data_mapping[2]/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text> or </xsl:text>
            </xsl:if>
            <xsl:text>IDENTIFIER='</xsl:text>
            <xsl:value-of select="s_identifier"/>
            <xsl:text>'</xsl:text>
        </xsl:for-each>
        <xsl:if test="count(cludove.crest.spruce.data_mapping[2]/record.crest) > 0">
            <xsl:text> or </xsl:text>
        </xsl:if>
        <xsl:text> IDENTIFIER='</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping[2]/record.crest/r_identifier"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
