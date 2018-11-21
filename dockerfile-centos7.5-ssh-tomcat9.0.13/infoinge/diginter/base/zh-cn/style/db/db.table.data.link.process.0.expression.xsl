<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/remove_r_field = ''">
            </xsl:when>
            <xsl:otherwise>
                <xsl:text>S_RESOURCE_NAME ='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
                <xsl:text>' and </xsl:text>
                <xsl:text>S_IDENTIFIER ='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
                <xsl:text>' and </xsl:text>
                <xsl:text>S_FIELD ='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_s_field"/>
                <xsl:text>' and </xsl:text>
                <xsl:text>R_FIELD ='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_r_field"/>
                <xsl:text>' and </xsl:text>
                <xsl:text>R_RESOURCE_NAME ='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_resource_name"/>
                <xsl:text>' and </xsl:text>
                <xsl:text>R_IDENTIFIER ='</xsl:text>
                <xsl:value-of select="parameter.cludove/remove_identifier"/>
                <xsl:text>' </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
