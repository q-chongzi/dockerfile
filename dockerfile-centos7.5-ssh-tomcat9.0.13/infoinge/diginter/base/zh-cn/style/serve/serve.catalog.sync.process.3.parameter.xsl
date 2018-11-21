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
            <xsl:when test="count(cludove.crest.spruce.catalog/record.crest) = 0"/>
            <xsl:otherwise>
                <parameter>
                    <buddle.cludove>
                        <xsl:text disable-output-escaping="yes">infoinge</xsl:text>
                    </buddle.cludove>
                    <catalog.cludove>
                        <xsl:text disable-output-escaping="yes">dsb.catalog.sync.process</xsl:text>
                    </catalog.cludove>
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.catalog/record.crest[1]/is_issue_dsb != 'true'">
                            <IS_ACTIVE>
                                <xsl:text disable-output-escaping="yes">false</xsl:text>
                            </IS_ACTIVE>
                        </xsl:when>
                        <xsl:otherwise>
                            <IS_ACTIVE>
                                <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_active"/>
                            </IS_ACTIVE>
                        </xsl:otherwise>
                    </xsl:choose>

                    <IS_ISSUE_DSB>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_issue_dsb"/>
                    </IS_ISSUE_DSB>

                    <BUDDLE_ID>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/buddle_id"/>
                    </BUDDLE_ID>

                    <IDENTIFIER>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/identifier"/>
                    </IDENTIFIER>

                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/name"/>
                        <xsl:text>:encode</xsl:text>
                    </NAME>

                    <TYPE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/type"/>
                    </TYPE>

                    <CONTENT_TYPE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/content_type"/>
                    </CONTENT_TYPE>

                    <IS_PERMIT>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_permit"/>
                    </IS_PERMIT>

                    <IS_HOME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_home"/>
                    </IS_HOME>

                    <IS_PAUSE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_pause"/>
                    </IS_PAUSE>

                    <DESCRIPTION>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/description"/>
                        <xsl:text>:encode</xsl:text>
                    </DESCRIPTION>

                    <CLASS>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/class"/>
                    </CLASS>

                    <FREQUENTNESS>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/frequentness"/>
                    </FREQUENTNESS>

                    <INTERVAL_TIME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/interval_time"/>
                    </INTERVAL_TIME>

                    <JOIN_TIME_DATE>
                        <xsl:value-of select="substring(cludove.crest.spruce.catalog/record.crest[1]/join_time,0,11)"/>
                    </JOIN_TIME_DATE>

                    <JOIN_TIME_TIME>
                        <xsl:value-of select="substring(cludove.crest.spruce.catalog/record.crest[1]/join_time,12,8)"/>
                    </JOIN_TIME_TIME>

                    <RUN_START_HOUR>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/run_start_hour"/>
                    </RUN_START_HOUR>

                    <RUN_START_MINUTE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/run_start_minute"/>
                    </RUN_START_MINUTE>

                    <RUN_FINISH_HOUR>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/run_finish_hour"/>
                    </RUN_FINISH_HOUR>

                    <RUN_FINISH_MINUTE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/run_finish_minute"/>
                    </RUN_FINISH_MINUTE>

                    <IS_FOR_EACH>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/is_for_each"/>
                    </IS_FOR_EACH>

                    <SELECT_EXPRESSION>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest[1]/select_expression"/>
                        <xsl:text>:encode</xsl:text>
                    </SELECT_EXPRESSION>

                    <SERVE_ID>
                        <xsl:value-of select="parameter.cludove/clusterid.cludove"/>
                    </SERVE_ID>
                </parameter>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
