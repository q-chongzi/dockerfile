<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--如果库表名或字段改变，则删除相关库表关联，然后会在下一步重新添加库表关联-->
        <xsl:choose>
            <xsl:when test="parameter.cludove/resource_relevance_code != ''">
                <xsl:text>CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/resource_relevance_code"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>