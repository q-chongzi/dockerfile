<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table >
				<tr>
					<!--<th class="th1">-->
					<!--</th>-->
					<th class="th1">
						<span class="span_check span_check_account" id="check_all_account"></span>
					</th>
					<th>帐号名字</th>
					<th>状态</th>
					<th>有效期</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.logon_account/record.crest[account_name!='admin_guide']">
					<xsl:sort order="ascending" select="account_name"/>
					<xsl:variable name="account_name">
						<xsl:value-of select="account_name"/>
					</xsl:variable>
					<tr style="background:#FFFFFF;">
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="hidden" class="account_check">
							<xsl:attribute name="value">
							<xsl:value-of select="code" />
							<xsl:text>,</xsl:text>
							<xsl:value-of select="connection_code" />
							</xsl:attribute>
							</input>
							<span class="span_check span_check_account span_check_select_account account_check_select"></span>
						</td>
						<td  style="overflow: hidden;text-overflow:ellipsis;" onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:attribute name="onclick">
								$('#account_setting_list').css('display','block');$("#account_setting").hide();onAccountManage('<xsl:value-of select="code" />');
								$(this).parent().parent().children().next().css('background-color','#ffffff');</xsl:attribute>
							<xsl:value-of select="account_name" />
						</td>
						<td>
							<xsl:attribute name="onclick">
								$('#account_setting_list').css('display','block');$("#account_setting").hide();onAccountManage('<xsl:value-of select="code" />');
								$(this).parent().parent().children().next().css('background-color','#ffffff');</xsl:attribute>
							<xsl:choose>
								<xsl:when test="status = 'normal'">
									<xsl:text>正常</xsl:text>
								</xsl:when>
								<xsl:when test="status = 'disable'">
									<xsl:text>禁用</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text>未知</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:attribute name="onclick">
								$('#account_setting_list').css('display','block');$("#account_setting").hide();onAccountManage('<xsl:value-of select="code" />');
								$(this).parent().parent().children().next().css('background-color','#ffffff');</xsl:attribute>
							<xsl:value-of select="substring(/content/cludove.crest.spruce.captcha/record.crest[validate_code = $account_name]/effective_date, 1, 19)" />
						</td>
						<td>
							<xsl:attribute name="onclick">
								$('#account_setting_list').css('display','block');$("#account_setting").hide();onAccountManage('<xsl:value-of select="code" />');
								$(this).parent().parent().children().next().css('background-color','#ffffff');</xsl:attribute>
							<div class="div_btn">
								<a href="javascript:void(0)" class="revise" onclick="editData(this)"  title="查看|修改">
									<xsl:attribute name="onclick">showAccountSetting('<xsl:value-of select="code" />', 1)</xsl:attribute>
								</a>
								<a href="javascript:void(0)" class="Jurisdiction-icon" onclick="editData(this)" title="权限">
									<xsl:attribute name="onclick">showPermissionSetting('<xsl:value-of select="type" />', '<xsl:value-of select="account_name" />')</xsl:attribute>
								</a>
								<a class="delete-icon" href="javascript:void(0)" title="停用">
									<xsl:choose>
										<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'account.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:attribute name="onclick">zdconfirm('提示','确认停用 登录帐号 <xsl:value-of select="account_name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'account_record_code', 'is_active', 'connection_code'), new Array('diginter', 'account.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
