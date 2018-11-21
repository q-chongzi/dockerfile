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
            <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0 and parameter.cludove/isDsbSetting.cludove = 'true'">
                <parameter>
                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">false</xsl:text>
                    </IS_SYNCED_DSB>
                    <IS_SYNCED_ACTIVE>
                        <xsl:text disable-output-escaping="yes">true</xsl:text>
                    </IS_SYNCED_ACTIVE>
                    <SYNC_ACTIVE_STATUS>
                        <xsl:text disable-output-escaping="yes">wait_delete</xsl:text>
                    </SYNC_ACTIVE_STATUS>
                </parameter>
            </xsl:when>
            <xsl:otherwise>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
