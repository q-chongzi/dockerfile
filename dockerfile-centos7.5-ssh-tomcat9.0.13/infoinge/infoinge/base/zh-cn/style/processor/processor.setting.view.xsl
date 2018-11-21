<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_processor_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.processor/record.crest) > 0">
							<span class="set_processor_name">驱动处理</span>
							<span class="span_edit span_processor_edit" title="新增驱动处理">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'processor.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_processor_name").html("驱动处理-新增"); $(".span_processor_edit").hide(); $('#code_processor').val(''); $('#connection_code_processor').val(''); $('#class_processor').focus(); $('input:radio[name="processor_select"]').attr('checked',false);$('#type_processor').attr("disabled",false);$("#class_processor").attr("disabled",false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_processor_name">驱动处理-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">驱动分类：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="type" id="processor_classify_none">
								<xsl:attribute name="onclick">$("#processor_classify").val("none");onProcessorSearch();</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.processor/record.crest/classify = 'none'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text> 不分类 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="type" id="processor_classify_input">
								<xsl:attribute name="onclick">$("#processor_classify").val("input");onProcessorSearch();</xsl:attribute>
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.processor/record.crest/classify = 'input'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text> 输入 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="type" id="processor_classify_output">
								<xsl:attribute name="onclick">$("#processor_classify").val("output");onProcessorSearch();</xsl:attribute>
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
						</div>
					</div>
					<div class="list">
						<span class="span_tit">类型：</span>
						<div class="text">
							<div class="div_select">
								<select id="type_processor">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.processor/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
									<xsl:attribute name="onchange">if (this.value != 'WS') {$('#processor_telephone_list').css('display','none'); $('#processor_email_list').css('display','none');}else{$('#processor_telephone_list').css('display','block'); $('#processor_email_list').css('display','block');}if($('#code_processor').val()==""){onProcessorSearch();}</xsl:attribute>
									<!--<option value="ALL">
										<xsl:text>全部</xsl:text>
									</option>-->
									<option value="DB">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'DB'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据库驱动</xsl:text>
									</option>
									<option value="Hinge.Data">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Hinge.Data'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">功能数据类</xsl:text>
									</option>
									<option value="WS">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'WS'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">外部数据类</xsl:text>
									</option>
									<option value="Hinge.Quote">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Hinge.Quote'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据加工类</xsl:text>
									</option>
									<option value="Cleanout.Regulation">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Cleanout.Regulation'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据清洗类</xsl:text>
									</option>
									<option value="Verify.Regulation">
										<xsl:if test="cludove.crest.spruce.processor/record.crest/type = 'Verify.Regulation'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">验证规则类</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">处理标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="256" type="text" id="class_processor" class="validate[required,maxSize[256]]">
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
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="name_processor" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.processor/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea maxlength="256" id="description_processor" class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.processor/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list" id="processor_telephone_list" style="display:none">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.processor/record.crest/type = 'WS'">
								<xsl:attribute name="style">display:block</xsl:attribute>
								<span class="span_tit">维护电话：</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="16" type="text" id="processor_telephone" class="validate[required,maxSize[16],custom[phone]]">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.spruce.lock.cd_contact[1]/record.crest[type = 'telephone']/content"/>
											</xsl:attribute>
										</input>
									</div>
								</div>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">维护电话：</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="16" type="text" id="processor_telephone" class="validate[required,maxSize[16],custom[phone]]"/>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list" id="processor_email_list" style="display:none">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.processor/record.crest/type = 'WS'">
								<xsl:attribute name="style">display:block</xsl:attribute>
								<span class="span_tit">维护邮箱：</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="20" type="text" id="processor_email" class="validate[required,maxSize[20],custom[email]]">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.spruce.lock.cd_contact[1]/record.crest[type = 'email']/content"/>
											</xsl:attribute>
										</input>
									</div>
								</div>
							</xsl:when>
							<xsl:otherwise>
								<span class="span_tit">维护邮箱：</span>
								<div class="text">
									<div class="div_input">
										<input maxlength="20" type="text" id="processor_email" class="validate[required,maxSize[20],custom[email]]"/>
									</div>
								</div>
							</xsl:otherwise>
						</xsl:choose>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'processor.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processProcessorSetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_processor">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_processor">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.processor/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
