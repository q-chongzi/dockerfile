<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form style="" action="" id="validate_catalog_setting" class="configure-form">
			<p>当前目录标识：<input type="text" style="width:60%" readonly='readonly' id="catalog_identifier" maxlength="50" placeholder="用于指示访问功能的标识[catalog.cludove]，必须" class="input-1">
				<xsl:attribute name="value">
					<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
				</xsl:attribute>
			</input>
			</p>
			<p>当前目录名称：<input type="text" style="width:60%" readonly='readonly' id="catalog_name" maxlength="50" placeholder="用于显示功能的名字，必须" class="input-1">
				<xsl:attribute name="value">
					<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
				</xsl:attribute>
			</input>
			</p>
			<p>当前目录类型：<input type="text" style="width:60%" readonly='readonly' id="catalog_type" maxlength="50" placeholder="用于显示功能的类型，必须" class="input-1">
				<xsl:attribute name="value">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'function'">
							<xsl:text disable-output-escaping="yes">服务功能</xsl:text>
						</xsl:when>
						<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
							<xsl:text disable-output-escaping="yes">数据迁移</xsl:text>
						</xsl:when>
						<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
							<xsl:text disable-output-escaping="yes">数据同步</xsl:text>
						</xsl:when>
						<xsl:otherwise>
							<xsl:text disable-output-escaping="yes">未查到服务功能</xsl:text>
						</xsl:otherwise>
					</xsl:choose>
				</xsl:attribute>
			</input>
			</p>
			<hr/><br/>
			<p>由于标识唯一，所以必须重新写一个标识：</p>
			<p><input type="text" id="catalog_identifier_new" maxlength="50" placeholder="用于显示功能的标识，必须" class="input-1 validate[required,maxSize[64]]"></input>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:when test="cludove.crest.spruce.catalog/record.crest/buddle_id = 'exchange'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<!--<xsl:if test="count(cludove.crest.spruce.data_exchange/record.crest[migr_position !='' or sync_position !='']) = 0">-->
					<input type="button" onclick="catalogCopySettingProcess()" value="提交" class="sub submit_btn"/>
					<input type="reset" value="清除" onclick="resetData(this);" class="res"/>
				<!--</xsl:if>-->
				<input onclick="$('#resource_setting_right').hide()" type="button" value="取消" class="but"/>
				<input type="reset" style="display:none" class="reset_data"/>

				<!--隐藏按钮-->
				<input type="hidden" name="code" id="code_catalog_source">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="code" id="identifier_catalog_source">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/></xsl:attribute>
				</input>
				<input type="hidden" name="buddle_id" id="buddle_id" value="exchange"/>
			</div>
	</form>

	</xsl:template>
</xsl:stylesheet>
