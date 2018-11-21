<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
					</th>
					<th class="th1">
						<span class="span_check span_check_buddle_issue" id="check_all_buddle_issue"></span>
					</th>
					<th>插件标识</th>
					<th>连接标识</th>
					<th>发布时间</th>
					<th>是否启用</th>
					<th>频率类型</th>
					<th>间隔时间</th>
					<th>开始时间</th>
					<th>结束时间</th>
					<th class="th7">操作</th>
				</tr>
				
				<xsl:for-each select="/content/cludove.crest.spruce.buddle_issue/record.crest">
					<xsl:sort data-type="number" select="code"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="buddle_issue_select">
								<xsl:attribute name="onclick">showBuddleissueSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="buddle_issue_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_buddle_issue span_check_select_buddle_issue buddle_issue_check_select"></span>
						</td>
						<td>
							<xsl:value-of select="buddle_id" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="connection_id" />
						</td>
 						<td>
							<xsl:value-of select="last_issue" />
						</td>
 						<td>
 							<xsl:choose>
								<xsl:when test="is_running = 'true'">
									<xsl:text disable-output-escaping="yes">是</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes"></xsl:text>
								</xsl:otherwise>
							</xsl:choose>
 						</td>
 						<td>
 							<xsl:choose>
 								<xsl:when test="frequentness = 'year'">
 									<xsl:text disable-output-escaping="yes">年</xsl:text>
 								</xsl:when>
 								<xsl:when test="frequentness = 'month'">
 									<xsl:text disable-output-escaping="yes">月</xsl:text>
 								</xsl:when>
 								<xsl:when test="frequentness = 'day'">
 									<xsl:text disable-output-escaping="yes">日</xsl:text>
 								</xsl:when>
 								<xsl:when test="frequentness = 'hour'">
 									<xsl:text disable-output-escaping="yes">时</xsl:text>
 								</xsl:when>
 								<xsl:when test="frequentness = 'minute'">
 									<xsl:text disable-output-escaping="yes">分</xsl:text>
 								</xsl:when>
 								<xsl:when test="frequentness = 'second'">
 									<xsl:text disable-output-escaping="yes">秒</xsl:text>
 								</xsl:when>
 							</xsl:choose>
 						</td>
 						<td>
 							<xsl:value-of select="interval_time" />
 						</td>
 						<td>
 							<xsl:choose>
 								<xsl:when test="run_start_hour = '' and run_start_minute = ''">
 								</xsl:when>
 							<xsl:otherwise>
	 							<xsl:value-of select="run_start_hour" />:
	 							<xsl:value-of select="run_start_minute" />
 							</xsl:otherwise>
 							</xsl:choose>
 						</td>
 						<td>
 							<xsl:choose>
 								<xsl:when test="run_finish_hour = '' and run_finish_minute = ''">
 								</xsl:when>
 							<xsl:otherwise>
	 							<xsl:value-of select="run_finish_hour" />:
	 							<xsl:value-of select="run_finish_minute" />
 							</xsl:otherwise>
 							</xsl:choose>
 						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.issue.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 目录响应 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'buddle_issue_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'buddle.issue.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>

								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showBuddleissueSetting('<xsl:value-of select="code" />')</xsl:attribute>
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
