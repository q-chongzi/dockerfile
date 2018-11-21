<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--想总线提交数据-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.buddle/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <buddle.cludove>
                        <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                    </buddle.cludove>
                    <catalog.cludove>
                        <xsl:text disable-output-escaping="yes">dsb.buddle.sync.process</xsl:text>
                    </catalog.cludove>

                    <IS_ACTIVE>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/is_active"/>
                    </IS_ACTIVE>

                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/name"/>
                        <xsl:text>:encode</xsl:text>
                    </NAME>

                    <IDENTIFIER>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/identifier"/>
                    </IDENTIFIER>

                    <IS_PERMIT>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/is_permit"/>
                    </IS_PERMIT>

                    <IS_HOME>
                    <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/is_home"/>
                    </IS_HOME>

                    <IS_UPDATING>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/is_updating"/>
                    </IS_UPDATING>

                    <VALIDATOR>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/validator"/>
                    </VALIDATOR>

                    <DESCRIPTION>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/description"/>
                        <xsl:text>:encode</xsl:text>
                    </DESCRIPTION>

                    <SERVE_ID>
                        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                    </SERVE_ID>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
