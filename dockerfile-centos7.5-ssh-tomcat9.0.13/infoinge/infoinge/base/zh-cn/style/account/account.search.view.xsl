<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
					</th>
					<th class="th1">
						<span class="span_check span_check_account" id="check_all_account"></span>
					</th>
					<th>帐号名字</th>
					<th>状态</th>
					<th>有效期</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.logon_account/record.crest">
					<xsl:sort order="ascending" select="account_name"/>
					<xsl:variable name="account_name">
						<xsl:value-of select="account_name"/>
					</xsl:variable>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="account_select">
								<xsl:attribute name="onclick">showAccountSetting('<xsl:value-of select="code" />', 1)</xsl:attribute>
								<xsl:attribute name="ondblclick">showAccountSetting('<xsl:value-of select="code" />', 0)</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
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
							<xsl:value-of select="account_name" />
						</td>
						<td>
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
							<xsl:value-of select="substring(/content/cludove.crest.spruce.captcha/record.crest[validate_code = $account_name]/effective_date, 1, 19)" />
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 登录帐号 <xsl:value-of select="account_name" /> 吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'account_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'account.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>

								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showAccountSetting('<xsl:value-of select="code" />', 1)</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
								</a>
								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showPermissionSetting('<xsl:value-of select="type" />', '<xsl:value-of select="account_name" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/add.png" title="详细"/>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
