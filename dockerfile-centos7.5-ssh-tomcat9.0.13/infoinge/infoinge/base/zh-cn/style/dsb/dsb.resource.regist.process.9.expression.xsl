<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--既有前端编码,资源连接又为空,即可删除-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0 and parameter.cludove/isDsbSetting.cludove = 'true'">
                <xsl:text>contains(IDENTIFIER, '</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.prefix_code[1]/record.crest/precode"/>
                <xsl:text>')</xsl:text>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
