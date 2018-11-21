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
                    <xsl:if test="count(cludove.crest.spruce.catalog/record.crest)>0">
                        <CODE>
                            <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/code"/>
                        </CODE>
                    </xsl:if>

                    <IS_ACTIVE>
                        <xsl:value-of select="parameter.cludove/is_active"/>
                    </IS_ACTIVE>

                    <BUDDLE_ID>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/buddle_id"/>
                    </BUDDLE_ID>

                    <IDENTIFIER>
                        <xsl:value-of select="cludove.crest.spruce.prefix_code/record.crest/precode"/>
                        <xsl:text>.</xsl:text>
                        <xsl:value-of select="parameter.cludove/identifier"/>
                    </IDENTIFIER>

                    <IS_ISSUE_DSB>
                        <xsl:value-of select="parameter.cludove/is_issue_dsb"/>
                    </IS_ISSUE_DSB>

                    <IS_SYNCED_DSB>
                        <xsl:text disable-output-escaping="yes">false</xsl:text>
                    </IS_SYNCED_DSB>

                    <NAME>
                        <xsl:value-of select="parameter.cludove/name"/>
                    </NAME>

                    <TYPE>
                        <xsl:value-of select="parameter.cludove/type"/>
                    </TYPE>

                    <CONTENT_TYPE>
                        <xsl:value-of select="parameter.cludove/content_type"/>
                    </CONTENT_TYPE>

                    <IS_PERMIT>
                        <xsl:value-of select="parameter.cludove/is_permit"/>
                    </IS_PERMIT>

                    <IS_HOME>
                        <xsl:value-of select="parameter.cludove/is_home"/>
                    </IS_HOME>

                    <IS_PAUSE>
                        <xsl:value-of select="parameter.cludove/is_pause"/>
                    </IS_PAUSE>

                    <IS_LOG>
                        <xsl:value-of select="parameter.cludove/is_log"/>
                    </IS_LOG>

                    <DESCRIPTION>
                        <xsl:value-of select="parameter.cludove/description"/>
                    </DESCRIPTION>

                    <CLASS>
                        <xsl:value-of select="parameter.cludove/class"/>
                    </CLASS>

                    <FREQUENTNESS>
                        <xsl:value-of select="parameter.cludove/frequentness"/>
                    </FREQUENTNESS>

                    <INTERVAL_TIME>
                        <xsl:value-of select="parameter.cludove/interval_time"/>
                    </INTERVAL_TIME>

                    <JOIN_TIME>
                        <xsl:value-of select="parameter.cludove/join_time_date"/>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="parameter.cludove/join_time_time"/>
                    </JOIN_TIME>

                    <RUN_START_HOUR>
                        <xsl:value-of select="parameter.cludove/run_start_hour"/>
                    </RUN_START_HOUR>

                    <RUN_START_MINUTE>
                        <xsl:value-of select="parameter.cludove/run_start_minute"/>
                    </RUN_START_MINUTE>

                    <RUN_FINISH_HOUR>
                        <xsl:value-of select="parameter.cludove/run_finish_hour"/>
                    </RUN_FINISH_HOUR>

                    <RUN_FINISH_MINUTE>
                        <xsl:value-of select="parameter.cludove/run_finish_minute"/>
                    </RUN_FINISH_MINUTE>

                    <IS_FOR_EACH>
                        <xsl:value-of select="parameter.cludove/is_for_each"/>
                    </IS_FOR_EACH>

                    <SELECT_EXPRESSION>
                        <xsl:value-of select="parameter.cludove/select_expression"/>
                    </SELECT_EXPRESSION>

                    <!--<SERVE_ID>-->
                    <!--<xsl:value-of select="parameter.cludove/clusterid.cludove"/>-->
                    <!--</SERVE_ID>-->
                </parameter>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>

    </xsl:template>
</xsl:stylesheet>
