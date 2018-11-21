<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_catalog_setting">
			<div class="item">
				<xsl:choose>
					<xsl:when test="count(cludove.crest.spruce.catalog/record.crest) > 0">
						<xsl:if test="cludove.crest.spruce.catalog/record.crest/type != 'function'">
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
						</xsl:if>
						<xsl:if test="cludove.crest.spruce.catalog/record.crest/type != 'function'">
							<div class="div_txt">
								<div class="list">
									<div class="text">
										<div class="div_nav">
											<a href="javascript:void(0)" title="查看功能设计关系图" target="_blank">
												<xsl:attribute name="onclick">onModelEdit('<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>','<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>','<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/type"/>')</xsl:attribute>
												<xsl:text>功能设计</xsl:text>
											</a>
										</div>
									</div>
								</div>
							</div>
						</xsl:if>
					</xsl:when>
					<xsl:otherwise>
						<div class="div_txt">
							<div class="list">
								<div class="text">
									<div class="div_nav">
										<a href="javascript:void(0)" title="上传功能执行的样式单后相关配置失效" onclick="if ($('#style_file_catalog_input_container').is(':hidden')) $('#style_file_catalog_input_container').show(); else $('#style_file_catalog_input_container').hide();">上传样式单</a>
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration' or cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<a href="javascript:void(0)" title="手工执行数据交换，需录入被交换数据主键值" onclick="if ($('#execute_by_hand_container').is(':hidden')) $('#execute_by_hand_container').show(); else $('#execute_by_hand_container').hide(); $('#exchange_code_catalog_input').focus();">手工交换</a>
										</xsl:if>
									</div>
								</div>
							</div>
						</div>
					</xsl:otherwise>
				</xsl:choose>
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
								<input type="text" maxlength="50" id="exchange_code_catalog_input" name="exchange_code" placeholder="手工交换时录入交换记录主键值" title=""/>
							</div>
							<div class="div_nav" style="padding-top: 5px; margin-left: 30%;">
								<a href="javascript:void(0)">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=migrate', false)</xsl:attribute>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;isPreview.cludove=true&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=synchronize', false)</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
									<xsl:text>预览</xsl:text>
								</a>
								<a href="javascript:void(0)">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'migration'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=migrate', true)</xsl:attribute>
										</xsl:when>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/type = 'synchronization'">
											<xsl:attribute name="onclick">onExchangeByHand('<xsl:value-of select="parameter.cludove/requestPath.cludove"/>?buddle.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/buddle_id"/>&amp;catalog.cludove=<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>&amp;pageNumber.cludove=0&amp;recordNumber.cludove=1&amp;operation.cludove=synchronize', true)</xsl:attribute>
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
								<xsl:attribute name="onclick">$(".set_catalog_name").html("功能目录-新增");$("#catalog_identifier").removeProp("readonly");  $(".span_catalog_edit").hide(); $('#code_catalog').val(''); $('#connection_code_catalog').val(''); $('#catalog_identifier').focus();  $('input:radio[name="catalog_select"]').attr('checked',false);$('#catalog_type').removeAttr('disabled');$('input:radio[name="catalog_frequentness"]').removeAttr('disabled');onCatalogTypeChange()</xsl:attribute>
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
								<input maxlength="50" type="text" id="catalog_identifier" placeholder="用于指示访问功能的标识[catalog.cludove]，必须" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
									</xsl:attribute>
									<xsl:if test="cludove.crest.spruce.catalog/record.crest/identifier != ''">
										<xsl:attribute name="readonly">readonly</xsl:attribute>
									</xsl:if>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">目录名字：</span>
						<div class="text">
							<div class="div_input">
								<input maxlength="50" type="text" id="catalog_name" placeholder="用于显示功能的名字，必须" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:attribute name="style">display:none</xsl:attribute>
						<span class="span_tit">目录类型：</span>
						<div class="text">
							<div class="div_select">
								<select id="catalog_type" onchange="onCatalogTypeChange()">
									<xsl:attribute name="disabled">disabled</xsl:attribute>
									<xsl:if test="cludove.crest.spruce.catalog/record.crest/type = 'migration' or cludove.crest.spruce.catalog/record.crest/type = 'synchronization' ">
										<xsl:attribute name="disabled">disabled</xsl:attribute>
									</xsl:if>
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
									<option value="application/vnd.ms-excel">
										<xsl:if test="cludove.crest.spruce.catalog/record.crest/content_type = 'application/vnd.ms-excel'">
											<xsl:attribute name="selected">selected</xsl:attribute>
										</xsl:if>
										<xsl:text disable-output-escaping="yes">application/vnd.ms-excel</xsl:text>
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
						<span class="span_tit">是否日志：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_log" id="catalog_is_log_true" onclick="$('#catalog_is_log').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_log = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_log" id="catalog_is_log_false" onclick="$('#catalog_is_log').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_log = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="catalog_is_log" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_log != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_log"/></xsl:attribute>
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
								<textarea id="catalog_select_expression" placeholder="用xsl:for-each循环输出当前内容，可为空" class="validate[maxSize[1024]]">
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
					<div>
						<xsl:variable name="identifier">
							<xsl:value-of select="parameter.cludove/clusterid.cludove"/>
						</xsl:variable>
						<xsl:choose>
							<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest[is_dsb = 'true']) > 0 and count(cludove.crest.spruce.resource_connection/record.crest[reg_status = 'work' and identifier = $identifier]) > 0 and parameter.cludove[buddle_id !='infoinge' and buddle_id !='lock' and buddle_id !='diginter']">
								<xsl:choose>
									<xsl:when test="count(cludove.crest.spruce.catalog[1]/record.crest) > 0">
										<xsl:choose>
											<xsl:when test="cludove.crest.spruce.catalog[1]/record.crest/type = 'function'"></xsl:when>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									<xsl:otherwise>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<div class="list" id="catalog_is_issue_dsb_container">
							<span class="span_tit">发布总线：</span>
							<div class="text">
								<input class="input_radio" value="true" type="radio" name="is_issue_dsb" id="catalog_is_issue_dsb_true" onclick="$('#catalog_is_issue_dsb').val('true')">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_issue_dsb = 'true'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
								<input class="input_radio" value="false" type="radio" name="is_issue_dsb" id="catalog_is_issue_dsb_false" onclick="$('#catalog_is_issue_dsb').val('false')">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_issue_dsb = 'true'"/>
										<xsl:otherwise>
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
								<input id="catalog_is_issue_dsb" type="hidden" value="true">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_issue_dsb != ''">
											<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/is_issue_dsb"/></xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="value">false</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
							</div>
						</div>
						<div class="list">
							<span class="span_tit">同步总线：</span>
							<div class="text">
								<input class="input_radio" value="true" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_synced_dsb = 'true'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
								<input class="input_radio" value="false" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_synced_dsb = 'true'"/>
										<xsl:otherwise>
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							</div>
						</div>
						<div class="list">
							<span class="span_tit">同步原因：</span>
							<div class="text">
								<div class="div_input" style="height:25px">
									<xsl:choose>
										<xsl:when test="count(cludove.crest.spruce.catalog[1]/record.crest) > 0">
											<xsl:choose>
												<xsl:when test="/content/cludove.crest.spruce.catalog[1]/record.crest/is_synced_dsb = 'true'">
													<text>同步成功</text>
												</xsl:when>
												<xsl:when test="/content/cludove.crest.spruce.catalog[1]/record.crest/sync_dsb_reason = 'failure'">
													<text>同步失败</text>
												</xsl:when>
												<xsl:otherwise>
													<text>尚未同步</text>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:when>
										<xsl:otherwise>
											<text>  </text>
										</xsl:otherwise>
									</xsl:choose>
								</div>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">定时运行：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_running" id="catalog_is_running_true" onclick="$('#catalog_is_running').val('true');$('#catalog_interval_time').attr('class','validate[required,custom[validateInterval]]')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_running = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_running" id="catalog_is_running_false" onclick="$('#catalog_is_running').val('false');$('#catalog_interval_time').attr('class','validate[custom[validateInterval]]')">
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
						<span class="span_tit">频度类型：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="catalog_frequentness" id="catalog_frequentness_year_true"  onclick="$('#catalog_frequentness').val('year')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'year'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 年 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="catalog_frequentness" id="catalog_frequentness_month_true"  onclick="$('#catalog_frequentness').val('month')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'month'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 月 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="catalog_frequentness" id="catalog_frequentness_day_true" onclick="$('#catalog_frequentness').val('day')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'day'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 日 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="catalog_frequentness" id="catalog_frequentness_hour_true" onclick="$('#catalog_frequentness').val('hour')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'hour'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 时 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="catalog_frequentness" id="catalog_frequentness_minute_true"  onclick="$('#catalog_frequentness').val('minute')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'minute'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 分 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="catalog_frequentness" id="catalog_frequentness_second_true"  onclick="$('#catalog_frequentness').val('second')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness = 'second'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 秒 </xsl:text>
							<input id="catalog_frequentness" type="hidden">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.catalog/record.crest/frequentness != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/frequentness"/></xsl:attribute>
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
								<input type="text" id="catalog_interval_time" placeholder="请输入间隔时间且大于0" maxlength="8">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.catalog/record.crest/is_running = 'true'">
											<xsl:attribute name="class">validate[required,custom[validateInterval]]</xsl:attribute>
										</xsl:when>
										<xsl:otherwise>
											<xsl:attribute name="class">validate[custom[validateInterval]]</xsl:attribute>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/interval_time"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">加入时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="catalog_join_time" onclick="onCatalogDate()" class="laydate-icon validate[custom[dateTimeFormat]]">
									<xsl:attribute name="value"><xsl:value-of select="substring(cludove.crest.spruce.catalog/record.crest/join_time, 1, 19) "/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">开始时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="catalog_run_start_hour" style="width:10%;text-align:center" title="请输入开始小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_start_hour"/>
									</xsl:attribute>
								</input>
								<xsl:text>:</xsl:text>
								<input type="text" id="catalog_run_start_minute"  style="width:10%;text-align:center" title="请输入开始分钟" onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_start_minute"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">结束时间：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" style="width:10%;text-align:center" id="catalog_run_finish_hour"  title="请输入结束小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_finish_hour"/>
									</xsl:attribute>
								</input>
								<xsl:text>:</xsl:text>
								<input type="text" style="width:10%;text-align:center" id="catalog_run_finish_minute" title="请输入结束分钟"  onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.catalog/record.crest/run_finish_minute"/>
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
								<a href="javascript:void(0)" class="submit_btn" onclick="validatecatalogSetting()">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)"  onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_catalog">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_catalog">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog/record.crest/connection_code"/></xsl:attribute>
								</input>

								<!--判断发布总线显示权限-->
								<input type="hidden" name="is_is_issue_dsb" id="is_is_issue_dsb">
									<xsl:attribute name="value">
										<xsl:choose>
											<xsl:when test="count(cludove.crest.spruce.resource_connection/record.crest) > 0 and parameter.cludove[buddle_id !='infoinge' and buddle_id !='lock']">
												<xsl:choose>
													<xsl:when test="count(cludove.crest.spruce.catalog[1]/record.crest) > 0">
														<xsl:choose>
															<xsl:when test="cludove.crest.spruce.catalog[1]/record.crest/type = 'function'">
																<xsl:value-of select="cludove.crest.spruce.catalog[1]/record.crest/is_issue_dsb"/>
															</xsl:when>
															<xsl:otherwise>
																<xsl:text>false</xsl:text>
															</xsl:otherwise>
														</xsl:choose>
													</xsl:when>
													<xsl:otherwise>
														<xsl:text>is_issue_dsb_true</xsl:text>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:when>
											<xsl:otherwise>
												<xsl:text>is_issue_dsb_false</xsl:text>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
