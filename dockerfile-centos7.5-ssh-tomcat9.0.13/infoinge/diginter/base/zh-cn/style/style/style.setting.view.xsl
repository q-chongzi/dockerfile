<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_style_setting">
					<p class="list">
						<span class="span_tit">风格标识：</span>
						<input maxlength="64" type="text" id="style_identifier" class="input-1 validate[maxSize[64]]">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.style/record.crest/identifier"/>
							</xsl:attribute>
						</input>
					</p>
					<p class="list">
						<span class="span_tit">风格名字：</span>
						<input maxlength="128" type="text" id="style_name" class="input-1 validate[required,maxSize[128]]">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.style/record.crest/name"/>
							</xsl:attribute>
						</input>
					</p>
					<p class="texta">
						风格描述：
						<textarea class="validate[maxSize[256]]" id="style_description" placeholder="请输入256字以内" maxlength="256">
							<xsl:value-of select="cludove.crest.spruce.style/record.crest/description"/>
						</textarea>
					</p>
					<div class="configure-fr-side-bottom">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'style.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<input type="button" onclick="processStyleSetting()" value="提交" class="sub submit_btn"/>
						<input type="button" value="清除" onclick="resetData(this)" class="res"/>
						<input onclick="$('#basics_setting').hide()" type="button" value="取消" class="but"/>
						<input type="reset" style="display:none" class="reset_data"/>
					</div>
					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_style">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.style/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_style">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.style/record.crest/connection_code"/></xsl:attribute>
					</input>

		</form>
	</xsl:template>
</xsl:stylesheet>
