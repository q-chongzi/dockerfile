<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<div class="configure-fl-about-tit" style="position: relative;">
			<span>数据标注</span>
			<div class="data_label">
				<label for="import_label" title="导入数据标注">
					<xsl:text>导入数据标注</xsl:text>
				</label>
				<input type="file" multiple="" accept=".csv, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, application/vnd.ms-excel" style="display:none" id="import_label" name="import_file_input">
					<xsl:attribute name="onchange">ImportLabelExcel('import_label')</xsl:attribute>
				</input>
			</div>

		</div>
		<ul class="configure-nav1">
			<xsl:for-each select="db.schema/table_cat">
				<li style="border: 2px solid #EFF0F0" class="nav1-lis">
					<a href="javascript:void(0)">
						<xsl:attribute name="id">catalog_navigater</xsl:attribute>
						<xsl:attribute name="onclick">onDBTableNaviagate('<xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_container_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_navigater_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/record_code"/>', '<xsl:value-of select="/content/parameter.cludove/identifier"/>', '<xsl:value-of select="/content/parameter.cludove/host"/>', '<xsl:value-of select="/content/parameter.cludove/port"/>', '<xsl:value-of select="/content/parameter.cludove/instance"/>', '<xsl:value-of select="/content/parameter.cludove/account"/>', '<xsl:value-of select="/content/parameter.cludove/password"/>', '<xsl:value-of select="/content/parameter.cludove/driver"/>', '<xsl:value-of select="/content/parameter.cludove/template"/>', '<xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/pattern"/>')</xsl:attribute>
						<!--<xsl:text disable-output-escaping="yes">catalog.</xsl:text>-->
						<!--<xsl:value-of select="."/>-->
						<!--<xsl:text> - </xsl:text>-->
						<xsl:value-of select="/content/parameter.cludove/name"/>
						<xsl:text> - </xsl:text>
						<xsl:text disable-output-escaping="yes">catalog.</xsl:text>
						<xsl:value-of select="."/>
					</a>
				</li>
				<!--<ul>-->
				<!--<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_catalog_container_</xsl:text><xsl:value-of select="."/></xsl:attribute>-->
				<!--</ul>-->
			</xsl:for-each>
			<xsl:for-each select="db.schema/table_schem">
				<li style="border: 2px solid #EFF0F0" class="nav1-lis">
					<a href="javascript:void(0)">
						<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_navigater_</xsl:text><xsl:value-of select="."/></xsl:attribute>
						<xsl:attribute name="onclick">onDBTableNaviagate('<xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_container_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/host"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/port"/><xsl:text disable-output-escaping="yes">_</xsl:text><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_navigater_</xsl:text><xsl:value-of select="."/>', '<xsl:value-of select="/content/parameter.cludove/record_code"/>', '<xsl:value-of select="/content/parameter.cludove/identifier"/>', '<xsl:value-of select="/content/parameter.cludove/host"/>', '<xsl:value-of select="/content/parameter.cludove/port"/>', '<xsl:value-of select="/content/parameter.cludove/instance"/>', '<xsl:value-of select="/content/parameter.cludove/account"/>', '<xsl:value-of select="/content/parameter.cludove/password"/>', '<xsl:value-of select="/content/parameter.cludove/driver"/>', '<xsl:value-of select="/content/parameter.cludove/template"/>', '', '<xsl:value-of select="."/>')</xsl:attribute>
						<xsl:text disable-output-escaping="yes">schema.</xsl:text>
						<xsl:value-of select="."/>
					</a>
				</li>
				<!--<ul>-->
				<!--<xsl:attribute name="id"><xsl:value-of select="/content/parameter.cludove/instance"/><xsl:text disable-output-escaping="yes">_schema_container_</xsl:text><xsl:value-of select="."/></xsl:attribute>-->
				<!--</ul>-->
			</xsl:for-each>
		</ul>
		<ul class="configure-nav1" id="db_table_naviagate" style="position:absolute;width:17%; height:84%; overflow:auto">
		</ul>
		<input type="hidden" id="table_id"/>
		<input type="hidden" id="db_identifier">
			<xsl:attribute name="value">
				<xsl:value-of select="parameter.cludove/identifier"/>
			</xsl:attribute>
		</input>
	</xsl:template>
</xsl:stylesheet>
