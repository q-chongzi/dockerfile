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
            <REG_STATUS>
                <xsl:value-of select="parameter.cludove/reg_status"/>
            </REG_STATUS>
            <REG_REASON>
            </REG_REASON>
        </parameter>
    </xsl:template>
</xsl:stylesheet>
