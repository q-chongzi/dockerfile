<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <xsl:apply-templates select="content"/>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="parameter.cludove/data_type = 'DB'">
                <xsl:text> BUDDLE_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' AND CATALOG_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>' AND CONNECTION_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/connection_id"/>
                <xsl:text>'</xsl:text>
                <xsl:text> AND RESOURCE_NAME ='</xsl:text>
                <xsl:value-of select="parameter.cludove/resource_name"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:when test="parameter.cludove/data_type = 'WS' or parameter.cludove/data_type = 'Class'">
                <xsl:text> BUDDLE_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' AND CATALOG_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>' AND CONNECTION_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/connection_id"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:when test="parameter.cludove/data_type = 'Hinge'">
                <xsl:text> BUDDLE_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
                <xsl:text>' AND CATALOG_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
                <xsl:text>' AND CONNECTION_ID ='</xsl:text>
                <xsl:value-of select="parameter.cludove/connection_id"/>
                <xsl:text>'</xsl:text>
                <xsl:text> AND RESOURCE_NAME ='</xsl:text>
                <xsl:value-of select="parameter.cludove/resource_name"/>
                <xsl:text>'</xsl:text>
                <xsl:text> AND RESOURCE_BUDDLE ='</xsl:text>
                <xsl:value-of select="parameter.cludove/resource_buddle"/>
                <xsl:text>'</xsl:text>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
