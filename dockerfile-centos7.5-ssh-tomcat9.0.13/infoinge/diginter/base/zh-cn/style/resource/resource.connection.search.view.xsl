<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<table style="table-layout:fixed">
			<xsl:attribute name="decomposing_code">
				<xsl:value-of select="parameter.cludove/decomposing_code"/>
			</xsl:attribute>
			<tr class="border-bg1">
				<td class="td1" style="position: relative;">
					<xsl:choose>
						<xsl:when test="parameter.cludove/hinge_type = 'DSB' and count(cludove.crest.spruce.resource_connection/record.crest) > 0"/>
						<xsl:otherwise>
							<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest[identifier = 'diginter.business']) = 0">
								<xsl:choose>
									<xsl:when test="/content/parameter.cludove/hinge_type = 'Colony'">
										<xsl:if test="( and /content/parameter.cludove/instance_type = 'cluster')">
											<a style="position: absolute;top:7px" href='javascript:void(0);' class="resource_connection_add" title="新增资源连接">
												<xsl:attribute name="onclick">if($('#resource_setting_right').css('display') == 'none'){showResourceConnectionSetting('','<xsl:value-of select="/content/parameter.cludove/decomposing_code"/>','<xsl:value-of select="/content/parameter.cludove/type"/>')}else{$('#resource_setting_right').hide();}</xsl:attribute>
											</a>
										</xsl:if>
									</xsl:when>
									<xsl:otherwise>
										<a style="position: absolute;top:7px" href='javascript:void(0);' class="resource_connection_add" title="新增资源连接">
											<xsl:attribute name="onclick">if($('#resource_setting_right').css('display') == 'none'){showResourceConnectionSetting('','<xsl:value-of select="/content/parameter.cludove/decomposing_code"/>','<xsl:value-of select="/content/parameter.cludove/type"/>')}else{$('#resource_setting_right').hide();}</xsl:attribute>
										</a>
									</xsl:otherwise>
								</xsl:choose>

							</xsl:if>
						</xsl:otherwise>
					</xsl:choose>
					<!--<span style="display:inline-block;width:19px"></span>-->
				</td>
				<td>连接名字</td>
				<td>连接标识</td>
				<td>
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
				</td>
				<td>服务地址</td>
				<td>
					<span>服务端口</span>
				</td>
				<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest[run_id = 'negative']) > 0">
					<td>
						<span>运行标识</span>
					</td>
				</xsl:if>
				<th>操作</th>
			</tr>
			<xsl:for-each	select="/content/cludove.crest.spruce.resource_connection/record.crest">
				<xsl:sort select="identifier" order="ascending"/>
				<tr>
					<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
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
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:value-of select="identifier" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:value-of select="instance" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:value-of select="host" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
						<xsl:value-of select="port" />
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
							<xsl:variable name="host">
								<xsl:value-of select="host"/>
							</xsl:variable>
							<xsl:variable name="identifier">
								<xsl:value-of select="/content/parameter.cludove/clusterid.cludove"/>
							</xsl:variable>
							<a href="javascript:void(0)" class="revise" title="查看|修改">
								<xsl:attribute name="onclick">showResourceConnectionSetting('<xsl:value-of select="code" />','<xsl:value-of select="/content/parameter.cludove/decomposing_code"/>','<xsl:value-of select="/content/parameter.cludove/type"/>')</xsl:attribute>
								<!--<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>-->
							</a>
							<!--<a href="javascript:void(0)" class="revise">-->
								<!--<xsl:choose>-->
									<!--<xsl:when test="/content/parameter.cludove/type = 'Hinge'">-->
										<!--<xsl:attribute name="onclick">$("#hinge_header").val('<xsl:value-of select="template" />'); onBuddleNaviagate('<xsl:value-of select="identifier" />');</xsl:attribute>-->
									<!--</xsl:when>-->
									<!--<xsl:when test="/content/parameter.cludove/type = 'DB'">-->
										<!--<xsl:attribute name="onclick">onDBPatternNaviagate('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', '<xsl:value-of select="host" />', '<xsl:value-of select="port" />', '<xsl:value-of select="instance" />', '<xsl:value-of select="pattern" />', '<xsl:value-of select="account" />', '<xsl:value-of select="password" />', '<xsl:value-of select="driver" />', '<xsl:value-of select="template" />', '<xsl:value-of select="name" />')</xsl:attribute>-->
									<!--</xsl:when>-->
									<!--<xsl:when test="/content/parameter.cludove/type = 'WS'">-->
										<!--&lt;!&ndash;xsl:attribute name="onclick">onWSServiceNaviagate('<xsl:value-of select="driver" />')</xsl:attribute&ndash;&gt;-->
									<!--</xsl:when>-->
									<!--<xsl:otherwise/>-->
								<!--</xsl:choose>-->
								<!--&lt;!&ndash;<img src="infoinge/base/zh-cn/img/add.png"  title="结构配置"/>&ndash;&gt;-->
							<!--</a>-->
							<xsl:variable name="instance">
								<xsl:value-of select="instance"/>
							</xsl:variable>
							<xsl:if test="/content/parameter.cludove/type = 'DB' and run_id = 'positive' and count(/content/cludove.crest.spruce.resource_connection/record.crest[instance = $instance and run_id = 'negative']) = 0">
								<a href="javascript:void(0)" class="dbs-backups" title="添加备用数据库">
									<xsl:attribute name="onclick">showResourceConnectionSetting('<xsl:value-of select="code" />','<xsl:value-of select="/content/parameter.cludove/decomposing_code"/>','<xsl:value-of select="/content/parameter.cludove/type"/>','<xsl:value-of select="host"/>')</xsl:attribute>
								</a>
							</xsl:if>
							<xsl:if test="/content/parameter.cludove/type = 'DB'">
								<a href="javascript:void(0)" class="label" title="数据标注">
									<xsl:attribute name="onclick">showDbEdit();onDBPatternNaviagate('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', '<xsl:value-of select="host" />', '<xsl:value-of select="port" />', '<xsl:value-of select="instance" />', '<xsl:value-of select="pattern" />', '<xsl:value-of select="account" />', '<xsl:value-of select="password" />', '<xsl:value-of select="driver" />', '<xsl:value-of select="template" />', '<xsl:value-of select="name" />')</xsl:attribute>
								</a>
							</xsl:if>
							<xsl:if test="/content/parameter.cludove/localhost.cludove = $host">
								<input type="hidden" name="resource_connection_template_search" id="resource_connection_template_search">
									<xsl:attribute name="value"><xsl:value-of select="code"/></xsl:attribute>
								</input>
							</xsl:if>
							<xsl:if test="/content/parameter.cludove/type = 'DB'">
								<a href="javascript:void(0)" class="db_sampling" title="数据抽样">
									<xsl:attribute name="onclick">onDbDataSamplingSetting('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', '<xsl:value-of select="host" />', '<xsl:value-of select="port" />', '<xsl:value-of select="instance" />', '<xsl:value-of select="pattern" />', '<xsl:value-of select="account" />', '<xsl:value-of select="password" />', '<xsl:value-of select="driver" />', '<xsl:value-of select="template" />', '<xsl:value-of select="name" />')</xsl:attribute>
								</a>
							</xsl:if>
							<xsl:if test="is_local != 'true' and (count(/content/cludove.crest.spruce.resource_connection/record.crest[instance = $instance and run_id = 'negative']) = 0 or run_id = 'negative')">
								<a href="javascript:void(0)" class="delete-icon" title="删除">
									<xsl:if test="identifier = 'diginter.business'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:if>
									<xsl:choose>
										<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.connection.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:choose>
										<xsl:when test="/content/parameter.cludove/type = 'Hinge'">
											<xsl:choose>
												<xsl:when test="identifier = $identifier ">
													<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的资源连接 ？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:choose>
														<xsl:when test="is_dsb = 'true'">
															<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的资源连接 ？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.infoinge.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
														</xsl:when>
														<xsl:otherwise>
															<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的资源连接 ？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
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
															<xsl:attribute name="onclick">zdalert('提示','功能目录标识为<xsl:value-of select="/content/cludove.crest.spruce.data/record.crest[1]/catalog_id"/>的业务模型数据使用了该数据库，请修改或删除相应的功能目录后再删除该数据库')</xsl:attribute>
														</xsl:when>
														<xsl:otherwise>
															<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的资源连接 ？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordConnectionRemoveCallBack', 'normalErrorCallback');} }) </xsl:attribute>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的资源连接 ？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show(); $.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_connection_record_code', 'connection_code'), new Array('infoinge', 'resource.connection.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');} }) </xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
									<!--<img src="infoinge/base/zh-cn/img/dele.png" />-->
								</a>
							</xsl:if>
						</div>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
