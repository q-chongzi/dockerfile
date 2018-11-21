<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_EXCHANGE WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.exchange_design/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM EXCHANGE_DESIGN WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.data_exception/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_EXCEPTION WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.data_statistics/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_STATISTICS WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.data_mapping/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_MAPPING WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.design_catalog/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DESIGN_CATALOG; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.job_journal/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM JOB_JOURNAL WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.exchange_processor/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM EXCHANGE_PROCESSOR; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.data_history/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_HISTORY WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.infoinge_job/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM INFOINGE_JOB; </xsl:text>
        </xsl:if>
        <xsl:if test="count(cludove.crest.spruce.job_catalog/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM JOB_CATALOG WHERE BUDDLE_ID='</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>';</xsl:text>
        </xsl:if>
        <xsl:for-each select="cludove.crest.spruce.data_exchange/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_EXCHANGE (CODE,IS_ACTIVE,BUDDLE_ID,CATALOG_ID,DATA_CODE,OPERATION,DATA_NAME,IS_FULL,PROCESSOR_NUMBER,MIGR_POSITION,MIGR_FIELD,SYNC_POSITION,SYNC_FIELD,SYNC_TIME_POSITION,SYNC_TIME_FIELD,CLEAN_EXPRESSION,FLAG_FIELD,MIGR_FIELD_TYPE,SYNC_FIELD_TYPE,SYNC_TIME_FIELD_TYPE,FLAG_FIELD_TYPE,FLAG_CHANGE,FLAG_RESET,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operation"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_full"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="processor_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="migr_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="migr_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_time_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_time_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="clean_expression"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="flag_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="migr_field_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_field_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="sync_time_field_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="flag_field_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="flag_reset"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="flag_field_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.exchange_design/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO EXCHANGE_DESIGN (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,NAME,DESCRIPTION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="description"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.data_exception/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_EXCEPTION (CODE,CONNECTION_ID,RESOURCE_NAME,EXCEPTION_FIELD,EXCEPTION_CONTENT,VERIFY_CODE,BUDDLE_ID,CATALOG_ID,PRIMARY_FIELD,PRIMARY_VALUE,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="resource_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exception_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exception_content"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="verify_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="primary_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="primary_value"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.data_statistics/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_STATISTICS (CODE,RECORD_YEAR,RECORD_MONTH,RECORD_DAY,JOURNAL_TYPE,BUDDLE_ID,BUDDLE_NAME,CATALOG_ID,CATALOG_NAME,EFFECT_NUMBER,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_year"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_month"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_day"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="journal_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="effect_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.design_catalog/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DESIGN_CATALOG (CODE,DESIGN_CODE,CATALOG_CODE,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="design_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.data_mapping/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_MAPPING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,VALUE_CODE,S_DATA_CODE,IS_MAIN,TEST_EXPRESSION,S_IDENTIFIER,S_RESOURCE_NAME,S_RESOURCE_DIAPLAY,S_FIELD,R_DATA_CODE,R_IDENTIFIER,R_RESOURCE_NAME,R_RESOURCE_DIAPLAY,R_FIELD,POSITION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="value_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="s_data_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_main"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="test_expression"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="s_identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="s_resource_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="s_resource_diaplay"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="s_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="r_data_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="r_identifier"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="r_resource_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="r_resource_diaplay"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="r_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.job_journal/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO JOB_JOURNAL (CODE,RECORD_HOST,RECORD_YEAR,RECORD_MONTH,RECORD_DAY,RECORD_HOUR,RECORD_MINUTE,RECORD_SECOND,RECORD_MILLISCOND,REQUEST_ID,REQUEST_IP,ACCOUNT_NAME,JOURNAL_TYPE,BUDDLE_ID,BUDDLE_NAME,CATALOG_ID,CATALOG_NAME,DATA_CODE,DATA_NAME,POSITION,OPERATE_TIMES,OPERATE_RESULT,EFFECT_NUMBER,ERROR_ID,LOCATION,DESCRIPTION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_host"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_year"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_month"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_day"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_hour"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_minute"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_second"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_milliscond"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="request_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="request_ip"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="account_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="journal_type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operate_times"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operate_result"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="effect_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="error_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="location"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="description"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.exchange_processor/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO EXCHANGE_PROCESSOR (CODE,IS_ACTIVE,JOB_CODE,EXCHANGE_CODE,OPERATION,START_POSITION,FINISH_POSITION,CURRENT_POSITION,RECORD_POSITION,EXCHANGE_NUMBER,EXECUTE_TIME,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="job_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exchange_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operation"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="start_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="finish_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="current_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="record_position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exchange_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="execute_time"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.data_history/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_HISTORY (CODE,BUDDLE_ID,CATALOG_ID,CONNECTION_ID,RESOURCE_NAME,OPERATION,EXCHANGE_FIELD,EXCHANGE_FIELD_VALUE,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="resource_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="operation"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exchange_field"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="exchange_field_value"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.infoinge_job/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO INFOINGE_JOB (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,NAME,FREQUENTNESS,INTERVAL_TIME,JOIN_TIME,RUN_START_HOUR,RUN_START_MINUTE,RUN_FINISH_HOUR,RUN_FINISH_MINUTE,DESCRIPTION,IS_RUNNING,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
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
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
        <xsl:for-each select="cludove.crest.spruce.job_catalog/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO JOB_CATALOG (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,JOB_CODE,BUDDLE_ID,BUDDLE_NAME,CATALOG_ID,CATALOG_NAME,CATALOG_CODE,POSITION,CONNECTION_CODE) </xsl:text>
            <xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
            <xsl:text>  VALUES ('</xsl:text>
            <xsl:value-of select="code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="is_active"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_from"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_index"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="change_number"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secret"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="secrecy"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="builder"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="owner"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="start_date"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:choose>
                <xsl:when test="end_date != ''">
                    <xsl:value-of select="end_date"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:text disable-output-escaping="yes">0</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="job_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="buddle_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="catalog_code"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="position"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
