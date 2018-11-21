<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/hinge_type = 'DB'">
                <xsl:text>TYPE='DB'</xsl:text>
            </xsl:when>
            <xsl:when test="parameter.cludove/hinge_type = 'DSB'">
                <xsl:text>TYPE='Hinge' and IS_DSB='true'</xsl:text>
            </xsl:when>
            <xsl:when test="parameter.cludove/hinge_type = 'Colony'">
                <xsl:text>IDENTIFIER='</xsl:text>
                <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:when test="parameter.cludove/hinge_type = 'Integrate'">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.resource_connection/record.crest) > 0">
                        <xsl:text>IDENTIFIER !='</xsl:text>
                        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                        <xsl:for-each select="/content/cludove.crest.spruce.resource_connection/record.crest">
                            <xsl:text>' and IDENTIFIER !='</xsl:text>
                            <xsl:value-of select="identifier"/>
                        </xsl:for-each>
                        <xsl:text>' and TYPE='Hinge' and (IS_DSB !='true' or IS_DSB IS NULL)</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>IDENTIFIER !='</xsl:text>
                        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                        <xsl:text>' and TYPE='Hinge' and (IS_DSB !='true' or IS_DSB IS NULL)</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>