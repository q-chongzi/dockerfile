<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.condition_tag/record.crest">
			<xsl:sort order="ascending" select="position"/>
			<li>
				<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
				<a href="javascript:void(0)" style="padding-left:8.5em">
					<span  style="width:80%;overflow: hidden;text-overflow:ellipsis;">
						<xsl:attribute name="title"><xsl:value-of select="tag_name"/></xsl:attribute>
						<xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_tag_item_navigater</xsl:text></xsl:attribute>
						<xsl:attribute name="onclick">onTagItemNaviagate('', '<xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_tag_item_navigater</xsl:text>', '<xsl:value-of select="code"/>');$('#resource_navigation a').css('color','#fff');$(this).parent().css('color',"#ff633b");</xsl:attribute>
						<xsl:value-of select="tag_name"/>
					</span>
				</a>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
