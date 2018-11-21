<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.data_expression/record.crest">
			<xsl:sort order="ascending" select="position"/>
			<li>
				<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
				<a href="javascript:void(0)">
					<span>
						<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_expression_item_navigater</xsl:text></xsl:attribute>
						<xsl:attribute name="onclick">onExpressionItemNaviagate('<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_expression_item_container</xsl:text>', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_expression_item_navigater</xsl:text>', '<xsl:value-of select="code"/>');$('#resource_navigation a').css('color','#fff');$(this).parent().css('color',"#ff633b");</xsl:attribute>
						<xsl:value-of select="position"/>
					</span>
				</a>
				<ul>
					<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_expression_item_container</xsl:text></xsl:attribute>
				</ul>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
