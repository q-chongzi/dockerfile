<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:text>OWNER_CODE='</xsl:text>
        <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/identifier"/>
        <xsl:text>'</xsl:text>
    </xsl:template>
</xsl:stylesheet>