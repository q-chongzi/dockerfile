<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询不为主数据时库表关联信息-->
            <xsl:text>S_RESOURCE_NAME='</xsl:text>
            <xsl:value-of select="parameter.cludove/s_resource_name"/>
            <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
