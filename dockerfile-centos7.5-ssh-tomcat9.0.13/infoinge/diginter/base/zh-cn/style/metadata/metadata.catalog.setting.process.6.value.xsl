<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
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
                    <PARAMETER_NAME>
                        <xsl:value-of select="parameter.cludove/name"/>
                    </PARAMETER_NAME>
                    <PARAMETER_LENGTH>
                        <xsl:value-of select="parameter.cludove/length"/>
                    </PARAMETER_LENGTH>
                </parameter>
            </xsl:if>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
