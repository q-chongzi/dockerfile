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
            <BUDDLE_ID>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <CATALOG_ID>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
            </CATALOG_ID>
            <DATA_CODE>
                <xsl:value-of select="parameter.cludove/data_code"/>
            </DATA_CODE>
            <SELECT_EXPRESSION>
                <xsl:value-of select="parameter.cludove/select_expression"/>
            </SELECT_EXPRESSION>
            <TAG_CODE>
                <xsl:value-of select="/content/cludove.crest.spruce.value_tag[3]/record.crest/code"/>
            </TAG_CODE>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
