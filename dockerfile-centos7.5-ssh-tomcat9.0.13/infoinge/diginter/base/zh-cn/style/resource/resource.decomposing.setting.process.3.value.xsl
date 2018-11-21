<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:template match="/">
		<parameters>
			<xsl:apply-templates select="content"/>
		</parameters>
	</xsl:template>
	<xsl:template match="content">
		<xsl:if test="count(cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']) > 0">
			<parameter>
				<CONTENT>
					<xsl:value-of select="parameter.cludove/telephone"/>
				</CONTENT>
			</parameter>
		</xsl:if>
		<xsl:if test="count(cludove.crest.spruce.contact[1]/record.crest[type = 'email']) > 0">
			<parameter>
				<CONTENT>
					<xsl:value-of select="parameter.cludove/email"/>
				</CONTENT>
			</parameter>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
