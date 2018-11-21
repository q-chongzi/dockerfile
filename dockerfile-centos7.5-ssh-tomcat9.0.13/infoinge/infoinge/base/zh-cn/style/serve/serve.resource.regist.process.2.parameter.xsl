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
            <xsl:when test="count(cludove.crest.spruce.resource_connection[2]/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/name"/>
                        <xsl:text>:encode</xsl:text>
                    </NAME>

                    <IDENTIFIER>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/identifier"/>
                    </IDENTIFIER>

                    <HOST>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/host"/>
                    </HOST>

                    <PORT>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/port"/>
                    </PORT>

                    <TEMPLATE>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[2]/record.crest[1]/template"/>
                    </TEMPLATE>

                    <CLUSTER_ADDR>
                        <xsl:for-each select="/content/cludove.crest.spruce.resource_connection[2]/record.crest">
                            <xsl:if test="position() &lt; 6">
                                <xsl:if test="position() &gt; 1">
                                    <xsl:text> or </xsl:text>
                                </xsl:if>
                                <xsl:text> HOST='</xsl:text>
                                <xsl:value-of select="host"/>
                                <xsl:text>'</xsl:text>
                            </xsl:if>
                        </xsl:for-each>
                        <xsl:text>:encode</xsl:text>
                    </CLUSTER_ADDR>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
