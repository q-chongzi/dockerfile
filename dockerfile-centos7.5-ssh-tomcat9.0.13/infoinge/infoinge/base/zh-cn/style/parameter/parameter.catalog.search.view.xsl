<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
				doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="main_tab">
			<table>
				<tr>
					<th class="th1">
					</th>
					<th class="th1">
						<span class="span_check span_check_catalog_parameter" id="check_all_catalog_parameter"></span>
					</th>
					<th>参数名称</th>
					<!--<th>参数类型</th>-->
					<th>参数长度</th>
					<th>是否参数</th>
					<th class="th1">是否必须</th>
					<th class="th7">操作</th>
				</tr>
				<xsl:for-each select="/content/cludove.crest.spruce.catalog_parameter/record.crest">
					<xsl:sort order="ascending" select="buddle_id"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td>
							<input type="radio" name="catalog_parameter_select">
								<xsl:attribute name="onclick">showCatalogParameterSetting('<xsl:value-of select="code" />')</xsl:attribute>
								<!--<xsl:if test="position() = 1">-->
									<!--<xsl:attribute name="checked">true</xsl:attribute>-->
								<!--</xsl:if>-->
							</input>
						</td>
						<td>
							<input type="hidden" class="catalog_parameter_check">
								<xsl:attribute name="value">
									<xsl:value-of select="code" />
									<xsl:text>,</xsl:text>
									<xsl:value-of select="connection_code" />
								</xsl:attribute>
							</input>
							<span class="span_check span_check_catalog_parameter span_check_select_catalog_parameter catalog_parameter_check_select"></span>
						</td>
						<td style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="parameter_name" /></xsl:attribute>
							<xsl:value-of select="parameter_name" />
						</td>

						<!--<td>-->
							<!--&lt;!&ndash;<xsl:value-of select="parameter_type" />&ndash;&gt;-->
						<!--</td>-->
						<td>
							<xsl:value-of select="parameter_length" />
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="is_parameter='true'">
									<xsl:text>是</xsl:text>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="is_must='true'">
									<xsl:text>是</xsl:text>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
						</td>
						<td>
							<div class="div_btn">
								<a class="a_dele" href="javascript:void(0)" title="停用">
									<img src="infoinge/base/zh-cn/img/dele.png">
										<xsl:choose>
											<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'parameter.catalog.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:attribute name="onclick">if (confirm("确认停用 数据参数 <xsl:value-of select="parameter_name" /> 吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'catalog_parameter_record_code', 'is_active'), new Array('infoinge', 'parameter.catalog.remove.process', '<xsl:value-of select="code" />', 'false'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
									</img>
								</a>

								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">showCatalogParameterSetting('<xsl:value-of select="code" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
								</a>
								<a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
									<xsl:attribute name="onclick">onCatalogParameterEdit('<xsl:value-of select="code" />','<xsl:value-of select="buddle_id" />','<xsl:value-of select="catalog_id" />')</xsl:attribute>
									<img src="infoinge/base/zh-cn/img/add.png" title="内容"/>
								</a>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</div>
	</xsl:template>
</xsl:stylesheet>
