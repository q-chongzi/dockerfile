<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_data_parameter_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
									<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
									<xsl:text>预览功能</xsl:text>
								</a>
								<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_parameter_input_container').is(':hidden')) $('#style_file_parameter_input_container').show(); else $('#style_file_parameter_input_container').hide();">上传样式单</a>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_parameter_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_parameter_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_parameter_catalog_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.data_parameter/record.crest) > 0">
							<span class="set_catalog_parameter_name">数据参数</span>
							<span class="span_edit span_catalog_parameter_edit" title="新增数据参数">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'parameter.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_catalog_parameter_name").html("数据参数-新增"); $(".span_catalog_parameter_edit").hide(); $('#code_data_parameter').val(''); $('#connection_code_data_parameter').val(''); $('#data_parameter_name').focus();  $('input:radio[name="data_parameter_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_catalog_parameter_name">数据参数-新增</span>
						</xsl:otherwise>
					</xsl:choose>
					<!--<span class="span_reload span_quote_reload" title="重新加载驱动处理">-->
						<!--<xsl:attribute name="onclick">onProcessorSelect('catalog_parameter_select_expression_select', 'Hinge.Quote', '请选择数据引用类', '')</xsl:attribute>-->
					<!--</span>-->
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">参数名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="50" type="text" id="data_parameter_input_name" placeholder="参数名字不是可选择字段时录入" title="参数名字不是可选择字段时录入，录入参数名字后选择字段失效，选择字段后参数名字失效" class="validate[maxSize[128]]">
									<xsl:attribute name="oninput">$('#data_parameter_select_name').val(''); $('#data_parameter_name').val(this.value);</xsl:attribute>
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/parameter_name"/></xsl:attribute>
								</input>
							</div>
							<div class="div_select">
								<select id="data_parameter_select_name">
									<xsl:attribute name="onchange">$('#data_parameter_input_name').val(this.value);$('#data_parameter_name').val(this.value);if ($('#data_parameter_select_name').val() == ''){$('#data_parameter_input_name').addClass("validate[required]");} else {$('#data_parameter_select_name').removeClass("validate[required]");}</xsl:attribute>
									<option value="">需要时选择字段作为参数名字</option>
									<xsl:for-each select="metadata/record.crest">
										<option>
											<xsl:if test="name = /content/cludove.crest.spruce.data_parameter/record.crest/parameter_name">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value"><xsl:value-of select="name"/></xsl:attribute>
											<xsl:value-of select="name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
							<input type="hidden" id="data_parameter_name">
								<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/parameter_name"/></xsl:attribute>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="data_parameter_position_spinner">
							<input maxlength="50" type="text" id="data_parameter_position"  class="validate[required,custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.data_parameter/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/position"/>
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
						<div>
							<xsl:attribute name="id">data_parameter_select_expression_input_container</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data_parameter/record.crest/class = 'class'">
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:when>
								<xsl:otherwise/>
							</xsl:choose>
							<span class="span_tit">选取条件：</span>
							<div class="text">
								<div class="div_textarea">
									<textarea id="data_parameter_select_expression_input" placeholder="xsl:value-of输出节点内容或文本内容，选择对应参数处理" title="用xsl:value-of输出节点内容或直接输出文本内容，请选择对应参数处理" class="validate[maxSize[1024]]">
										<xsl:attribute name="onblur">$('#data_parameter_select_expression').val(this.value);</xsl:attribute>
										<xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/select_expression"/>
									</textarea>
								</div>
							</div>
						</div>
						<div>
							<xsl:attribute name="id">data_parameter_select_expression_select_container</xsl:attribute>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.data_parameter/record.crest/class = 'class'"/>
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span class="span_tit">数据加工：</span>
							<div class="text">
								<div class="div_select">
									<select id="data_parameter_select_expression_select">
										<xsl:attribute name="onchange">$('#data_parameter_select_expression').val(this.value);</xsl:attribute>
										<option value="">请选择数据加工类</option>
										<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
											<option>
												<xsl:if test="class = /content/cludove.crest.spruce.data_parameter/record.crest/select_expression">
													<xsl:attribute name="selected">selected</xsl:attribute>
												</xsl:if>
												<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
												<xsl:value-of select="name"/>
											</option>
										</xsl:for-each>
									</select>
								</div>
							</div>
						</div>
						<input type="hidden" id="data_parameter_select_expression">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/select_expression"/></xsl:attribute>
						</input>
					</div>
					<div class="list">
						<span class="span_tit">参数处理：</span>
						<div class="text">
							<div class="div_select">
								<select id="data_parameter_class">
									<xsl:attribute name="onchange">$('#data_parameter_select_expression_input').val('');$('#data_parameter_select_expression').val('');if (this.value == 'class') {$('#data_parameter_select_expression_select').val('');$("#data_parameter_select_expression_select").attr('class','validate[required]');$('#data_parameter_select_expression').val('');$('#data_parameter_select_expression_input_container').hide(); $('#data_parameter_select_expression_select_container').show();} else {$('#data_parameter_select_expression_input_container').show(); $('#data_parameter_select_expression_select_container').hide();}</xsl:attribute>
									<option value="select">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'select'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取</xsl:text>
									</option>
									<option value="text">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'text'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义</xsl:text>
									</option>
									<option value="select_encode">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'select_encode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取后Base64编码</xsl:text>
									</option>
									<option value="select_decode">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'select_decode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">上下文选取后Base64解码</xsl:text>
									</option>
									<option value="text_encode">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'text_encode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义Base64编码</xsl:text>
									</option>
									<option value="text_decode">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'text_decode'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">纯文本定义Base64解码</xsl:text>
									</option>
									<option value="class">
										<xsl:if test="cludove.crest.spruce.data_parameter/record.crest/class = 'class'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据加工类</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'parameter.data.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processDataParameterSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this);$('#data_parameter_class').trigger('change')">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_data_parameter">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_data_parameter">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data_parameter/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
