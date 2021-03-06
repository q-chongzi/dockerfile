<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="field_cleanout_setting">
			<div class="item">
				<div style="color:#000000;margin-left:-950px;" class="title">
					<xsl:choose>
						<xsl:when test="parameter.cludove/field_cleanout_code !='' ">
							<span class="set_field_verify_name">清洗规则</span>
							<span class="span_edit span_field_verify_edit" title="新增清洗处理">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.verify.cleanout.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_verify_cleanout_name").html("清洗规则-新增"); $(".span_verify_cleanout_edit").hide(); $('#code_verify_cleanout').val(''); $('#connection_code_verify_cleanout').val(''); $('#class_verify_cleanout').focus(); $('input:radio[name="verify_cleanout_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_verify_cleanout_name">清洗规则-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div style="position: relative" class="div_txt">
					<div style="width:450px;" class="list">
						<span class="span_tit">选择规则：</span>
						<div class="text">
							<div class="div_select">
								<xsl:variable name="cleanout_code">
									<xsl:value-of select="parameter.cludove/field_cleanout_code"/>
								</xsl:variable>
								<select id="cleanout_code_field_cleanout" class="validate[required]" style="padding-right: 18px">
									<option value=""><xsl:text>请选择清洗规则</xsl:text></option>
									<xsl:for-each select="cludove.crest.spruce.verify_cleanout/record.crest">
										<xsl:variable name="code">
											<xsl:value-of select="cleanout_code"/>
										</xsl:variable>
										<option>
											<xsl:attribute name="value">
												<xsl:value-of select="cleanout_code"/>
											</xsl:attribute>
											<xsl:if test="cleanout_code = $cleanout_code">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:value-of select="/content/cludove.crest.spruce.cleanout_regulation/record.crest[code = $code]/regulation_name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
						</div>
					</div>
					<div style="width:450px;position: absolute;left: 500px;top: 0" class="list">
						<span class="span_tit">首要内容：</span>
						<div class="text">
							<div class="div_input">
								<xsl:choose>
									<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
										<input maxlength="256" type="text" id="first_content_field_cleanout" class="validate[required,maxSize[256]]">
											<xsl:attribute name="value"> </xsl:attribute>
										</input>
									</xsl:when>
									<xsl:otherwise>
										<input maxlength="256" type="text" id="first_content_field_cleanout" class="validate[required,maxSize[256]]">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/first_content"/>
											</xsl:attribute>
										</input>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</div>
					</div>
					<div style="width:450px;position: absolute;left: 500px;" class="list">
						<span class="span_tit">次要内容：</span>
						<div class="text">
							<div class="div_input">
								<xsl:choose>
									<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
										<input maxlength="256" type="text" id="second_content_field_cleanout" class="validate[required,maxSize[256]]">
											<xsl:attribute name="value"> </xsl:attribute>
										</input>
									</xsl:when>
									<xsl:otherwise>
										<input maxlength="256" type="text" id="second_content_field_cleanout" class="validate[required,maxSize[256]]">
											<xsl:attribute name="value">
												<xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/second_content"/>
											</xsl:attribute>
										</input>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</div>
					</div>
					<div style="width:450px;" class="list">
						<span class="span_tit">处理顺序：</span>
						<div class="db_cleanout_position_spinner position_spinner">
							<span class="icon-input icon-up" title="+"></span>
							<input type="number" max="100" min="0" id="verify_cleanout_position" class="order validate[required,custom[zpositive],max[100]]">
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.field_cleanout[1]/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.field_cleanout[1]/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:choose>
												<xsl:when test="count(cludove.crest.spruce.field_cleanout[3]/record.crest) > 0">
													<xsl:choose>
														<xsl:when test="cludove.crest.spruce.field_cleanout[3]/record.crest/position = 100">
															<xsl:value-of select="cludove.crest.spruce.field_cleanout[3]/record.crest/position"/>
														</xsl:when>
														<xsl:otherwise>
															<xsl:value-of select="cludove.crest.spruce.field_cleanout[3]/record.crest/position + 1"/>
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
					<div style="margin-top: 10px;margin-left:200px;width:450px;" class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.verify.cleanout.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn">
									<xsl:attribute name="onclick">processFieldCleanoutValidate(this)</xsl:attribute>
									提交
								</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<a href="javascript:void(0)">
									<xsl:attribute name="onclick">
										$(this).parents("form").parent("div").hide();
									</xsl:attribute>
									取消
								</a>
								<input type="reset" style="display:none" class="reset_data"/>
							</div>
						</div>
					</div>

					<!--隐藏按钮-->
					<input type="hidden" name="code_field_cleanout" id="code_field_cleanout">
						<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/code"/></xsl:attribute>
					</input>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
