<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:text>{</xsl:text>
        <xsl:text>code:"</xsl:text>
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_mapping[1]/record.crest) > 0">
                <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/code"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="cludove.crest.spruce.data_mapping[2]/record.crest/code"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>",mapping_position:"</xsl:text>
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_mapping[1]/record.crest) > 0">
                <xsl:value-of select="cludove.crest.spruce.data_mapping[1]/record.crest/position"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="cludove.crest.spruce.data_mapping[2]/record.crest/position"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>",from:"</xsl:text>
        <xsl:choose>
            <xsl:when test="/content/parameter.cludove/s_resource_name = ''">
                <xsl:value-of select="/content/parameter.cludove/s_identifier"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
            </xsl:otherwise>
        </xsl:choose>
        <xsl:text>.</xsl:text>
        <xsl:value-of select="/content/parameter.cludove/s_data_code"/>
        <xsl:text>",to:"</xsl:text>
        <xsl:text>[</xsl:text>
        <xsl:value-of select="/content/parameter.cludove/r_identifier"/>
        <xsl:text>].[</xsl:text>
        <xsl:value-of select="/content/parameter.cludove/r_resource_name"/>
        <xsl:text>]</xsl:text>
        <xsl:text>",fromPort:"</xsl:text>
        <xsl:value-of select="/content/parameter.cludove/s_field"/>
        <xsl:text>",toPort:"</xsl:text>
        <xsl:value-of select="/content/parameter.cludove/r_field"/>
        <xsl:text>",prefix_symbol:"",suffix_symbol:""</xsl:text>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
