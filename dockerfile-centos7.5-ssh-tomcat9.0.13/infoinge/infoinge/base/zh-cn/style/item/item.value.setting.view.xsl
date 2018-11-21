<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_item_value_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<!--<div class="div_nav">-->
								<!--<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">-->
									<!--<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>-->
									<!--<xsl:text>预览功能</xsl:text>-->
								<!--</a>-->
								<!--<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_item_value_input_container').is(':hidden')) $('#style_file_item_value_input_container').show(); else $('#style_file_item_value_input_container').hide();">上传样式单</a>-->
							<!--</div>-->
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_item_value_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_item_value_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_item_value_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.item_value/record.crest) > 0">
							<span class="set_item_value_name">项目取值</span>
							<span class="span_edit span_item_value_edit" title="新增项目取值">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'item.value.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_item_value_name").html("项目取值-新增"); $(".span_item_value_edit").hide(); $('#code_item_value').val(''); $('#connection_code_item_value').val(''); $('#item_value_item_name').focus();  $('input:radio[name="item_value_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_item_value_name">项目取值-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">排列顺序：</span>
						<div class="item_value_position_spinner">
							<input maxlength="50" type="text" id="item_value_position"  class="validate[required,custom[zpositive],max[200]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.item_value/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.item_value/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text disable-output-escaping="yes">0</xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">项目名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="item_value_item_name" placeholder="用于输出json键名或者标记名，可为空" class="validate[maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.item_value/record.crest/item_name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list" style="display:none">
						<span class="span_tit">输出条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="item_value_test_expression" placeholder="用xsl:if判断是否输出当前内容，可为空" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.item_value/record.crest/test_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">选取条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="item_value_select_expression" placeholder="用xsl:for-cach循环输出当前内容，可为空" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.item_value/record.crest/select_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'item.value.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processItemValueSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_item_value">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.item_value/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_item_value">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.item_value/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
