<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_language_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.language/record.crest) > 0">
							<span class="set_language_name">语言支持</span>
							<span class="span_edit span_language_edit" title="新增语言支持">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'language.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_language_name").html("语言支持-新增"); $(".span_language_edit").hide(); $('#code_language').val(''); $('#connection_code_language').val(''); $('#language_name').focus(); 	$('input:radio[name="language_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_language_name">语言支持-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">语言名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="16" type="text" id="language_name" class="validate[maxSize[16]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.language/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">字符集：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="16" type="text" id="language_encoding" class="validate[required,maxSize[16]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.language/record.crest/encoding"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">映射字符集：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="16" type="text" id="language_mapping" class="validate[required,maxSize[16]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.language/record.crest/mapping"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'language.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processLanguageSetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_language">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.language/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_language">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.language/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
