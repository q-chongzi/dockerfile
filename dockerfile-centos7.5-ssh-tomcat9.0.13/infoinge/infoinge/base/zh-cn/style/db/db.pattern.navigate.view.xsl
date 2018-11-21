<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<div class="tit">
			<span>
				<a href="javascript:void(0)" style="color: white">
					<xsl:attribute name="onclick">onResourceConnectionSetting('<xsl:value-of select="parameter.cludove/record_code"/>')</xsl:attribute>
					<xsl:text disable-output-escaping="yes">资源定义</xsl:text>
				</a>
				<!--<xsl:text disable-output-escaping="yes"> - </xsl:text>-->
				<!--<a href="javascript:void(0)" style="color: white">-->
					<!--<xsl:attribute name="onclick">onDBPatternNaviagate('<xsl:value-of select="parameter.cludove/record_code" />', '<xsl:value-of select="parameter.cludove/identifier" />', '<xsl:value-of select="parameter.cludove/host" />', '<xsl:value-of select="parameter.cludove/port" />', '<xsl:value-of select="parameter.cludove/instance" />', '<xsl:value-of select="parameter.cludove/pattern" />', '<xsl:value-of select="parameter.cludove/account" />', '<xsl:value-of select="parameter.cludove/password" />', '<xsl:value-of select="parameter.cludove/driver" />', '<xsl:value-of select="parameter.cludove/template" />')</xsl:attribute>-->
					<!--<xsl:value-of select="parameter.cludove/identifier"/>-->
				<!--</a>-->
			</span>
		</div>
		<ul>
			<xsl:for-each select="db.schema/table_cat">
				<li>
					<a href="javascript:void(0)">
						<span>
							<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_navigater_</xsl:text><xsl:value-of select="."/></xsl:attribute>
							<xsl:attribute name="onclick">onDBTableNaviagate('<xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_container_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_navigater_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/record_code"/>', '<xsl:value-of select="/content/parameter.cludove/identifier"/>', '<xsl:value-of select="/content/parameter.cludove/host"/>', '<xsl:value-of select="/content/parameter.cludove/port"/>', '<xsl:value-of select="/content/parameter.cludove/instance"/>', '<xsl:value-of select="/content/parameter.cludove/account"/>', '<xsl:value-of select="/content/parameter.cludove/password"/>', '<xsl:value-of select="/content/parameter.cludove/driver"/>', '<xsl:value-of select="/content/parameter.cludove/template"/>', '<xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/pattern"/>')</xsl:attribute>
							<!--<xsl:text disable-output-escaping="yes">catalog.</xsl:text>-->
							<!--<xsl:value-of select="."/>-->
							<!--<xsl:text> - </xsl:text>-->
							<xsl:value-of select="/content/parameter.cludove/name"/>
							<xsl:text> - </xsl:text>
							<xsl:text disable-output-escaping="yes">catalog.</xsl:text>
							<xsl:value-of select="."/>
						</span>
					</a>
					<ul>
						<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_container_</xsl:text><xsl:value-of select="."/></xsl:attribute>
					</ul>
				</li>
			</xsl:for-each>
			<xsl:for-each select="db.schema/table_schem">
				<li>
					<a href="javascript:void(0)">
						<span>
							<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_navigater_</xsl:text><xsl:value-of select="."/></xsl:attribute>
							<xsl:attribute name="onclick">onDBTableNaviagate('<xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_container_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_navigater_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/record_code"/>', '<xsl:value-of select="/content/parameter.cludove/identifier"/>', '<xsl:value-of select="/content/parameter.cludove/host"/>', '<xsl:value-of select="/content/parameter.cludove/port"/>', '<xsl:value-of select="/content/parameter.cludove/instance"/>', '<xsl:value-of select="/content/parameter.cludove/account"/>', '<xsl:value-of select="/content/parameter.cludove/password"/>', '<xsl:value-of select="/content/parameter.cludove/driver"/>', '<xsl:value-of select="/content/parameter.cludove/template"/>', '', '<xsl:value-of select="."/>')</xsl:attribute>
							<xsl:text disable-output-escaping="yes">schema.</xsl:text>
							<xsl:value-of select="."/>
						</span>
					</a>
					<ul>
						<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_container_</xsl:text><xsl:value-of select="."/></xsl:attribute>
					</ul>
				</li>
			</xsl:for-each>
		</ul>
		<input type="hidden" id="table_id"/>
	</xsl:template>
</xsl:stylesheet>
