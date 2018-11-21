<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--如果操JDBC同步或迁移改变，则删除说相关字段验证-->
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(parameter.cludove/data_is_mapping) > 0 and count(parameter.cludove/data_main_code) > 0 and parameter.cludove/data_is_mapping = 'true' and count(parameter.cludove/data_is_operation) > 0 and parameter.cludove/data_is_operation = 'false'">
            <!--<xsl:choose>-->
                <!--<xsl:when test="parameter.cludove/data_main_code = $code">-->
                    <!--<xsl:text>IDENTIFIER='</xsl:text>-->
                    <!--<xsl:value-of select="parameter.cludove/build_connection_id"/>-->
                    <!--<xsl:text>' and RESOURCE_NAME='</xsl:text>-->
                    <!--<xsl:value-of select="parameter.cludove/build_resource_name"/>-->
                    <!--<xsl:text>'</xsl:text>-->
                <!--</xsl:when>-->
                <!--<xsl:otherwise>-->
                <!--</xsl:otherwise>-->
            <!--</xsl:choose>-->
        </xsl:if>
        <xsl:if test="count(parameter.cludove/data_is_mapping) > 0 and count(parameter.cludove/data_main_code) > 0 and parameter.cludove/data_is_mapping = 'true' and count(parameter.cludove/data_is_operation) > 0 and parameter.cludove/data_is_operation = 'true'">
            <!--<xsl:choose>-->
                <!--<xsl:when test="parameter.cludove/data_main_code = $code">-->
                    <!--<xsl:text>IDENTIFIER='</xsl:text>-->
                    <!--<xsl:value-of select="parameter.cludove/build_connection_id"/>-->
                    <!--<xsl:text>' and RESOURCE_NAME='</xsl:text>-->
                    <!--<xsl:value-of select="parameter.cludove/build_resource_name"/>-->
                    <!--<xsl:text>'</xsl:text>-->
                <!--</xsl:when>-->
                <!--<xsl:otherwise>-->
                <!--</xsl:otherwise>-->
            <!--</xsl:choose>-->
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>