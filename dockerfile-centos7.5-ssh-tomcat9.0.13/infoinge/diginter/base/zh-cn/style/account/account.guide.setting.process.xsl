<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="parameter.cludove/account.cludove = 'admin'">
				<xsl:text>admin</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/is_guide"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
