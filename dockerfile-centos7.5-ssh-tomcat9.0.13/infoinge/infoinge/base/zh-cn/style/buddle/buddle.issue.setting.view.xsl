<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_buddle_issue_setting">
			<div class="item">
				<div class="div_txt">
					<xsl:attribute name="id">style_file_issue_buddle_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_response_exception_input" name="style_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_buddle_issue_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.buddle_issue/record.crest) > 0">
							<span class="set_buddle_issue_name">应用发布</span>
							<span class="span_edit span_buddle_issue_edit" title="新增应用发布">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and buddle_issue_id = 'buddle.issue.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_buddle_issue_name").html("应用发布-新增"); $(".span_buddle_issue_edit").hide(); $('#code_buddle_issue').val(''); $('#connection_code_buddle_issue').val(''); $('#buddle_issue_test_expression').focus();  $('input:radio[name="buddle_issue_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_buddle_issue_name">应用发布-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">buddle_issue_connection_id_container</xsl:attribute>
					<span class="span_tit">
						<xsl:attribute name="id">buddle_issue_connection_id_title</xsl:attribute>
						<xsl:text>资源定义：</xsl:text>
					</span>
					<div class="div_select">
						<select id="buddle_issue_connection_id" class="validate[required]">
							<xsl:attribute name="onchange">onDataConnectionIdChange()</xsl:attribute>
							<option value="">请选择资源定义</option>
							<xsl:choose>
								<xsl:when test="cludove.crest.spruce.buddle_issue[1]/record.crest/type = 'Class' or cludove.crest.spruce.buddle_issue[1]/record.crest/type = 'WS'">
									<xsl:for-each select="cludove.crest.spruce.processor/record.crest">
										<option>
											<xsl:if test="class = /content/cludove.crest.spruce.buddle_issue[1]/record.crest/connection_id">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value"><xsl:value-of select="class"/></xsl:attribute>
											<xsl:value-of select="name"/>
										</option>
									</xsl:for-each>
								</xsl:when>
								<xsl:otherwise>
									<xsl:for-each select="cludove.crest.spruce.resource_decomposing/record.crest">
									<xsl:choose>
										<xsl:when test="/content/parameter.cludove/clusterid.cludove = identifier">
										</xsl:when>
										<xsl:otherwise>
										<option>
											<xsl:choose>
												<xsl:when test="/content/cludove.crest.spruce.resource_decomposing/record.crest/type = 'Hinge'">
													<xsl:if test="identifier = /content/cludove.crest.spruce.buddle_issue[1]/record.crest/connection_id">
														<xsl:attribute name="selected">selected</xsl:attribute>
													</xsl:if>
												</xsl:when>
												<xsl:otherwise>
													<xsl:choose>
														<xsl:when test="count(/content/cludove.crest.spruce.resource_connection[2]/record.crest)>0">
															<xsl:if test="identifier = /content/cludove.crest.spruce.buddle_issue[1]/record.crest/connection_id">
																<xsl:attribute name="selected">selected</xsl:attribute>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:if test="is_dsb='true'">
																<xsl:attribute name="selected">selected</xsl:attribute>
															</xsl:if>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:otherwise>
											</xsl:choose>
											<xsl:attribute name="value"><xsl:value-of select="identifier"/></xsl:attribute>
											<xsl:value-of select="name"/>
											<xsl:text> - </xsl:text>
											<xsl:value-of select="identifier"/>
										</option>
										</xsl:otherwise>
									</xsl:choose>
									</xsl:for-each>
								</xsl:otherwise>
							</xsl:choose>
						</select>
					</div>
				
					<div class="list">
						<span class="span_tit">定时运行：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_running" id="buddle_issue_is_running_true" onclick="$('#buddle_issue_is_running').val('true');$('#buddle_issue_interval_time').attr('class','validate[required,custom[validateInterval]]')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/is_running = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_running" id="buddle_issue_is_running_false" onclick="$('#buddle_issue_is_running').val('false');$('#buddle_issue_interval_time').attr('class','validate[custom[validateInterval]]')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/is_running = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="buddle_issue_is_running" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/is_running != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/is_running"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">频度类型：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_year_true"  onclick="$('#buddle_issue_frequentness').val('year')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'year'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 年 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_month_true"  onclick="$('#buddle_issue_frequentness').val('month')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'month'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 月 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_day_true" onclick="$('#buddle_issue_frequentness').val('day')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'day'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 日 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_hour_true" onclick="$('#buddle_issue_frequentness').val('hour')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'hour'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 时 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_minute_true"  onclick="$('#buddle_issue_frequentness').val('minute')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'minute'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 分 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="buddle_issue_frequentness" id="buddle_issue_frequentness_second_true"  onclick="$('#buddle_issue_frequentness').val('second')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness = 'second'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 秒 </xsl:text>
							<input id="buddle_issue_frequentness" type="hidden">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/frequentness != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/frequentness"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">year</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">间隔时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="buddle_issue_interval_time" placeholder="请输入间隔时间且大于0" maxlength="8">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.buddle_issue/record.crest/is_running = 'true'">
											<xsl:attribute name="class">validate[required,custom[validateInterval]]</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="class">validate[custom[validateInterval]]</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/interval_time"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">加入时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="buddle_issue_join_time" onclick="onbuddle_issueDate()" class="laydate-icon validate[custom[dateTimeFormat]]">
									<xsl:attribute name="value"><xsl:value-of select="substring(cludove.crest.spruce.buddle_issue/record.crest/join_time, 1, 19) "/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">开始时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="buddle_issue_run_start_hour" style="width:10%;text-align:center" title="请输入开始小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/run_start_hour"/>
									</xsl:attribute>
								</input>
								<xsl:text>:</xsl:text>
								<input type="text" id="buddle_issue_run_start_minute"  style="width:10%;text-align:center" title="请输入开始分钟" onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/run_start_minute"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">结束时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" style="width:10%;text-align:center" id="buddle_issue_run_finish_hour"  title="请输入结束小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/run_finish_hour"/>
									</xsl:attribute>
								</input>
								<xsl:text>:</xsl:text>
								<input type="text" style="width:10%;text-align:center" id="buddle_issue_run_finish_minute" title="请输入结束分钟"  onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/run_finish_minute"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and buddle_issue_id = 'response.exception.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processBuddleissueSetting()">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!-- 隐藏按钮 -->
								<input type="hidden" name="code" id="code_buddle_issue">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_buddle_issue">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle_issue/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
