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
            <xsl:if test="parameter.cludove/decomposing_code != ''">
                <CODE>
                    <xsl:value-of select="parameter.cludove/decomposing_code"/>
                </CODE>
            </xsl:if>
            <IS_ACTIVE>
                <xsl:text disable-output-escaping="yes">true</xsl:text>
            </IS_ACTIVE>
            <IDENTIFIER>
                <xsl:value-of select="parameter.cludove/identifier"/>
            </IDENTIFIER>
            <NAME>
                <xsl:value-of select="parameter.cludove/name"/>
            </NAME>
            <TYPE>
                <xsl:value-of select="parameter.cludove/type"/>
            </TYPE>
            <xsl:if test="parameter.cludove/driver != ''">
                <DRIVER>
                    <xsl:value-of select="parameter.cludove/driver"/>
                </DRIVER>
            </xsl:if>
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
            <xsl:if test="parameter.cludove/instance != ''">
                <INSTANCE>
                    <xsl:value-of select="parameter.cludove/instance"/>
                </INSTANCE>
            </xsl:if>
            <xsl:if test="parameter.cludove/pattern != ''">
                <PATTERN>
                    <xsl:value-of select="parameter.cludove/pattern"/>
                </PATTERN>
            </xsl:if>
            <xsl:if test="parameter.cludove/account != ''">
                <ACCOUNT>
                    <xsl:value-of select="parameter.cludove/account"/>
                </ACCOUNT>
            </xsl:if>
            <xsl:if test="parameter.cludove/password != ''">
                <PASSWORD>
                    <xsl:value-of select="parameter.cludove/password"/>
                </PASSWORD>
            </xsl:if>
            <xsl:if test="parameter.cludove/template != ''">
                <TEMPLATE>
                    <xsl:value-of select="parameter.cludove/template"/>
                </TEMPLATE>
            </xsl:if>
            <xsl:if test="parameter.cludove/is_dsb != ''">
                <IS_DSB>
                    <xsl:value-of select="parameter.cludove/is_dsb"/>
                </IS_DSB>
            </xsl:if>
            <xsl:if test="parameter.cludove/max_number != ''">
                <MAX_NUMBER>
                    <xsl:value-of select="parameter.cludove/max_number"/>
                </MAX_NUMBER>
            </xsl:if>
            <xsl:if test="parameter.cludove/is_locked != ''">
                <IS_LOCKED>
                    <xsl:value-of select="parameter.cludove/is_locked"/>
                </IS_LOCKED>
            </xsl:if>
            <xsl:if test="parameter.cludove/buffer_pool_size != ''">
                <BUFFER_POOL_SIZE>
                    <xsl:value-of select="parameter.cludove/buffer_pool_size"/>
                </BUFFER_POOL_SIZE>
            </xsl:if>
            <xsl:if test="parameter.cludove/timeout != ''">
                <TIMEOUT>
                    <xsl:value-of select="parameter.cludove/timeout"/>
                </TIMEOUT>
            </xsl:if>
            <CONNECTION_CODE>
                <xsl:value-of select="parameter.cludove/connection_code"/>
            </CONNECTION_CODE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
