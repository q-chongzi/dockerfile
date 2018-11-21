<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:if test="dsb_status = 'success'">
            <xsl:choose>
                <xsl:when test="cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_dsb = 'true' and cludove.crest.spruce.resource_connection[1]/record.crest[1]/is_locked != 'true'">
                    <parameter>
                        <IS_SYNCED_DSB>
                            <xsl:text disable-output-escaping="yes">true</xsl:text>
                        </IS_SYNCED_DSB>
                    </parameter>
                </xsl:when>
                <xsl:otherwise>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
