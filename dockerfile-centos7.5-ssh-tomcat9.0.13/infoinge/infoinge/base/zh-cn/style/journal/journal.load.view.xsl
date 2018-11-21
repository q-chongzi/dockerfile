<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="@*|node()">
		<xsl:copy>
			<xsl:apply-templates select="@*|node()"/>
		</xsl:copy>
	</xsl:template>
	<!--<xsl:variable name="journal" select="//journal.cludove"/>-->
	<!--<xsl:template match="content">-->
		<!--<xsl:for-each select="journal.cludove/*">-->
			<!--<xsl:apply-templates/>-->
			<!--&lt;!&ndash;<xsl:value-of select="."/>&ndash;&gt;-->
		<!--</xsl:for-each>-->
	<!--</xsl:template>-->
	<!--<xsl:template match="//journal.cludove/@*|node()">-->
		<!--<xsl:copy>-->
			<!--<xsl:apply-templates select="//journal.cludove/@*|node()"/>-->
		<!--</xsl:copy>-->
	<!--</xsl:template>-->
	<!--<xsl:template match="*">-->
		<!--<aaaa>12345</aaaa>-->
		<!--&lt;!&ndash;<xsl:if test="$journal = ancestor::* and $journal = ancestor::* | current()">&ndash;&gt;-->
			<!--<xsl:copy>-->
				<!--&lt;!&ndash;<xsl:copy-of select="@*"/>&ndash;&gt;-->
				<!--<xsl:apply-templates/>-->
			<!--</xsl:copy>-->
		<!--&lt;!&ndash;</xsl:if>&ndash;&gt;-->
	<!--</xsl:template>-->
	<!--<xsl:template match="text() | comment() | processing-instruction()">-->
		<!--<xsl:copy/>-->
	<!--</xsl:template>-->
</xsl:stylesheet>
