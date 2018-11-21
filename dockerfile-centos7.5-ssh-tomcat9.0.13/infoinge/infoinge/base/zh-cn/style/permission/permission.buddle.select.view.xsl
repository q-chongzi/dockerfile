<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="GB2312" indent="no"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<div class="row">
			<div class="col-lg-12">
				<div class="widget-content padded">
					<form class="form-horizontal" role="form" id="validate_charge_department_build">
						<div class="form-group">
							<label class="control-label col-md-3" style="margin:15px;float:left">
								<xsl:text disable-output-escaping="yes">权限设置 - </xsl:text>
								<xsl:value-of select="parameter.cludove/owner_name"/>
							</label>
							<div class="col-md-4" style="width:200px;float:left;margin:10px;">
								<div class="div_select">
									<select class="form-control" name="select_buddle" id="permission_buddle_select">
										<xsl:attribute name="onchange">if (this.value != '') onPermissionSetting('<xsl:value-of select="parameter.cludove/owner_type"/>', '<xsl:value-of select="parameter.cludove/owner_code"/>');</xsl:attribute>
										<xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
											<option>
												<xsl:attribute name="value"><xsl:value-of select="identifier" /></xsl:attribute>
												<xsl:value-of select="name" />
											</option>
										</xsl:for-each>
									</select>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div id="permission_setting_zone"></div>
	</xsl:template>
</xsl:stylesheet>
