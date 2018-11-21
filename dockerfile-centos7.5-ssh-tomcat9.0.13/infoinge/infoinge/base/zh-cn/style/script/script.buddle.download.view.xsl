<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="html"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:if test="count(cludove.crest.spruce.item_value/record.crest) &gt; 0">
			<xsl:text> DELETE FROM ITEM_VALUE WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.response_item/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM RESPONSE_ITEM WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.exception_response/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM EXCEPTION_RESPONSE WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.catalog_response/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CATALOG_RESPONSE WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_group/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_GROUP WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_order/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_ORDER WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.expression_item/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM EXPRESSION_ITEM WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_expression/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_EXPRESSION WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.condition_tag/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CONDITION_TAG WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_condition/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_CONDITION WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.tag_item/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM TAG_ITEM WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.value_tag/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM VALUE_TAG WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_value/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_VALUE WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_variable/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_VARIABLE WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.data_parameter/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_PARAMETER WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.quote/record.crest) &gt; 0">
			<br/>
			<br/>
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
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.processor/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM PROCESSOR; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.language/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM LANGUAGE; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.release_host/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM RELEASE_HOST; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.resource_definition/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM RESOURCE_DEFINITION; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.style/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM STYLE; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.trusting_host/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM TRUSTING_HOST; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.vocabulary/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM VOCABULARY; </xsl:text>
		</xsl:if>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge' and count(cludove.crest.spruce.data_exchange/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM DATA_EXCHANGE; </xsl:text>
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
		<xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO BUDDLE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,IS_PERMIT,IS_HOME,IS_UPDATING,TITLE,VALIDATOR,DESCRIPTION,IS_RUNNING,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
			<xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
				<xsl:variable name="catalog_id">
					<xsl:value-of select="identifier"/>
				</xsl:variable>
				<br/>
				<br/>
				<xsl:text>INSERT INTO CATALOG (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,IDENTIFIER,NAME,TYPE,CONTENT_TYPE,IS_PERMIT,IS_HOME,IS_PAUSE,DESCRIPTION,CLASS,IS_RUNNING,FREQUENTNESS,</xsl:text>
				<xsl:if test="interval_time != ''">
					<xsl:text>INTERVAL_TIME,</xsl:text>
				</xsl:if>
				<xsl:if test="join_time != ''">
					<xsl:text>JOIN_TIME,</xsl:text>
				</xsl:if>
				<xsl:text>RUN_START_HOUR,RUN_START_MINUTE,RUN_FINISH_HOUR,RUN_FINISH_MINUTE,TIMING_YEAR,TIMING_MONTH,TIMING_DAY,TIMING_HOUR,TIMING_MINUTE,IS_FOR_EACH, SELECT_EXPRESSION,IS_ISSUE_DSB,IS_LOG,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="is_issue_dsb"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="is_log"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="connection_code"/>
				<xsl:text>');</xsl:text>
				<xsl:for-each select="/content/cludove.crest.spruce.data/record.crest[catalog_id = $catalog_id]">
					<xsl:variable name="data_code">
						<xsl:value-of select="code"/>
					</xsl:variable>
					<br/>
					<br/>
					<xsl:text>INSERT INTO DATA (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,NAME,TYPE,CONNECTION_ID,RESOURCE_NAME,OPERATION,IS_PAGINATE,POSITION,IS_PERMIT,IS_FULL,UNIQUES,IS_DESCEND,RESOURCE_BUDDLE,DESCRIPTION,IS_FOR_EACH, SELECT_EXPRESSION,CLASSIFY,DATA_METHOD,CONNECTION_CODE) </xsl:text>
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
					<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
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
					<xsl:value-of select="connection_code"/>
					<xsl:text>');</xsl:text>
				</xsl:for-each>
			</xsl:for-each>
		</xsl:for-each>
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
		<xsl:for-each select="cludove.crest.spruce.data_parameter/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_PARAMETER (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,PARAMETER_NAME,SELECT_EXPRESSION,CLASS,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="parameter_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_variable/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_VARIABLE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,VARIABLE_NAME,SELECT_EXPRESSION,CLASS,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="variable_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_value/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_VALUE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.value_tag/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO VALUE_TAG (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,VALUE_CODE,POSITION,TAG_NAME,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="value_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="tag_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.tag_item/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO TAG_ITEM (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,TAG_CODE,POSITION,TEST_EXPRESSION,SELECT_EXPRESSION,CLASS,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="tag_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_condition/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_CONDITION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.condition_tag/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CONDITION_TAG (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,CONDITION_CODE,POSITION,TAG_NAME,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="condition_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="tag_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_expression/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_EXPRESSION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.expression_item/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO EXPRESSION_ITEM (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,EXPRESSION_CODE,POSITION,LOGICAL_SYMBOL,LEFT_BRACE_NUMBER,FIELD_NAME,FIELD_TYPE,SQL_OPERATOR,SELECT_EXPRESSION,CLASS,RIGHT_BRACE_NUMBER,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="expression_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="logical_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="left_brace_number"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="field_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="field_type"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="sql_operator"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="right_brace_number"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_order/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_ORDER (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,FIELD_NAME,IS_DESCEND,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="field_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_descend"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.data_group/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO DATA_GROUP (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_CODE,POSITION,FIELD_NAME,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="field_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.catalog_response/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CATALOG_RESPONSE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,POSITION,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,RESPONSE_FORMAT,START_SYMBOL,END_SYMBOL,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="response_format"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="start_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="end_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.exception_response/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO EXCEPTION_RESPONSE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,POSITION,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,RESPONSE_FORMAT,START_SYMBOL,END_SYMBOL,CONNECTION_CODE) </xsl:text>
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
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="response_format"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="start_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="end_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.response_item/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO RESPONSE_ITEM (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,RESPONSE_CODE,POSITION,ITEM_NAME,TEST_EXPRESSION,IS_FOR_EACH,SELECT_EXPRESSION,START_SYMBOL,END_SYMBOL,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="response_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="item_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_for_each"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="start_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="end_symbol"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.item_value/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO ITEM_VALUE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,ITEM_CODE,POSITION,ITEM_NAME,TEST_EXPRESSION,SELECT_EXPRESSION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="response_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]></xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="item_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="test_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="select_expression"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:if test="parameter.cludove/buddle_id = 'infoinge'">
			<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO PROCESSOR (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,CLASS,CLASSIFY,NAME,DESCRIPTION,TYPE,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="connection_code"/>
				<xsl:text>');</xsl:text>
			</xsl:for-each>
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
			<xsl:for-each select="cludove.crest.spruce.release_host/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO RELEASE_HOST (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,ADDRESS,HOST_NAME,NAME,DESCRIPTION,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="address"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="host_name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="description"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="connection_code"/>
				<xsl:text>');</xsl:text>
			</xsl:for-each>
			<xsl:for-each select="cludove.crest.spruce.replace_host/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO REPLACE_HOST (CODE,IS_ACTIVE,IDENTIFIER,TABLE_NAME,FILED_NAME,OLD_IP,REPLACE_IP,CONNECTION_CODE) </xsl:text>
				<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
				<xsl:text>  VALUES ('</xsl:text>
				<xsl:value-of select="code"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="is_active"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="identifier"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="table_name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="filed_name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="old_ip"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="replace_ip"/>
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
			<xsl:for-each select="cludove.crest.spruce.resource_relevance/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO RESOURCE_RELEVANCE (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,S_IDENTIFIER,S_RESOURCE_NAME,S_RESOURCE_DIAPLAY,S_FIELD,R_IDENTIFIER,R_RESOURCE_NAME,R_RESOURCE_DIAPLAY,R_FIELD,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="s_identifier"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="s_resource_name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="s_resource_diaplay"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="s_field"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="r_identifier"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="r_resource_name"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="r_resource_diaplay"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="r_field"/>
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
			<xsl:for-each select="cludove.crest.spruce.trusting_host/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO TRUSTING_HOST (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,ADDRESS,HOST_NAME,NAME,DESCRIPTION,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="address"/>
				<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
				<xsl:value-of select="host_name"/>
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
			<xsl:for-each select="cludove.crest.spruce.data_exchange/record.crest">
				<br/>
				<br/>
				<xsl:text>INSERT INTO DATA_EXCHANGE (CODE,IS_ACTIVE,BUDDLE_ID,CATALOG_ID,DATA_CODE,OPERATION,DATA_NAME,IS_FULL,PROCESSOR_NUMBER,MIGR_POSITION,MIGR_FIELD,SYNC_POSITION,SYNC_FIELD,SYNC_TIME_POSITION,SYNC_TIME_FIELD,CLEAN_EXPRESSION,FLAG_FIELD,MIGR_FIELD_TYPE,SYNC_FIELD_TYPE,SYNC_TIME_FIELD_TYPE,CONNECTION_CODE) </xsl:text>
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
				<xsl:value-of select="connection_code"/>
				<xsl:text>');</xsl:text>
			</xsl:for-each>
		</xsl:if>
		<xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO RESOURCE_DECOMPOSING (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,BUFFER_POOL_SIZE,YEAR_ID,MONTH_ID,DAY_ID,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.resource_connection/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO RESOURCE_CONNECTION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,NAME,TYPE,DRIVER,HOST,PORT,INSTANCE,PATTERN,ACCOUNT,PASSWORD,MAX_NUMBER,TIMEOUT,TEMPLATE,IS_LOCKED,IS_DSB,BUFFER_POOL_SIZE,DECOMPOSING_CODE,REG_STATUS,REG_REASON,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
