<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<table id="resource_decomposing_search" style="table-layout:fixed">
			<tr class="border-bg1">
				<td>资源名字</td>
				<td>资源标识</td>
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
					服务端口
				</td>
				<td>操作</td>
			</tr>
			<xsl:for-each	select="/content/cludove.crest.spruce.resource_decomposing/record.crest[identifier != 'diginter.business']">
				<xsl:sort select="identifier" order="ascending"/>
				<tr>
					<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
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
						<xsl:variable name="identifier">
							<xsl:value-of select="identifier"/>
						</xsl:variable>
						<div class="div_btn">
							<a href="javascript:void(0)" is-click="false" class="revise" title="查看|修改">
								<xsl:attribute name="onclick">showResourceDecomposingSetting('<xsl:value-of select="code" />','<xsl:value-of select="/content/parameter.cludove/type"/>', '<xsl:value-of select="/content/parameter.cludove/hinge_type"/>')</xsl:attribute>
								<!--<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>-->
							</a>
							<!--<a href="javascript:void(0)" is-click="false" class="check-icon"> </a>-->
							<xsl:if test="(/content/parameter.cludove/clusterid.cludove != $identifier or /content/parameter.cludove/type != 'Hinge')" >
								<a href="javascript:void(0)" is-click="false" class="delete-icon" title="删除">
									<xsl:if test="identifier = 'diginter.business'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:if>
									<xsl:choose>
										<xsl:when	test="count(cludove.crest.spruce.resource_connection[1]/record.crest[reg_status!='' and reg_status!='refuse']) = 0" />
										<xsl:otherwise>
											<xsl:attribute name="style">display:none</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:choose>
										<xsl:when	test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'" />
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
															<xsl:attribute name="onclick">zdconfirm('提示','确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')} }) </xsl:attribute>
														</xsl:when>
														<xsl:otherwise>
															<xsl:attribute name="onclick">zdconfirm('提示','确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？',function(confirm){ if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.infoinge.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onDecomposingRemoveCallBack', 'normalErrorCallback')}})</xsl:attribute>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="onclick">zdconfirm('提示','确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？',function(confirm){ if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')}}) </xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="count(/content/cludove.crest.spruce.data/record.crest[connection_id = $identifier]) > 0">
													<xsl:attribute name="onclick">zdalert('提示','功能目录标识为<xsl:value-of select="/content/cludove.crest.spruce.data/record.crest[connection_id = $identifier and position() = 1]/catalog_id"/>的业务模型数据使用了该数据库，请修改或删除相应的功能目录后再删除该数据库')</xsl:attribute>
												</xsl:when>
												<xsl:otherwise>
													<xsl:attribute name="onclick">zdconfirm('提示','确认停用 资源定义 <xsl:value-of select="class" />/<xsl:value-of select="name" /> 以及其资源连接 吗？',function(confirm){if (confirm) {$("#now_remove").show();$('#ajax_loader_remove').show();$.request(httpHeader, '', 	new Array('buddle.cludove', 'catalog.cludove', 'resource_decomposing_record_code', 'connection_code'), new Array('infoinge', 'resource.decomposing.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of	 select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback')} })</xsl:attribute>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
									<!--<img src="infoinge/base/zh-cn/img/dele.png" />-->
								</a>
							</xsl:if>
						</div>
						<!--&lt;!&ndash;存储本机连接模板确保本机不会被删除&ndash;&gt;-->
						<!--<xsl:if test="/content/parameter.cludove/localhost.cludove = $host">-->
							<!--<input type="hidden" name="resource_decomposing_template_search" id="resource_decomposing_template_search">-->
								<!--<xsl:attribute name="value"><xsl:value-of select="code"/></xsl:attribute>-->
							<!--</input>-->
						<!--</xsl:if>-->
					</td>
				</tr>
				<tr class="border-bg2" is-subordinate="true" style="display:none">
					<td colspan="6">
						<xsl:attribute name="id"><xsl:value-of select="code"/>_resource_connection_main</xsl:attribute>
					</td>
				</tr>
			</xsl:for-each>
		</table>
		<input type="hidden" id="instance-type" />
	</xsl:template>
</xsl:stylesheet>
