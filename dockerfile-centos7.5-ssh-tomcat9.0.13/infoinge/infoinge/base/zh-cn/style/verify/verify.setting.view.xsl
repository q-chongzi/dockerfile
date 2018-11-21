<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_verify_setting">
			<div class="item">
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.verify_regulation/record.crest) > 0">
							<span class="set_verify_name">验证规则</span>
							<span class="span_edit span_verify_edit" title="新增验证处理">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_verify_name").html("验证规则-新增"); $(".span_verify_edit").hide(); $('#code_verify').val(''); $('#connection_code_verify').val(''); $('#class_verify').focus(); $('input:radio[name="verify_select"]').attr('checked',false);$("#identifier_verify").attr("disabled",false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_verify_name">验证规则-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">规则名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="regulation_name_verify" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/regulation_name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">规则标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="identifier_verify" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/identifier"/>
									</xsl:attribute>
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.verify_regulation/record.crest/code !=''">
											<xsl:attribute name="disabled">disabled</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">处理类：</span>
						<div class="text">
							<div class="div_select">
								<select id="class_verify" class="validate[required]" style="padding-right: 18px" onchange="verifyClassRegulation()">
									<option value=""><xsl:text>必须输入处理类或验证规则</xsl:text></option>
									<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
										<option>
											<xsl:choose>
												<xsl:when test="count(/content/cludove.crest.spruce.verify_regulation/record.crest)>0">
													<xsl:if test="class = /content/cludove.crest.spruce.verify_regulation/record.crest/class">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
											<xsl:attribute name="value">
												<xsl:value-of select="class"/>
											</xsl:attribute>
											<xsl:value-of select="name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">验证规则：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="256" type="text" placeholder="必须输入处理类或验证规则" id="regulation_verify" class="validate[required,maxSize[256]]" onblur="verifyRegulationClass()">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/regulation"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">规则描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea  id="description_verify" class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processVerifyValidate();">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code" id="code_verify">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_verify">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
