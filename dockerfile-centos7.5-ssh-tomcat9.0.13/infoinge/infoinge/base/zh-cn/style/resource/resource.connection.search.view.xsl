<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table style="word-break:break-all">
				<tr>
					<th class="th1">
					</th>
					<th class="th1">
						<span class="span_check span_check_resource_connection" id="check_all_resource_connection" >
							<xsl:attribute name="style">display:none</xsl:attribute>
						</span>
					</th>
					<th>连接名字</th>
					<th>连接标识</th>
					<th>
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'Hinge'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HTTP'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'FTP'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HDFS'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'HBASE'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:when test="parameter.cludove/type = 'WS'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<span>实例标识</span>
							</xsl:otherwise>
						</xsl:choose>
					</th>
					<th>服务地址</th>
					<th>
						<span>服务端口</span>
					</th>

					<th>
						<xsl:choose>
							<xsl:when test="parameter.cludove/type = 'DB'">
								<xsl:attribute name="style">font-size:0;width:0</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<span>总线节点</span>
							</xsl:otherwise>
						</xsl:choose>
					</th>
					<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest[run_id = 'negative']) > 0">
						<th>
							<span>运行标识</span>
						</th>
					</xsl:if>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each	select="/content/cludove.crest.spruce.resource_connection/record.crest">
					<xsl:sort select="identifier" order="ascending"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="resource_connection_select">
								<xsl:attribute name="onclick">showResourceConnectionSetting('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />','<xsl:value-of select="template" />','<xsl:value-of select="instance" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="resource_connection_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_resource_connection span_check_select_resource_connection resource_connection_check_select" >
								<xsl:attribute name="style">display:none</xsl:attribute>
							</span>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="name" />
						</td>
						<td>
							<xsl:value-of select="identifier" />
						</td>
						<td>
							<xsl:value-of select="instance" />
						</td>
						<td>
							<xsl:value-of select="host" />
						</td>
						<td>
							<xsl:value-of select="port" />
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="is_dsb = 'true'">
									<xsl:text disable-output-escaping="yes">是</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes"> </xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<xsl:if test="count(/content/cludove.crest.spruce.resource_connection/record.crest[run_id = 'negative']) > 0">
							<td>
								<xsl:choose>
									<xsl:when test="run_id = 'negative'">
										<xsl:text>负</xsl:text>
									</xsl:when>
									<xsl:otherwise>
										<xsl:text>正</xsl:text>
									</xsl:otherwise>
								</xsl:choose>
							</td>
						</xsl:if>
						<td>
							<div class="div_btn">
								<xsl:variable name="template">
									<xsl:value-of select="template"/>
								</xsl:variable>
								<xsl:variable name="identifier">
									<xsl:value-of select="/content/parameter.cludove/clusterid.cludove"/>
								</xsl:variable>
								<xsl:variable name="instance">
									<xsl:value-of select="instance"/>
								</xsl:variable>
								<a href="javascript:void(0)" class="a_edit">
									<xsl:attribute name="onclick">showResourceConnectionSetting('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />','<xsl:value-of select="template" />','<xsl:value-of select="instance" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改" height="20" width="20"/>
								</a>
								<xsl:if test="/content/parameter.cludove/type = 'DB' and run_id = 'positive' and count(/content/cludove.crest.spruce.resource_connection/record.crest[instance = $instance and run_id = 'negative']) = 0">
									<a href="javascript:void(0)" style="display:none"  title="备份数据库">
										<xsl:attribute name="onclick">showResourceConnectionSetting('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />','<xsl:value-of select="template" />','<xsl:value-of select="instance" />','<xsl:value-of select="host"/>')</xsl:attribute>
										<img src="infoinge/base/zh-cn/img/dbs-backups.png" title="查看|修改" height="20" width="20"/>
									</a>
								</xsl:if>
								<xsl:if test="is_local != 'true' and (count(/content/cludove.crest.spruce.resource_connection/record.crest[instance = $instance and run_id = 'negative']) = 0 or run_id = 'negative')">
									<a href="javascript:void(0)" class="a_dele">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.connection.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="/content/parameter.cludove/type = 'Hinge'">
												<xsl:choose>
													<xsl:when test="identifier = $identifier ">
														<xsl:attribute name="onclick"> if (confirm("确定删除所选的资源连接 ？")) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
													</xsl:when>
													<xsl:otherwise>
														<xsl:choose>
															<xsl:when test="is_dsb = 'true'">
																<xsl:attribute name="onclick"> if (confirm("确定删除所选的资源连接 ？")) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.infoinge.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
															</xsl:when>
															<xsl:otherwise>
																<xsl:attribute name="onclick"> if (confirm("确定删除所选的资源连接 ？")) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise>
												<xsl:choose>
													<xsl:when test="/content/parameter.cludove/type = 'DB'">
														<xsl:choose>
															<xsl:when test="count(/content/cludove.crest.spruce.data/record.crest) > 0">
																<xsl:attribute name="onclick">alert('功能目录标识为<xsl:value-of select="/content/cludove.crest.spruce.data/record.crest[1]/catalog_id"/>的业务模型数据使用了该数据库，请修改或删除相应的功能目录后再删除该数据库')</xsl:attribute>
															</xsl:when>
															<xsl:otherwise>
																<xsl:attribute name="onclick"> if (confirm("确定删除所选的资源连接 ？")) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordConnectionRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="onclick"> if (confirm("确定删除所选的资源连接 ？")) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:otherwise>
										</xsl:choose>
										<img src="infoinge/base/zh-cn/img/dele.png"  height="20" width="20"/>
									</a>
								</xsl:if>
								<a href="javascript:void(0)" class="a_add">
									<xsl:choose>
										<xsl:when test="/content/parameter.cludove/type = 'Hinge'">
											<xsl:choose>
												<xsl:when test="is_local = 'true'">
													<xsl:attribute name="onclick">$("#hinge_header").val('<xsl:value-of select="template" />'); $("#is_local").val('<xsl:value-of select="is_local" />');onBuddleNaviagate('<xsl:value-of select="identifier" />');</xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="onclick">$("#hinge_header").val('<xsl:value-of select="template" />'); $("#is_local").val('<xsl:value-of select="is_local" />');onDataLogon('<xsl:value-of select="identifier" />');</xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:when test="/content/parameter.cludove/type = 'DB'">
											<xsl:attribute name="onclick">onDBPatternNaviagate('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', '<xsl:value-of select="host" />', '<xsl:value-of select="port" />', '<xsl:value-of select="instance" />', '<xsl:value-of select="pattern" />', '<xsl:value-of select="account" />', '<xsl:value-of select="password" />', '<xsl:value-of select="driver" />', '<xsl:value-of select="template" />', '<xsl:value-of select="name" />')</xsl:attribute>
										</xsl:when>
										<xsl:when test="/content/parameter.cludove/type = 'WS'">
											<!--xsl:attribute name="onclick">onWSServiceNaviagate('<xsl:value-of select="driver" />')</xsl:attribute-->
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
									<img src="infoinge/base/zh-cn/img/add.png"  title="结构配置" height="20" width="20"/>
								</a>
								<xsl:if test="/content/parameter.cludove/http_host = $template">
									<input type="hidden" name="resource_connection_template_search" id="resource_connection_template_search">
										<xsl:attribute name="value"><xsl:value-of select="code"/></xsl:attribute>
									</input>
								</xsl:if>
								<xsl:if test="is_local != 'true'">
									<input type="hidden" name="resource_connection_identifier" id="resource_connection_identifier">
										<xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
									</input>
								</xsl:if>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<div class="hidden" id="data_logon">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
