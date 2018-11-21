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
            <xsl:if test="parameter.cludove/decomposing_code != ''">
                <DECOMPOSING_CODE>
                    <xsl:value-of select="parameter.cludove/decomposing_code"/>
                </DECOMPOSING_CODE>
            </xsl:if>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
