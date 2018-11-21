<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GBK" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">

		<form class="form-horizontal" role="form" id="validate_charge_department_build">
				<label class="control-label col-md-3" style="margin:15px;float:left">
					<xsl:text disable-output-escaping="yes">权限设置 - </xsl:text>
					<xsl:value-of select="parameter.cludove/owner_name"/>
				</label>
				<select style="width:150px" name="select_buddle" id="permission_buddle_select">
					<xsl:attribute name="onchange">if (this.value != '') onPermissionSetting('<xsl:value-of select="parameter.cludove/owner_type"/>', '<xsl:value-of select="parameter.cludove/owner_code"/>');</xsl:attribute>
					<xsl:for-each select="cludove.crest.spruce.buddle/record.crest[identifier != 'infoinge']">
						<option>
							<xsl:attribute name="value"><xsl:value-of select="identifier" /></xsl:attribute>
							<xsl:choose>
								<xsl:when test="identifier='exchange'">
									<xsl:text>业务模型</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="name" />
								</xsl:otherwise>
							</xsl:choose>
						</option>
					</xsl:for-each>
				</select>
		</form>
		<!--<div id="permission_setting_zone"></div>-->
	</xsl:template>
</xsl:stylesheet>
