<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>FIELD_VERIFY_CODE ='</xsl:text>
        <xsl:value-of select="parameter.cludove/field_verify_code"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
