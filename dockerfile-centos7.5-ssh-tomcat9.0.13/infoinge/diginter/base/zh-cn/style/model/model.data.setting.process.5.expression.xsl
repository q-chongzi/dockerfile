<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="content">
        <xsl:if test="cludove.crest.spruce.catalog/record.crest/has_set_metadata = 'true' and parameter.cludove/type = 'Hinge'">
            <xsl:text>DATA_ID ='[</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
            <xsl:text>].[</xsl:text>
            <xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/>
            <xsl:text>]'</xsl:text>
            <xsl:text> AND DATA_DIRECT ='output'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
