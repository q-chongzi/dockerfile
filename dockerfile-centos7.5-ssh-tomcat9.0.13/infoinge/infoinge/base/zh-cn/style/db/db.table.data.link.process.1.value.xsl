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
            <S_RESOURCE_NAME>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
            </S_RESOURCE_NAME>
            <S_IDENTIFIER>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
            </S_IDENTIFIER>
            <S_RESOURCE_NAME_DIAPALY>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
            </S_RESOURCE_NAME_DIAPALY>
            <S_FIELD>
                <xsl:value-of select="parameter.cludove/s_field"/>
            </S_FIELD>
            <R_FIELD>
                <xsl:value-of select="parameter.cludove/r_field"/>
            </R_FIELD>
            <R_IDENTIFIER>
                <xsl:value-of select="parameter.cludove/r_identifier"/>
            </R_IDENTIFIER>
            <R_RESOURCE_NAME>
                <xsl:value-of select="parameter.cludove/r_resource_name"/>
            </R_RESOURCE_NAME>
            <R_RESOURCE_NAME_DIAPALY>
                <xsl:value-of select="parameter.cludove/r_identifier"/>
                <xsl:text>.</xsl:text>
                <xsl:value-of select="parameter.cludove/r_resource_name"/>
            </R_RESOURCE_NAME_DIAPALY>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
