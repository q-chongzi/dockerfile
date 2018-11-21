<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="text" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <xsl:text>[</xsl:text>
        <xsl:for-each select="/content/cludove.crest.spruce.catalog_comment/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text>,</xsl:text>
            </xsl:if>
            <xsl:text>{content:"</xsl:text>
                <xsl:value-of select="content"/>
            <xsl:text>",comment_time:"</xsl:text>
                <xsl:value-of select="substring(comment_time,1,19)"/>
            <xsl:text>"}</xsl:text>
        </xsl:for-each>
        <xsl:text>]</xsl:text>
    </xsl:template>
</xsl:stylesheet>