<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--向总线提交参数-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.resource_connection[3]/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <buddle.cludove>
                        <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                    </buddle.cludove>
                    <catalog.cludove>
                        <xsl:text disable-output-escaping="yes">dsb.resource.dsb.remove.process</xsl:text>
                    </catalog.cludove>
                    <HOST>
                        <xsl:value-of select="cludove.crest.spruce.resource_connection[3]/record.crest[1]/host"/>
                    </HOST>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
