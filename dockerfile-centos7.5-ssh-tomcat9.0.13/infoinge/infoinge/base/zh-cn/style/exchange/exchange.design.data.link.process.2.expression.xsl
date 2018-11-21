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
                <xsl:text>BUDDLE_ID='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' and CATALOG_ID='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>' and DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_data_code"/>
                <xsl:text>' and SELECT_EXPRESSION='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_select_expression"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
