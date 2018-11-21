<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_exception_response_setting">
			<input id="exception_response_position_validate" style="width:180px;height:0px;border: 1px solid #ffffff;color:#ffffff" value="0" class="validate[required,custom[zpositive],max[100]]">
			</input>
			<div style="width:100%;margin-bottom:15px;color:#808080">
				处理顺序：
				<div class="exception_response_position_spinner" style="display:inline-block">
					<input type="text" id="exception_response_position" onblur="$('#exception_response_position_validate').val(this.value)">
						<xsl:attribute name="value">
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.exception_response/record.crest/position != ''">
									<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/position"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:text disable-output-escaping="yes">0</xsl:text>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
					</input>
				</div>
			</div>
			<p class="texta">输出条件：
				<textarea id="exception_response_test_expression" placeholder="多条件用xsl:choose输出，最后输出条件为空" class="validate[maxSize[1024]]">
					<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/test_expression"/>
				</textarea>
			</p>
			<p>循环取值：
				<input class="input_radio" value="true" type="radio" name="is_for_each" id="exception_response_is_for_each_true" onclick="$('#exception_response_is_for_each').val('true')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.exception_response/record.crest/is_for_each = 'true'">
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:when>
						<xsl:otherwise/>
					</xsl:choose>
				</input>
				<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
				<input class="input_radio" value="false" type="radio" name="is_for_each" id="exception_response_is_for_each_false" onclick="$('#exception_response_is_for_each').val('false')">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.exception_response/record.crest/is_for_each = 'true'"/>
						<xsl:otherwise>
							<xsl:attribute name="checked">checked</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
				<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
				<input id="exception_response_is_for_each" type="hidden" value="true">
					<xsl:choose>
						<xsl:when test="cludove.crest.spruce.exception_response/record.crest/is_for_each != ''">
							<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/is_for_each"/></xsl:attribute>
						</xsl:when>
						<xsl:otherwise>
							<xsl:attribute name="value">false</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
				</input>
			</p>
			<p class="texta">选取条件：
				<textarea id="exception_response_select_expression" placeholder="xsl:for-each输出异常响应，循环取值为是时不能为空" title="与循环取值配合使用，循环取值为是时生效，用于循环输出异常响应，与功能目录的循环取值构成嵌套输出" class="validate[maxSize[1024]]">
					<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/select_expression"/>
				</textarea>
			</p>
			<p>响应格式：
				<select id="exception_response_response_format">
					<option value="json">
						<xsl:if test="cludove.crest.spruce.exception_response/record.crest/response_format = 'json'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">json</xsl:text>
					</option>
					<option value="xml">
						<xsl:if test="cludove.crest.spruce.exception_response/record.crest/response_format = 'xml'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">xml</xsl:text>
					</option>
					<option value="html">
						<xsl:if test="cludove.crest.spruce.exception_response/record.crest/response_format = 'html'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">html</xsl:text>
					</option>
					<option value="text">
						<xsl:if test="cludove.crest.spruce.exception_response/record.crest/response_format = 'text'">
							<xsl:attribute name="selected">selected</xsl:attribute>
						</xsl:if>
						<xsl:text disable-output-escaping="yes">text</xsl:text>
					</option>
				</select>
			</p>
			<p>起始符号：
				<input type="text" id="exception_response_start_symbol" placeholder="用于输出包裹内容的符号或者标签，可为空" class="input-1 input-c validate[maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/start_symbol"/>
					</xsl:attribute>
				</input>
			</p>
			<p>结束符号：
				<input type="text" id="exception_response_end_symbol" placeholder="用于输出包裹内容的符号或者标签，可为空" class="input-1 input-c validate[maxSize[64]]">
					<xsl:attribute name="value">
						<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/end_symbol"/>
					</xsl:attribute>
				</input>
			</p>
			<div class="configure-fr-side-bottom">
				<xsl:choose>
					<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'response.exception.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
					<xsl:otherwise>
						<xsl:attribute name="style">display:none</xsl:attribute>
					</xsl:otherwise>
				</xsl:choose>
				<input type="button" value="提交" class="sub">
					<xsl:attribute name="onclick">
						processExceptionResponseSetting('<xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/code"/>')
					</xsl:attribute>
				</input>
				<input type="reset" value="清除" class="res"/>
				<input type="button" value="取消" class="but" onclick="$('#resource_setting_right').hide()"/>

				<!--隐藏按钮-->
				<input type="hidden" name="code" id="code_exception_response">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="connection_code" id="connection_code_exception_response">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.exception_response/record.crest/connection_code"/></xsl:attribute>
				</input>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
