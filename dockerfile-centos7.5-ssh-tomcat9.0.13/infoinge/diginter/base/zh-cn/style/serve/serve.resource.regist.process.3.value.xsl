<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_connection[2]/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <xsl:choose>
                        <xsl:when test="serve.regist/result ='success'">
                            <REG_STATUS>
                                <xsl:text>regist</xsl:text>
                            </REG_STATUS>
                            <REG_REASON/>
                            <CONNECTION_CODE>
                                <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/connection_code"/>
                            </CONNECTION_CODE>
                        </xsl:when>
                        <xsl:otherwise>
                            <REG_REASON>
                                <xsl:value-of select="/content/serve.regist/reason"/>
                            </REG_REASON>
                        </xsl:otherwise>
                    </xsl:choose>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
