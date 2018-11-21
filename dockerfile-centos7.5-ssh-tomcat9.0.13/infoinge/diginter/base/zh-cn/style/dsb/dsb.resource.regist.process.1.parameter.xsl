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
            <xsl:when test="count(cludove.crest.spruce.prefix_code/record.crest) > 0"/>
            <xsl:otherwise>
                <parameter>
                    <IDENTIFIER>
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </IDENTIFIER>
                    <HOST>
                        <xsl:value-of select="parameter.cludove/host"/>
                    </HOST>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
