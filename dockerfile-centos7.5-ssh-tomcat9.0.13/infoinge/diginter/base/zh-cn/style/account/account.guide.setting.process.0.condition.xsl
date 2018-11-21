<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<parameter>
			<xsl:choose>
				<xsl:when test="parameter.cludove/account.cludove='admin'">
					<ACCOUNT_NAME>
						<xsl:text>admin_guide</xsl:text>
					</ACCOUNT_NAME>
				</xsl:when>
				<xsl:otherwise>
					<ACCOUNT_NAME>
						<xsl:value-of select="parameter.cludove/account.cludove"/>
					</ACCOUNT_NAME>
				</xsl:otherwise>
			</xsl:choose>
		</parameter>
	</xsl:template>
</xsl:stylesheet>
