<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_account_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.logon_account/record.crest) > 0">
							<span class="set_account_name">登录帐号</span>
							<span class="span_edit span_account_edit" title="新增登录帐号">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.setting.proces']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_account_name").html("登录帐号-新增");$("#account_account_name").removeProp("readonly");  $(".span_account_edit").hide(); $('#code_account').val(''); $('#connection_code_account').val(''); $('#account_account_name').focus();</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_account_name">登录帐号-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">帐号名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="16" type="text" id="account_account_name" placeholder="请输入用户名，必须" class="validate[required,maxSize[16],custom[onchinaese]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/account_name"/>
									</xsl:attribute>
									<xsl:if test="cludove.crest.spruce.logon_account/record.crest/account_name != ''">
										<xsl:attribute name="readonly">readonly</xsl:attribute>
									</xsl:if>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">帐号密码：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="16" type="text" id="account_account_password" placeholder="请输入账号密码，必须" class="validate[required,maxSize[16],custom[onchinaese]]"/>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">帐号状态：</span>
						<div class="text">
							<input class="input_radio" value="normal" type="radio" name="status " id="account_normal" checked="" onclick="$('#account_status ').val('normal')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.logon_account/record.crest/status = 'normal'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 正常 </xsl:text>
							<input class="input_radio" value="disable" type="radio" name="status " id="account_disable" onclick="$('#account_status ').val('disable')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.logon_account/record.crest/status  = 'disable'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 禁止 </xsl:text>
							<input id="account_status" type="hidden">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.logon_account/record.crest/status != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/status "/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">normal</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">有效时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="account_effective_date" class="laydate-icon validate[required] future[now]" onclick="onLaydate()" >
									<xsl:attribute name="value"><xsl:value-of select="substring(/content/cludove.crest.spruce.captcha/record.crest/effective_date, 1, 19) "/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.setting.proces']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="validateAccountSetting()">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_account">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_account">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
