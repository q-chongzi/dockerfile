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
            <xsl:when test="parameter.cludove/isDsbSetting.cludove = 'true' and parameter.cludove/position = '0' and cludove.crest.spruce.catalog/record.crest/is_issue_dsb = 'true' and cludove.crest.spruce.catalog/record.crest/type = 'function' and parameter.cludove/identifier !='infoinge' and parameter.cludove/buddle_id !='lock' and parameter.cludove/buddle_id !='diginter'">
                <parameter>
                    <CODE>
                        <xsl:value-of select="parameter.cludove/data_record_code"/>
                    </CODE>
                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">true</xsl:text>
                    </IS_SYNCED_DSB>
                </parameter>
            </xsl:when>
            <xsl:otherwise>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
