<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:for-each select="cludove.crest.spruce.logon_account/record.crest[account_name!='admin_guide']">
			<xsl:sort order="ascending" select="account_name"/>
			<li style="text-align: center" class="nav1-lis">
				<xsl:attribute name="class"><xsl:value-of select="code"/>_navigate</xsl:attribute>
				<xsl:attribute name="onclick">onAccountSetting('<xsl:value-of select="code"/>', 0);$("#account_setting").hide();$('#jurisdiction_setting_main').hide();</xsl:attribute>
				<xsl:if test="code = /content/parameter.cludove/record_code">
					<xsl:attribute name="style">background-color: #5cb9f8;color:#ffffff;text-align: center</xsl:attribute>
				</xsl:if>
				<a href="javascript:void(0)">
					<xsl:if test="code = /content/parameter.cludove/record_code">
						<xsl:attribute name="style">color:#ffffff</xsl:attribute>
					</xsl:if>
					<span>
						<xsl:value-of select="account_name"/>
					</span>
				</a>
			</li>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
