<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询前段编码-->
        <xsl:text>HOST ='</xsl:text>
        <xsl:value-of select="parameter.cludove/host"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
