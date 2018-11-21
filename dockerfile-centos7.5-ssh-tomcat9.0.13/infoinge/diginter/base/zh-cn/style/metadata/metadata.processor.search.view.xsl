<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl" />
	<xsl:template match="content">
		<div class="metadata_direct" style="position:absolute;top:40px; left:150px;">
			<div class="fl">
				<input class="input_radio" value="input" type="radio" name="data_direct" id="data_direct_input" checked="checked">
					<xsl:attribute name="onclick">$("#data_direct").val("input");onProcessorMetadataSearch();</xsl:attribute>
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
					<xsl:attribute name="onclick">$("#data_direct").val("output");onProcessorMetadataSearch();</xsl:attribute>
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
		<table class="parameter_table" style="width:100%">
			<tr>
				<th>字段名字[字段备注]</th>
				<th>字段类型</th>
				<th>字段长度</th>
				<th>主键字段</th>
				<th class="th7">操作</th>
			</tr>
			<xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
				<xsl:sort order="ascending" select="buddle_id"/>
					<tr>
						<xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
						<td style="overflow:hidden; text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="name" /></xsl:attribute>
							<xsl:value-of select="name" />
							<xsl:if test="remark !=''">
								<xsl:text>[</xsl:text>
								<xsl:value-of select="remark" />
								<xsl:text>]</xsl:text>
							</xsl:if>
						</td>
						<td>
							<xsl:choose>
								<xsl:when test="type = 'String'">
									<xsl:text disable-output-escaping="yes">字符串</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="type"/>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
							<xsl:value-of select="length" />
						</td>
						<td>
							<xsl:value-of select="primary_name" />
						</td>
						<td>
							<a href="javascript:void(0)" class="check-icon" onclick="editData(this)"  title="查看">
								<xsl:attribute name="onclick">showProcessorMetadataSetting('<xsl:value-of select="code" />','<xsl:value-of select="data_id" />')</xsl:attribute>
							</a>
							<!--<a class="delete-icon" href="javascript:void(0)" title="停用">
								<xsl:choose>
									<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'metadata.processor.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">zdconfirm('提示','确定删除所选的数据元数据 <xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'processor_class'), new Array('diginter', 'metadata.processor.remove.process', '<xsl:value-of select="code" />', '<xsl:value-of select="data_id" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}}) </xsl:attribute>
							</a>-->
						</td>
					</tr>
			</xsl:for-each>
		</table>
		<input id="data_id_class" type="hidden">
			<xsl:attribute name="value">
				<xsl:value-of select="cludove.crest.spruce.data_metadata/record.crest/data_id" />
			</xsl:attribute>
		</input>
	</xsl:template>
</xsl:stylesheet>
