<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <!--删除资源连接-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.prefix_code/record.crest) = 0"/>
            <xsl:otherwise>
                <xsl:text>IDENTIFIER='</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                <xsl:text disable-output-escaping="yes">.</xsl:text>
                <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/identifier"/>
                <xsl:text>'</xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
