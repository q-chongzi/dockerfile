<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_decomposing/record.crest) = 0">
                <xsl:choose>
                    <xsl:when test="parameter.cludove/type = 'DB'">
                        <xsl:text>INSTANCE ='</xsl:text>
                        <xsl:value-of select="parameter.cludove/instance"/>
                        <xsl:text>'</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>TEMPLATE ='</xsl:text>
                        <xsl:value-of select="parameter.cludove/template"/>
                        <xsl:text>'</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
