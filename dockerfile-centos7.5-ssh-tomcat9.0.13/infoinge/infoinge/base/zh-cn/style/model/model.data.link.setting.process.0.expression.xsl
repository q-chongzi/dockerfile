<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--根据code查询到这条数据用以设置 所有is_mian 的值-->
        <xsl:text>CODE='</xsl:text>
        <xsl:value-of select="parameter.cludove/code"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
