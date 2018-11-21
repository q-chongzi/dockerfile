<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.online_help/record.crest">
			<li>
				<a href="javascript:void(0)" onclick="">
					<xsl:attribute name="onclick">onOnlinHelpTreeListShow('<xsl:value-of select="code"/>')</xsl:attribute>
					<span>应用一</span>
				</a>
				<ul>
					<xsl:attribute name="id"><xsl:value-of select="code"/></xsl:attribute>
				</ul>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
