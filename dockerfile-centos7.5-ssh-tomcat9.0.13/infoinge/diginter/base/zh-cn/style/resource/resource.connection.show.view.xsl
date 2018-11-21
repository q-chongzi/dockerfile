<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:text disable-output-escaping="yes">{</xsl:text>
		<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) &gt; 0">
			<xsl:text disable-output-escaping="yes">"code":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"identifier":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"name":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"type":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/type"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"driver":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/driver"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"host":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"port":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/port"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"instance":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/instance"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"pattern":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/pattern"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"max_number":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/max_number"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"timeout":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/timeout"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"template":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"decomposing_code":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/decomposing_code"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"connection_code":"</xsl:text>
			<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/connection_code"/>
			<xsl:text disable-output-escaping="yes">",</xsl:text>
			<xsl:text disable-output-escaping="yes">"http_header":"</xsl:text>
			<xsl:value-of select="parameter.cludove/requestPath.cludove"/>
			<xsl:text disable-output-escaping="yes">"</xsl:text>
		</xsl:if>
		<xsl:text disable-output-escaping="yes">}</xsl:text>
	</xsl:template>
</xsl:stylesheet>
