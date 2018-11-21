<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:template match="/">
		<xsl:call-template name="lang"/>
	</xsl:template>
	<xsl:template name="pagination_show_number">
		<xsl:param name="start_number"/>
		<xsl:param name="current_number"/>
		<xsl:param name="total_number"/>
		<xsl:param name="execute_statement"/>
		<xsl:param name="page_number_id"/>
		<xsl:if test="$start_number &lt;= $total_number">
			<a tabindex="0">
				<xsl:choose>
					<xsl:when test="$start_number = $current_number">
						<xsl:attribute name="class">paginate_active</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="class">paginate_button</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:attribute name="onclick">$('#<xsl:value-of select="$page_number_id"/>').val(<xsl:value-of select="$start_number - 1"/>); <xsl:value-of select="$execute_statement"/></xsl:attribute>
				<xsl:value-of select="$start_number"/>
			</a>
			<xsl:call-template name="pagination_show_number">
				<xsl:with-param name="start_number">
					<xsl:value-of select="$start_number + 1"/>
				</xsl:with-param>
				<xsl:with-param name="current_number">
					<xsl:value-of select="$current_number"/>
				</xsl:with-param>
				<xsl:with-param name="total_number">
					<xsl:value-of select="$total_number"/>
				</xsl:with-param>
				<xsl:with-param name="execute_statement">
					<xsl:value-of select="$execute_statement"/>
				</xsl:with-param>
				<xsl:with-param name="page_number_id">
					<xsl:value-of select="$page_number_id"/>
				</xsl:with-param>
			</xsl:call-template>
		</xsl:if>
	</xsl:template>
	<xsl:template name="output_left_inclusion_symbol_by_type">
		<xsl:param name="field_type"/>
		<xsl:param name="resource_driver"/>
		<xsl:choose>
			<xsl:when test="$field_type = -7">
				<!--xsl:text>BIT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -6">
				<!--xsl:text>TINYINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 5">
				<!--xsl:text>SMALLINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 4">
				<!--xsl:text>INTEGER</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -5">
				<!--xsl:text>BIGINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 6">
				<!--xsl:text>FLOAT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 7">
				<!--xsl:text>REAL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 8">
				<!--xsl:text>DOUBLE</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2">
				<!--xsl:text>NUMERIC</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 3">
				<!--xsl:text>DECIMAL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 1">
				<!--xsl:text>CHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 12">
				<!--xsl:text>VARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -1">
				<!--xsl:text>LONGVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 91">
				<!--xsl:text>DATE</xsl:text -->
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>TO_DATE(</xsl:text>
				</xsl:if>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 92">
				<!--xsl:text>TIME</xsl:text -->
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>TO_DATE(</xsl:text>
				</xsl:if>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 93">
				<!--xsl:text>TIMESTAMP</xsl:text -->
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>TO_DATE(</xsl:text>
				</xsl:if>
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -2">
				<!--xsl:text>BINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -3">
				<!--xsl:text>VARBINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -4">
				<!--xsl:text>LONGVARBINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 0">
				<!--xsl:text>NULL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 1111">
				<!--xsl:text>OTHER</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2000">
				<!--xsl:text>JAVA_OBJECT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2001">
				<!--xsl:text>DISTINCT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2002">
				<!--xsl:text>STRUCT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2003">
				<!--xsl:text>ARRAY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2004">
				<!--xsl:text>BLOB</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2005">
				<!--xsl:text>CLOB</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2006">
				<!--xsl:text>REF</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 70">
				<!--xsl:text>DATALINK</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 16">
				<!--xsl:text>BOOLEAN</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -8">
				<!--xsl:text>ROWID</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -15">
				<!--xsl:text>NCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -9">
				<!--xsl:text>NVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -16">
				<!--xsl:text>LONGNVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2011">
				<!--xsl:text>NCLOB</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2009">
				<!--xsl:text>SQLXML</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2012">
				<!--xsl:text>REF_CURSOR</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2013">
				<!--xsl:text>TIME_WITH_TIMEZONE</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2014">
				<!--xsl:text>TIMESTAMP_WITH_TIMEZONE</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$field_type"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="output_right_inclusion_symbol_by_type">
		<xsl:param name="field_type"/>
		<xsl:param name="resource_driver"/>
		<xsl:choose>
			<xsl:when test="$field_type = -7">
				<!--xsl:text>BIT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -6">
				<!--xsl:text>TINYINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 5">
				<!--xsl:text>SMALLINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 4">
				<!--xsl:text>INTEGER</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -5">
				<!--xsl:text>BIGINT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 6">
				<!--xsl:text>FLOAT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 7">
				<!--xsl:text>REAL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 8">
				<!--xsl:text>DOUBLE</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2">
				<!--xsl:text>NUMERIC</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 3">
				<!--xsl:text>DECIMAL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 1">
				<!--xsl:text>CHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 12">
				<!--xsl:text>VARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -1">
				<!--xsl:text>LONGVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 91">
				<!--xsl:text>DATE</xsl:text -->
				<xsl:text>'</xsl:text>
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>, 'yyyy-mm-dd hh24:mi:ss')</xsl:text>
				</xsl:if>
			</xsl:when>
			<xsl:when test="$field_type = 92">
				<!--xsl:text>TIME</xsl:text -->
				<xsl:text>'</xsl:text>
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>, 'yyyy-mm-dd hh24:mi:ss')</xsl:text>
				</xsl:if>
			</xsl:when>
			<xsl:when test="$field_type = 93">
				<!--xsl:text>TIMESTAMP</xsl:text -->
				<xsl:text>'</xsl:text>
				<xsl:if test="contains($resource_driver, 'oracle')">
					<xsl:text>, 'yyyy-mm-dd hh24:mi:ss')</xsl:text>
				</xsl:if>
			</xsl:when>
			<xsl:when test="$field_type = -2">
				<!--xsl:text>BINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -3">
				<!--xsl:text>VARBINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -4">
				<!--xsl:text>LONGVARBINARY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 0">
				<!--xsl:text>NULL</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 1111">
				<!--xsl:text>OTHER</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2000">
				<!--xsl:text>JAVA_OBJECT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2001">
				<!--xsl:text>DISTINCT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2002">
				<!--xsl:text>STRUCT</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2003">
				<!--xsl:text>ARRAY</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2004">
				<!--xsl:text>BLOB</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2005">
				<!--xsl:text>CLOB</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2006">
				<!--xsl:text>REF</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 70">
				<!--xsl:text>DATALINK</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 16">
				<!--xsl:text>BOOLEAN</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -8">
				<!--xsl:text>ROWID</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = -15">
				<!--xsl:text>NCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -9">
				<!--xsl:text>NVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = -16">
				<!--xsl:text>LONGNVARCHAR</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2011">
				<!--xsl:text>NCLOB</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2009">
				<!--xsl:text>SQLXML</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2012">
				<!--xsl:text>REF_CURSOR</xsl:text -->
			</xsl:when>
			<xsl:when test="$field_type = 2013">
				<!--xsl:text>TIME_WITH_TIMEZONE</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:when test="$field_type = 2014">
				<!--xsl:text>TIMESTAMP_WITH_TIMEZONE</xsl:text -->
				<xsl:text>'</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$field_type"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
