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
						<span class="span_check span_check_data" id="check_all_data"></span>
					</th>
					<th class="th1">处理顺序</th>
					<th>数据名字</th>
					<th>数据类型</th>
					<th>连接标识</th>
					<th>操作对象</th>
					<th class="th7">操作名字</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.data[1]/record.crest">
					<xsl:sort data-type="number" select="position"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="data_select">
								<xsl:attribute name="onclick">showDataSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="data_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_data span_check_select_data data_check_select"></span>
						</td>
						<td>
							<xsl:value-of select="position" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="name" />
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="type = 'DB'">
									<xsl:text disable-output-escaping="yes">数据库</xsl:text>
								</xsl:when>
								<xsl:when test="type = 'Hinge'">
									<xsl:text disable-output-escaping="yes">讯枢</xsl:text>
								</xsl:when>
								<xsl:when test="type = 'WS'">
									<xsl:text disable-output-escaping="yes">外部数据</xsl:text>
								</xsl:when>
								<xsl:when test="type = 'Class'">
									<xsl:text disable-output-escaping="yes">功能数据</xsl:text>
								</xsl:when>
								<xsl:when test="type = 'Metadata'">
									<xsl:text disable-output-escaping="yes">数据库元数据</xsl:text>
								</xsl:when>
								<xsl:when test="type = 'XML'">
									<xsl:text disable-output-escaping="yes">XML</xsl:text>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="connection_id" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:choose>
								<xsl:when test="type = 'XML'">
									<xsl:value-of select="resource_name"/>.xml
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="resource_name"/>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="type = 'Metadata'"/>
								<xsl:otherwise>
									<xsl:choose>
										<xsl:when test="operation = 'search'">
											<xsl:text disable-output-escaping="yes">查询</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'build'">
											<xsl:text disable-output-escaping="yes">保存</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'modify'">
											<xsl:text disable-output-escaping="yes">修改</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'remove'">
											<xsl:text disable-output-escaping="yes">删除</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'migrate'">
											<xsl:text disable-output-escaping="yes">迁移</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'synchronize'">
											<xsl:text disable-output-escaping="yes">同步</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'upload'">
											<xsl:text disable-output-escaping="yes">上传</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'download'">
											<xsl:text disable-output-escaping="yes">下载</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'mysql_migrate'">
											<xsl:text disable-output-escaping="yes">mysql迁移</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'mysql_sync'">
											<xsl:text disable-output-escaping="yes">mysql同步</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'oracle_migr'">
											<xsl:text disable-output-escaping="yes">oracle迁移</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'oracle_sync'">
											<xsl:text disable-output-escaping="yes">oracle同步</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'sql_migr'">
											<xsl:text disable-output-escaping="yes">sqlserver迁移</xsl:text>
										</xsl:when>
										<xsl:when test="operation = 'sql_sync'">
											<xsl:text disable-output-escaping="yes">sqlserver同步</xsl:text>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="sync_active_status = 'wait_delete'">
									<xsl:text>请等待删除</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<div class="div_btn">
										<a class="a_dele" href="javascript:void(0)" title="停用">
											<img src="infoinge/base/zh-cn/img/dele.png">
												<xsl:choose>
													<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'data.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
													<xsl:otherwise>
														<xsl:attribute name="style">display:none</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="count(/content/cludove.crest.spruce.catalog/record.crest) > 0">
														<xsl:choose>
															<xsl:when test="type = 'DB' and (operation = 'migrate' or operation = 'synchronize' or operation = 'mysql_migrate' or operation = 'mysql_sync' or operation = 'oracle_migr' or operation = 'oracle_sync' or operation = 'sql_migr' or operation = 'sql_sync')" >
																<xsl:attribute name="onclick">alert('这条数据不允许删除')</xsl:attribute>
															</xsl:when>
															<xsl:otherwise>
																<xsl:attribute name="onclick">if (confirm("确认停用 目录数据 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'location', 'data_code_migr'), new Array('infoinge', 'model.data.remove.process', '<xsl:value-of select="code" />', '2', '<xsl:value-of select="/content/cludove.crest.spruce.data[1]/record.crest[position = 0]/code"/>'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="onclick">if (confirm("确认停用 目录数据 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'data_record_code', 'buddle_id', 'catalog_id','position', 'connection_code'), new Array('infoinge', 'data.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="buddle_id" />', '<xsl:value-of select="catalog_id" />', '<xsl:value-of select="position" />', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordSearchRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</img>
										</a>

										<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
											<xsl:attribute name="onclick">showDataSetting('<xsl:value-of select="code" />')</xsl:attribute>
											<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
										</a>
									</div>
								</xsl:otherwise>
							</xsl:choose>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<input type="hidden" name="data_migrate_code" id="data_migrate_code">
				<xsl:attribute name="value">
					<xsl:value-of select="/content/cludove.crest.spruce.data[2]/record.crest/code"/>
				</xsl:attribute>
			</input>
		</div>
	</xsl:template>
</xsl:stylesheet>
