<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="primary_name">
            <xsl:value-of select="parameter.cludove/primary_name"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="parameter.cludove/name = $primary_name">
                <xsl:text>DATA_ID='</xsl:text>
                <xsl:value-of select="parameter.cludove/data_id"/>
                <xsl:text>' and PRIMARY_NAME='</xsl:text>
                <xsl:value-of select="$primary_name"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/code"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>