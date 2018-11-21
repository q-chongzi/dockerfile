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
            <xsl:if test="parameter.cludove/code != ''">
                <CODE>
                    <xsl:value-of select="parameter.cludove/code"/>
                </CODE>
            </xsl:if>
            <BUDDLE_ID>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <CATALOG_ID>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
            </CATALOG_ID>
            <PARAMETER_NAME>
                <xsl:value-of select="parameter.cludove/parameter_name"/>
            </PARAMETER_NAME>
            <PARAMETER_LENGTH>
                <xsl:value-of select="parameter.cludove/parameter_length"/>
            </PARAMETER_LENGTH>
            <IS_MUST>
                <xsl:value-of select="parameter.cludove/is_must"/>
            </IS_MUST>
            <IS_PARAMETER>
                <xsl:value-of select="parameter.cludove/is_parameter"/>
            </IS_PARAMETER>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
