<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="content">
        <xsl:text>DATA_ID ='[</xsl:text>
        <xsl:value-of select="parameter.cludove/buddle_id"/>
        <xsl:text>].[</xsl:text>
        <xsl:value-of select="parameter.cludove/catalog_id"/>
        <xsl:text>]' AND NAME ='</xsl:text>
        <xsl:value-of select="parameter.cludove/name"/>
        <xsl:text>' AND DATA_DIRECT ='</xsl:text>
        <xsl:value-of select="parameter.cludove/data_direct"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
