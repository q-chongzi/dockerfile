<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="html"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:if test="count(cludove.crest.spruce.resource_relevance/record.crest) &gt; 0">
			<xsl:text> DELETE FROM RESOURCE_RELEVANCE; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.field_label/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM FIELD_LABEL; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.resource_label/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM RESOURCE_LABEL; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.field_verify/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM FIELD_VERIFY; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.verify_regulation/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM VERIFY_REGULATION; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.field_cleanout/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM FIELD_CLEANOUT; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.verify_cleanout/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM VERIFY_CLEANOUT; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.cleanout_regulation/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CLEANOUT_REGULATION; </xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.catalog_comment/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CATALOG_COMMENT WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.catalog_parameter/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CATALOG_PARAMETER WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.catalog_return/record.crest) &gt; 0">
			<br/>
			<br/>
			<xsl:text> DELETE FROM CATALOG_RETURN WHERE BUDDLE_ID='</xsl:text>
			<xsl:value-of select="parameter.cludove/buddle_id"/>
			<xsl:text>';</xsl:text>
		</xsl:if>
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
		<xsl:for-each select="cludove.crest.spruce.field_label/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO FIELD_LABEL (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,RESOURCE_NAME,FIELD_NAME,FIELD_LABEL,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="field_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="field_label"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.resource_label/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO RESOURCE_LABEL (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,RESOURCE_NAME,RESOURCE_LABEL,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="resource_label"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.field_verify/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO FIELD_VERIFY (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,RESOURCE_NAME,FIELD_NAME,VERIFY_CODE,POSITION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="field_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="verify_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.verify_regulation/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO VERIFY_REGULATION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,REGULATION_NAME,REGULATION,CLASS,DESCRIPTION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="regulation_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="regulation"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="description"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.field_cleanout/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO FIELD_CLEANOUT (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,FIELD_VERIFY_CODE,CLEANOUT_CODE,FIRST_CONTENT,SECOND_CONTENT,POSITION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="field_verify_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="cleanout_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="first_content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="second_content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.verify_cleanout/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO VERIFY_CLEANOUT (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,VERIFY_CODE,CLEANOUT_CODE,FIRST_CONTENT,SECOND_CONTENT,POSITION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="verify_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="cleanout_code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="first_content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="second_content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="position"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.cleanout_regulation/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CLEANOUT_REGULATION (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,IDENTIFIER,REGULATION_NAME,CLASS,DESCRIPTION,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="regulation_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="class"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="description"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.catalog_comment/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CATALOG_COMMENT (CODE,IS_ACTIVE,BUDDLE_ID,CATALOG_ID,COMMENT_TIME,CONTENT,CONNECTION_CODE) </xsl:text>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]></xsl:text>
			<xsl:text>  VALUES ('</xsl:text>
			<xsl:value-of select="code"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_active"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="buddle_id"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="catalog_id"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="comment_time"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.catalog_parameter/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CATALOG_PARAMETER (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,DATA_POSITION,DATA_CODE,DATA_NAME,DATA_TYPE,IS_PARAMETER,IS_MUST,PARAMETER_NAME,PARAMETER_TYPE,PARAMETER_LENGTH,CONNECTION_ID,RESOURCE_BUDDLE,RESOURCE_NAME,RELATED_FIELD,REQUIREMENT,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="data_name"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="data_type"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_parameter"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="is_must"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="parameter_name"/>
			<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="parameter_type"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="parameter_length"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_id"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="resource_buddle"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="resource_name"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="related_field"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="requirement"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
		<xsl:for-each select="cludove.crest.spruce.catalog_return/record.crest">
			<br/>
			<br/>
			<xsl:text>INSERT INTO CATALOG_RETURN (CODE,IS_ACTIVE,CHANGE_FROM,CHANGE_INDEX,CHANGE_NUMBER,SECRET,SECRECY,BUILDER,OWNER,START_DATE,END_DATE,BUDDLE_ID,CATALOG_ID,CONTENT,CONNECTION_CODE) </xsl:text>
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
			<xsl:value-of select="content"/>
			<xsl:text disable-output-escaping="yes">'<![CDATA[&nbsp;]]>,<![CDATA[&nbsp;]]>'</xsl:text>
			<xsl:value-of select="connection_code"/>
			<xsl:text>');</xsl:text>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
