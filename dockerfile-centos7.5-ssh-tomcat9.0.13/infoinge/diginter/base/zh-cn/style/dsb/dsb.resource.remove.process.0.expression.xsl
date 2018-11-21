<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询前端编码-->
        <xsl:choose>
            <xsl:when test="count(parameter.cludove/hinge_host) > 0">
                <xsl:text>HOST ='</xsl:text>
                <xsl:value-of select="parameter.cludove/hinge_host"/>
                <xsl:text>' AND IS_ACTIVE = 'true'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1=-1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
