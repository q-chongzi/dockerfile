<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="../../../../style/base/zh-cn/common.xsl"/>
	<xsl:template name="buddle">
		<xsl:call-template name="catalog"/>
	</xsl:template>
	<xsl:template name="sql_types_show">
		<xsl:param name="field_type"/>
		<xsl:choose>
			<xsl:when test="$field_type = -7">
				<xsl:text>bit</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -6">
				<xsl:text>tinyint</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 5">
				<xsl:text>smallint</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 4">
				<xsl:text>integer</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -5">
				<xsl:text>bigint</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 6">
				<xsl:text>float</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 7">
				<xsl:text>real</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 8">
				<xsl:text>double</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2">
				<xsl:text>numeric</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 3">
				<xsl:text>decimal</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 1">
				<xsl:text>char</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 12">
				<xsl:text>varchar</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -1">
				<xsl:text>longvarchar</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 91">
				<xsl:text>date</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 92">
				<xsl:text>time</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 93">
				<xsl:text>timestamp</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -2">
				<xsl:text>binary</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -3">
				<xsl:text>varbinary</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -4">
				<xsl:text>longvarbinary</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 0">
				<xsl:text>null</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 1111">
				<xsl:text>other</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2000">
				<xsl:text>java_object</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2001">
				<xsl:text>distinct</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2002">
				<xsl:text>struct</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2003">
				<xsl:text>array</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2004">
				<xsl:text>blob</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2005">
				<xsl:text>clob</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2006">
				<xsl:text>ref</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 70">
				<xsl:text>datalink</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 16">
				<xsl:text>boolean</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -8">
				<xsl:text>rowid</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -15">
				<xsl:text>nchar</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -9">
				<xsl:text>nvarchar</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -16">
				<xsl:text>longnvarchar</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2011">
				<xsl:text>nclob</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2009">
				<xsl:text>sqlxml</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2012">
				<xsl:text>ref_cursor</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2013">
				<xsl:text>time_with_timezone</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2014">
				<xsl:text>timestamp_with_timezone</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$field_type"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="sql_operator_show">
		<xsl:param name="sql_operator"/>
		<xsl:choose>
			<xsl:when test="$sql_operator = '='">
				<xsl:text>等于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = '!='">
				<xsl:text>不等于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = '&lt;'">
				<xsl:text>小于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = '&lt;='">
				<xsl:text>小于等于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = '&gt;'">
				<xsl:text>大于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = '&gt;='">
				<xsl:text>大于等于</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'LIKE'">
				<xsl:text>包含</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'NOT LIKE'">
				<xsl:text>不包含</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'IS NULL'">
				<xsl:text>是空</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'IS NOT NULL'">
				<xsl:text>不是空</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'EXISTS'">
				<xsl:text>在列表中</xsl:text>
			</xsl:when>
			<xsl:when test="$sql_operator = 'NOT EXISTS'">
				<xsl:text>不在列表中</xsl:text>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
