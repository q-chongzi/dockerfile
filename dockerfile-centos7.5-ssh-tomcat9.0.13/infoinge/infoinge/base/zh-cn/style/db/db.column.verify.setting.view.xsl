<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="field_verify_setting">
			<div class="item">
				<div style="color:#000000;margin-left:-950px;" class="title">
					<xsl:choose>
						<xsl:when test="parameter.cludove/verify_code !='' ">
							<span class="set_field_verify_name">验证规则</span>
							<span class="span_edit span_field_verify_edit" title="新增验证处理">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_verify_cleanout_name").html("验证规则"); $(".span_verify_cleanout_edit").hide(); $('#code_verify_cleanout').val(''); $('#connection_code_verify_cleanout').val(''); $('#class_verify_cleanout').focus(); $('input:radio[name="verify_cleanout_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_field_verify_name">验证规则-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>

				<div style="position: relative" class="div_txt">
					<div style="width:450px;" class="list">
						<span class="span_tit">验证规则：</span>
						<div class="text">
							<div class="div_select">
								<select id="field_verify_code" class="validate[required]" style="padding-right: 18px">
									<option value=""><xsl:text>请选择验证规则类</xsl:text></option>
									<xsl:for-each select="cludove.crest.spruce.verify_regulation/record.crest">
										<option>
											<xsl:choose>
												<xsl:when test="count(/content/cludove.crest.spruce.field_verify/record.crest)>0">
													<xsl:if test="code =/content/cludove.crest.spruce.field_verify/record.crest/verify_code">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
												</xsl:when>
												<xsl:otherwise/>
											</xsl:choose>
											<xsl:attribute name="value">
												<xsl:value-of select="code"/>
											</xsl:attribute>
											<xsl:value-of select="regulation_name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
						</div>
					</div>

					<div style="width:450px;position: absolute;left: 500px;top: 0" class="list">
						<div class="text">
							<div class="div_input" style="border: none;">
								<input maxlength="256" type="text" style="color:#fff" id="db_position_validate" class="validate[required,max[100],custom[zpositive]]">
								</input>
							</div>
						</div>
					</div>

					<div style="width:450px;position: absolute;left: 500px;top: 0" class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="verify_position_spinner position_spinner">
							<span class="icon-input icon-up" title="+" onclick="$('#db_position_validate').val(verify_position.value)"></span>
							<input type="number" max="100" min="0" style="background-color:#fff;" id="verify_position" onblur="$('#db_position_validate').val(this.value)" class="order">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.field_verify[1]/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.field_verify[1]/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.field_verify[3]/record.crest) > 0">
													<xsl:choose>
														<xsl:when test="cludove.crest.spruce.field_verify[3]/record.crest/position = 100">
															<xsl:value-of select="cludove.crest.spruce.field_verify[3]/record.crest/position"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="cludove.crest.spruce.field_verify[3]/record.crest/position + 1"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:when>
												<xsl:otherwise>
													<xsl:text>0</xsl:text>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</input>
							<span class="icon-input icon-down" title="-"></span>
						</div>
					</div>
					<div style="width:500px;margin-left:300px;margin-top:10px;text-align:center;" class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processFieldVerifyValidate(this);">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<a href="javascript:void(0)">
									<xsl:attribute name="onclick">
										$(this).parents("#field_verify_setting").parent("div").hide();
									</xsl:attribute>
									取消
								</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="field_name" id="field_name_field_verify">
						<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/field_name" /></xsl:attribute>
					</input>
					<input type="hidden" name="code" id="code_field_verify">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/code"/></xsl:attribute>
					</input>
					<input type="hidden" name="connection_code" id="connection_code_field_verify">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/connection_code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
