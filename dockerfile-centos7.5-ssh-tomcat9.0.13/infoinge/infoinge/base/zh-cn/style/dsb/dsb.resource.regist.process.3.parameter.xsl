<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <parameter>
            <xsl:if test="count(cludove.crest.spruce.resource_decomposing/record.crest) > 0">
                <CODE>
                    <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/code"/>
                </CODE>
            </xsl:if>
            <IS_ACTIVE>
                <xsl:text disable-output-escaping="yes">true</xsl:text>
            </IS_ACTIVE>
            <IDENTIFIER>
                <xsl:choose>
                    <xsl:when test="count(cludove.crest.spruce.prefix_code[1]/record.crest) > 0">
                        <xsl:value-of select="cludove.crest.spruce.prefix_code[1]/record.crest/precode"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code[2]/record.crest/precode"/>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes">.</xsl:text>
                <xsl:value-of select="parameter.cludove/identifier"/>
            </IDENTIFIER>
            <NAME>
                <xsl:value-of select="parameter.cludove/name"/>
            </NAME>
            <TYPE>
                <xsl:text disable-output-escaping="yes">Hinge</xsl:text>
            </TYPE>
            <xsl:if test="parameter.cludove/host != ''">
                <HOST>
                    <xsl:value-of select="parameter.cludove/host"/>
                </HOST>
            </xsl:if>
            <xsl:if test="parameter.cludove/port != ''">
                <PORT>
                    <xsl:value-of select="parameter.cludove/port"/>
                </PORT>
            </xsl:if>
            <xsl:if test="parameter.cludove/template != ''">
                <TEMPLATE>
                    <xsl:value-of select="parameter.cludove/template"/>
                </TEMPLATE>
            </xsl:if>
            <IS_LOCKED>
                <xsl:text disable-output-escaping="yes">false</xsl:text>
            </IS_LOCKED>
            <xsl:if test="count(cludove.crest.spruce.resource_decomposing/record.crest) > 0">
                <CONNECTION_CODE>
                    <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/connection_code"/>
                </CONNECTION_CODE>
            </xsl:if>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
