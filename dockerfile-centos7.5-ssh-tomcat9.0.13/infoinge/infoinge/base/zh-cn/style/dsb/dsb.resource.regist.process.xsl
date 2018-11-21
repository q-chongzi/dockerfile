<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_connection[2]/record.crest) > 0">
                <xsl:text>success</xsl:text>
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>注册功能异常，请和管理员联系</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
