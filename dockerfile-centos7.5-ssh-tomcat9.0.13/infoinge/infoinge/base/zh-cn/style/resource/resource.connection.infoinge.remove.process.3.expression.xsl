<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询前段编码-->
        <xsl:variable name="identifier">
            <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest/identifier != $identifier">
                <xsl:text>HOST ='</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.resource_connection[1]/record.crest/host"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>