<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form">
			<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_field_cleanout_setting</xsl:attribute>
			<div class="title">
				<xsl:choose>
					<xsl:when test="parameter.cludove/field_cleanout_code !='' ">
						<span class="set_field_verify_name">清洗规则</span>
						<span class="span_edit span_field_verify_edit" title="新增清洗处理">
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'verify.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:attribute name="onclick">$(".set_field_verify_name").html("清洗规则-新增"); $(this).hide(); $('#<xsl:value-of select="parameter.cludove/field_verify_code"/>_code_field_cleanout').val(''); $('#<xsl:value-of select="parameter.cludove/field_verify_code"/>_connection_code_field_cleanout').val(''); $('#class_verify_cleanout').focus(); $('input:radio[name="verify_cleanout_select"]').attr('checked',false);</xsl:attribute>
						</span>
					</xsl:when>
					<xsl:otherwise>
						<span class="set_verify_cleanout_name">清洗规则-新增</span>
					</xsl:otherwise>
				</xsl:choose>
			</div>
			<div>
				<xsl:choose>
					<xsl:when test="count(parameter.cludove/select_location) = 0">
						<xsl:attribute name="style">position: relative;left:20%</xsl:attribute>
					</xsl:when>
					<xsl:otherwise>
						<xsl:attribute name="style">position: relative;</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="count(cludove.crest.spruce.field_cleanout/record.crest/code) >0 ">
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:variable name="cleanout_code">
								<xsl:value-of select="parameter.cludove/field_cleanout_code"/>
							</xsl:variable>
							<span>选择规则：</span>
							<select  class="validate[required]">
								<xsl:choose>
									<xsl:when test="count(parameter.cludove/select_location) = 0">
										<xsl:attribute name="style">padding-right: 18px;width:290px</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="style">padding-right: 18px;width:173px</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_cleanout_code_field_cleanout</xsl:attribute>
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
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;position: absolute;left: 400px;top: 0</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span>首要内容：</span>
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_first_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value"> </xsl:attribute>
									</input>
								</xsl:when>
								<xsl:otherwise>
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_first_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value">
											<xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/first_content"/>
										</xsl:attribute>
									</input>
								</xsl:otherwise>
							</xsl:choose>
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;position: absolute;left: 400px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span>次要内容：</span>
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_second_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value"> </xsl:attribute>
									</input>
								</xsl:when>
								<xsl:otherwise>
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_second_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value">
											<xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/second_content"/>
										</xsl:attribute>
									</input>
								</xsl:otherwise>
							</xsl:choose>
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;line-height:30px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span class="span_tit">处理顺序：</span>
							<input type="number" max="100" min="0" class="order validate[required,custom[zpositive],max[100]]">
								<xsl:choose>
									<xsl:when test="count(parameter.cludove/select_location) = 0">
										<xsl:attribute name="style">width:290px;</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="style">width:173px;</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_verify_cleanout_position</xsl:attribute>
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
						</p>
					</xsl:when>
					<xsl:otherwise>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:variable name="cleanout_code">
								<xsl:value-of select="parameter.cludove/field_cleanout_code"/>
							</xsl:variable>
							<span>选择规则：</span>
							<select  class="validate[required]">
								<xsl:choose>
									<xsl:when test="count(parameter.cludove/select_location) = 0">
										<xsl:attribute name="style">padding-right: 18px;width:290px</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="style">padding-right: 18px;width:173px</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_cleanout_code_field_cleanout</xsl:attribute>
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
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;position: absolute;left: 400px;top: 0</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span>首要内容：</span>
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_first_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value"> </xsl:attribute>
									</input>
								</xsl:when>
								<xsl:otherwise>
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_first_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value">
											<xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/first_content"/>
										</xsl:attribute>
									</input>
								</xsl:otherwise>
							</xsl:choose>
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;position: absolute;left: 400px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span>次要内容：</span>
							<xsl:choose>
								<xsl:when test="/content/parameter.cludove/field_cleanout_code=''">
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_second_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value"> </xsl:attribute>
									</input>
								</xsl:when>
								<xsl:otherwise>
									<input maxlength="256" type="text" class="validate[required,maxSize[256]]">
										<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_second_content_field_cleanout</xsl:attribute>
										<xsl:attribute name="value">
											<xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/second_content"/>
										</xsl:attribute>
									</input>
								</xsl:otherwise>
							</xsl:choose>
						</p>
						<p>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="style">width:450px;line-height:30px;</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="style">width:350px;line-height:30px;</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<span class="span_tit">处理顺序：</span>
							<input type="number" max="100" min="0" class="order validate[required,custom[zpositive],max[100]]">
								<xsl:choose>
									<xsl:when test="count(parameter.cludove/select_location) = 0">
										<xsl:attribute name="style">width:290px;</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="style">width:173px;</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_verify_cleanout_position</xsl:attribute>
								<xsl:attribute name="value">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.verify_cleanout[1]/record.crest/position != ''">
											<xsl:value-of select="cludove.crest.spruce.verify_cleanout[1]/record.crest/position"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:text>0</xsl:text>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</input>
						</p>
					</xsl:otherwise>
				</xsl:choose>
			</div>
			<div class="configure-fr-side-bottom">
				<input type="button" value="提交" class="sub">
					<xsl:attribute name="onclick">processFieldCleanoutValidate('<xsl:value-of select="parameter.cludove/field_verify_code"/>')</xsl:attribute>
				</input>
				<input type="reset" value="清除" class="res"></input>
				<input type="button" value="取消" class="but">
					<xsl:attribute name="onclick">
						$('#<xsl:value-of select="parameter.cludove/field_verify_code"/>_field_cleanout_setting').parent("div").hide();
					</xsl:attribute>
				</input>

				<!--隐藏按钮-->
				<input type="hidden" name="code_field_cleanout">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_code_field_cleanout</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="connection_code_field_cleanout">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/field_verify_code"/>_connection_code_field_cleanout</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/connection_code"/></xsl:attribute>
				</input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
