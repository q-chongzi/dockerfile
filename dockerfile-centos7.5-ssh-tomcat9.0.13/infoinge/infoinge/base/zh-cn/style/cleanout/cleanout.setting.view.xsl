<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_cleanout_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.cleanout_regulation/record.crest) > 0">
							<span class="set_cleanout_name">清洗规则</span>
							<span class="span_edit span_cleanout_edit" title="新增清洗规则">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'cleanout.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_cleanout_name").html("清洗规则-新增"); $(".span_cleanout_edit").hide(); $('#code_cleanout').val(''); $('#connection_code_cleanout').val(''); $('#class_cleanout').focus(); $('input:radio[name="cleanout_select"]').attr('checked',false);$("#cleanout_identifier").attr("disabled",false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_cleanout_name">清洗规则-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">清洗类：</span>
						<div class="text">
							<div class="div_select">
								<select id="class_cleanout" class="validate[required]" style="padding-right: 18px">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/class"/>
									</xsl:attribute>
									<xsl:attribute name="onchange">if (this.value != 'WS') {$('#processor_telephone_list').css('display','none'); $('#processor_email_list').css('display','none');}else{$('#processor_telephone_list').css('display','block'); $('#processor_email_list').css('display','block');}if($('#code_processor').val()==""){onProcessorSearch();}</xsl:attribute>
									<option value="">请选择清洗类</option>
									<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
										<option>
											<xsl:if test="class = /content/cludove.crest.spruce.cleanout_regulation[1]/record.crest/class">
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
					<div class="list">
						<span class="span_tit">规则标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="cleanout_identifier" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/identifier"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.cleanout_regulation/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">规则名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="cleanout_name" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/regulation_name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">规则描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="cleanout_description" class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'cleanout.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processCleanoutSetting();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_cleanout">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_cleanout">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.cleanout_regulation/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
