<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
    <xsl:template match="/">
        <parameters>
            <xsl:apply-templates select="content"/>
        </parameters>
    </xsl:template>
    <xsl:template match="content">
        <!--想总线提交数据-->
        <xsl:choose>
            <xsl:when test="count(cludove.crest.spruce.buddle/record.crest) = 0">
                    <xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) = 0">
                        <parameter>
                            <IS_NOT_CALL>
                                <xsl:text disable-output-escaping="yes">true</xsl:text>
                            </IS_NOT_CALL>
                        </parameter>
                    </xsl:if>
            </xsl:when>
            <xsl:otherwise>
                <parameter>
                    <buddle.cludove>
                        <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                    </buddle.cludove>
                    <catalog.cludove>
                        <xsl:text disable-output-escaping="yes">dsb.buddle.sync.process</xsl:text>
                    </catalog.cludove>

                    <IS_DSB_REQUEST>
                        <xsl:text disable-output-escaping="yes">true</xsl:text>
                    </IS_DSB_REQUEST>

                    <HINGE_CONNECTION_ID>
                        <xsl:value-of select="parameter.cludove/dsbConnectionId.cludove"/>
                    </HINGE_CONNECTION_ID>

                    <IS_SYNCED_ACTIVE>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/is_synced_active"/>
                    </IS_SYNCED_ACTIVE>

                    <SYNC_ACTIVE_STATUS>
                        <xsl:value-of select="cludove.crest.spruce.buddle/record.crest[1]/sync_active_status"/>
                    </SYNC_ACTIVE_STATUS>

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
