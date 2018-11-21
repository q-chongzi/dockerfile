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
            <BUDDLE_ID>
                <xsl:value-of select="parameter.cludove/buddle_id"/>
            </BUDDLE_ID>
            <IDENTIFIER>
                <xsl:value-of select="parameter.cludove/catalog_id"/>
            </IDENTIFIER>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
