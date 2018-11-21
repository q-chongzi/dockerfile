<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_data_expression_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
									<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
									<xsl:text>预览功能</xsl:text>
								</a>
								<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_expression_data_input_container').is(':hidden')) $('#style_file_expression_data_input_container').show(); else $('#style_file_expression_data_input_container').hide();">上传样式单</a>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_expression_data_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_expression_data_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_expression_data_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data_expression/record.crest) > 0">
							<span class="set_data_expression_name">查询条件</span>
							<span class="span_edit span_data_expression_edit" title="新增查询条件">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'expression.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_data_expression_name").html("查询条件-新增"); $(".span_data_expression_edit").hide(); $('#code_data_expression').val(''); $('#connection_code_data_expression').val(''); $('#data_expression_test_expression').focus();  $('input:radio[name="data_expression_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_data_expression_name">查询条件-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="data_expression_position_spinner">
							<input maxlength="50" type="text" id="data_expression_position"  class="validate[required,custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data_expression/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/position"/>
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
						<span class="span_tit">输出条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="data_expression_test_expression" placeholder="多条件用xsl:choose输出，最后输出条件为空" title="根据不同条件输出where子句" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/test_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">循环取值：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_for_each" id="data_expression_is_for_each_true" onclick="$('#data_expression_is_for_each').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data_expression/record.crest/is_for_each = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_for_each" id="data_expression_is_for_each_false" onclick="$('#data_expression_is_for_each').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data_expression/record.crest/is_for_each = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="data_expression_is_for_each" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.data_expression/record.crest/is_for_each != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/is_for_each"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">选取条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="data_expression_select_expression" placeholder="xsl:for-cach输出查询条件，循环取值为是时不能为空" title="与循环取值配合使用，循环取值为是时生效，用于循环输出查询条件，与目录数据的循环取值构成嵌套输出，用于多值查询条件的生成" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/select_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'expression.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processDataExpressionSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_data_expression">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_data_expression">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_expression/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
