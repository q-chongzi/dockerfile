<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.logon_account/record.crest">
			<xsl:sort order="ascending" select="account_name"/>
			<li>
				<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
				<a href="javascript:void(0)">
					<xsl:if test="code = /content/parameter.cludove/record_code">
						<xsl:attribute name="style">color:#ff633b</xsl:attribute>
					</xsl:if>
					<span>
						<xsl:attribute name="onclick">flag = 1; onAccountSetting('<xsl:value-of select="code"/>', 0)</xsl:attribute>
						<xsl:value-of select="account_name"/>
					</span>
				</a>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
