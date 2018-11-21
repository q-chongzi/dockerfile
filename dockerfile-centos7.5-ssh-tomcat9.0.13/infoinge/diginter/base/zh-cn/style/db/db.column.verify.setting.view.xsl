<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form">
			<xsl:choose>
				<xsl:when test="count(parameter.cludove/select_location) = 0">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_field_verify_setting</xsl:attribute>
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_field_verify_setting</xsl:attribute>
				</xsl:otherwise>
			</xsl:choose>
			<div class="title">
				<xsl:choose>
					<xsl:when test="parameter.cludove/verify_code !='' ">
						<span class="set_field_verify_name">验证规则</span>
						<span class="span_edit span_field_verify_edit" title="新增验证处理">
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'verify.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
								<xsl:otherwise>
									<xsl:attribute name="style">display:none</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
							<xsl:choose>
								<xsl:when test="count(parameter.cludove/select_location) = 0">
									<xsl:attribute name="onclick">$(".set_field_verify_name").html("验证规则-新增"); $(this).hide(); $('#<xsl:value-of select="parameter.cludove/verify_id"/>_code_field_verify').val(''); $('#<xsl:value-of select="parameter.cludove/verify_id"/>_connection_code_field_verify').val(''); $('#class_verify_cleanout').focus(); $('input:radio[name="verify_cleanout_select"]').attr('checked',false);</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="onclick">$(".set_field_verify_name").html("验证规则-新增"); $(this).hide(); $('#<xsl:value-of select="parameter.cludove/elem"/>_code_field_verify').val(''); $('#<xsl:value-of select="parameter.cludove/elem"/>_connection_code_field_verify').val(''); $('#class_verify_cleanout').focus(); $('input:radio[name="verify_cleanout_select"]').attr('checked',false);</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</span>
					</xsl:when>
					<xsl:otherwise>
						<span class="set_field_verify_name">验证规则-新增</span>
					</xsl:otherwise>
				</xsl:choose>
			</div>
			<p>
				<span>验证规则：</span>
				<select id="field_verify_code" class="validate[required]">
					<xsl:choose>
						<xsl:when test="count(parameter.cludove/select_location) = 0">
							<xsl:attribute name="style">width:350px</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_field_verify_code</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="style">width:250px</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_field_verify_code</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<option value=""><xsl:text>请选择验证规则类</xsl:text></option>
					<xsl:for-each select="cludove.crest.spruce.verify_regulation/record.crest">
						<option>
							<xsl:attribute name="value">
								<xsl:value-of select="code"/>
							</xsl:attribute>
							<xsl:value-of select="regulation_name"/>
						</option>
					</xsl:for-each>
				</select>
			</p>
			<p>
				<span>处理顺序：</span>
				<input type="number" max="100" min="0" class="order validate[required,custom[zpositive],max[100]]">
					<xsl:choose>
						<xsl:when test="count(parameter.cludove/select_location) = 0">
							<xsl:attribute name="style">width:350px</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_field_verify_position</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="style">width:250px</xsl:attribute>
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_field_verify_position</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
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

			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'db.column.verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<input type="button" value="提交" class="sub">
					<xsl:choose>
						<xsl:when test="count(parameter.cludove/select_location) = 0">
							<xsl:attribute name="onclick">processFieldVerifyValidate('<xsl:value-of select="parameter.cludove/verify_id"/>')</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="onclick">processFieldVerifyValidate('<xsl:value-of select="parameter.cludove/elem"/>','<xsl:value-of select="parameter.cludove/verify_id"/>')</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
				<input type="reset" value="清除" class="res"></input>
				<input type="button" value="取消" class="but">
					<xsl:choose>
						<xsl:when test="count(parameter.cludove/select_location) = 0">
							<xsl:attribute name="onclick">
								$('#<xsl:value-of select="parameter.cludove/verify_id"/>_field_verify_setting').parent("div").hide();
							</xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="onclick">
								$('#<xsl:value-of select="parameter.cludove/elem"/>_field_verify_setting').parent("div").hide();
							</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
				<xsl:choose>
					<xsl:when test="count(parameter.cludove/select_location) = 0">
						<!--隐藏按钮-->
						<input type="hidden" name="field_name">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_field_name_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="/content/parameter.cludove/field_name"/></xsl:attribute>
						</input>
						<input type="hidden" name="code">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_code_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/code"/></xsl:attribute>
						</input>
						<input type="hidden" name="connection_code">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_id"/>_connection_code_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/connection_code"/></xsl:attribute>
						</input>
					</xsl:when>
					<xsl:otherwise>
						<!--隐藏按钮-->
						<input type="hidden" name="field_name">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_field_name_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="/content/parameter.cludove/field_name"/></xsl:attribute>
						</input>
						<input type="hidden" name="code">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_code_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/code"/></xsl:attribute>
						</input>
						<input type="hidden" name="connection_code">
							<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/elem"/>_connection_code_field_verify</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.field_verify/record.crest[1]/connection_code"/></xsl:attribute>
						</input>
					</xsl:otherwise>
				</xsl:choose>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
