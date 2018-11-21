<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1"></th>
					<th class="th1">
						<span class="span_check span_check_cleanout" id="check_all_cleanout" />
					</th>
					<th>规则名字</th>
					<th>规则标识</th>
					<th>规则类型</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.cleanout_regulation/record.crest">
					<xsl:sort order="ascending" select="identifier"/>
					<xsl:sort order="ascending" select="regulation_name"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<xsl:attribute name="id"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="cleanout_select">
								<xsl:attribute name="onclick">showCleanoutSetting('<xsl:value-of select="code" />')</xsl:attribute>
							</input>
						</td>
						<td>
							<input type="hidden" class="cleanout_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_cleanout span_check_select_cleanout cleanout_check_select" />
						</td>
						<td style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="regulation_name" /></xsl:attribute>
							<xsl:value-of select="regulation_name" />
						</td>
						<td style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="identifier" /></xsl:attribute>
							<xsl:value-of select="identifier" />
						</td>
						<td style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="class" /></xsl:attribute>
							<xsl:value-of select="class" />
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'cleanout.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 清洗规则 <xsl:value-of select="code" />/<xsl:value-of select="regulation_name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'is_active', 'cleanout_code', 'connection_code'), new Array('infoinge', 'cleanout.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="code" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}	</xsl:attribute>
									</img>
								</a>
								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showCleanoutSetting('<xsl:value-of select="code" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
