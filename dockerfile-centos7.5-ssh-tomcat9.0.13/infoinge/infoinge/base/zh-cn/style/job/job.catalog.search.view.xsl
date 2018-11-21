<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="text"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
        <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
        <xsl:text>[[</xsl:text>
        <xsl:for-each select="cludove.crest.spruce.job_catalog/record.crest">
            <xsl:if test="position() > 1">
            <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
                <xsl:value-of select="code"/>
            <xsl:text>",category:"UndesiredEvent",reasonsList:[{text:"</xsl:text>
                <xsl:value-of select="buddle_name"/>
            <xsl:text>"},{text:"</xsl:text>
                <xsl:value-of select="catalog_name"/>
            <xsl:text>"}</xsl:text>
            <xsl:text>]</xsl:text>
            <xsl:text>}</xsl:text>
        </xsl:for-each>
        <xsl:text>],[</xsl:text>
        <xsl:for-each select="cludove.crest.spruce.job_catalog/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{</xsl:text>
            <xsl:text>key:"</xsl:text>
                <xsl:value-of select="code"/>
            <xsl:text>",position:"</xsl:text>
                <xsl:value-of select="position"/>
            <xsl:text>"}</xsl:text>
        </xsl:for-each>
        <xsl:text>]]</xsl:text>
    </xsl:template>
</xsl:stylesheet>
