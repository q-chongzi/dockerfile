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
            <xsl:when test="count(cludove.crest.spruce.prefix_code/record.crest) = 0"/>
            <xsl:otherwise>
                <xsl:if test="count(cludove.crest.spruce.resource_connection[2]/record.crest[is_locked != 'true']) > 0">
                    <parameter>
                        <buddle.cludove>
                            <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                        </buddle.cludove>
                        <catalog.cludove>
                            <xsl:text disable-output-escaping="yes">dsb.resource.remove.process</xsl:text>
                        </catalog.cludove>
                        <HINGE_CONNECTION_ID>
                            <xsl:value-of select="parameter.cludove/dsbConnectionId.cludove"/>
                        </HINGE_CONNECTION_ID>
                        <IS_DSB_REQUEST>
                            <xsl:text disable-output-escaping="yes">true</xsl:text>
                        </IS_DSB_REQUEST>
                        <IDENTIFIER>
                            <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest[1]/identifier"/>
                        </IDENTIFIER>
                        <HINGE_HOST>
                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest[1]/host"/>
                        </HINGE_HOST>
                        <HOST>
                            <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest[1]/host"/>
                        </HOST>
                        <PRECODE>
                            <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest[1]/precode"/>
                        </PRECODE>
                    </parameter>
                </xsl:if>
                <xsl:if test="count(cludove.crest.spruce.resource_connection[2]/record.crest[is_locked = 'true']) > 0">
                    <parameter>
                        <IS_NOT_CALL>
                            <xsl:text disable-output-escaping="yes">true</xsl:text>
                        </IS_NOT_CALL>
                    </parameter>
                </xsl:if>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
