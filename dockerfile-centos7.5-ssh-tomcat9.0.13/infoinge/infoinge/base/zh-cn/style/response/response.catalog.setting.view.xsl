<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_catalog_response_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<a href="javascript:void(0)" title="预览目录响应过程和结果" target="_blank">
									<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
									<xsl:text>预览功能</xsl:text>
								</a>
								<a href="javascript:void(0)" title="上传目录响应的样式单后相关配置失效" onclick="if ($('#style_file_response_catalog_input_container').is(':hidden')) $('#style_file_response_catalog_input_container').show(); else $('#style_file_response_catalog_input_container').hide();">上传样式单</a>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_response_catalog_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_response_catalog_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_response_catalog_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.catalog_response/record.crest) > 0">
							<span class="set_catalog_response_name">目录响应</span>
							<span class="span_edit span_catalog_response_edit" title="新增目录响应">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'response.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_catalog_response_name").html("目录响应-新增"); $(".span_catalog_response_edit").hide(); $('#code_catalog_response').val(''); $('#connection_code_catalog_response').val(''); $('#catalog_response_test_expression').focus();  $('input:radio[name="catalog_response_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_catalog_response_name">目录响应-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">输出条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="catalog_response_test_expression" placeholder="单条件用xsl:if输出" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/test_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="catalog_response_position_spinner">
							<input maxlength="50" type="text" id="catalog_response_position"  class="validate[required,custom[zpositive],max[200]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog_response/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/position"/>
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
						<span class="span_tit">循环取值：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_for_each" id="catalog_response_is_for_each_true" onclick="$('#catalog_response_is_for_each').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog_response/record.crest/is_for_each = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_for_each" id="catalog_response_is_for_each_false" onclick="$('#catalog_response_is_for_each').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog_response/record.crest/is_for_each = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_response_is_for_each" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog_response/record.crest/is_for_each != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/is_for_each"/></xsl:attribute>
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
								<textarea id="catalog_response_select_expression" placeholder="xsl:value-of输出节点内容或文本内容，选择对应项目处理" title="与循环取值配合使用，循环取值为是时生效，用于循环输出目录响应，与功能目录的循环取值构成嵌套输出" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/select_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">响应格式：</span>
						<div class="text">
							<div class="div_select">
								<select id="catalog_response_response_format">
									<option value="json">
										<xsl:if test="cludove.crest.spruce.catalog_response/record.crest/response_format = 'json'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">json</xsl:text>
									</option>
									<option value="xml">
										<xsl:if test="cludove.crest.spruce.catalog_response/record.crest/response_format = 'xml'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">xml</xsl:text>
									</option>
									<option value="html">
										<xsl:if test="cludove.crest.spruce.catalog_response/record.crest/response_format = 'html'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">html</xsl:text>
									</option>
									<option value="text">
										<xsl:if test="cludove.crest.spruce.catalog_response/record.crest/response_format = 'text'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">text</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">起始符号：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="catalog_response_start_symbol" placeholder="用于输出包裹内容的符号或者标签，可为空" class="validate[maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/start_symbol"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">结束符号：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="catalog_response_end_symbol" placeholder="用于输出包裹内容的符号或者标签，可为空" class="validate[maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/end_symbol"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'response.catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processCatalogResponseSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_catalog_response">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_catalog_response">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_response/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
