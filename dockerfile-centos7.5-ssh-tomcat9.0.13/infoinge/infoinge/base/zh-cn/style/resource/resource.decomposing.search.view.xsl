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
						
						<span class="span_check span_check_resource_decomposing" id="check_all_resource_decomposing" >
							<xsl:attribute name="style">display:none</xsl:attribute>
						</span>
					</th>
					<th>资源名字</th>
					<th>资源标识</th>
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
						服务端口
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
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each	select="/content/cludove.crest.spruce.resource_decomposing/record.crest[identifier != 'diginter.business']">
					<xsl:sort select="identifier" order="ascending"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>

						<td>
							<input id="operations" type="radio" name="resource_decomposing_select">
								<xsl:attribute name="onclick">showResourceDecomposingSetting('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />','<xsl:value-of select="template" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="resource_decomposing_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_resource_decomposing span_check_select_resource_decomposing resource_decomposing_check_select" >
								<xsl:attribute name="style">display:none</xsl:attribute>
							</span>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="name" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
							<xsl:value-of select="identifier" />
						</td>
						<td>
							<xsl:value-of select="instance" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
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
						<td>
							<xsl:variable name="template">
								<xsl:value-of select="template"/>
							</xsl:variable>
							<xsl:variable name="identifier">
								<xsl:value-of select="identifier"/>
							</xsl:variable>
							<div class="div_btn">
								<xsl:if test="/content/parameter.cludove/clusterid.cludove != $identifier">
									<a href="javascript:void(0)" class="a_dele">
										<xsl:choose>
											<xsl:when	test="count(cludove.crest.spruce.resource_connection[1]/record.crest[reg_status!='' and reg_status!='refuse']) = 0" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when	test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.decomposing.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:choose>
											<xsl:when test="/content/parameter.cludove/type = 'Hinge'">
												<xsl:choose>
													<xsl:when test="is_dsb = 'true'">
														<xsl:variable name="code">
															<xsl:value-of select="code"/>
														</xsl:variable>
														<xsl:choose>
															<xsl:when test="count(/content/cludove.crest.spruce.resource_connection/record.crest[reg_status != 'work']) > 0">
																<xsl:attribute name="onclick">if (confirm("确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？")) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')}</xsl:attribute>
															</xsl:when>
															<xsl:otherwise>
																<xsl:attribute name="onclick">if (confirm("确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？")) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.infoinge.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onDecomposingRemoveCallBack', 'normalErrorCallback')}</xsl:attribute>
															</xsl:otherwise>
														</xsl:choose>							
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="onclick">if (confirm("确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？")) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')}</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise>
												<xsl:choose>
													<xsl:when test="count(/content/cludove.crest.spruce.data/record.crest[connection_id = $identifier]) > 0">
														<xsl:attribute name="onclick">alert('功能目录标识为<xsl:value-of select="/content/cludove.crest.spruce.data/record.crest[connection_id = $identifier and position() = 1]/catalog_id"/>的业务模型数据使用了该数据库，请修改或删除相应的功能目录后再删除该数据库')</xsl:attribute>
													</xsl:when>
													<xsl:otherwise>
														<xsl:attribute name="onclick">if (confirm("确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？")) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')}</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:otherwise>
										</xsl:choose>
										<img src="infoinge/base/zh-cn/img/dele.png" />
									</a>
								</xsl:if>
								<a href="javascript:void(0)" class="a_edit">
									<xsl:attribute name="onclick">showResourceDecomposingSetting('<xsl:value-of select="code" />','<xsl:value-of select="identifier" />','<xsl:value-of select="template" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
								</a>
							</div>
							<!--存储本机连接模板确保本机不会被删除-->
							<xsl:if test="/content/parameter.cludove/http_host = $template">
								<input type="hidden" name="resource_decomposing_template_search" id="resource_decomposing_template_search">
									<xsl:attribute name="value"><xsl:value-of select="code"/></xsl:attribute>
								</input>
							</xsl:if>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
