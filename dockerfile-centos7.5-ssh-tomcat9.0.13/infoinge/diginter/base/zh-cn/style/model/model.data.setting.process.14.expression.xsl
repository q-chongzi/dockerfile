<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--如果操JDBC同步或迁移改变，则删除说有不为同步或迁移的功能参数-->
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(parameter.cludove/data_is_mapping) > 0 and count(parameter.cludove/data_main_code) > 0 and parameter.cludove/data_is_mapping = 'true'">
            <xsl:choose>
                <xsl:when test="parameter.cludove/data_main_code = $code">
                    <xsl:text>BUDDLE_ID='</xsl:text>
                    <xsl:value-of select="parameter.cludove/buddle_id"/>
                    <xsl:text>' and CATALOG_ID='</xsl:text>
                    <xsl:value-of select="parameter.cludove/catalog_id"/>
                    <xsl:text>' and DATA_POSITION!='0'</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>