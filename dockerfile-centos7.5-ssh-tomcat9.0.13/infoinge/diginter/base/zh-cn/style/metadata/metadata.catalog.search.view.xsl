<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<xsl:variable name="data_direct">
			<xsl:choose>
				<xsl:when test="parameter.cludove/data_direct = 'undefined'">
					<xsl:text>input</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:value-of select="parameter.cludove/data_direct"/>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<div class="metadata_direct" style="position:absolute;top:40px; left:260px;">
			<div class="fl">
				<input class="input_radio" value="input" type="radio" name="data_direct" id="data_direct_input" checked="checked">
					<xsl:attribute name="onclick">$("#data_direct").val("input");onCatalogMetadataSearch();</xsl:attribute>
					<xsl:choose>
						<xsl:when test="parameter.cludove/data_direct = 'input'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 输入 </xsl:text>
			</div>
			<div class="fl" style="margin-left:20px;">
				<input class="input_radio" value="output" type="radio" name="data_direct" id="data_direct_output">
					<xsl:attribute name="onclick">$("#data_direct").val("output");onCatalogMetadataSearch();</xsl:attribute>
					<xsl:choose>
						<xsl:when test="parameter.cludove/data_direct = 'output'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 输出 </xsl:text>
			</div>
			<input id="data_direct" type="hidden">
				<xsl:choose>
					<xsl:when test="parameter.cludove/data_direct != 'undefined'">
						<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/data_direct"/></xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="value">input</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
			</input>
		</div>
		<table class="metadata_table" style="width:100%;table-layout:fixed;" id="metadata_table">
			<tr>
				<th>
					<xsl:choose>
						<xsl:when test="count(/content/cludove.crest.spruce.data_mapping/record.crest)>0"/>
						<xsl:otherwise>
							<span class="span_check span_check_catalog_metadata" id="check_all_catalog_metadata"></span>
						</xsl:otherwise>
					</xsl:choose>
				</th>
				<th>字段名字[字段备注]</th>
				<th>字段类型</th>
				<th>字段长度</th>
				<th>主键字段</th>
				<th class="th7">操作</th>
			</tr>
			<xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest[data_direct = $data_direct]">
				<xsl:sort order="ascending" select="buddle_id"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.data_mapping/record.crest)>0"/>
								<xsl:otherwise>
									<input type="hidden" class="catalog_metadata_check">
										<xsl:attribute name="value">
											<xsl:value-of select="code" />
											<xsl:text>,</xsl:text>
											<xsl:value-of select="connection_code" />
										</xsl:attribute>
									</input>
									<span class="span_check span_check_catalog_metadata span_check_select_catalog_metadata catalog_metadata_check_select"></span>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
							<xsl:attribute name="title"><xsl:value-of select="name" /></xsl:attribute>
							<xsl:value-of select="name" />
							<xsl:if test="remark !=''">
								<xsl:text>[</xsl:text>
								<xsl:value-of select="remark" />
								<xsl:text>]</xsl:text>
							</xsl:if>
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
							<xsl:if test="type ='String'">
								<xsl:text>字符串</xsl:text>
							</xsl:if>
						</td>
						<td>
							<xsl:value-of select="length" />
						</td>
						<td style="overflow: hidden;text-overflow:ellipsis;white-space: nowrap;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis;white-space: nowrap; '">
							<xsl:value-of select="primary_name" />
						</td>
						<td>
							<a href="javascript:void(0)" class="revise" onclick="editData(this)"  title="修改">
								<xsl:variable name="name">
									<xsl:value-of select="name"/>
								</xsl:variable>
								<xsl:attribute name="onclick">showCatalogMetadataSetting('<xsl:value-of select="code" />','<xsl:value-of select="position()"/>')</xsl:attribute>
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.data_mapping/record.crest[r_field = $name])>0">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</a>
							<a id="deleting_hidden" class="delete-icon" href="javascript:void(0)" title="停用">
								<xsl:variable name="primary_name">
									<xsl:value-of select="primary_name"/>
								</xsl:variable>
								<xsl:choose>
									<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'metadata.catalog.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.data_mapping/record.crest)>0">
										<xsl:choose>
											<xsl:when test="name = $primary_name">
												<xsl:attribute name="onclick">
													zdconfirm('提示',"主键字段不可删除！")
												</xsl:attribute>
											</xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="onclick">
													zdconfirm('提示',"确认停用 数据元数据 <xsl:value-of select="name" /> 吗？",function(confirm){if (confirm) { onMetadataDelete('<xsl:value-of select="code"/>','<xsl:value-of select="name"/>','<xsl:value-of select="primary_name"/>','<xsl:value-of select="data_id"/>', '<xsl:value-of select="/content/parameter.cludove/catalog_id" />');} })
													processMetadataCatalogSetting('<xsl:value-of select="/content/parameter.cludove/buddle_id" />', '<xsl:value-of select="/content/parameter.cludove/catalog_id" />', $("#metadata_list").val())
												</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="onclick">
											zdconfirm('提示',"确认停用 数据元数据 <xsl:value-of select="name" /> 吗？",function(confirm){if (confirm) { onMetadataDelete('<xsl:value-of select="code"/>','<xsl:value-of select="name"/>','<xsl:value-of select="primary_name"/>','<xsl:value-of select="data_id"/>', '<xsl:value-of select="/content/parameter.cludove/catalog_id" />');} })
											processMetadataCatalogSetting('<xsl:value-of select="/content/parameter.cludove/buddle_id" />', '<xsl:value-of select="/content/parameter.cludove/catalog_id" />', $("#metadata_list").val())
										</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</a>
						</td>
					</tr>
			</xsl:for-each>
		</table>
		<input type="hidden" id="catalog_input_primary_name">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest[data_direct = 'input'][1]/primary_name" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="catalog_output_primary_name">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest[data_direct = 'output'][1]/primary_name" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="catalog_output_primary_name">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest[data_direct = 'output'][1]/primary_name" />
			</xsl:attribute>
		</input>
		<input type="hidden" id="metadata_list">
			<xsl:attribute name="value">
				<xsl:choose>
					<xsl:when test="count(cludove.crest.spruce.data_metadata/record.crest)>0">
						<xsl:text>1</xsl:text>
					</xsl:when>
					<xsl:otherwise>
						<xsl:text>0</xsl:text>
					</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
		</input>
	</xsl:template>
</xsl:stylesheet>
