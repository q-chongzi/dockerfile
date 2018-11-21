<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_quote_setting">
			<!--<div class="div_txt">
				<div class="list">
					<div class="text">
						<div class="div_nav">
							<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
								<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="parameter.cludove/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="parameter.cludove/catalog_id"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
								<xsl:text>预览功能</xsl:text>
							</a>
							<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_quote_input_container').is(':hidden')) $('#style_file_quote_input_container').show(); else $('#style_file_quote_input_container').hide();">上传样式单</a>
						</div>
					</div>
				</div>
			</div>
			<p>
				<xsl:attribute name="id">style_file_quote_input_container</xsl:attribute>
				<xsl:attribute name="style">display:none</xsl:attribute>
				<input type="file" id="style_file_quote_input" name="style_file">
					<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_quote_input', '样式单文件')</xsl:attribute>
				</input>
			</p>-->
			<p>数据名字：
				<select id="quote_name" style="padding-right: 18px">
					<xsl:choose>
						<xsl:when test="parameter.cludove/data_type !='DB'">
							<xsl:for-each select="/content/cludove.crest.spruce.data_metadata/record.crest">
								<option>
									<xsl:if test="name = /content/cludove.crest.spruce.quote/record.crest/name">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value">
										<xsl:value-of select="name"/>
									</xsl:attribute>
									<xsl:value-of select="name"/>
								</option>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise>
							<xsl:for-each select="metadata/record.crest">
								<option>
									<xsl:if test="name = /content/cludove.crest.spruce.quote/record.crest/name">
										<xsl:attribute name="selected">selected</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="value">
										<xsl:value-of select="name"/>
									</xsl:attribute>
									<xsl:value-of select="name"/>
								</option>
							</xsl:for-each>

						</xsl:otherwise>
					</xsl:choose>
				</select>
			</p>

			<p class="rad">转换方式：
				<input type="radio" name="quote_choice" checked="" id="choice_text_converter" onclick="$('.choice_class').hide();$('.choice_text_converter').show();$('#quote_expression').val('');$('#quote_class').val('')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.quote/record.crest/text_converter != '' or cludove.crest.spruce.quote/record.crest/text_handle != ''">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<label for="choice_text_converter"> 转换文本 </label>
				<input style="margin-left:10px" type="radio" name="quote_choice" id="choice_class" onclick="$('.choice_text_converter').hide();$('.choice_class').show();$('#quote_text_converter').val('');$('#quote_text_handle').val('')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.quote/record.crest/class != '' or cludove.crest.spruce.quote/record.crest/expression != ''">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<label for="choice_class"> 处理类 </label>
			</p>

			<!--转换文本-->
			<div class="choice_text_converter">
				<xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = '' and cludove.crest.spruce.quote/record.crest/text_converter = '' and count(cludove.crest.spruce.quote/record.crest)>0">
					<xsl:attribute name="style">display:none</xsl:attribute>
				</xsl:if>
				<xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = '' and cludove.crest.spruce.quote/record.crest/text_converter = '' and cludove.crest.spruce.quote/record.crest/class = '' and cludove.crest.spruce.quote/record.crest/expression = ''">
					<xsl:attribute name="style">display:block</xsl:attribute>
				</xsl:if>
				<p class="texta">转换文本：
					<textarea id="quote_text_converter" placeholder="" class="validate[maxSize[512]]">
						<xsl:value-of select="cludove.crest.spruce.quote/record.crest/text_converter"/>
					</textarea>
				</p>
				<p>文本处理方式：
					<select id="quote_text_handle" style="width:80%;">
						<!--<xsl:if test="count(cludove.crest.spruce.quote/record.crest) > 0 ">-->
						<!--<xsl:attribute name="disabled">disabled</xsl:attribute>-->
						<!--</xsl:if>-->
						<option value="">请选择文本处理方式</option>
						<option value="insert">
							<xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'insert'">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:text disable-output-escaping="yes">前面插入</xsl:text>
						</option>
						<option value="append">
							<xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'append'">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:text disable-output-escaping="yes">后面追加</xsl:text>
						</option>
						<option value="replace">
							<xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'replace'">
								<xsl:attribute name="selected">selected</xsl:attribute>
							</xsl:if>
							<xsl:text disable-output-escaping="yes">全部替换</xsl:text>
						</option>
					</select>
				</p>
			</div>
			<!--处理类-->
			<div class="choice_class hidden">
				<xsl:choose>
					<xsl:when test="cludove.crest.spruce.quote/record.crest/class != '' or cludove.crest.spruce.quote/record.crest/expression != ''">
						<xsl:attribute name="style">display:block</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<p class="texta"><span style="margin-left:12px">表达式：</span>
					<textarea id="quote_expression" class="validate[maxSize[512],custom[onchinaese]]" placeholder="表达式可以对数据进行四则运算，输入了表达式后，数据引用类会无效">
						<xsl:value-of select="cludove.crest.spruce.quote/record.crest/expression"/>
					</textarea>
				</p>
				<p>数据加工：
					<select id="quote_class">
						<option value="">请选择数据加工类</option>
						<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
							<option>
								<xsl:if test="class = /content/cludove.crest.spruce.quote/record.crest/class">
									<xsl:attribute name="selected">selected</xsl:attribute>
								</xsl:if>
								<xsl:attribute name="value">
									<xsl:value-of select="class"/>
								</xsl:attribute>
								<xsl:value-of select="name"/>
							</option>
						</xsl:for-each>
					</select>
				</p>
			</div>

			<div class="list">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'quote.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<span class="span_tit"/>
				<p class="configure-fr-side-bottom">
					<input type="button" href="javascript:void(0)" value="提交" class="submit_btn sub">
						<xsl:attribute name="code_quote"><xsl:value-of select="cludove.crest.spruce.quote/record.crest/code"/></xsl:attribute>
						<xsl:attribute name="onclick">
							processQuoteSetting(this, '<xsl:value-of select="parameter.cludove/buddle_id"/>', '<xsl:value-of select="parameter.cludove/catalog_id"/>', '<xsl:value-of select="parameter.cludove/data_code"/>', '<xsl:value-of select="parameter.cludove/data_type"/>', '<xsl:value-of select="parameter.cludove/data_connection_id"/>', '<xsl:value-of select="parameter.cludove/data_resource_name"/>');
						</xsl:attribute>
					</input>
					<input type="reset" href="javascript:void(0)" class="res" value="清除" onclick="resetData(this);"/>
					<input onclick="$('#resource_setting_right').hide()" type="button" value="取消" class="but"/>
					<input type="reset" style="display:none" class="reset_data"/>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_quote">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.quote/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_quote">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.quote/record.crest/connection_code"/></xsl:attribute>
					</input>
				</p>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
