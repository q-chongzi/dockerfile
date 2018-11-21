<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
				doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
		<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
		<table class="parameter_table" style="width:100%">
			<tr>
				<th>
					<span class="span_check span_check_catalog_parameter" id="check_all_catalog_parameter"></span>
				</th>
				<th>表名</th>
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
						<xsl:variable name="resource_name">
							<xsl:value-of select="resource_name" />
						</xsl:variable>
						<xsl:variable name="identifier">
							<xsl:value-of select="connection_id"/>
						</xsl:variable>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
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
						<td>
							<xsl:value-of select="translate(resource_name,$smallcase,$uppercase)" />
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.resource_label/record.crest[resource_name = $resource_name and identifier = $identifier]) > 0">
									<xsl:text>&#160;[</xsl:text>
									<xsl:value-of select="/content/cludove.crest.spruce.resource_label/record.crest[resource_name = $resource_name and identifier = $identifier]/resource_label"/>
									<xsl:text>]</xsl:text>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
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
							<a href="javascript:void(0)" class="revise" onclick="editData(this)"  title="修改">
								<xsl:attribute name="onclick">showCatalogParameterSetting('<xsl:value-of select="code" />')</xsl:attribute>
							</a>
							<a href="javascript:void(0)" class="neir-icon" title="内容" onclick="editData(this)">
								<xsl:attribute name="onclick">onCatalogParameterEdit('<xsl:value-of select="code" />','<xsl:value-of select="buddle_id" />','<xsl:value-of select="catalog_id" />')</xsl:attribute>
							</a>
							<a class="delete-icon" href="javascript:void(0)" title="停用">
								<xsl:choose>
									<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'parameter.catalog.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的数据参数 <xsl:value-of select="parameter_name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'catalog_parameter_record_code', 'is_active'), new Array('diginter', 'parameter.catalog.remove.process', '<xsl:value-of select="code" />', 'false'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}})</xsl:attribute>
							</a>
						</td>
					</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
