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
            <TEST_EXPRESSION>
                <xsl:value-of select="/content/parameter.cludove/test_expression"/>
            </TEST_EXPRESSION>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
