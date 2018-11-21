<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_dsb = 'true'">
                <parameter>
                    <IS_ISSUE_DSB>
                        <xsl:text disable-output-escaping="yes">false</xsl:text>
                    </IS_ISSUE_DSB>
                </parameter>
            </xsl:when>
            <xsl:otherwise>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
