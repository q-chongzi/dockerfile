<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0">
                <xsl:text>TYPE='Hinge' AND IDENTIFIER='</xsl:text>
                <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                <xsl:text>' AND IS_LOCKED != 'true' AND IS_ACTIVE = 'true'</xsl:text>
                <xsl:text> AND (REG_STATUS = '' OR REG_STATUS IS NULL)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>1 = -1</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
