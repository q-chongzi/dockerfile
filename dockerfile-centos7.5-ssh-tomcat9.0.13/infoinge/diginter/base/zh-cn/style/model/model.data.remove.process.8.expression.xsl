<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除目保存录数据时候，删除该功能目录的异常数据-->
        <xsl:if test="parameter.cludove/operation_build = 'build'">
            <xsl:text>CATALOG_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/catalog_id"/>
            <xsl:text>' and BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>