<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除保存目录数据时候，删除该目录数据的字段验证-->
        <xsl:if test="parameter.cludove/operation_build = 'build'">
            <xsl:text>IDENTIFIER='</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/connection_id"/>
            <xsl:text>' and RESOURCE_NAME='</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data[2]/record.crest/resource_name"/>
            <xsl:text>'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>