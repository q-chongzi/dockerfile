<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml"/>
	<xsl:include href="../common.xsl"/>
	<xsl:template name="catalog">
		<xsl:apply-templates select="/content"/>
	</xsl:template>
</xsl:stylesheet>
