<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--想总线提交数据-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.buddle/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <CODE>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/code"/>
                    </CODE>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
