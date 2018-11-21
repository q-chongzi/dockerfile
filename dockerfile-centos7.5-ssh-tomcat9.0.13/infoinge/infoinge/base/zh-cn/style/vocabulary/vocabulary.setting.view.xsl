<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_vocabulary_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.vocabulary/record.crest) > 0">
							<span class="set_vocabulary_name">系统词表</span>
							<span class="span_edit span_vocabulary_edit" title="新增系统词表">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'vocabulary.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_vocabulary_name").html("系统词表-新增"); $(".span_vocabulary_edit").hide();  $('#code_vocabulary').val(''); $('#connection_code_vocabulary').val(''); $('#class_vocabulary').focus(); $('input:radio[name="vocabulary_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_vocabulary_name">系统词表-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt" style="padding-top:10px">
					<div class="list" style="padding-top:8px">
						<span class="span_tit">参数标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="vocabulary_identifier" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/identifier"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="padding-top:8px">
						<span class="span_tit">配置项：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="vocabulary_keyword" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/keyword"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="padding-top:8px">
						<span class="span_tit">配置内容：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="512" type="text" id="vocabulary_content" class="validate[required,maxSize[512]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/content"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="padding-top:8px">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'vocabulary.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processVocabularySetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_vocabulary">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_vocabulary">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>

		</form>
	</xsl:template>
</xsl:stylesheet>
