<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<journal.cludove>
			<xsl:value-of select="journal.cludove"/>
		</journal.cludove>
	</xsl:template>
</xsl:stylesheet>
