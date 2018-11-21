<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="content">
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(cludove.crest.spruce.data_metadata[1]/record.crest) = 0 or cludove.crest.spruce.data_metadata[1]/record.crest/code =$code">
            <xsl:if test="cludove.crest.spruce.catalog/record.crest/has_set_metadata != 'true' and parameter.cludove/data_direct ='input'">
                <xsl:text>BUDDLE_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' AND CATALOG_ID='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>' AND (RESOURCE_NAME != null or RESOURCE_NAME != '')</xsl:text>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
