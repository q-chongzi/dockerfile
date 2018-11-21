<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--在权限资源查找数据名字，如果名字存在，则下一步就不用添加权限资源了-->
        <xsl:if test="cludove.crest.spruce.data/record.crest/position = '0' and count(parameter.cludove/code) = 0">
            <xsl:text>BUDDLE_ID='</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
            <xsl:text>' and NAME='</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
            <xsl:text>'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>