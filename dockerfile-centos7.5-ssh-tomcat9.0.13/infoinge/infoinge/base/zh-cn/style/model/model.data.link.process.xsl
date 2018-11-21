<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="r_data_code">
            <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
        </xsl:variable>
        <xsl:choose>
            <!--判断是否为重连数据,因为数据数据位置不同-->
            <xsl:when test="parameter.cludove/remove_r_data_code != $r_data_code">
                <xsl:text>{</xsl:text>
                <xsl:text>code:"</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data_mapping[3]/record.crest/code"/>
                <xsl:text>",from:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
                <xsl:text>",to:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_resource_name"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
                <xsl:text>",fromPort:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_field"/>
                <xsl:text>",toPort:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_field"/>
                <xsl:text>"</xsl:text>
                <xsl:text>}</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>{</xsl:text>
                <xsl:text>code:"</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.data_mapping[6]/record.crest/code"/>
                <xsl:text>",from:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
                <xsl:text>",to:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_resource_name"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_data_code"/>
                <xsl:text>",fromPort:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/s_field"/>
                <xsl:text>",toPort:"</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/r_field"/>
                <xsl:text>"</xsl:text>
                <xsl:text>}</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
