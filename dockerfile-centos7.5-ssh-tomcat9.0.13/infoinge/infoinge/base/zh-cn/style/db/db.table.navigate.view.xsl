<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="db.table/record.crest">
			<li>
				<a href="javascript:void(0)">
					<xsl:attribute name="title"><xsl:value-of select="remarks"/></xsl:attribute>
					<span>
						<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/catalog"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/schema"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="table_name"/><xsl:text disable-output-escaping="yes">_navigater</xsl:text></xsl:attribute>
						<xsl:attribute name="onclick">onDBColumnSearch('<xsl:value-of select="/content/parameter.cludove/record_code"/>', '<xsl:value-of select="/content/parameter.cludove/identifier"/>', '<xsl:value-of select="/content/parameter.cludove/host"/>', '<xsl:value-of select="/content/parameter.cludove/port"/>', '<xsl:value-of select="/content/parameter.cludove/instance"/>', '<xsl:value-of select="/content/parameter.cludove/account"/>', '<xsl:value-of select="/content/parameter.cludove/password"/>', '<xsl:value-of select="/content/parameter.cludove/driver"/>', '<xsl:value-of select="/content/parameter.cludove/template"/>', '<xsl:value-of select="/content/parameter.cludove/catalog"/>', '<xsl:value-of select="/content/parameter.cludove/schema"/>', '<xsl:value-of select="table_name"/>')</xsl:attribute>
						<xsl:value-of select="table_type"/>
						<xsl:text disable-output-escaping="yes">.</xsl:text>
						<xsl:value-of select="table_name"/>
					</span>
				</a>
				<ul>
					<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/catalog"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/schema"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="table_name"/><xsl:text disable-output-escaping="yes">_container</xsl:text></xsl:attribute>
				</ul>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
