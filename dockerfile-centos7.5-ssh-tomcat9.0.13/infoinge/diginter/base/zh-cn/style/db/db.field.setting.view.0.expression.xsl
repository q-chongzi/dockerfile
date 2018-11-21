<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:text>RESOURCE_NAME ='</xsl:text>
        <xsl:value-of select="parameter.cludove/resource_name"/>
        <xsl:text>' and </xsl:text>
        <xsl:text>IDENTIFIER ='</xsl:text>
        <xsl:value-of select="parameter.cludove/identifier"/>
        <xsl:text>' and </xsl:text>
        <xsl:text>FIELD_NAME ='</xsl:text>
        <xsl:value-of select="translate(parameter.cludove/field_name,$smallcase,$uppercase)"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
