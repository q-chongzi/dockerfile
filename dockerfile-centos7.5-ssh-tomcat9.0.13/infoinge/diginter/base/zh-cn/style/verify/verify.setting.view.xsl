<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_verify_setting">
			<p class="list">
				<span class="span_tit">规则名字：</span>
				<input maxlength="64" type="text" id="regulation_name_verify" class="input-1 validate[required,maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/regulation_name"/>
					</xsl:attribute>
				</input>
			</p>
			<p class="list">
				<span class="span_tit">规则标识：</span>
				<input maxlength="64" type="text" id="identifier_verify" class="input-1 validate[required,maxSize[64]]">
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
			</p>
			<p class="list">
				<span class="span_tit">验 证 类 ：</span>
				<select id="class_verify" class="validate[required]" style="padding-right: 18px" onchange="verifyClassRegulation()">
					<option value=""><xsl:text>必须输入验证类或验证规则</xsl:text></option>
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
			</p>
			<p>
				<span class="span_tit">验证规则：</span>
				<input maxlength="256" type="text" placeholder="必须输入验证类或验证规则" class="input-1 validate[required,maxSize[256]]" id="regulation_verify" onblur="verifyRegulationClass()">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/regulation"/>
					</xsl:attribute>
				</input>
			</p>
			<p class="list">
				<span class="span_tit">规则描述：</span>
				<textarea  id="description_verify" class="validate[maxSize[256]]">
					<xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/description"/>
				</textarea>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'verify.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<span class="span_tit"/>
				<input type="button" onclick="processVerifyValidate();" value="提交" class="sub submit_btn"/>
				<input type="button" value="清除" onclick="resetData(this)" class="res"/>
				<input onclick="$('#basics_setting').hide()" type="button" value="取消" class="but"/>
				<input type="reset" style="display:none" class="reset_data"/>
			</div>

			<!--隐藏按钮-->
			<input type="hidden" name="code" id="code_verify">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/code"/></xsl:attribute>
			</input>
			<input type="hidden" name="connection_code" id="connection_code_verify">
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_regulation/record.crest/connection_code"/></xsl:attribute>
			</input>
		</form>
	</xsl:template>
</xsl:stylesheet>
