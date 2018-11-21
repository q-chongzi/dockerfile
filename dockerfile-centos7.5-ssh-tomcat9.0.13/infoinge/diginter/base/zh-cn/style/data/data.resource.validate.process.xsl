<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/data_code != ''">
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.data/record.crest) >0">
                        <xsl:variable name="data_code">
                            <xsl:value-of select="parameter.cludove/data_code"/>
                        </xsl:variable>
                        <xsl:choose>
                            <xsl:when test="cludove.crest.spruce.data/record.crest/code = $data_code">
                                <xsl:text>yes</xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:text>no</xsl:text>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>yes</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:when>
            <xsl:otherwise>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.data/record.crest) >0">
                        <xsl:text>no</xsl:text>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text>yes</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
