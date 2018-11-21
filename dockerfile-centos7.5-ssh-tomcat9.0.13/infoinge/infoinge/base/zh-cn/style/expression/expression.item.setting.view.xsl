<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_expression_item_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
									<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
									<xsl:text>预览功能</xsl:text>
								</a>
								<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_expression_item_input_container').is(':hidden')) $('#style_file_expression_item_input_container').show(); else $('#style_file_expression_item_input_container').hide();">上传样式单</a>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_expression_item_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_expression_item_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_expression_item_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.expression_item/record.crest) > 0">
							<span class="set_expression_item_name">条件项目</span>
							<span class="span_edit span_expression_item_edit" title="新增条件项目">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'expression.item.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_expression_item_name").html("条件项目-新增"); $(".span_expression_item_edit").hide(); $('#code_expression_item').val(''); $('#connection_code_expression_item').val(''); $('#expression_item_select_expression').focus();  $('input:radio[name="expression_item_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_expression_item_name">条件项目-新增</span>
						</xsl:otherwise>
					</xsl:choose>
					<!--<span class="span_reload span_quote_reload" title="重新加载驱动处理">-->
						<!--<xsl:attribute name="onclick">onProcessorSelect('expression_item_select_expression_select', 'Hinge.Quote', '请选择数据引用类', '')</xsl:attribute>-->
					<!--</span>-->
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="expression_item_position_spinner">
							<input maxlength="3" type="text" id="expression_item_position"  class="validate[required,custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.expression_item/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/position"/>
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
						<span class="span_tit">逻辑连接：</span>
						<div class="text">
							<div class="div_select">
								<select id="expression_item_logical_symbol">
									<option value="">需要时选择逻辑符号连接查询条件</option>
									<option value="AND">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/logical_symbol = 'AND'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">与</xsl:text>
									</option>
									<option value="OR">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/logical_symbol = 'OR'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">或</xsl:text>
									</option>
									<option value="AND NOT">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/logical_symbol = 'AND NOT'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">与非</xsl:text>
									</option>
									<option value="OR NOT">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/logical_symbol = 'OR NOT'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">或非</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">左括弧数：</span>
						<div class="expression_item_left_brace_number_spinner">
							<input maxlength="50" type="text" id="expression_item_left_brace_number" class="validate[custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.expression_item/record.crest/left_brace_number != ''">
											<xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/left_brace_number"/>
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
						<span class="span_tit">字段名字：</span>
						<div class="text">
							<div class="div_select">
								<select id="expression_item_field_name">
									<xsl:attribute name="onchange">onResourceStructureTypeShow($('#data_select_type').val(), $('#data_select_connection_id').val(), $('#data_select_resource_name').val(), this.value, 'expression_item_field_type')</xsl:attribute>
									<xsl:for-each select="metadata/record.crest">
										<option>
											<xsl:if test="name = /content/cludove.crest.spruce.expression_item/record.crest/field_name">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
											<xsl:value-of select="name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">字段逻辑：</span>
						<div class="text">
							<div class="div_select">
								<select id="expression_item_sql_operator">
									<option value="=">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '='">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">等于</xsl:text>
									</option>
									<option value="!=">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '!='">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">不等于</xsl:text>
									</option>
									<option value="&lt;">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '&lt;'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">小于</xsl:text>
									</option>
									<option value="&lt;=">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '&lt;='">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">小于等于</xsl:text>
									</option>
									<option value="&gt;">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '&gt;'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">大于</xsl:text>
									</option>
									<option value="&gt;=">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = '&gt;='">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">大于等于</xsl:text>
									</option>
									<option value="LIKE">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'LIKE'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">包含</xsl:text>
									</option>
									<option value="NOT LIKE">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'NOT LIKE'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">不包含</xsl:text>
									</option>
									<option value="IS NULL">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'IS NULL'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">是空</xsl:text>
									</option>
									<option value="IS NOT NULL">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'IS NOT NULL'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">不是空</xsl:text>
									</option>
									<option value="EXISTS">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'EXISTS'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">在列表中</xsl:text>
									</option>
									<option value="NOT EXISTS">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/sql_operator = 'NOT EXISTS'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">不在列表中</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<div>
							<xsl:attribute name="id">expression_item_select_expression_input_container</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.expression_item/record.crest/class = 'class'">
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
							<span class="span_tit">选取条件：</span>
							<div class="text">
								<div class="div_textarea">
									<textarea id="expression_item_select_expression_input" placeholder="用xsl:value输出节点内容或直接输出文本内容" class="validate[maxSize[1024]]">
										<xsl:attribute name="oninput">$('#expression_item_select_expression').val(this.value);</xsl:attribute>
										<xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/select_expression"/>
									</textarea>
								</div>
							</div>
						</div>
						<div>
							<xsl:attribute name="id">expression_item_select_expression_select_container</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.expression_item/record.crest/class = 'class'"/>
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span class="span_tit">数据加工：</span>
							<div class="text">
								<div class="div_select">
									<select id="expression_item_select_expression_select">
										<xsl:attribute name="onchange">$('#expression_item_select_expression').val(this.value);</xsl:attribute>
										<option value="">请选择数据加工类</option>
										<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
											<option>
												<xsl:if test="class = /content/cludove.crest.spruce.expression_item/record.crest/select_expression">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
												<xsl:value-of select="class"/>
											</option>
										</xsl:for-each>
									</select>
								</div>
							</div>
						</div>
						<input type="hidden" id="expression_item_select_expression">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/select_expression"/></xsl:attribute>
						</input>
					</div>
					<div class="list">
						<span class="span_tit">赋值处理：</span>
						<div class="text">
							<div class="div_select">
								<select id="expression_item_class">
									<xsl:attribute name="onchange">if (this.value == 'class') {$('#expression_item_select_expression_input_container').hide(); $('#expression_item_select_expression_select_container').show();} else {$('#expression_item_select_expression_input_container').show(); $('#expression_item_select_expression_select_container').hide();}</xsl:attribute>
									<option value="select">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'select'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取</xsl:text>
									</option>
									<option value="text">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'text'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义</xsl:text>
									</option>
									<!--option value="select_encode">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'select_encode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取后Base64编码</xsl:text>
									</option>
									<option value="select_decode">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'select_decode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取后Base64解码</xsl:text>
									</option>
									<option value="text_encode">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'text_encode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义Base64编码</xsl:text>
									</option>
									<option value="text_decode">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'text_decode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义Base64解码</xsl:text>
									</option>
									<option value="class">
										<xsl:if test="cludove.crest.spruce.expression_item/record.crest/class = 'class'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据加工类</xsl:text>
									</option-->
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">右括弧数：</span>
						<div class="expression_item_right_brace_number_spinner">
							<input maxlength="50" type="text" id="expression_item_right_brace_number" class="validate[custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.expression_item/record.crest/right_brace_number != ''">
											<xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/right_brace_number"/>
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
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'expression.item.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processExpressionItemSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_expression_item">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_expression_item">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/connection_code"/></xsl:attribute>
								</input>
								<input type="hidden" name="field_type" id="expression_item_field_type">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.expression_item/record.crest/field_type"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
