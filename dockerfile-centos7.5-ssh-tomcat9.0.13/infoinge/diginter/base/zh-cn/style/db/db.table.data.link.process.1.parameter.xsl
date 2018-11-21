<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--提供查询数据元数据的参数-->
        <parameter>
            <TYPE>
                <xsl:text>DB,DB</xsl:text>
            </TYPE>
            <CONNECTION_ID>
                <xsl:value-of select="parameter.cludove/s_identifier"/>
                <xsl:text>,</xsl:text>
                <xsl:value-of select="parameter.cludove/r_identifier"/>
            </CONNECTION_ID>
            <RESOURCE_NAME>
                <xsl:value-of select="parameter.cludove/s_resource_name"/>
                <xsl:text>,</xsl:text>
                <xsl:value-of select="parameter.cludove/r_resource_name"/>
            </RESOURCE_NAME>
            <RESOURCE_BUDDLE>
                <xsl:text></xsl:text>
            </RESOURCE_BUDDLE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
