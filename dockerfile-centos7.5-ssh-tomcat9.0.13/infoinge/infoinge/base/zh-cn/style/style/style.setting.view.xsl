<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_style_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.style/record.crest) > 0">
							<span class="set_style_name">界面风格</span>
							<span class="span_edit span_style_edit" title="新增界面风格">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'style.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_style_name").html("界面风格-新增"); $(".span_style_edit").hide(); $('#code_style').val(''); $('#connection_code_style').val(''); $('#class_style').focus(); $('input:radio[name="style_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_style_name">界面风格-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">风格标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="style_identifier" class="validate[maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.style/record.crest/identifier"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">风格名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="style_name" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.style/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">风格描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea maxlength="256" id="style_description" class="validate[required,maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.style/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'style.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processStyleSetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_style">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.style/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_style">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.style/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
