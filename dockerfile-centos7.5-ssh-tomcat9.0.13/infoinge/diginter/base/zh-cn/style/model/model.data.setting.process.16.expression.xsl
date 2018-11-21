<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="content">
        <xsl:if test="cludove.crest.spruce.catalog/record.crest/is_exchange = 'true'">
            <xsl:text>DATA_ID ='[</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/buddle_id"/>
            <xsl:text>].[</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data[1]/record.crest/catalog_id"/>
            <xsl:text>]'</xsl:text>
            <xsl:text> AND DATA_DIRECT ='output'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
