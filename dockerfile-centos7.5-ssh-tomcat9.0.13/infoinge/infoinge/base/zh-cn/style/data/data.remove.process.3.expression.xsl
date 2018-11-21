<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/isDsbSetting.cludove != 'true' or parameter.cludove/position != '0'   or cludove.crest.spruce.catalog/record.crest/is_issue_dsb != 'true' or cludove.crest.spruce.catalog/record.crest/type != 'function' or parameter.cludove/identifier ='infoinge' or parameter.cludove/buddle_id ='lock'  or parameter.cludove/buddle_id ='diginter'">
                <xsl:text>CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/data_exchange_code"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>count(CODE) = 0</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>