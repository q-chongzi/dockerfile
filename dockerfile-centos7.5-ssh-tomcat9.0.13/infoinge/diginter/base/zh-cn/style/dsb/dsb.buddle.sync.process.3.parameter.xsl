<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <xsl:choose>
            <xsl:when test="count(parameter.cludove/identifier)>0">
                <parameter>
                    <xsl:if test="count(cludove.crest.spruce.buddle/record.crest)>0">
                        <CODE>
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/code"/>
                        </CODE>
                    </xsl:if>

                    <IS_ACTIVE>
                        <xsl:value-of select="parameter.cludove/is_active"/>
                    </IS_ACTIVE>

                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">false</xsl:text>
                    </IS_SYNCED_DSB>

                    <NAME>
                        <xsl:value-of select="parameter.cludove/name"/>
                    </NAME>

                    <IDENTIFIER>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </IDENTIFIER>

                    <IS_PERMIT>
                        <xsl:value-of select="parameter.cludove/is_permit"/>
                    </IS_PERMIT>

                    <IS_HOME>
                        <xsl:value-of select="parameter.cludove/is_home"/>
                    </IS_HOME>

                    <IS_UPDATING>
                        <xsl:value-of select="parameter.cludove/is_updating"/>
                    </IS_UPDATING>

                    <VALIDATOR>
                        <xsl:value-of select="parameter.cludove/validator"/>
                    </VALIDATOR>

                    <DESCRIPTION>
                        <xsl:value-of select="parameter.cludove/description"/>
                    </DESCRIPTION>

                    <!--<SERVE_ID>-->
                    <!--<xsl:value-of select="parameter.cludove/clusterid.cludove"/>-->
                    <!--</SERVE_ID>-->
                </parameter>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>

    </xsl:template>
</xsl:stylesheet>
