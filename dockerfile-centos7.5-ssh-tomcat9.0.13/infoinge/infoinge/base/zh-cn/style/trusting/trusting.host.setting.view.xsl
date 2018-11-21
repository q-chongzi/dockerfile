<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_trusting_host_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.trusting_host/record.crest) > 0">
							<span class="set_trusting_host_name">信任主机</span>
							<span class="span_edit span_trusting_host_edit" title="新增信任主机">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'trusting.host.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_trusting_host_name").html("信任主机-新增"); $(".span_trusting_host_edit").hide(); $('#code_trusting_host').val(''); $('#connection_code_trusting_host').val(''); $('#trusting_host_address').focus();$('input:radio[name="trusting_host_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_trusting_host_name">信任主机-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">主机地址：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="trusting_host_address" class="validate[required,custom[onchinaese],maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/address"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">主机名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="trusting_host_host_name" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/host_name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">主机域名：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="trusting_host_name" class="validate[required,custom[onchinaese],maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea maxlength="256" id="trusting_host_description" class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'trusting.host.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processTrustingHostSetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_trusting_host">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_trusting_host">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.trusting_host/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
