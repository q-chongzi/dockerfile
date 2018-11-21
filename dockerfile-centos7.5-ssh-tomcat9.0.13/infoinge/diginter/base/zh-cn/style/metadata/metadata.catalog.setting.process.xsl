<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.data_metadata[1]/record.crest) = 0 or cludove.crest.spruce.data_metadata[1]/record.crest/code = $code">
                <xsl:text>success</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>该字段名字已存在，请重新输入字段名</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
