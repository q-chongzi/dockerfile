<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form">
			<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_regulation_setting</xsl:attribute>
			<p style="float: left">
				<span class="span_tit">选择规则：</span>
				<select style="width:262px" class="validate[required]">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_cleanout_code</xsl:attribute>
					<option value=""><xsl:text>请选择清洗规则</xsl:text></option>
					<xsl:for-each select="cludove.crest.spruce.cleanout_regulation/record.crest">
						<option>
							<xsl:choose>
								<xsl:when test="count(/content/cludove.crest.spruce.verify_cleanout/record.crest)>0">
									<xsl:if test="code =/content/cludove.crest.spruce.verify_cleanout/record.crest/cleanout_code">
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
			</p>
			<p>
				<span style="margin-left:-190px" class="span_tit">首要内容：</span>
				<input maxlength="256" type="text" class="input-1 validate[required,maxSize[256]]">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_first_content</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/first_content"/>
					</xsl:attribute>
				</input>
			</p>
			<br/>
			<p style="float: left" class="list">
				<span class="span_tit">处理顺序：</span>
				<input style="width:200px;height:26px;border-radius: 3px" type="number" max="100" min="0" class="order validate[required,custom[zpositive],max[100]]">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_cleanout_position</xsl:attribute>
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
			<p>
				<span style="margin-left:-128px" class="span_tit">次要内容：</span>
				<input maxlength="256" type="text" class="input-1 validate[required,maxSize[256]]">
					<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_second_content</xsl:attribute>
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/second_content"/>
					</xsl:attribute>
				</input>
			</p>
			<div  class="configure-fr-side-bottom" style="margin-left:-300px;">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'verify.cleanout.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<span class="span_tit"/>
				<input type="button" value="提交" class="sub submit_btn">
					<xsl:attribute name="onclick">
						processVerifyCleanoutValidate(this,'<xsl:value-of select="parameter.cludove/verify_code"/>');
					</xsl:attribute>
				</input>
				<input type="button" value="清除" onclick="resetData(this)" class="res"/>
				<input type="button" value="取消" class="but">
					<xsl:attribute name="onclick">
						$('.cleanout_setting_display').css('display','none');
					</xsl:attribute>
				</input>
				<input type="reset" style="display:none" class="reset_data"/>
			</div>

			<!--隐藏按钮-->
			<input type="hidden" name="code">
				<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_code_verify_cleanout</xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/code"/></xsl:attribute>
			</input>
			<input type="hidden" name="connection_code">
				<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_connection_code_verify_cleanout</xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.verify_cleanout/record.crest/connection_code"/></xsl:attribute>
			</input>
			<input type="hidden">
				<xsl:attribute name="id"><xsl:value-of select="parameter.cludove/verify_code"/>_verify_code</xsl:attribute>
				<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/verify_code"/></xsl:attribute>
			</input>

		</form>
	</xsl:template>
</xsl:stylesheet>
