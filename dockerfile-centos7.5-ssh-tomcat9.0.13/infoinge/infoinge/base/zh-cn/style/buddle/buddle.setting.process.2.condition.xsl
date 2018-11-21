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
            <xsl:when test="count(cludove.crest.spruce.job_catalog/record.crest) = 0"/>
            <xsl:otherwise>
                <xsl:for-each select="cludove.crest.spruce.job_catalog/record.crest">
                    <parameter>
                        <CODE>
                            <xsl:value-of select="code"/>
                        </CODE>
                    </parameter>
                </xsl:for-each>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
