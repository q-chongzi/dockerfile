<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table id="diginter_data">
				<thead>
					<tr class="border-bg1">
						<td class="td1" style="width:;position: relative;">
							<xsl:if test="parameter.cludove/buddle_id = 'exchange'">
								<a style="position: absolute;top:7px" href='javascript:void(0);' class="resource_connection_add" title="新增目录数据">
									<xsl:attribute name="onclick">if($('#resource_setting_right').css('display') == 'none'){$('#resource_setting_right').show();showDataSetting('','<xsl:value-of select="parameter.cludove/catalog_id"/>','<xsl:value-of select="parameter.cludove/catalog_code"/>','<xsl:value-of select="parameter.cludove/is_exchange"/>')}else{$('#resource_setting_right').hide();}</xsl:attribute>
								</a>
							</xsl:if>
						</td>
						<th>处理顺序</th>
						<th>数据名字</th>
						<th>数据类型</th>
						<th>连接标识</th>
						<th>操作对象</th>
						<th>操作名字</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody class="data_tbody_background">
					<xsl:variable name="main_code">
						<xsl:for-each select="/content/cludove.crest.spruce.data[1]/record.crest">
							<xsl:sort data-type="number" order="ascending" select="position"/>
							<xsl:if test="position() = 1">
								<xsl:value-of select="code"/>
							</xsl:if>
						</xsl:for-each>
					</xsl:variable>
					<xsl:for-each select="/content/cludove.crest.spruce.data[1]/record.crest">
						<xsl:sort data-type="number" select="position"/>
						<tr>
							<xsl:choose>
								<xsl:when test="operation = 'build' or operation = 'modify'">
									<!--<xsl:if test="type='DB'">-->
										<xsl:attribute name="class">data_quote <xsl:value-of select="code"/></xsl:attribute>
										<xsl:attribute name="code"><xsl:value-of select="code"/></xsl:attribute>
										<xsl:attribute name="style">cursor:pointer</xsl:attribute>
									<!--</xsl:if>-->
									<!--<xsl:if test="type !='DB'">-->
										<!--<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>-->
									<!--</xsl:if>-->
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<td>
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
									<xsl:otherwise/>
								</xsl:choose>
							</td>
							<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
								<xsl:value-of select="connection_id" />
							</td>
							<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
								<xsl:variable name="resource_name" select="resource_name"/>
								<xsl:choose>
									<xsl:when test="type = 'Class' or type = 'WS'">
										<xsl:value-of select="/content/cludove.crest.spruce.processor/record.crest[class=$resource_name]/name" />
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="resource_name" />
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
												<xsl:text disable-output-escaping="yes">JDBC通用迁移</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'synchronize'">
												<xsl:text disable-output-escaping="yes">JDBC通用同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'upload'">
												<xsl:text disable-output-escaping="yes">上传</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'download'">
												<xsl:text disable-output-escaping="yes">下载</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'mysql_migrate'">
												<xsl:text disable-output-escaping="yes">日志Mysql迁移</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'mysql_sync'">
												<xsl:text disable-output-escaping="yes">日志Mysql同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'oracle_migr'">
												<xsl:text disable-output-escaping="yes">日志Oracle迁移</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'oracle_sync'">
												<xsl:text disable-output-escaping="yes">日志Oracle同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'sql_migr'">
												<xsl:text disable-output-escaping="yes">日志Sqlserver迁移</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'sql_sync'">
												<xsl:text disable-output-escaping="yes">日志Sqlserver同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'infoinge_sync'">
												<xsl:text disable-output-escaping="yes">讯枢通用同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'infoinge_migr'">
												<xsl:text disable-output-escaping="yes">讯枢通用迁移</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'class_sync'">
												<xsl:text disable-output-escaping="yes">程序通用同步</xsl:text>
											</xsl:when>
											<xsl:when test="operation = 'class_migr'">
												<xsl:text disable-output-escaping="yes">程序通用迁移</xsl:text>
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
											<a href="javascript:void(0)" class="revise" is-click="false" onclick="editData(this)"  title="修改">
												<xsl:attribute name="onclick">$('#resource_setting_right').show();showDataSetting('<xsl:value-of select="code" />','<xsl:value-of select="/content/parameter.cludove/catalog_id"/>','<xsl:value-of select="/content/parameter.cludove/catalog_code"/>','<xsl:value-of select="/content/parameter.cludove/is_exchange"/>');</xsl:attribute>
											</a>
											<!--<xsl:if test="buddle_id = 'exchange'">-->
											<a class="delete-icon" href="javascript:void(0)" is-click="false" title="停用">
												<xsl:choose>
													<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'data.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
													<xsl:otherwise>
														<xsl:attribute name="style">display:none</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
												<xsl:choose>
													<xsl:when test="count(/content/cludove.crest.spruce.catalog/record.crest) > 0">
														<xsl:choose>
															<xsl:when test="(type = 'DB' or type = 'Hinge' or type = 'WS' or type = 'Class') and (operation = 'migrate' or operation = 'synchronize' or operation = 'mysql_migrate' or operation = 'mysql_sync' or operation = 'oracle_migr' or operation = 'oracle_sync' or operation = 'sql_migr' or operation = 'sql_sync' or operation = 'infoinge_sync' or operation = 'infoinge_migr' or operation = 'class_sync' or operation = 'class_migr')" >
																<xsl:attribute name="onclick">zdconfirm('提示',' <xsl:value-of select="position" />/<xsl:value-of select="name" /> 这条数据不允许删除',function(confirm){if (confirm) {$("#now_remove").hide();$("#ajax_loader_remove").hide();}}) </xsl:attribute>
															</xsl:when>
															<xsl:otherwise>
																<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的目录数据 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$("#now_remove").show();$("#ajax_loader_remove").show();$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'data_code_migr', 'catalog_code', 'operation_build', 'data_name', 'buddle_id', 'catalog_id'), new Array('diginter', 'model.data.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="/content/cludove.crest.spruce.data[2]/record.crest[position = 0]/code"/>', '<xsl:value-of select="/content/parameter.cludove/catalog_code" />', '<xsl:value-of select="operation"/>', '<xsl:value-of select="name" />', '<xsl:value-of select="/content/parameter.cludove/buddle_id" />', '<xsl:value-of select="catalog_id" />'), new Array('location'), new Array('data_location'), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:when>
													<xsl:when test="position = '0'">
														<xsl:attribute name="onclick">zdconfirm('提示','删除该条主数据,会把该功能目录下所有目录数据都删除,确定？',function(confirm){if (confirm) {$("#now_remove").show();$("#ajax_loader_remove").show();$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'data_main_code','buddle_id','catalog_id','s_identifier','s_resource_name', 'data_name','position','is_exchange'), new Array('diginter', 'response.design.data.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="$main_code" />', '<xsl:value-of select="buddle_id" />', '<xsl:value-of select="catalog_id" />', '<xsl:value-of select="connection_id" />', '<xsl:value-of select="resource_name" />', '<xsl:value-of select="name" />', '<xsl:value-of select="position"/>', '<xsl:value-of select="/content/parameter.cludove/is_exchange"/>'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的目录数据 <xsl:value-of select="position" />/<xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$("#now_remove").show();$("#ajax_loader_remove").show();$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'data_main_code','buddle_id','catalog_id','s_identifier','s_resource_name', 'data_name','position','is_exchange'), new Array('diginter', 'response.design.data.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="$main_code" />', '<xsl:value-of select="buddle_id" />', '<xsl:value-of select="catalog_id" />', '<xsl:value-of select="connection_id" />', '<xsl:value-of select="resource_name" />', '<xsl:value-of select="name"/>', '<xsl:value-of select="position"/>', '<xsl:value-of select="/content/parameter.cludove/is_exchange"/>'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</a>
											<!--</xsl:if>-->
										</div>
									</xsl:otherwise>
								</xsl:choose>

							</td>
						</tr>

						<xsl:choose>
							<xsl:when test="operation = 'build' or operation = 'modify'">
								<tr style="display:none;">
									<xsl:attribute name="id"><xsl:value-of select="code" /></xsl:attribute>
									<td colspan="8" style="width:800px;">
										<div>
											<xsl:attribute name="id"><xsl:value-of select="code" />_quote_search</xsl:attribute>
										</div>
									</td>
								</tr>

								<!--隐藏按钮-->
								<input type="hidden" name="buddle_id" id="buddle_id_quote">
									<xsl:attribute name="value"><xsl:value-of select="buddle_id"/></xsl:attribute>
								</input>
								<input type="hidden" name="catalog_id" id="catalog_id_quote">
									<xsl:attribute name="value"><xsl:value-of select="catalog_id"/></xsl:attribute>
								</input>
								<input type="hidden" name="data_code" id="data_code">
									<xsl:attribute name="value"><xsl:value-of select="code"/></xsl:attribute>
								</input>
								<input type="hidden" name="type" id="type_quote">
									<xsl:attribute name="value"><xsl:value-of select="type"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_id" id="connection_id_quote">
									<xsl:attribute name="value"><xsl:value-of select="connection_id"/></xsl:attribute>
								</input>
								<input type="hidden" name="resource_name" id="resource_name_quote">
									<xsl:attribute name="value"><xsl:value-of select="resource_name"/></xsl:attribute>
								</input>
								<input type="hidden" name="data_location" id="data_location">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.data[1]/record.crest/operation!='build'">
												<xsl:text>1</xsl:text>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text>2</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</xsl:when>
							<xsl:otherwise />
						</xsl:choose>
					</xsl:for-each>
				</tbody>
			</table>
			<input type="hidden" name="data_migrate_code" id="data_migrate_code">
				<xsl:attribute name="value">
					<xsl:value-of select="/content/cludove.crest.spruce.data[2]/record.crest/code"/>
				</xsl:attribute>
			</input>
		</div>
	</xsl:template>
</xsl:stylesheet>
