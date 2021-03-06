<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>RESOURCE_NAME='</xsl:text>
        <xsl:value-of select="parameter.cludove/resource_name"/>
        <xsl:text>' and FIELD_NAME='</xsl:text>
        <xsl:value-of select="parameter.cludove/field_name"/>
        <xsl:text>' and VERIFY_CODE='</xsl:text>
        <xsl:value-of select="parameter.cludove/verify_code"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>