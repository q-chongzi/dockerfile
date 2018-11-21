<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312"
		indent="no" />
	<xsl:template match="/">
		<xsl:apply-templates select="content" />
	</xsl:template>
	<xsl:template match="content">
		<xsl:choose>
			<xsl:when test="count(parameter.cludove/buddle_name) = 0">
				<xsl:if test="parameter.cludove/report_time = 0">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text> and RECORD_MONTH = </xsl:text>
					<xsl:value-of select="parameter.cludove/month" />
					<xsl:text> and RECORD_DAY = </xsl:text>
					<xsl:value-of select="parameter.cludove/day" />
					<xsl:text disable-output-escaping="yes"> and RECORD_HOUR != 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 1">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text> and RECORD_MONTH = </xsl:text>
					<xsl:value-of select="parameter.cludove/month" />
					<xsl:text disable-output-escaping="yes"> and RECORD_DAY != 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 2">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text disable-output-escaping="yes"> and RECORD_MONTH != 0 </xsl:text>
					<xsl:text> and RECORD_DAY = 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 3">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text disable-output-escaping="yes">' and RECORD_YEAR != 0 </xsl:text>
					<xsl:text> and RECORD_MONTH = 0 </xsl:text>
					<xsl:text> and RECORD_DAY = 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
			</xsl:when>
			<xsl:otherwise>
				<xsl:text>BUDDLE_NAME='</xsl:text>
				<xsl:value-of select="parameter.cludove/buddle_name" />
				<xsl:text>' and </xsl:text>
				<xsl:if test="parameter.cludove/report_time = 0">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text> and RECORD_MONTH = </xsl:text>
					<xsl:value-of select="parameter.cludove/month" />
					<xsl:text> and RECORD_DAY = </xsl:text>
					<xsl:value-of select="parameter.cludove/day" />
					<xsl:text disable-output-escaping="yes"> and RECORD_HOUR != 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 1">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text> and RECORD_MONTH = </xsl:text>
					<xsl:value-of select="parameter.cludove/month" />
					<xsl:text disable-output-escaping="yes"> and RECORD_DAY != 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 2">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text>' and RECORD_YEAR = </xsl:text>
					<xsl:value-of select="parameter.cludove/year" />
					<xsl:text disable-output-escaping="yes"> and RECORD_MONTH != 0 </xsl:text>
					<xsl:text> and RECORD_DAY = 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
				<xsl:if test="parameter.cludove/report_time = 3">
					<xsl:text>JOURNAL_TYPE='</xsl:text>
					<xsl:value-of select="parameter.cludove/journal_type" />
					<xsl:text disable-output-escaping="yes">' and RECORD_YEAR != 0 </xsl:text>
					<xsl:text> and RECORD_MONTH = 0 </xsl:text>
					<xsl:text> and RECORD_DAY = 0 </xsl:text>
					<xsl:text> and RECORD_HOUR = 0 </xsl:text>
				</xsl:if>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
