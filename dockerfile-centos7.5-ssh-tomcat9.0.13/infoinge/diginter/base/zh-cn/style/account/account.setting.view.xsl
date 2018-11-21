<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_account_setting">
			<p class="list">
				<span class="span_tit">帐号名字：</span>
				<input maxlength="32" type="text" id="account_account_name" placeholder="请输入用户名，必须" class="input-1 validate[required,maxSize[32],custom[onchinaese]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/account_name"/>
					</xsl:attribute>
					<xsl:if test="cludove.crest.spruce.logon_account/record.crest/account_name != ''">
						<xsl:attribute name="readonly">readonly</xsl:attribute>
					</xsl:if>
				</input>
			</p>
			<p class="list">
				<span class="span_tit">帐号密码：</span>
				<input maxlength="32" type="text" id="account_account_password" placeholder="请输入账号密码，必须" class="input-1 validate[required,maxSize[32],custom[onchinaese]]"/>
			</p>
			<p class="rad">
				<span class="span_tit">帐号状态：</span>
				<input style="margin-left:10px" class="input_radio" value="normal" type="radio" name="status " id="account_normal" checked="" onclick="$('#account_status ').val('normal')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.logon_account/record.crest/status = 'normal'"/>
						<xsl:otherwise>
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
				<label for="account_normal"> 正常 </label>
				<input style="margin-left: 20px" class="input_radio" value="disable" type="radio" name="status " id="account_disable" onclick="$('#account_status ').val('disable')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.logon_account/record.crest/status  = 'disable'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<label for="account_disable"> 禁止 </label>
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
			</p>
			<p class="list">
				<span class="span_tit">有效时间：</span>
				<input type="text" id="account_effective_date" class="input-1 laydate-icon validate[required] future[now]" onclick="onLaydate()" >
					<xsl:attribute name="value"><xsl:value-of select="substring(/content/cludove.crest.spruce.captcha/record.crest/effective_date, 1, 19) "/></xsl:attribute>
				</input>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.setting.proces']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<span class="span_tit"/>
				<input type="button" onclick="validateAccountSetting()" value="提交" class="sub submit_btn"/>
				<input type="reset" value="清除" onclick="resetData(this);" class="res"/>
				<input onclick="$('#account_setting').hide()" type="button" value="取消" class="but"/>
				<input type="reset" style="display:none" class="reset_data"/>
				<!--隐藏按钮-->
				<input type="hidden" name="code" id="code_account">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="connection_code" id="connection_code_account">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.logon_account/record.crest/connection_code"/></xsl:attribute>
				</input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
