<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:text>[</xsl:text>
        <xsl:text>[</xsl:text>
            <xsl:variable name="metadata_select">
                <xsl:value-of select="parameter.cludove/s_identifier"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
            </xsl:variable>
            <xsl:variable name="identifier">
                <xsl:value-of select="parameter.cludove/s_identifier"/>
            </xsl:variable>
            <xsl:variable name="resource_name">
                <xsl:value-of select="translate(parameter.cludove/s_resource_name,$smallcase,$uppercase)"/>
            </xsl:variable>
        <xsl:text>{</xsl:text>
        <xsl:text>r_resource_name:"</xsl:text>
        <xsl:value-of select="parameter.cludove/s_resource_name"/>
        <xsl:text>",r_identifier:"</xsl:text>
        <xsl:value-of select="parameter.cludove/s_identifier"/>
        <xsl:text>",key:"</xsl:text>
        <xsl:value-of select="$metadata_select"/>
        <xsl:text>",fields:[</xsl:text>
        <xsl:for-each select="/content/metadata[@id = $metadata_select]/record.crest">
            <xsl:variable name="field_name">
                <xsl:value-of select="name"/>
            </xsl:variable>
            <xsl:if test="position() > 1">
            <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>name:"</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text>",</xsl:text>
            <xsl:text>info:"</xsl:text>
            <xsl:choose>
                <xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]) > 0">
                    <xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]/field_label"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="remark"/>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text>"}</xsl:text>
        </xsl:for-each>
        <xsl:text>]</xsl:text>
        <xsl:text>}</xsl:text>
        <xsl:for-each select="/content/cludove.crest.spruce.v_resource_relevance/record.crest">
            <xsl:variable name="metadata_select">
                <xsl:value-of select="r_identifier"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="r_resource_name"/>
            </xsl:variable>
            <xsl:variable name="metadata_identifier">
                <xsl:value-of select="r_identifier"/>
            </xsl:variable>
            <xsl:variable name="metadata_resource_name">
                <xsl:value-of select="translate(r_resource_name,$smallcase,$uppercase)"/>
            </xsl:variable>
            <xsl:text>,</xsl:text>
            <xsl:text>{</xsl:text>
            <xsl:text>r_resource_name:"</xsl:text>
            <xsl:value-of select="r_resource_name"/>
            <xsl:text>",r_identifier:"</xsl:text>
            <xsl:value-of select="r_identifier"/>
            <xsl:text>",key:"</xsl:text>
            <xsl:value-of select="$metadata_select"/>
            <xsl:text>",fields:[</xsl:text>
            <xsl:for-each select="/content/metadata[@id = $metadata_select]/record.crest">
                <xsl:variable name="field_name">
                    <xsl:value-of select="name"/>
                </xsl:variable>
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>{</xsl:text>
                <xsl:text>name:"</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text>",</xsl:text>
                <xsl:text>info:"</xsl:text>
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $metadata_resource_name and identifier = $metadata_identifier]) > 0">
                        <xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $metadata_resource_name and identifier = $metadata_identifier]/field_label"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="remark"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text>"}</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>],[</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.resource_relevance/record.crest[r_field != '']">
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>{</xsl:text>
                    <xsl:text>from:"</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/s_identifier"/>
                    <xsl:text disable-output-escaping="yes">.</xsl:text>
                    <xsl:value-of select="/content/parameter.cludove/s_resource_name"/>
                    <xsl:text>",to:"</xsl:text>
                    <xsl:value-of select="r_identifier"/>
                    <xsl:text disable-output-escaping="yes">.</xsl:text>
                    <xsl:value-of select="r_resource_name"/>
                    <xsl:text>",fromPort:"</xsl:text>
                    <xsl:value-of select="s_field"/>
                    <xsl:text>",toPort:"</xsl:text>
                    <xsl:value-of select="r_field"/>
                    <xsl:text>"</xsl:text>
                <xsl:text>}</xsl:text>
            </xsl:for-each>
        <xsl:text>]]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
