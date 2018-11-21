<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_dsb = 'true'"></xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0 ">
                        <parameter>
                            <CODE>
                                <xsl:value-of select="cludove.crest.spruce.prefix_code[1]/record.crest/code"/>
                            </CODE>
                        </parameter>
                    </xsl:when>
                    <xsl:otherwise>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
