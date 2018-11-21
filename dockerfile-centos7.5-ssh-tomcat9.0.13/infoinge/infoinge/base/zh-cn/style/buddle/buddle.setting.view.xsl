<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<form class="form-horizontal" role="form" id="validate_buddle_setting">
			<div class="item">
				<xsl:choose>
					<xsl:when test="count(cludove.crest.spruce.buddle/record.crest) > 0">
						<div class="div_txt">
							<div class="list">
								<div class="text">
									<div class="div_nav">
										<a title="下载配置脚本"  style="cursor: pointer" onclick="if ($('#buddle_configuration_script').is(':hidden')) $('#buddle_configuration_script').show(); else $('#buddle_configuration_script').hide();" >
											<xsl:text disable-output-escaping="yes">下载脚本</xsl:text>
										</a>
										<!--<a title="下载应用配置脚本" target="_blank">-->
											<!--<xsl:attribute name="href">/s?buddle.cludove=infoinge&amp;catalog.cludove=script.buddle.download.view&amp;buddle_id=<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>-->
											<!--<xsl:text disable-output-escaping="yes">下载应用配置脚本</xsl:text>-->
										<!--</a>-->
										<a title="下载应用文件以便部署" target="_blank">
											<xsl:attribute name="href">/s?buddle.cludove=infoinge&amp;catalog.cludove=buddle.download.process&amp;buddle_id=<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>&amp;catalog_id=&amp;style_name=base&amp;language_name=zh-cn&amp;buddle_file=<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>.buddle</xsl:attribute>
											<xsl:text disable-output-escaping="yes">下载应用文件</xsl:text>
										</a>
										<a title="上传应用文件完成在线部署" href="javascript:void(0)" onclick="if ($('#buddle_file_input_container').is(':hidden')) $('#buddle_file_input_container').show(); else $('#buddle_file_input_container').hide();">上传应用文件</a>
									</div>
								</div>
							</div>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="div_txt">
							<div class="list">
								<div class="text">
									<div class="div_nav">
										<a title="上传应用文件完成在线部署" href="javascript:void(0)" onclick="if ($('#buddle_file_input_container').is(':hidden')) $('#buddle_file_input_container').show(); else $('#buddle_file_input_container').hide();">上传应用文件</a>
									</div>
								</div>
							</div>
						</div>
					</xsl:otherwise>
				</xsl:choose>

				<div class="div_txt">
					<xsl:attribute name="id">buddle_file_input_container</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div class="list">
						<div class="text">
							<div class="div_input">
								<input type="file" id="buddle_file_input" name="buddle_file">
									<xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'buddle_file_input', '应用文件')</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>

				<div class="div_txt">
					<xsl:attribute name="id">buddle_configuration_script</xsl:attribute>
					<xsl:attribute name="style">display:none</xsl:attribute>
					<div style="background-color: #F0F0F0" class="list">
						<div class="text">
							<div class="div_nav">
								<a title="下载配置脚本" target="_blank" >
									<xsl:if test="cludove.crest.spruce.buddle/record.crest/identifier = 'infoinge'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="href"><xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=script.configuration.download.view&amp;buddle_id=</xsl:text><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>
									<xsl:text disable-output-escaping="yes">下载配置脚本</xsl:text>
								</a>
								<a title="下载融合脚本" target="_blank" >
									<xsl:if test="cludove.crest.spruce.buddle/record.crest/identifier = 'infoinge'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="href"><xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=script.fusion.download.view&amp;buddle_id=</xsl:text><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>
									<xsl:text disable-output-escaping="yes">下载融合脚本</xsl:text>
								</a>
								<a style="margin-bottom: 7px" title="下载标注脚本" onclick="javascript:void(0)" target="_blank">
									<xsl:if test="cludove.crest.spruce.buddle/record.crest/identifier = 'infoinge'">
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:if>
									<xsl:attribute name="href"><xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=script.label.download.view&amp;buddle_id=</xsl:text><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>
									<xsl:text disable-output-escaping="yes">下载标注脚本</xsl:text>
								</a>
								<a style="margin-bottom: 5px" title="下载运行脚本" onclick="javascript:void(0)" target="_blank">
									<xsl:attribute name="href"><xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=script.running.download.view&amp;buddle_id=</xsl:text><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>
									<xsl:text disable-output-escaping="yes">下载运行脚本</xsl:text>
								</a>
							</div>
						</div>
					</div>
				</div>

				<div class="title">
					<xsl:choose>
						<xsl:when test="count(cludove.crest.spruce.buddle/record.crest) > 0">
							<span class="set_buddle_name">应用</span>
							<span class="span_edit span_buddle_edit" title="新增应用">
								<xsl:choose>
									<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
									<xsl:otherwise>
										<xsl:attribute name="style">display:none</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
								<xsl:attribute name="onclick">$(".set_buddle_name").html("应用-新增");$("#buddle_identifier").removeProp("readonly"); $(".span_buddle_edit").hide(); $('#code_buddle').val('');$('#identifier_setting').val(''); $('#connection_code_buddle').val(''); $('#buddle_identifier').focus();  $('input:radio[name="buddle_select"]').attr('checked',false);</xsl:attribute>
							</span>
						</xsl:when>
						<xsl:otherwise>
							<span class="set_buddle_name">应用-新增</span>
						</xsl:otherwise>
					</xsl:choose>
				</div>
				<div class="div_txt">
					<div class="list">
						<span class="span_tit">应用标识：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="buddle_identifier" maxlength="50" placeholder="用于指示访问应用的标识[buddle.cludove]，必须" class="validate[required,maxSize[64]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
									</xsl:attribute>
									<xsl:if test="cludove.crest.spruce.buddle/record.crest/identifier != ''">
										<xsl:attribute name="readonly">readonly</xsl:attribute>
									</xsl:if>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">应用名字：</span>
						<div class="text">
							<div class="div_input">
								<input type="text" id="buddle_name" maxlength="50" placeholder="用于显示应用的名字，必须" class="validate[required,maxSize[128]]">
									<xsl:attribute name="value">
										<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/name"/>
									</xsl:attribute>
								</input>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">判断权限：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_permit" id="buddle_is_permit_true" checked="" onclick="$('#buddle_is_permit').val('true')">
							   <xsl:choose>
								   <xsl:when test="cludove.crest.spruce.buddle/record.crest/is_permit = 'false'"/>
								   <xsl:otherwise>
									   <xsl:attribute name="checked">checked</xsl:attribute>
								   </xsl:otherwise>
							   </xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_permit" id="buddle_is_permit_false" onclick="$('#buddle_is_permit').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_permit = 'false'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
									</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="buddle_is_permit" type="hidden">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_permit != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/is_permit"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">true</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">入口应用：</span>
						<div class="text">
							<input class="input_radio" value="true" type="radio" name="is_home" id="buddle_is_home_true" onclick="$('#buddle_is_home').val('true')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_home = 'true'">
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:when>
									<xsl:otherwise/>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
							<input class="input_radio" value="false" type="radio" name="is_home" id="buddle_is_home_false" onclick="$('#buddle_is_home').val('false')">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_home = 'true'"/>
									<xsl:otherwise>
										<xsl:attribute name="checked">checked</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
							<xsl:text disable-output-escaping="yes"> 否 </xsl:text>
							<input id="buddle_is_home" type="hidden" value="true">
								<xsl:choose>
									<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_home != ''">
										<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/is_home"/></xsl:attribute>
									</xsl:when>
									<xsl:otherwise>
										<xsl:attribute name="value">false</xsl:attribute>
									</xsl:otherwise>
								</xsl:choose>
							</input>
						</div>
					</div>
					<xsl:if test="count(cludove.crest.spruce.resource_connection/record.crest) > 0 and cludove.crest.spruce.buddle[1]/record.crest[identifier !='infoinge' and identifier !='lock']">
						<div class="list">
							<span class="span_tit">同步总线：</span>
							<div class="text">
								<input class="input_radio" value="true" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_synced_dsb = 'true'">
											<xsl:attribute name="checked">checked</xsl:attribute>
										</xsl:when>
										<xsl:otherwise/>
									</xsl:choose>
								</input>
								<xsl:text disable-output-escaping="yes"> 是 </xsl:text>
								<input class="input_radio" value="false" type="radio" name="is_synced_dsb" disabled="disabled">
									<xsl:choose>
										<xsl:when test="cludove.crest.spruce.buddle/record.crest/is_synced_dsb = 'true'"/>
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
										<xsl:when test="count(cludove.crest.spruce.buddle[1]/record.crest) > 0">
											<xsl:choose>
												<xsl:when test="/content/cludove.crest.spruce.buddle[1]/record.crest/is_synced_dsb = 'true'">
													<text>同步成功</text>
												</xsl:when>
												<xsl:when test="/content/cludove.crest.spruce.buddle[1]/record.crest/sync_dsb_reason = 'failure'">
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
					</xsl:if>
					<div class="list">
						<span class="span_tit">登录验证：</span>
						<div class="text">
							<div class="div_select">
								<select id="buddle_validator">
									<option value="">需要特殊登录验证时选择</option>
									<xsl:for-each select="/content/cludove.crest.spruce.processor/record.crest">
										<option>
											<xsl:if test="class = /content/cludove.crest.spruce.buddle/record.crest/validator">
												<xsl:attribute name="selected">selected</xsl:attribute>
											</xsl:if>
											<xsl:attribute name="value">
												<xsl:value-of select="class"/>
											</xsl:attribute>
											<xsl:value-of select="name"/>
										</option>
									</xsl:for-each>
								</select>
							</div>
						</div>
					</div>
					<div class="list">
						<span class="span_tit">功能描述：</span>
						<div class="text">
							<div class="div_textarea">
								<textarea id="buddle_description"  class="validate[maxSize[256]]">
									<xsl:value-of select="cludove.crest.spruce.buddle/record.crest/description"/>
								</textarea>
							</div>
						</div>
					</div>
					<div class="list">
						<xsl:choose>
							<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
							<xsl:otherwise>
								<xsl:attribute name="style">display:none</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<span class="span_tit"/>
						<div class="text">
							<div class="div_btn">
								<a href="javascript:void(0)" class="submit_btn" onclick="processBuddleSetting()">提交</a>
								<a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
								<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
								<input type="reset" style="display:none" class="reset_data"/>

								<!--隐藏按钮-->
								<input type="hidden" name="code" id="code_buddle">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/code"/></xsl:attribute>
								</input>
								<input type="hidden" name="connection_code" id="connection_code_buddle">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/connection_code"/></xsl:attribute>
								</input>
								<input type="hidden" name="identifier_setting" id="identifier_setting">
									<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/></xsl:attribute>
								</input>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</xsl:template>
</xsl:stylesheet>
