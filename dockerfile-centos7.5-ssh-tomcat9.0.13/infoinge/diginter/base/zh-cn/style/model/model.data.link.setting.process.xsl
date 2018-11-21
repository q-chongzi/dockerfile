<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:text>{</xsl:text>
        <xsl:text>code:"</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/code"/>
        <xsl:text>",prefix_symbol:"</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/prefix_symbol"/>
        <xsl:text>",suffix_symbol:"</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.data_mapping/record.crest/suffix_symbol"/>
        <xsl:text>"</xsl:text>
        <xsl:text>}</xsl:text>
    </xsl:template>
</xsl:stylesheet>
