<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:template match="content">
		<input type="hidden" id="api_account">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/account" />
			</xsl:attribute>
		</input>
		<input id="api_password" type="hidden">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/password" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="resource_name">
			<xsl:attribute name="value">
				<xsl:value-of select="parameter.cludove/resource_name" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="resource_identifier">
			<xsl:attribute name="value">
				<xsl:value-of select="parameter.cludove/resource_identifier" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="template">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="is_local">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/is_local" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="password">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/account_password" />
			</xsl:attribute>
		</input>
		<xsl:for-each select="cludove.crest.spruce.contact/record.crest">
			<xsl:choose>
				<xsl:when test="type = 'telephone'">
					<input id="api_tele" type="hidden">
						<xsl:attribute name="value">
							<xsl:value-of select="content" />
						</xsl:attribute>
					</input>
				</xsl:when>
				<xsl:otherwise>
					<input id="api_email" type="hidden">
						<xsl:attribute name="value">
							<xsl:value-of select="content" />
						</xsl:attribute>
					</input>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
