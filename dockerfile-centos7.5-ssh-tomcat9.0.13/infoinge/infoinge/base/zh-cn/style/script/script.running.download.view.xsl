<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:if test="count(cludove.crest.spruce.quote/record.crest) &gt; 0">
            <xsl:text> DELETE FROM QUOTE WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.data/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.catalog/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM CATALOG WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.buddle/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM BUDDLE WHERE IDENTIFIER='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.processor/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM PROCESSOR; </xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.language/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM LANGUAGE; </xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.style/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM STYLE; </xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.vocabulary/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM VOCABULARY; </xsl:text>
        </xsl:if>
        <xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.resource_definition/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM RESOURCE_DEFINITION; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.logon_account/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM LOGON_ACCOUNT; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.permission_control/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM PERMISSION_CONTROL WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.contact/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM CONTACT;</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.resource_decomposing/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM RESOURCE_DECOMPOSING; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM RESOURCE_CONNECTION; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.buddle_issue/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM BUDDLE_ISSUE; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.prefix_code/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM PREFIX_CODE; </xsl:text>
        </xsl:if>
        <xsl:for-each select="cludove.crest.spruce.quote/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO QUOTE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,NAME,EXPRESSION,CLASS,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="expression"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="class"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO BUDDLE (CODE,IS_ACTIVE,IS_SYNCED_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,IS_PERMIT,IS_HOME,IS_UPDATING,TITLE,VALIDATOR,DESCRIPTION,IS_RUNNING,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,IS_SYNCED_DSB,SYNC_DSB_REASON,SYNC_ACTIVE_STATUS,SYNC_STATUS,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_synced_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_permit"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_home"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_updating"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="title"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="validator"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="description"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_running"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timing_year"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timing_month"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timing_day"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timing_hour"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timing_minute"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_synced_dsb"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_dsb_reason"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_active_status"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_status"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
            <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                <xsl:variable name="catalog_id">
                    <xsl:value-of select="identifier"/>
                </xsl:variable>
                <br/>
                <br/>
                <xsl:text>INSERT INTO CATALOG (CODE,IS_ACTIVE,IS_SYNCED_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,IDENTIFIER,NAME,TYPE,CONTENT_TYPE,IS_PERMIT,IS_HOME,IS_PAUSE,DESCRIPTION,CLASS,IS_RUNNING,FREQUENTNESS,</xsl:text>
                <xsl:if test="interval_time != ''">
                    <xsl:text>INTERVAL_TIME,</xsl:text>
                </xsl:if>
                <xsl:if test="join_time != ''">
                    <xsl:text>JOIN_TIME,</xsl:text>
                </xsl:if>
                <xsl:text>RUN_START_HOUR,RUN_START_MINUTE,RUN_FINISH_HOUR,RUN_FINISH_MINUTE,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,IS_FOR_EACH, SELECT_EXPRESSION,IS_SYNCED_DSB,IS_ISSUE_DSB,IS_LOG,SYNC_DSB_REASON,SYNC_ACTIVE_STATUS,SYNC_STATUS,IS_METADATA,CONNECTION_CODE) </xsl:text>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                <xsl:text> VALUES ('</xsl:text>
                <xsl:value-of select="code"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_synced_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="change_from"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_index"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secret"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secrecy"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="builder"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="owner"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="start_date"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:choose>
                    <xsl:when test="end_date != ''">
                        <xsl:value-of select="end_date"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="buddle_id"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="identifier"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="type"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="content_type"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_permit"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_home"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_pause"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="description"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="class"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_running"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="frequentness"/>
                <xsl:text disable-output-escaping="yes">'</xsl:text>
                <xsl:if test="interval_time != ''">
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="interval_time"/>
                </xsl:if>
                <xsl:if test="join_time != ''">
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="join_time"/>
                    <xsl:text disable-output-escaping="yes">'</xsl:text>
                </xsl:if>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="run_start_hour"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="run_start_minute"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="run_finish_hour"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="run_finish_minute"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="timing_year"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="timing_month"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="timing_day"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="timing_hour"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="timing_minute"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_for_each"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="select_expression"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_synced_dsb"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_issue_dsb"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_log"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="sync_dsb_reason"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="sync_active_status"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="sync_status"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_metadata"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="connection_code"/>
                <xsl:text>');</xsl:text>
                <xsl:for-each select="/content/cludove.crest.spruce.data/record.crest[catalog_id = $catalog_id]">
                    <xsl:variable name="data_code">
                        <xsl:value-of select="code"/>
                    </xsl:variable>
                    <br/>
                    <br/>
                    <xsl:text>INSERT INTO DATA (CODE,IS_ACTIVE,IS_SYNCED_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,NAME,TYPE,CONNECTION_ID,RESOURCE_NAME,OPERATION,IS_PAGINATE,POSITION,IS_PERMIT,IS_FULL,</xsl:text>
                    <xsl:if test="row_number != ''">
                        <xsl:text>ROW_NUMBER,</xsl:text>
                    </xsl:if>
                    <xsl:text>UNIQUES,IS_DESCEND,RESOURCE_BUDDLE,DESCRIPTION,IS_FOR_EACH, SELECT_EXPRESSION,CLASSIFY,DATA_METHOD,IS_SYNCED_DSB,SYNC_DSB_REASON,SYNC_ACTIVE_STATUS,SYNC_STATUS,CONNECTION_CODE) </xsl:text>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                    <xsl:text>  VALUES ('</xsl:text>
                    <xsl:value-of select="code"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_active"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_synced_active"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="change_from"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="change_index"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="change_number"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="secret"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="secrecy"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="builder"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="owner"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="start_date"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:choose>
                        <xsl:when test="end_date != ''">
                            <xsl:value-of select="end_date"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text disable-output-escaping="yes">0</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="buddle_id"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="catalog_id"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="name"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="type"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="connection_id"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="resource_name"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="operation"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_paginate"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                    <xsl:value-of select="position"/>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_permit"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_full"/>
                    <xsl:text disable-output-escaping="yes">'</xsl:text>
                    <xsl:if test="row_number != ''">
                        <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                        <xsl:value-of select="row_number"/>
                    </xsl:if>
                    <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="uniques"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_descend"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="statement"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="description"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_for_each"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="select_expression"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="classify"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="data_method"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="is_synced_dsb"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="sync_dsb_reason"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="sync_active_status"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="sync_status"/>
                    <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                    <xsl:value-of select="connection_code"/>
                    <xsl:text>');</xsl:text>
                </xsl:for-each>
            </xsl:for-each>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.processor/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO PROCESSOR (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,CLASS,CLASSIFY,NAME,DESCRIPTION,TYPE,VERSION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="class"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="classify"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="description"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="version"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:if test="parameter.cludove/buddle_id = 'infoinge'">
            <xsl:for-each select="cludove.crest.spruce.language/record.crest">
                <br/>
                <br/>
                <xsl:text>INSERT INTO LANGUAGE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,NAME,ENCODING,MAPPING,CONNECTION_CODE) </xsl:text>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                <xsl:text>  VALUES ('</xsl:text>
                <xsl:value-of select="code"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="change_from"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_index"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secret"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secrecy"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="builder"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="owner"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="start_date"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:choose>
                    <xsl:when test="end_date != ''">
                        <xsl:value-of select="end_date"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="encoding"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="mapping"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="connection_code"/>
                <xsl:text>');</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="cludove.crest.spruce.style/record.crest">
                <br/>
                <br/>
                <xsl:text>INSERT INTO STYLE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,DESCRIPTION,CONNECTION_CODE) </xsl:text>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                <xsl:text>  VALUES ('</xsl:text>
                <xsl:value-of select="code"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="change_from"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_index"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secret"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secrecy"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="builder"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="owner"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="start_date"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:choose>
                    <xsl:when test="end_date != ''">
                        <xsl:value-of select="end_date"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="identifier"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="name"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="description"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="connection_code"/>
                <xsl:text>');</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="cludove.crest.spruce.vocabulary/record.crest">
                <br/>
                <br/>
                <xsl:text>INSERT INTO VOCABULARY (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,KEYWORD,CONTENT,CONNECTION_CODE) </xsl:text>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                <xsl:text>  VALUES ('</xsl:text>
                <xsl:value-of select="code"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="change_from"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_index"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secret"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secrecy"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="builder"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="owner"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="start_date"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:choose>
                    <xsl:when test="end_date != ''">
                        <xsl:value-of select="end_date"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="identifier"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="keyword"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="content"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="connection_code"/>
                <xsl:text>');</xsl:text>
            </xsl:for-each>
            <xsl:for-each select="cludove.crest.spruce.resource_definition/record.crest">
                <br/>
                <br/>
                <xsl:text>INSERT INTO RESOURCE_DEFINITION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,RESOURCE_NAME,RESOURCE_DIAPLAY,INDEX_FIELD,SORT_POSITION,IS_LOAD,LOAD_MODE,REPLICA_NUMBER,CLASS_NAME,CONNECTION_CODE) </xsl:text>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
                <xsl:text>  VALUES ('</xsl:text>
                <xsl:value-of select="code"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_active"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="change_from"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_index"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="change_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secret"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="secrecy"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="builder"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="owner"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="start_date"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:choose>
                    <xsl:when test="end_date != ''">
                        <xsl:value-of select="end_date"/>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:text disable-output-escaping="yes">0</xsl:text>
                    </xsl:otherwise>
                </xsl:choose>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="identifier"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="resource_name"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="resource_diaplay"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="index_field"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="sort_position"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="is_load"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="load_mode"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
                <xsl:value-of select="replica_number"/>
                <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="class_name"/>
                <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
                <xsl:value-of select="connection_code"/>
                <xsl:text>');</xsl:text>
            </xsl:for-each>
        </xsl:if>
        <xsl:for-each select="cludove.crest.spruce.logon_account/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO LOGON_ACCOUNT (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,PERSON_CODE,ACCOUNT_NAME,TYPE,ACCOUNT_PASSWORD,STATUS,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="person_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="account_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="account_password"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="status"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.permission_control/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO PERMISSION_CONTROL (CODE,OWNER_TYPE,OWNER_CODE,BUDDLE_ID,CATALOG_ID,OPERATION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operation"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>

        <xsl:for-each select="cludove.crest.spruce.contact/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO CONTACT (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,OWNER_TYPE,OWNER_CODE,TYPE,COUNTRY_NAME,PROVINCE_NAME,CITY_NAME,COUNTY_NAME,POSTCODE,CONTENT,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="country_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="province_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="city_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="county_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="postcode"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="content"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,IS_DSB,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="driver"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="host"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="port"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="instance"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="pattern"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="account"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="password"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="max_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timeout"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="template"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_locked"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="buffer_pool_size != ''">
                    <xsl:value-of select="buffer_pool_size"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="year_id != ''">
                    <xsl:value-of select="year_id"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="month_id != ''">
                    <xsl:value-of select="month_id"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="day_id != ''">
                    <xsl:value-of select="day_id"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_dsb"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,RUN_ID,IS_LOCKED,IS_LOCAL,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,GPS_LOCATION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="driver"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="host"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="port"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="instance"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="pattern"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="account"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="password"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="max_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="timeout"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="template"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="run_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_locked"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_local"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_dsb"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="buffer_pool_size != ''">
                    <xsl:value-of select="buffer_pool_size"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text>0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="decomposing_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="reg_status"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="reg_reason"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="gps_location"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.buddle_issue/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO BUDDLE_ISSUE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CONNECTION,LAST_ISSUE,IS_RUNNING,FREQUENTNESS,INTERVAL_TIME,JOIN_TIME,RUN_START_TIME,RUN_START_MINUTE,RUN_FINISH_TIME,RUN_FINISH_MINUTE,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="last_issue"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_running"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="frequentness"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="interval_time"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="join_time"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="run_start_hour"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="run_start_minute"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="run_finish_hour"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="run_finish_minute"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.prefix_code/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO PREFIX_CODE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,HOST,PRECODE,IS_SYNCED_DSB,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="host"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="precode"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_synced_dsb"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
