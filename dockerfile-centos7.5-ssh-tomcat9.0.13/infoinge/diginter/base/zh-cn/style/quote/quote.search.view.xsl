<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<table border="" cellspacing="" cellpadding="" style="table-layout:fixed;">
			<tr style="background-color:#d1f1f1;">
				<td class="td1" style="width:10px">
					<a href='javascript:void(0);' class="resource_connection_add" title="新增目录数据">
						<xsl:attribute name="onclick">if($('#resource_setting_right').css('display') == 'none'){$('#resource_setting_right').show();showQuoteSetting('', '<xsl:value-of select="parameter.cludove/data_buddle_id"/>', '<xsl:value-of select="parameter.cludove/data_catalog_id"/>', '<xsl:value-of select="parameter.cludove/data_code"/>', '<xsl:value-of select="parameter.cludove/data_type"/>', '<xsl:value-of select="parameter.cludove/data_connection_id"/>', '<xsl:value-of select="parameter.cludove/data_resource_name"/>')}else{$('#resource_setting_right').hide();}</xsl:attribute>
					</a>
				</td>
				<th style="width:15%">字段名字</th>
				<th>转换文本</th>
				<th>文本处理方式</th>
				<th style="width:20%">转换表达式</th>
				<th>数据加工</th>
				<th style="width:15%">操作</th>
			</tr>
			<xsl:for-each select="/content/cludove.crest.spruce.quote/record.crest">
				<xsl:sort order="ascending" select="name"/>
				<tr>
					<xsl:attribute name="class"><xsl:value-of select="code" /> border-bg3</xsl:attribute>
					<td>
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:value-of select="name" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:value-of select="text_converter" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:choose>
							<xsl:when test="text_handle = 'insert'">
								<xsl:text>前面插入</xsl:text>
							</xsl:when>
							<xsl:when test="text_handle = 'append'">
								<xsl:text>后面追加</xsl:text>
							</xsl:when>
							<xsl:when test="text_handle = 'replace'">
								<xsl:text>全部替换</xsl:text>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="text_handle" />
							</xsl:otherwise>
						</xsl:choose>
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:value-of select="expression" />
					</td>
					<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
						<xsl:value-of select="class" />
					</td>
					<td>
						<a href="javascript:void(0)" class="revise" title="查看">
							<xsl:attribute name="onclick">if($('#resource_setting_right').css('display') == 'none'){$('#resource_setting_right').show();showQuoteSetting('<xsl:value-of select="code" />', '<xsl:value-of select="/content/parameter.cludove/data_buddle_id"/>', '<xsl:value-of select="/content/parameter.cludove/data_catalog_id"/>', '<xsl:value-of select="/content/parameter.cludove/data_code"/>', '<xsl:value-of select="/content/parameter.cludove/data_type"/>', '<xsl:value-of select="/content/parameter.cludove/data_connection_id"/>', '<xsl:value-of select="/content/parameter.cludove/data_resource_name"/>')}else{$('#resource_setting_right').hide();}</xsl:attribute>
						</a>
						<a href="javascript:void(0)" class="delete-icon" title="停用">
							<xsl:choose>
								<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'quote.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:attribute name="onclick">zdconfirm('提示',"确认停用 数据引用 <xsl:value-of select="name" />  吗？",function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'quote_record_code', 'is_active', 'connection_code'), new Array('diginter', 'quote.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}})</xsl:attribute>
						</a>
					</td>
				</tr>
			</xsl:for-each>
		</table>
	</xsl:template>
</xsl:stylesheet>
