<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--查询IS_SYNCED_DSB 参数true 时说明本机已删除-->
        <xsl:text>IS_SYNCED_DSB='true' AND IS_ACTIVE= 'true'</xsl:text>
    </xsl:template>
</xsl:stylesheet>
