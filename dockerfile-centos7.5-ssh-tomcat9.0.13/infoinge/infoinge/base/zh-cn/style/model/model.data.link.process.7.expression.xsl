<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询重连时value_code的值-->
        <xsl:text>BUDDLE_ID='</xsl:text>
        <xsl:value-of select="parameter.cludove/buddle_id"/>
        <xsl:text>' and CATALOG_ID='</xsl:text>
        <xsl:value-of select="parameter.cludove/catalog_id"/>
        <xsl:text>' and DATA_CODE='</xsl:text>
        <xsl:value-of select="parameter.cludove/remove_r_data_code"/>
        <xsl:text>' </xsl:text>
    </xsl:template>
</xsl:stylesheet>
