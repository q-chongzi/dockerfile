<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:if test="parameter.cludove/account.cludove = 'admin'">
			<parameter>
				<account.cludove>
					<xsl:value-of select="parameter.cludove/account.cludove"/>
				</account.cludove>
				<password.cludove>
					<xsl:value-of select="parameter.cludove/account_password"/>
				</password.cludove>
			</parameter>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
