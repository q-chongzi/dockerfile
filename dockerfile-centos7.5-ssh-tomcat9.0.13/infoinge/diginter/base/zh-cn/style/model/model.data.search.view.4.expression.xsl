<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:for-each select="cludove.crest.spruce.data/record.crest">
            <xsl:if test="position() > 1">
                <xsl:text> or </xsl:text>
            </xsl:if>
            <xsl:text>(IDENTIFIER='</xsl:text>
            <xsl:value-of select="connection_id"/>
            <xsl:text>' and RESOURCE_NAME='</xsl:text>
            <xsl:value-of select="resource_name"/>
            <xsl:text>')</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>