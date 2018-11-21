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
            <CODE>
                <xsl:value-of select="parameter.cludove/code"/>
            </CODE>
            <PREFIX_SYMBOL>
                <xsl:value-of select="parameter.cludove/prefix_symbol"/>
            </PREFIX_SYMBOL>
            <OPERATION>
                <xsl:value-of select="parameter.cludove/operation"/>
            </OPERATION>
            <SUFFIX_SYMBOL>
                <xsl:value-of select="parameter.cludove/suffix_symbol"/>
            </SUFFIX_SYMBOL>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
