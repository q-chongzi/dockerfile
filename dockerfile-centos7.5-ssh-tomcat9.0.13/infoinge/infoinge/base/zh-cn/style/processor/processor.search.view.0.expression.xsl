<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(parameter.cludove/classify) = 0">

            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="parameter.cludove/type = 'ALL'">
                        <xsl:text>CLASSIFY='</xsl:text>
                        <xsl:value-of select="parameter.cludove/classify"/>
                        <xsl:text>' </xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>CLASSIFY='</xsl:text>
                        <xsl:value-of select="parameter.cludove/classify"/>
                        <xsl:text>' and TYPE='</xsl:text>
                        <xsl:value-of select="parameter.cludove/type"/>
                        <xsl:text>' </xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>