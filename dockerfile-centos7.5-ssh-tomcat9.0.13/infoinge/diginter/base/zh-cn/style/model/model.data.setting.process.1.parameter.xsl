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
			<xsl:when test="parameter.cludove/migr_field != ''">
				<parameter>
					<xsl:if test="parameter.cludove/data_exchange_code != ''">
						<CODE>
							<xsl:value-of select="parameter.cludove/data_exchange_code"/>
						</CODE>
					</xsl:if>
					<BUDDLE_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
					</BUDDLE_ID>
					<CATALOG_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
					</CATALOG_ID>
					<DATA_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
					</DATA_CODE>
					<OPERATION>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/operation"/>
					</OPERATION>
					<DATA_NAME>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
					</DATA_NAME>
					<IS_FULL>
						<xsl:value-of select="parameter.cludove/data_exchange_is_full"/>
					</IS_FULL>
					<PROCESSOR_NUMBER>
						<xsl:value-of select="parameter.cludove/processor_number"/>
					</PROCESSOR_NUMBER>
					<MIGR_FIELD>
						<xsl:value-of select="parameter.cludove/migr_field"/>
					</MIGR_FIELD>
					<MIGR_FIELD_TYPE>
						<xsl:value-of select="parameter.cludove/field_type"/>
					</MIGR_FIELD_TYPE>
					<CLEAN_EXPRESSION>
						<xsl:value-of select="parameter.cludove/clean_expression"/>
					</CLEAN_EXPRESSION>
					<CONNECTION_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_code"/>
					</CONNECTION_CODE>
				</parameter>
			</xsl:when>
			<xsl:when test="parameter.cludove/sync_field != ''">
				<parameter>
					<xsl:if test="parameter.cludove/data_exchange_code != ''">
						<CODE>
							<xsl:value-of select="parameter.cludove/data_exchange_code"/>
						</CODE>
					</xsl:if>
					<BUDDLE_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
					</BUDDLE_ID>
					<CATALOG_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
					</CATALOG_ID>
					<DATA_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
					</DATA_CODE>
					<OPERATION>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/operation"/>
					</OPERATION>
					<DATA_NAME>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
					</DATA_NAME>
					<IS_FULL>
						<xsl:value-of select="parameter.cludove/data_exchange_is_full"/>
					</IS_FULL>
					<PROCESSOR_NUMBER>
						<xsl:value-of select="parameter.cludove/processor_number"/>
					</PROCESSOR_NUMBER>
					<SYNC_FIELD>
						<xsl:value-of select="parameter.cludove/sync_field"/>
					</SYNC_FIELD>
					<SYNC_FIELD_TYPE>
						<xsl:value-of select="parameter.cludove/field_type"/>
					</SYNC_FIELD_TYPE>
					<SYNC_TIME_FIELD>
						<xsl:value-of select="parameter.cludove/sync_time_field"/>
					</SYNC_TIME_FIELD>
					<FLAG_FIELD>
						<xsl:value-of select="parameter.cludove/flag_field"/>
					</FLAG_FIELD>
					<FLAG_CHANGE>
						<xsl:value-of select="parameter.cludove/flag_change"/>
					</FLAG_CHANGE>
					<FLAG_RESET>
						<xsl:value-of select="parameter.cludove/flag_reset"/>
					</FLAG_RESET>
					<SYNC_TIME_FIELD_TYPE>
						<xsl:value-of select="parameter.cludove/time_field_type"/>
					</SYNC_TIME_FIELD_TYPE>
					<CLEAN_EXPRESSION>
						<xsl:value-of select="parameter.cludove/clean_expression"/>
					</CLEAN_EXPRESSION>
					<CONNECTION_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_code"/>
					</CONNECTION_CODE>
				</parameter>
			</xsl:when>
			<xsl:when test="parameter.cludove/metadata_filed_migr != ''">
				<parameter>
					<xsl:if test="parameter.cludove/data_exchange_code != ''">
						<CODE>
							<xsl:value-of select="parameter.cludove/data_exchange_code"/>
						</CODE>
					</xsl:if>
					<BUDDLE_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
					</BUDDLE_ID>
					<CATALOG_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
					</CATALOG_ID>
					<DATA_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
					</DATA_CODE>
					<OPERATION>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/operation"/>
					</OPERATION>
					<DATA_NAME>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
					</DATA_NAME>
					<PROCESSOR_NUMBER>
						<xsl:value-of select="parameter.cludove/processor_number"/>
					</PROCESSOR_NUMBER>
					<MIGR_FIELD>
						<xsl:value-of select="parameter.cludove/metadata_filed_migr"/>
					</MIGR_FIELD>
				</parameter>
			</xsl:when>
			<xsl:when test="parameter.cludove/metadata_filed_sync != ''">
				<parameter>
					<xsl:if test="parameter.cludove/data_exchange_code != ''">
						<CODE>
							<xsl:value-of select="parameter.cludove/data_exchange_code"/>
						</CODE>
					</xsl:if>
					<BUDDLE_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/>
					</BUDDLE_ID>
					<CATALOG_ID>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/catalog_id"/>
					</CATALOG_ID>
					<DATA_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/code"/>
					</DATA_CODE>
					<OPERATION>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/operation"/>
					</OPERATION>
					<DATA_NAME>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/name"/>
					</DATA_NAME>
					<PROCESSOR_NUMBER>
						<xsl:value-of select="parameter.cludove/processor_number"/>
					</PROCESSOR_NUMBER>
					<SYNC_FIELD>
						<xsl:value-of select="parameter.cludove/metadata_filed_sync"/>
					</SYNC_FIELD>
				</parameter>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
