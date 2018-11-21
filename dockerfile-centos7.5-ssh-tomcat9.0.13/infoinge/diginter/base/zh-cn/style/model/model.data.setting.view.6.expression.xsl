<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
                <xsl:text>BUDDLE_ID ='</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                <xsl:text>' and CATALOG_ID ='</xsl:text>
                <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
                        <xsl:text>BUDDLE_ID ='</xsl:text>
                        <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
                        <xsl:text>' and CATALOG_ID ='</xsl:text>
                        <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
                        <xsl:text>'</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>count(CODE) = 0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
