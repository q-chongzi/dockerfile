<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询功能目录数据，用以判断改功能是否为迁移或同步-->
        <xsl:text>(BUDDLE_ID ='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
        <xsl:text>' and IDENTIFIER ='</xsl:text>
            <xsl:value-of select="parameter.cludove/catalog_id"/>
        <xsl:text>') and ( TYPE ='synchronization' or  TYPE ='migration')</xsl:text>
    </xsl:template>
</xsl:stylesheet>
