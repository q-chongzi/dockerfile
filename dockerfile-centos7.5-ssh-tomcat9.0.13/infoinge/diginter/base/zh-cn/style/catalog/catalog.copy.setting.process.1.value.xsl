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
            <xsl:when test="count(/content/cludove.crest.spruce.catalog/record.crest) > 0">
                <parameter>
                    <BUILDER>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/builder"/>
                    </BUILDER>
                    <OWNER>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/owner"/>
                    </OWNER>
                    <BUDDLE_ID>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>
                    </BUDDLE_ID>
                    <IDENTIFIER>
                        <xsl:value-of select="parameter.cludove/catalog_identifier_new"/>
                    </IDENTIFIER>
                    <NAME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
                    </NAME>
                    <TYPE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/type"/>
                    </TYPE>
                    <CONTENT_TYPE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/content_type"/>
                    </CONTENT_TYPE>
                    <IS_PERMIT>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_permit"/>
                    </IS_PERMIT>
                    <IS_HOME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_home"/>
                    </IS_HOME>
                    <IS_PAUSE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_pause"/>
                    </IS_PAUSE>
                    <DESCRIPTION>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/description"/>
                    </DESCRIPTION>
                    <IS_RUNNING>
                        <xsl:text>false</xsl:text>
                    </IS_RUNNING>
                    <FREQUENTNESS>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/frequentness"/>
                    </FREQUENTNESS>
                    <INTERVAL_TIME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/interval_time"/>
                    </INTERVAL_TIME>
                    <JOIN_TIME>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/join_time"/>
                    </JOIN_TIME>
                    <RUN_START_HOUR>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_start_hour"/>
                    </RUN_START_HOUR>
                    <RUN_START_MINUTE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_start_minute"/>
                    </RUN_START_MINUTE>
                    <RUN_FINISH_HOUR>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_finish_hour"/>
                    </RUN_FINISH_HOUR>
                    <RUN_FINISH_MINUTE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_finish_minute"/>
                    </RUN_FINISH_MINUTE>
                    <IS_FOR_EACH>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_for_each"/>
                    </IS_FOR_EACH>
                    <SELECT_EXPRESSION>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/select_expression"/>
                    </SELECT_EXPRESSION>
                    <IS_SYNCED_DSB>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_synced_dsb"/>
                    </IS_SYNCED_DSB>
                    <IS_ISSUE_DSB>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_issue_dsb"/>
                    </IS_ISSUE_DSB>
                    <IS_LOG>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_log"/>
                    </IS_LOG>
                    <IS_EXCHANGE>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_exchange"/>
                    </IS_EXCHANGE>
                    <IS_METADATA>
                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_metadata"/>
                    </IS_METADATA>
                </parameter>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
