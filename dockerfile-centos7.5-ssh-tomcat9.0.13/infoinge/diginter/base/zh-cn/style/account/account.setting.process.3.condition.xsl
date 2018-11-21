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
				<CODE>
					<xsl:value-of select="cludove.crest.spruce.captcha[1]/record.crest/code"/>
				</CODE>
			</parameter>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
