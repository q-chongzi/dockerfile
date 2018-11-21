<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="remove_r_data_code">
            <xsl:value-of select="parameter.cludove/remove_r_data_code"/>
        </xsl:variable>
        <xsl:if test="parameter.cludove/r_data_code = $remove_r_data_code">
            <xsl:text> S_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_data_code"/>
            <xsl:text>' and S_IDENTIFIER='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
            <xsl:text>' and S_RESOURCE_NAME='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
            <xsl:text>' and S_FIELD='</xsl:text>
                <xsl:value-of select="parameter.cludove/s_field"/>
            <xsl:text>' and R_DATA_CODE='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_data_code"/>
            <xsl:text>' and R_IDENTIFIER='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_identifier"/>
            <xsl:text>' and R_RESOURCE_NAME='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_resource_name"/>
            <xsl:text>' and R_FIELD='</xsl:text>
                <xsl:value-of select="parameter.cludove/r_field"/>
            <xsl:text>'</xsl:text>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
