<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:variable name="code">
            <xsl:value-of select="parameter.cludove/code"/>
        </xsl:variable>
        <xsl:if test="count(cludove.crest.spruce.data_metadata[1]/record.crest) = 0 or cludove.crest.spruce.data_metadata[1]/record.crest/code =$code">
            <xsl:if test="parameter.cludove/data_direct='input'">
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
                    <RESOURCE_NAME>
                        <xsl:value-of select="parameter.cludove/data_id"/>
                    </RESOURCE_NAME>
                    <DATA_CODE>
                        <xsl:value-of select="cludove.crest.spruce.data_metadata[2]/record.crest/code"/>
                    </DATA_CODE>
                    <PARAMETER_NAME>
                        <xsl:value-of select="parameter.cludove/name"/>
                    </PARAMETER_NAME>
                    <PARAMETER_LENGTH>
                        <xsl:value-of select="parameter.cludove/length"/>
                    </PARAMETER_LENGTH>
                    <IS_MUST>
                        <xsl:value-of select="parameter.cludove/is_must"/>
                    </IS_MUST>
                    <IS_PARAMETER>
                        <xsl:value-of select="parameter.cludove/is_parameter"/>
                    </IS_PARAMETER>
                </parameter>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
