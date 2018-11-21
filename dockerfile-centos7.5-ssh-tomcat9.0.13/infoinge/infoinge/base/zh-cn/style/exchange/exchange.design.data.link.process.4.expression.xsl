<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--若提交删除参数，则执行删除操作-->
        <xsl:choose>
            <xsl:when test="parameter.cludove/remove_select_expression != ''">
                <xsl:for-each select="cludove.crest.spruce.value_tag/record.crest">
                    <xsl:if test="tag_name = /content/parameter.cludove/remove_tag_name">
                        <xsl:text>TAG_CODE='</xsl:text>
                        <xsl:value-of select="code"/>
                        <xsl:text>' and SELECT_EXPRESSION='</xsl:text>
                        <xsl:value-of select="/content/parameter.cludove/remove_select_expression"/>
                        <xsl:text>'</xsl:text>
                    </xsl:if>
                </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
