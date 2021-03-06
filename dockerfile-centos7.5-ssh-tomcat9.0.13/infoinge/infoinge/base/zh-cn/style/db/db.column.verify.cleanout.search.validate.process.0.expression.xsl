<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>FIELD_VERIFY_CODE ='</xsl:text>
        <xsl:value-of select="parameter.cludove/field_verify_code"/>
        <xsl:text>' and CR_IS_ACTIVE = 'true'</xsl:text>
        <!--<xsl:text> AND IS_ACTIVE = 'true'</xsl:text>-->
    </xsl:template>
</xsl:stylesheet>
