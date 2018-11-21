<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:if test="count(cludove.crest.spruce.captcha[1]/record.crest) > 0">
			<parameter>
				<VALIDATE_CODE>
					<xsl:value-of select="parameter.cludove/account_name"/>
				</VALIDATE_CODE>
				<EFFECTIVE_DATE>
					<xsl:value-of select="substring(parameter.cludove/effective_date, 1, 19)"/>
				</EFFECTIVE_DATE>
			</parameter>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
