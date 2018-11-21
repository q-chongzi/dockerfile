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
			<xsl:when test="parameter.cludove/r_field != ''">
				<parameter>
					<!--<xsl:if test="parameter.cludove/resource_relevance_code != ''">-->
						<!--<CODE>-->
							<!--<xsl:value-of select="parameter.cludove/resource_relevance_code"/>-->
						<!--</CODE>-->
					<!--</xsl:if>-->

					<CATALOG_ID>
						<xsl:value-of select="parameter.cludove/catalog_id"/>
					</CATALOG_ID>

					<BUDDLE_ID>
						<xsl:value-of select="parameter.cludove/buddle_id"/>
					</BUDDLE_ID>

					<S_IDENTIFIER>
						<xsl:value-of select="parameter.cludove/connection_id"/>
					</S_IDENTIFIER>

					<S_RESOURCE_NAME>
						<xsl:value-of select="parameter.cludove/resource_name"/>
					</S_RESOURCE_NAME>

					<S_FIELD>
						<xsl:value-of select="parameter.cludove/s_field"/>
					</S_FIELD>

					<S_FIELD_TYPE>
						<xsl:value-of select="parameter.cludove/data_s_field_type"/>
					</S_FIELD_TYPE>

					<R_IDENTIFIER>
						<xsl:value-of select="parameter.cludove/r_identifier"/>
					</R_IDENTIFIER>

					<R_RESOURCE_NAME>
						<xsl:value-of select="parameter.cludove/r_resource_name"/>
					</R_RESOURCE_NAME>

					<R_FIELD>
						<xsl:value-of select="parameter.cludove/r_field"/>
					</R_FIELD>

					<R_FIELD_TYPE>
						<xsl:value-of select="parameter.cludove/data_r_field_type"/>
					</R_FIELD_TYPE>

					<CONNECTION_CODE>
						<xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_code"/>
					</CONNECTION_CODE>
				</parameter>
			</xsl:when>
			<xsl:otherwise/>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
