<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal configure-form" role="form" id="validate_vocabulary_setting">
			<p>
				<span>参数标识：</span>
				<input maxlength="64" type="text" id="vocabulary_identifier" class="input-1 validate[required,maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/identifier"/>
					</xsl:attribute>
				</input>
			</p>
			<p>
				<span style="text-align:right">配 置 项 ：</span>
				<input maxlength="128" type="text" id="vocabulary_keyword" class="input-1 validate[required,maxSize[128]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/keyword"/>
					</xsl:attribute>
				</input>
			</p>
			<p>
				<span>配置内容：</span>
				<input maxlength="512" type="text" id="vocabulary_content" class="input-1 validate[required,maxSize[512]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/content"/>
					</xsl:attribute>
				</input>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'vocabulary.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<input type="button" value="提交" class="sub" onclick="processVocabularySetting();"/>
				<input type="reset" value="清除" class="res"/>
				<input type="button" value="取消" class="but" onclick="$('#basics_setting').hide()"/>
				<!--隐藏按钮-->
				<input type="hidden" name="code" id="code_vocabulary">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="connection_code" id="connection_code_vocabulary">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/connection_code"/></xsl:attribute>
				</input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
