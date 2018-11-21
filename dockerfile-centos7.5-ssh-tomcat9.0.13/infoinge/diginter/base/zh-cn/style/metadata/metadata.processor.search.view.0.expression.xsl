<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>DATA_DIRECT = '</xsl:text>
        <xsl:choose>
            <xsl:when test="parameter.cludove/data_direct = 'undefined'">
                <xsl:text>input</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="parameter.cludove/data_direct"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>' and DATA_ID ='</xsl:text>
        <xsl:value-of select="parameter.cludove/processor_class"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
