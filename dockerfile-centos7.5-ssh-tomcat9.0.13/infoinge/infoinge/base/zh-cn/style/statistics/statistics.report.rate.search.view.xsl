<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="text" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:text>[</xsl:text>
		<xsl:for-each select="cludove.crest.spruce.data_statistics/record.crest">
			<xsl:sort order="descending" select="record_hour" data-type="number" />
			<xsl:sort order="descending" select="record_day" data-type="number" />
			<xsl:sort order="descending" select="record_month"
				data-type="number" />
			<xsl:sort order="descending" select="record_year" data-type="number" />
			<xsl:sort order="descending" select="effect_number"
				data-type="number" />
			<xsl:sort order="descending" select="catalog_name"
				data-type="text" />
			<xsl:if test="position() > 1">
				<xsl:text>,</xsl:text>
			</xsl:if>
			<xsl:text>{</xsl:text>
			<xsl:text>time:"</xsl:text>
			<xsl:if test="/content/parameter.cludove/report_time = 0">
				<xsl:value-of select="record_month" />
				<xsl:text>月</xsl:text>
				<xsl:value-of select="record_day" />
				<xsl:text>日</xsl:text>
				<xsl:value-of select="record_hour" />
				<xsl:text>时</xsl:text>
			</xsl:if>
			<xsl:if test="/content/parameter.cludove/report_time = 1">
				<xsl:value-of select="record_month" />
				<xsl:text>月</xsl:text>
				<xsl:value-of select="record_day" />
				<xsl:text>日</xsl:text>
			</xsl:if>
			<xsl:if test="/content/parameter.cludove/report_time = 2">
				<xsl:value-of select="record_month" />
				<xsl:text>月</xsl:text>
			</xsl:if>
			<xsl:if test="/content/parameter.cludove/report_time = 3">
				<xsl:value-of select="record_year" />
				<xsl:text>年</xsl:text>
			</xsl:if>
			<xsl:text>",</xsl:text>
			<xsl:text>buddle_name:"</xsl:text>
			<xsl:value-of select="buddle_name" />
			<xsl:text>",</xsl:text>
			<xsl:text>catalog_name:"</xsl:text>
			<xsl:value-of select="catalog_name" />
			<xsl:text>",</xsl:text>
			<xsl:text>effect_number:"</xsl:text>
			<xsl:value-of select="effect_number" />
			<xsl:text>"}</xsl:text>
		</xsl:for-each>
		<xsl:text>]</xsl:text>
	</xsl:template>
</xsl:stylesheet>
