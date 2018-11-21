<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="configure-form" role="form" id="validate_processor_setting">
			<p class="rad">驱动分类：
				<input class="input_radio" value="none" type="radio" name="is_type" id="processor_classify_none" checked="checked">
					<xsl:attribute name="onclick">$("#processor_classify").val("none");onProcessorSearch('<xsl:value-of select="parameter.cludove/type"/>');</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/classify = 'none'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 不分类 </xsl:text>
				<input class="input_radio" value="input" type="radio" name="is_type" id="processor_classify_input">
					<xsl:attribute name="onclick">$("#processor_classify").val("input");onProcessorSearch('<xsl:value-of select="parameter.cludove/type"/>');</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/classify = 'input'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 输入 </xsl:text>
				<input class="input_radio" value="output" type="radio" name="is_type" id="processor_classify_output">
					<xsl:attribute name="onclick">$("#processor_classify").val("output");onProcessorSearch('<xsl:value-of select="parameter.cludove/type"/>');</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/classify = 'output'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 输出 </xsl:text>
				<input id="processor_classify" type="hidden">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/classify != ''">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/classify"/></xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="value">none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
			</p>
			<p>驱动名字：
				<input maxlength="128" type="text" id="name_processor" class="input-1 input-c validate[required,maxSize[128]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.processor/record.crest/name"/>
					</xsl:attribute>
				</input>
			</p>
			<p>驱动标识：
				<input maxlength="256" type="text" id="class_processor" class="input-1 input-c validate[required,maxSize[256]]">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.processor/record.crest/class"/>
					</xsl:attribute>
				</input>
			</p>
			<p>驱动类型：
				<select id="type_processor">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/code !=''">
							<xsl:attribute name="disabled">disabled</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
					<xsl:attribute name="onchange">if (this.value == 'WS' || this.value == 'Hinge.Data'){$('#processor_is_metadata_container').show()}else{$('#processor_is_metadata_container').hide()}; if (this.value != 'WS') {$('#processor_telephone_list').css('display','none'); $('#processor_email_list').css('display','none');}else{$('#processor_telephone_list').css('display','block'); $('#processor_email_list').css('display','block');}if($('#code_processor').val()==""){onProcessorSearch($(this).val());}</xsl:attribute>
					<!--<option value="ALL">
						<xsl:text>全部</xsl:text>
					</option>-->
					<option value="DB">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'DB' or parameter.cludove/type = 'DB'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">数据库驱动</xsl:text>
					</option>
					<option value="Hinge.Data">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Hinge.Data' or parameter.cludove/type = 'Hinge.Data'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">功能数据类</xsl:text>
					</option>
					<option value="WS">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'WS' or parameter.cludove/type = 'WS'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">外部数据类</xsl:text>
					</option>
					<option value="Hinge.Quote">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Hinge.Quote' or parameter.cludove/type = 'Hinge.Quote'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">数据加工类</xsl:text>
					</option>
					<option value="Cleanout.Regulation">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Cleanout.Regulation' or parameter.cludove/type = 'Cleanout.Regulation'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">数据清洗类</xsl:text>
					</option>
					<option value="Verify.Regulation">
						<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Verify.Regulation' or parameter.cludove/type = 'Verify.Regulation'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">验证规则类</xsl:text>
					</option>
				</select>
			</p>
			<p class="rad" id="processor_is_metadata_container">
				<xsl:choose>
					<xsl:when test="parameter.cludove/type = 'Hinge.Data' or parameter.cludove/type = 'WS'"/>
					<xsl:when test="cludove.crest.spruce.processor/record.crest/type = 'Hinge.Data' or cludove.crest.spruce.processor/record.crest/type = 'WS'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				数据元数据：
				<input class="input_radio" value="true" type="radio" name="type" id="processor_is_metadata_true">
					<xsl:attribute name="onclick">$("#processor_is_metadata").val("true");</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/is_metadata = 'true'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text> 是 </xsl:text>
				<input class="input_radio" value="false" type="radio" name="type" id="processor_is_metadata_false">
					<xsl:attribute name="onclick">$("#processor_is_metadata").val("false");</xsl:attribute>
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/is_metadata = 'true'"/>
						<xsl:otherwise>
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
				<xsl:text> 否 </xsl:text>
				<input id="processor_is_metadata" type="hidden">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.processor/record.crest/is_metadata != ''">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/is_metadata"/></xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="value">false</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
			</p>
			<p class="texta">驱动描述：
				<textarea placeholder="请输入驱动处理描述" maxlength="256" id="description_processor" class="validate[maxSize[256]]">
					<xsl:value-of select="cludove.crest.spruce.processor/record.crest/description"/>
				</textarea>
			</p>
			<p id="processor_telephone_list">
				<xsl:choose>
					<xsl:when test="parameter.cludove/type = 'WS' or cludove.crest.spruce.processor/record.crest/type = 'WS'">
						<span class="span_tit">维护电话：</span>
						<input maxlength="16" type="text" id="processor_telephone" class="input-1 validate[required,maxSize[16],custom[phone]]">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']/content"/>
							</xsl:attribute>
						</input>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
						<span class="span_tit">维护电话：</span>
						<input maxlength="16" type="text" id="processor_telephone" class="input-1 validate[required,maxSize[16],custom[phone]]"/>
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<p id="processor_email_list">
				<xsl:choose>
					<xsl:when test="parameter.cludove/type = 'WS' or cludove.crest.spruce.processor/record.crest/type = 'WS'">
						<span class="span_tit">维护邮箱：</span>
						<input maxlength="20" type="text" id="processor_email" class="input-1 validate[required,maxSize[20],custom[email]]">
							<xsl:attribute name="value">
								<xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'email']/content"/>
							</xsl:attribute>
						</input>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
						<span class="span_tit">维护邮箱：</span>
						<input maxlength="20" type="text" id="processor_email" class="input-1 validate[required,maxSize[20],custom[email]]"/>
					</xsl:otherwise>
				</xsl:choose>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<input type="button" value="提交" class="sub" onclick="processProcessorSetting()">
					<xsl:choose>
						<xsl:when test="count(/content/cludove.crest.spruce.data/record.crest) > 0">
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<input type="reset" value="清除" class="res"/>
				<input type="button" value="取消" class="but" onclick="$('#basics_setting').hide()"/>
			</div>

			<!--隐藏按钮-->
			<input type="hidden" name="code" id="code_processor">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/code"/></xsl:attribute>
			</input>
			<input type="hidden" name="connection_code" id="connection_code_processor">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/connection_code"/></xsl:attribute>
			</input>
		</form>
	</xsl:template>
</xsl:stylesheet>
