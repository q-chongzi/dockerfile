<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <parameter>
            <xsl:if test="count(cludove.crest.spruce.quote/record.crest) > 0">
                <CODE>
                    <xsl:value-of select="cludove.crest.spruce.quote/record.crest/code"/>
                </CODE>
            </xsl:if>
            <BUDDLE_ID>
                <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <CATALOG_ID>
                <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
            </CATALOG_ID>
            <NAME>
                <xsl:value-of select="/content/parameter.cludove/name"/>
            </NAME>
            <EXPRESSION>
                <xsl:value-of select="/content/parameter.cludove/expression"/>
            </EXPRESSION>
            <CLASS>
                <xsl:value-of select="/content/parameter.cludove/class"/>
            </CLASS>
            <TEXT_HANDLE>
                <xsl:value-of select="/content/parameter.cludove/text_handle"/>
            </TEXT_HANDLE>
            <TEXT_CONVERTER>
                <xsl:value-of select="/content/parameter.cludove/text_converter"/>
            </TEXT_CONVERTER>
            <xsl:if test="count(cludove.crest.spruce.quote/record.crest) > 0">
                <CONNECTION_CODE>
                    <xsl:value-of select="cludove.crest.spruce.quote/record.crest/connection_code"/>
                </CONNECTION_CODE>
            </xsl:if>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
