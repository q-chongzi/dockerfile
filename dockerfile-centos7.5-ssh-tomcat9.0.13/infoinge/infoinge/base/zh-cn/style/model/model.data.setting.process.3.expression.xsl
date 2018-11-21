<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--如果库表名改变，则删除说有库表关联-->
        <xsl:variable name="resource_name">
            <xsl:value-of select="parameter.cludove/resource_name"/>
        </xsl:variable>
        <xsl:if test="parameter.cludove/remove_resource_name != $resource_name">
            <xsl:choose>
                <xsl:when test="parameter.cludove/location = '1'">
                    <xsl:text>S_DATA_CODE='</xsl:text>
                    <xsl:value-of select="parameter.cludove/code"/>
                    <xsl:text>'</xsl:text>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>R_DATA_CODE='</xsl:text>
                    <xsl:value-of select="parameter.cludove/code"/>
                    <xsl:text>'</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>