<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>
		<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>
		<xsl:variable name="resource_name">
			<xsl:value-of select="translate(parameter.cludove/table_name,$smallcase,$uppercase)"/>
		</xsl:variable>
		<xsl:variable name="identifier">
			<xsl:value-of select="parameter.cludove/identifier"/>
		</xsl:variable>
		<div id="column_search_table" style="position:absolute;width:76%; height:60%; overflow:auto;overflow-y:auto;">
			<table id="column_field_label">
				<xsl:attribute name="table_name">
					<xsl:value-of select="parameter.cludove/table_name"/>
				</xsl:attribute>
				<tr class="border-bg1">
					<td>
						<xsl:text disable-output-escaping="yes">字段名字</xsl:text>
					</td>
					<td>类型</td>
					<td>长度</td>
				</tr>
				<xsl:for-each select="db.column/record.crest">
					<tr style="cursor: pointer"  is-click="true">
						<xsl:attribute name="column_field_name">
							<xsl:value-of select="column_name"/>
						</xsl:attribute>
						<td align="left" onmouseover="this.style='word-break:break-all;padding-left: 3%;cursor:pointer;';"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; padding-left: 3%;cursor:pointer;'" style="padding-left: 3%;cursor:pointer;overflow: hidden; text-overflow: ellipsis;" >
							<xsl:attribute name="title"><xsl:value-of select="remarks"/></xsl:attribute>
							<xsl:variable name="field_name">
								<xsl:value-of select="translate(column_name,$smallcase,$uppercase)"/>
							</xsl:variable>
							<xsl:attribute name="column_field_name">
								<xsl:value-of select="column_name"/>
							</xsl:attribute>
							<label is-click="false">
								<input style="margin-right: 12%" type="radio" name="choice" is-click="false">
									<xsl:attribute name="id">choice_<xsl:value-of select="column_name"/></xsl:attribute>
									<xsl:attribute name="onclick">$('#choice_id').val('choice_<xsl:value-of select="column_name"/>');onFieldLabelSetting(this)</xsl:attribute>
								</input>
							<xsl:value-of select="column_name"/>
							</label>
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name]) > 0">
									<xsl:text disable-output-escaping="yes"> [</xsl:text>
									<xsl:value-of select="/content/cludove.crest.spruce.field_label/record.crest[field_name = $field_name and resource_name = $resource_name and identifier = $identifier]/field_label"/>
									<xsl:text disable-output-escaping="yes">]</xsl:text>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes"> [</xsl:text>
									<xsl:value-of select="remarks"/>
									<xsl:text disable-output-escaping="yes">]</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</td>
						<td style="vertical-align:middle;">
							<xsl:call-template name="sql_types_show">
								<xsl:with-param name="field_type">
									<xsl:value-of select="data_type"/>
								</xsl:with-param>
							</xsl:call-template>
						</td>
						<td style="vertical-align:middle;">
							<xsl:value-of select="column_size"/>
						</td>
					</tr>
					<tr class="border-bg2" style="display:none">
						<xsl:attribute name="id"><xsl:value-of select="column_name" /></xsl:attribute>
						<td colspan="3" style="width:800px;height:80px;">
							<div>
								<xsl:attribute name="id"><xsl:value-of select="column_name" />_verify_search</xsl:attribute>
							</div>
							<div class="configure-fr-side" style="position: static;display:none; border: 3px solid rgb(92, 185, 248);border-top:none;width:100%;height:180px;">
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
				<xsl:attribute name="value"><xsl:value-of select="translate(parameter.cludove/table_name,$smallcase,$uppercase)"/></xsl:attribute>
			</input>
			<input type="hidden" name="column_field_label_connection_code" id="column_field_label_connection_code">
				<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/record_code"/></xsl:attribute>
			</input>
			<input id="choice_id" type="hidden" value="choice_CODE"/>
		</div>
		<div id="resource_db_data_search" style="position:absolute;top:65%;width:76%; height:30%; overflow:auto;overflow-y:auto;display:none">
			<xsl:text disable-output-escaping="yes"> </xsl:text>
		</div>
	</xsl:template>
</xsl:stylesheet>
