<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_catalog_setting">
			<div class="item">
				<div class="div_txt">
					<div class="list">
						<div class="text">
							<div class="div_nav">
								<a href="javascript:void(0)" title="预览功能执行过程和结果" target="_blank">
									<xsl:attribute name="onclick">onCatalogPreview('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1')</xsl:attribute>
									<xsl:text>预览功能</xsl:text>
								</a>
								<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_catalog_input_container').is(':hidden')) $('#style_file_catalog_input_container').show(); else $('#style_file_catalog_input_container').hide();">上传样式单</a>
								<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration' or cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
									<a href="javascript:void(0)" title="手工执行数据交换，需录入被交换数据主键值" onclick="if ($('#execute_by_hand_container').is(':hidden')) $('#execute_by_hand_container').show(); else $('#execute_by_hand_container').hide(); $('#exchange_code_catalog_input').focus();">手工交换</a>
								</xsl:if>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">style_file_catalog_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="style_file_catalog_input" name="buddle_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'style_file_catalog_input', '样式单文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
				<div class="div_txt">
					<xsl:attribute name="id">execute_by_hand_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input maxlength="50" type="text" id="exchange_code_catalog_input" name="exchange_code" placeholder="手工交换时录入交换记录主键值" title=""/>
							</div>
							<div class="div_nav" style="padding-top: 5px; margin-left: 30%;">
								<a href="javascript:void(0)">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=migrate.cludove', false)</xsl:attribute>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=synchronize.cludove', false)</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
									<xsl:text>预览</xsl:text>
								</a>
								<a href="javascript:void(0)">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=migrate.cludove', true)</xsl:attribute>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=synchronize.cludove', true)</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
									<xsl:text>执行</xsl:text>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">
							<span class="set_catalog_name">功能目录</span>
							<span class="span_edit span_catalog_edit" title="新增功能目录">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_catalog_name").html("功能目录-新增"); $(".span_catalog_edit").hide(); $('#code_catalog').val(''); $('#connection_code_catalog').val(''); $('#catalog_identifier').focus();  $('input:radio[name="catalog_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_catalog_name">功能目录-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">目录标识：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="64" type="text" id="catalog_identifier" placeholder="用于指示访问功能的标识[catalog.cludove]，必须" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">目录名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="catalog_name" placeholder="用于显示功能的名字，必须" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">目录类型：</span>
						<div class="text">
							<div class="div_select">
								<select id="catalog_type">
									<option value="function">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'function'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">服务功能</xsl:text>
									</option>
									<option value="migration">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据迁移</xsl:text>
									</option>
									<option value="synchronization">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">数据同步</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">响应类型：</span>
						<div class="text">
							<div class="div_select">
								<select id="catalog_content_type">
									<option value="text/html">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/html'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">text/html</xsl:text>
									</option>
									<option value="text/plain">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/plain'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">text/plain</xsl:text>
									</option>
									<option value="text/none">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'text/none'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">text/none</xsl:text>
									</option>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">判断权限：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_permit" id="catalog_is_permit_true" checked="" onclick="$('#catalog_is_permit').val('true')">
							   <xsl:choose>
								   <xsl:when test="cludove.crest.spruce.catalog/record.crest/is_permit = 'false'"/>
								   <xsl:otherwise>
									   <xsl:attribute name="checked">checked</xsl:attribute>
								   </xsl:otherwise>
							   </xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_permit" id="catalog_is_permit_false" onclick="$('#catalog_is_permit').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_permit = 'false'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
									</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_permit" type="hidden">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_permit != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_permit"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">true</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">入口目录：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_home" id="catalog_is_home_true" onclick="$('#catalog_is_home').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_home = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_home" id="catalog_is_home_false" onclick="$('#catalog_is_home').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_home = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_home" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_home != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_home"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">是否暂停：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_pause" id="catalog_is_pause_true" onclick="$('#catalog_is_pause').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_pause = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_pause" id="catalog_is_pause_false" onclick="$('#catalog_is_pause').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_pause = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_pause" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_pause != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_pause"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">循环取值：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_for_each" id="catalog_is_for_each_true" onclick="$('#catalog_is_for_each').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_for_each = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_for_each" id="catalog_is_for_each_false" onclick="$('#catalog_is_for_each').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_for_each = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_for_each" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_for_each != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_for_each"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">取值条件：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="catalog_select_expression" placeholder="用xsl:for-cach循环输出当前内容，可为空" class="validate[maxSize[1024]]">
									<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/select_expression"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">功能描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="catalog_description"  class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时运行：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_running" id="catalog_is_running_true" onclick="$('#catalog_is_running').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_running = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_running" id="catalog_is_running_false" onclick="$('#catalog_is_running').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_running = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_running" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_running != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_running"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时年份：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="catalog_timing_year" placeholder="保留空每年，多个年份用半角逗号分隔" class="validate[maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/timing_year"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时月份：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="32" type="text" id="catalog_timing_month" placeholder="保留空每月，多个月份用半角逗号分隔" class="validate[maxSize[32]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/timing_month"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时日期：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="128" type="text" id="catalog_timing_day" placeholder="保留空每日，多个日期用半角逗号分隔" class="validate[maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/timing_day"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时时钟：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="catalog_timing_hour" placeholder="保留空每小时，多个时钟用半角逗号分隔" class="validate[maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/timing_hour"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时分钟：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="catalog_timing_minute" placeholder="NA每分钟，多个分钟用半角逗号分隔" class="validate[maxSize[180]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/timing_minute"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'catalog.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" onclick="processDesignCatalogSetting()">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" id="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_catalog">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_catalog">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/connection_code"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
