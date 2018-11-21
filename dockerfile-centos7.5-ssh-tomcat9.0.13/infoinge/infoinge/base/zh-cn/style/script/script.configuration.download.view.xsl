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
        <xsl:if test="count(cludove.crest.spruce.data_metadata/record.crest) &gt; 0">
            <br/>
            <br/>
            <xsl:text> DELETE FROM DATA_METADATA WHERE DATA_ID LIKE'[</xsl:text>
            <xsl:value-of select="parameter.cludove/buddle_id"/>
            <xsl:text>]%';</xsl:text>
        </xsl:if>
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
        <xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
            <br/>
            <br/>
            <xsl:text>INSERT INTO DATA_METADATA (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,DATA_ID,NAME,REMARK,TYPE,DISPLAY,LENGTH,PRIMARY_NAME,DATA_DIRECT,CONNECTION_CODE) </xsl:text>
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
            <xsl:value-of select="data_id"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="remark"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="type"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="display"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="length"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="primary_name"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="data_direct"/>
            <xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
            <xsl:value-of select="connection_code"/>
            <xsl:text>');</xsl:text>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
