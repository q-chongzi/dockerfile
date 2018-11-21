<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="check_number">
			<xsl:value-of select="parameter.cludove/check_number"/>
		</xsl:variable>
		<xsl:choose>
			<xsl:when test="parameter.cludove/account.cludove = 'admin' or count(cludove.crest.spruce.permission_control/record.crest) >= $check_number">
				<xsl:value-of select="parameter.cludove/permission_setting_id"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$check_number"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
