<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<div class="main_tab">
			<table id="column_field_label">
				<xsl:attribute name="table_name">
					<xsl:value-of select="parameter.cludove/table_name"/>
				</xsl:attribute>
				<tr>
					<th>
						<xsl:text disable-output-escaping="yes">字段名字</xsl:text>
					</th>
					<th class="th7">类型</th>
					<th class="th7">长度</th>
				</tr>
				<xsl:for-each select="db.column/record.crest">
					<tr>
						<xsl:attribute name="column_field_name">
							<xsl:value-of select="column_name"/>
						</xsl:attribute>
						<xsl:attribute name="onclick">fieldVerifyDisplay($(this).attr("column_field_name"),$("#column_field_label").attr("table_name"));onFieldLabelSetting(this)</xsl:attribute>
						<td align="left" style="padding-left: 3%;cursor:pointer;overflow: hidden;text-overflow:ellipsis;">
							<xsl:attribute name="title"><xsl:value-of select="remarks"/></xsl:attribute>
							<xsl:variable name="field_name">
								<xsl:value-of select="column_name"/>
							</xsl:variable>
							<xsl:attribute name="column_field_name">
								<xsl:value-of select="column_name"/>
							</xsl:attribute>
							<label>
								<input style="margin-right: 12%" type="radio" id="choice" name="choice"/>
									<xsl:value-of select="column_name"/>
							</label>
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name]) > 0">
									<xsl:text disable-output-escaping="yes"> [</xsl:text>
									<xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name]/field_label"/>
									<xsl:text disable-output-escaping="yes">]</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes"> [</xsl:text>
									<xsl:value-of select="remarks"/>
									<xsl:text disable-output-escaping="yes">]</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td>
						    <xsl:call-template name="sql_types_show">
								<xsl:with-param name="field_type">
									<xsl:value-of select="data_type"/>
								</xsl:with-param>
						    </xsl:call-template>
						</td>
						<td>
							<xsl:value-of select="column_size"/>
						</td>
					</tr>
					<tr style="display:none">
						<xsl:attribute name="id"><xsl:value-of select="column_name" /></xsl:attribute>
						<td colspan="3" style="width:800px;height:80px;">
							<div>
								<xsl:attribute name="id"><xsl:value-of select="column_name" />_verify_search</xsl:attribute>
							</div>
							<div style="display:none;border: 3px solid #95D3D3;height:150px;">
								<xsl:attribute name="id"><xsl:value-of select="column_name" />_verify_setting</xsl:attribute>
							</div>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<!--隐藏按钮-->
			<input type="hidden" name="column_field_label_identifier" id="column_field_label_identifier">
				<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/identifier"/></xsl:attribute>
			</input>
			<input type="hidden" name="column_field_label_resource_name" id="column_field_label_resource_name">
				<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/table_name"/></xsl:attribute>
			</input>
			<input type="hidden" name="column_field_label_connection_code" id="column_field_label_connection_code">
				<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/record_code"/></xsl:attribute>
			</input>
		</div>
	</xsl:template>
</xsl:stylesheet>
