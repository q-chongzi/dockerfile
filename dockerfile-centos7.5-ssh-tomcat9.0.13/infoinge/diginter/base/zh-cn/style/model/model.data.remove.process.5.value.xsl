<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:if test="parameter.cludove/operation_build = 'build'">
            <parameter>
                <MIGR_POSITION/>
                <SYNC_POSITION/>
                <SYNC_TIME_POSITION/>
            </parameter>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
