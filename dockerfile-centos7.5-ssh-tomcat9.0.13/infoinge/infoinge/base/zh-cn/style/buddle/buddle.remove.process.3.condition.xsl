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
            <xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true' or parameter.cludove/identifier ='infoinge' or parameter.cludove/identifier ='lock' or parameter.cludove/identifier ='diginter'"/>
            <xsl:otherwise>
                <parameter>
                    <CODE>
                        <xsl:value-of select="parameter.cludove/buddle_record_code"/>
                    </CODE>
                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">true</xsl:text>
                    </IS_SYNCED_DSB>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
