<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:text>[[</xsl:text>
        <xsl:text>[</xsl:text>
        <!--循环取出交换设计的图表，并进行左右分类-->
        <xsl:for-each select="cludove.crest.spruce.data/record.crest[operation = 'search' or operation = 'migrate' or operation = 'synchronize']">
            <!--里面变量存储ID从metadata取出数据-->
            <xsl:variable name="metadata_select">
                <xsl:value-of select="connection_id"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="resource_name"/>
            </xsl:variable>
            <xsl:variable name="identifier">
                <xsl:value-of select="connection_id"/>
            </xsl:variable>
            <xsl:variable name="resource_name">
                <xsl:value-of select="translate(resource_name,$uppercase,$smallcase)"/>
            </xsl:variable>
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
                <xsl:text>key:"</xsl:text>
            <xsl:value-of select="$metadata_select"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>"</xsl:text>
            <xsl:text>,fields:[</xsl:text>
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
                <xsl:text>",position:"1</xsl:text>
                <xsl:text>"}</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>],[</xsl:text>
        <xsl:for-each select="cludove.crest.spruce.data/record.crest[operation = 'build' or operation = 'modify' or operation = 'remove']">
            <xsl:variable name="metadata_select">
                <xsl:value-of select="connection_id"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="resource_name"/>
            </xsl:variable>
            <xsl:variable name="identifier">
                <xsl:value-of select="connection_id"/>
            </xsl:variable>
            <xsl:variable name="resource_name">
                <xsl:value-of select="translate(resource_name,$uppercase,$smallcase)"/>
            </xsl:variable>
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
            <xsl:value-of select="$metadata_select"/>
            <xsl:text>",code:"</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text>"</xsl:text>
            <xsl:text>,fields:[</xsl:text>
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
                <xsl:text>",position:"2</xsl:text>
                <xsl:text>"}</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>]],[</xsl:text>
        <!--循环取出所有连接关系-->
        <xsl:for-each select="/content/cludove.crest.spruce.data_value/record.crest">
            <!--利用datacode来区分不同的data表-->
            <xsl:variable name="data_code">
                <xsl:value-of select="data_code"/>
            </xsl:variable>
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{from:"</xsl:text>
            <xsl:value-of select="select_expression"/>
            <xsl:text>",to:"</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.data/record.crest[code = $data_code]">
                    <xsl:value-of select="connection_id"/>
                    <xsl:text disable-output-escaping="yes">.</xsl:text>
                    <xsl:value-of select="translate(resource_name,$smallcase,$uppercase)"/>
            </xsl:for-each>
            <xsl:text>",toPort:[</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.value_tag/record.crest[data_code = $data_code]">
                    <xsl:if test="position() > 1">
                        <xsl:text>,</xsl:text>
                    </xsl:if>
                    <xsl:text>"</xsl:text>
                    <xsl:value-of select="tag_name"/>
                    <xsl:text>"</xsl:text>
            </xsl:for-each>
            <xsl:text>],fromPort:[</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.tag_item/record.crest[data_code = $data_code]">
                <xsl:if test="position() > 1">
                    <xsl:text>,</xsl:text>
                </xsl:if>
                <xsl:text>"</xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text>"</xsl:text>
            </xsl:for-each>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>]</xsl:text>
        <xsl:text>]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
