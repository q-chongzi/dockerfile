<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_language_setting">
			<p style="text-align: right" class="list">
				<span class="span_tit">语言名字：</span>
				<input maxlength="16" type="text" style="width:360px" id="language_name" class="input-1 validate[maxSize[16]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.language/record.crest/name"/>
					</xsl:attribute>
				</input>
			</p>
			<p style="text-align: right" class="list">
				<span class="span_tit">字符集：</span>
				<input maxlength="16" type="text" style="width:360px" id="language_encoding" class="input-1 validate[required,maxSize[16]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.language/record.crest/encoding"/>
					</xsl:attribute>
				</input>
			</p>
			<p style="text-align: right" class="list">
				<span class="span_tit">映射字符集：</span>
				<input maxlength="16" type="text" style="width:360px" id="language_mapping" class="input-1 validate[required,maxSize[16]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.language/record.crest/mapping"/>
					</xsl:attribute>
				</input>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'language.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<input type="button" onclick="processLanguageSetting()" value="提交" class="sub submit_btn"/>
				<input type="button" value="清除" onclick="resetData(this)" class="res"/>
				<input onclick="$('#basics_setting').hide()" type="button" value="取消" class="but"/>
				<input type="reset" style="display:none" class="reset_data"/>
			</div>

			<!--隐藏按钮-->
			<input type="hidden" name="code" id="code_language">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.language/record.crest/code"/></xsl:attribute>
			</input>
			<input type="hidden" name="connection_code" id="connection_code_language">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.language/record.crest/connection_code"/></xsl:attribute>
			</input>

		</form>
	</xsl:template>
</xsl:stylesheet>
