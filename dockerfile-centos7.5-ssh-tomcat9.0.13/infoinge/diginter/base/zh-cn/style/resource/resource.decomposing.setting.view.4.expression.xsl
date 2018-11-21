<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/type = 'Hinge' and count(cludove.crest.spruce.resource_decomposing[1]/record.crest) = 0">
                <xsl:text>IDENTIFIER = '</xsl:text>
                <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>