<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除目录数据时候，删除该目录数据所有功能参数-->
        <xsl:text>DATA_CODE='</xsl:text>
        <xsl:value-of select="parameter.cludove/code"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>