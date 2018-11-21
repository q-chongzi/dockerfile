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
            <xsl:if test="count(/content/parameter.cludove/value_code) > 0 ">
                <CODE>
                    <xsl:value-of select="/content/parameter.cludove/value_code"/>
                </CODE>
            </xsl:if>
            <BUDDLE_ID>
                <xsl:value-of select="/content/parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <CATALOG_ID>
                <xsl:value-of select="/content/parameter.cludove/catalog_id"/>
            </CATALOG_ID>
            <DATA_CODE>
                <xsl:value-of select="/content/parameter.cludove/data_code"/>
            </DATA_CODE>
            <POSITION>
                <xsl:value-of select="/content/parameter.cludove/position"/>
            </POSITION>
            <TEST_EXPRESSION>
                <xsl:value-of select="/content/parameter.cludove/test_expression"/>
            </TEST_EXPRESSION>
            <SELECT_EXPRESSION>
                <xsl:value-of select="/content/parameter.cludove/select_expression"/>
            </SELECT_EXPRESSION>
            <IS_FOR_EACH>
                <xsl:value-of select="/content/parameter.cludove/is_for_each"/>
            </IS_FOR_EACH  >
            <CONNECTION_CODE>
                <xsl:value-of select="/content/parameter.cludove/connection_code"/>
            </CONNECTION_CODE >
        </parameter>
    </xsl:template>
</xsl:stylesheet>
