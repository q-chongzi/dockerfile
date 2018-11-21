<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:template match="content">
		<div class="header ht1" style="height: 64.7px;line-height: 64.7px;">
			<div class="wrap">
				<div class="logo flt">
					<a href="javascript:void(0)">
						<img src="infoinge/base/zh-cn/img/xunshu2.png"/>
					</a>
					<!-- 删除操作对应的input的name -->
					<input type="hidden" id="remove_input_name"/>
					<input type="hidden" id="monitoring_center_load" value="0"/>
					<input type="hidden" id="monitoring_diagram_load" value="0"/>
					<input type="hidden" id="monitoring_log_load" value="0"/>
					<input type="hidden" id="resource_setting_load" value="0"/>
					<input type="hidden" id="basics_setting_load" value="0"/>
					<input type="hidden" id="organization_setting_load" value="0"/>
					<input type="hidden" id="online_help_load" value="0"/>
					<input type="hidden" id="development_guide_load" value="0"/>
					<input type="hidden" id="template_business_infoinge"/>
				</div>
				<div style="position: relative" class="frt">
					<xsl:choose>
						<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'mac.address.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
						<xsl:otherwise>
							<xsl:attribute name="style">display:none</xsl:attribute>
						</xsl:otherwise>
					</xsl:choose>
					<div id="activation_prompt_inside" style="display:none;position: absolute;right:425px;top:20px" class="activation_button">
						<a href="javascript:void(0)" title="如果加载失败，请重新刷新页面！">加载中</a>
					</div>
				</div>
				<div class="h_nav frt">
					<ul>
						<li>
							<a title="修改密码" href="javascript:void(0)" onclick="onPasswordBox();">
								<img src="infoinge/base/zh-cn/img/icon47.png"/>
							</a>
						</li>
						<li>
							<a title="平台监控" href="javascript:void(0)" onclick="onMonitoringCenter();">
								<img src="infoinge/base/zh-cn/img/icon4.png"/>
							</a>
						</li>
						<li id="system_configuration_li">
							<a title="系统配置" href="javascript:void(0)" onclick="onResourceSetting('NONE');">
								<img src="infoinge/base/zh-cn/img/icon5.png"/>
							</a>
						</li>
						<li>
							<a title="开发指南" target="_blank">
								<xsl:attribute name="href">
									<xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.show.view</xsl:text>
								</xsl:attribute>
								<img src="infoinge/base/zh-cn/img/icon2.png"/>
							</a>
						</li>
						<li>
							<a title="在线帮助" target="view_window" href="help/help_user.htm">
								<img src="infoinge/base/zh-cn/img/icon1.png"/>
							</a>
						</li>
						<li>
							<a title="退出登录" href="javascript:void(0)" onclick="$.logout();">
								<img src="infoinge/base/zh-cn/img/icon3.png"/>
							</a>
						</li>
					</ul>
				</div>
				<div class="clear"/>
			</div>
		</div>
		<div class="mainer">
			<div class="wrap">
				<div class="left_side1 row ht2 flt">
					<div class="item" id="monitoring_center_left">
						<div class="title">
							<span class="span4">监控中心</span>
						</div>
						<div class="div_list">
							<div class="div_nav" style="display:none">
								<ul>
									<li>
										<a href="javascript:void(0)" onclick="onInfoingeJobMonitor()">
											<span style="padding-left:1.5em;display:inline-block">
												<xsl:text>作业监控</xsl:text>
											</span>
										</a>
									</li>
								</ul>
							</div>
							<div class="div_nav">
								<ul>
									<li id="showsss" style="position: relative">
										<a href="javascript:void(0)" onclick="dataExceptionShow()">
											<span style="padding-left:1.5em;display:inline-block">
												<xsl:text>数据异常</xsl:text>
											</span>
										</a>
										<div id="data_exception_count"></div>
									</li>
								</ul>
							</div>
							<div class="div_nav">
								<div class="tit" onclick="onResourceRegistSearch()" style="cursor:pointer">
									<span>服务注册</span>
								</div>
							</div>
							<ul id="resource_regist_navigate"></ul>
							<div class="div_nav">
								<div class="tit" onclick="onResourceDsbRegistSearch()" style="cursor:pointer">
									<span>总线注册</span>
								</div>
							</div>
							<ul id="resource_dsb_regist_navigate"></ul>
							<div class="div_nav">
								<div class="tit" onclick="onExceptionJournal();" style="cursor:pointer">
									<span>预警信息</span>
								</div>
							</div>
							<ul id="monitoring_center_tree_list" class="left_txt">
								<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
							</ul>
						</div>
					</div>
					<div class="item" id="monitoring_network_left" style="display:none">
						<div class="title">
							<span class="span4">数据统计</span>
						</div>
						<div class="div_nav">
							<div class="tit">
								<span>统计类型</span>
							</div>
							<input type="hidden" id="statistics_navigate_type" value="3"/>
							<input type="hidden" id="report_time" value="1"/>
							<input type="hidden" id="statistics_navigate_catalog_cludove" value="statistics.report.rate.search.view"/>
							<ul id="monitoring_diagram_tree_list">
								<!--<li>
									<a href="javascript:void(0)">
										<xsl:attribute name="onclick">$('#statistics_navigate_type').val(4);</xsl:attribute>
										<span>同步统计</span>
									</a>
									<ul>
										&lt;!&ndash;<li>&ndash;&gt;
											&lt;!&ndash;<a href="javascript:void(0)">&ndash;&gt;
												&lt;!&ndash;<xsl:attribute name="onclick">$('#statistics_navigate_catalog_cludove').val("statistics.minute.rate.search.view");$('#statistics_navigate_type').val(4);statistics.init();</xsl:attribute>&ndash;&gt;
												&lt;!&ndash;<span>分时统计</span>&ndash;&gt;
											&lt;!&ndash;</a>&ndash;&gt;
										&lt;!&ndash;</li>&ndash;&gt;
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(0);$('#statistics_navigate_type').val(4);statistics.report();</xsl:attribute>
												<span>时时统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(1);$('#statistics_navigate_type').val(4);statistics.report();</xsl:attribute>
												<span>日报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(2);$('#statistics_navigate_type').val(4);statistics.report();</xsl:attribute>
												<span>月报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(3);$('#statistics_navigate_type').val(4);statistics.report();</xsl:attribute>
												<span>年报统计</span>
											</a>
										</li>
									</ul>
								</li>
								<li>
									<a href="javascript:void(0)">
										<xsl:attribute name="onclick">$('#statistics_navigate_type').val(3);</xsl:attribute>
										<span>迁移统计</span>
									</a>
									<ul>
										&lt;!&ndash;<li>&ndash;&gt;
											&lt;!&ndash;<a href="javascript:void(0)">&ndash;&gt;
												&lt;!&ndash;<xsl:attribute name="onclick">$('#statistics_navigate_catalog_cludove').val("statistics.minute.rate.search.view");$('#statistics_navigate_type').val(3);statistics.init();</xsl:attribute>&ndash;&gt;
												&lt;!&ndash;<span>分时统计</span>&ndash;&gt;
											&lt;!&ndash;</a>&ndash;&gt;
										&lt;!&ndash;</li>&ndash;&gt;
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(0);$('#statistics_navigate_type').val(3);statistics.report();</xsl:attribute>
												<span>时时统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(1);$('#statistics_navigate_type').val(3);statistics.report();</xsl:attribute>
												<span>日报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(2);$('#statistics_navigate_type').val(3);statistics.report();</xsl:attribute>
												<span>月报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(3);$('#statistics_navigate_type').val(3);statistics.report();</xsl:attribute>
												<span>年报统计</span>
											</a>
										</li>
									</ul>
								</li>-->
								<li>
									<a href="javascript:void(0)">
										<xsl:attribute name="onclick">$('#statistics_navigate_type').val(1);</xsl:attribute>
										<span>操作统计</span>
									</a>
									<ul>
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#statistics_navigate_catalog_cludove').val("statistics.minute.rate.search.view");$('#statistics_navigate_type').val(1);statistics.init();</xsl:attribute>-->
												<!--<span>分时统计</span>-->
											<!--</a>-->
										<!--</li>-->
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(0);$('#statistics_navigate_type').val(1);statistics.report();</xsl:attribute>
												<span>时时统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(1);$('#statistics_navigate_type').val(1);statistics.report();</xsl:attribute>
												<span>日报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(2);$('#statistics_navigate_type').val(1);statistics.report();</xsl:attribute>
												<span>月报统计</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">$('#report_time').val(3);$('#statistics_navigate_type').val(1);statistics.report();</xsl:attribute>
												<span>年报统计</span>
											</a>
										</li>
									</ul>
								</li>
								<!--<li>-->
									<!--<a href="javascript:void(0)">-->
										<!--<xsl:attribute name="onclick">$('#statistics_navigate_type').val(0);</xsl:attribute>-->
										<!--<span>登录统计</span>-->
									<!--</a>-->
									<!--<ul>-->
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#statistics_navigate_catalog_cludove').val("statistics.minute.rate.search.view");$('#statistics_navigate_type').val(0);statistics.init();</xsl:attribute>-->
												<!--<span>分时统计</span>-->
											<!--</a>-->
										<!--</li>-->
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#statistics_navigate_catalog_cludove').val("statistics.hour.rate.search.view");$('#statistics_navigate_type').val(0);statistics.init();</xsl:attribute>-->
												<!--<span>时时统计</span>-->
											<!--</a>-->
										<!--</li>-->
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#report_time').val(1);$('#statistics_navigate_type').val(0);statistics.report();</xsl:attribute>-->
												<!--<span>日报统计</span>-->
											<!--</a>-->
										<!--</li>-->
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#report_time').val(2);$('#statistics_navigate_type').val(0);statistics.report();</xsl:attribute>-->
												<!--<span>月报统计</span>-->
											<!--</a>-->
										<!--</li>-->
										<!--<li>-->
											<!--<a href="javascript:void(0)">-->
												<!--<xsl:attribute name="onclick">$('#report_time').val(3);$('#statistics_navigate_type').val(0);statistics.report();</xsl:attribute>-->
												<!--<span>年报统计</span>-->
											<!--</a>-->
										<!--</li>-->
									<!--</ul>-->
								<!--</li>-->
							</ul>
						</div>
					</div>
					<div class="item" id="monitoring_log_left" style="display:none">
						<div class="title">
							<span class="span4">监控日志</span>
						</div>
						<div class="div_nav">
							<div class="tit">
								<span>日志列表</span>
							</div>
							<input type="hidden" id="journal_navigate_type"/>
							<ul id="monitoring_log_tree_list">
								<li>
									<a href="javascript:void(0)" id="exception_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(-1); onJournalSearch();</xsl:attribute>
										<span>异常日志</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" id="function_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(1); onJournalSearch();</xsl:attribute>
										<span>操作日志</span>
									</a>
								</li>
								<!--<li>
									<a href="javascript:void(0)" id="migration_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(3); onJournalSearch();</xsl:attribute>
										<span>迁移日志</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" id="synchronization_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(4); onJournalSearch();</xsl:attribute>
										<span>同步日志</span>
									</a>
								</li>-->
								<li>
									<a href="javascript:void(0)" id="timing_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(2); onJournalSearch();</xsl:attribute>
										<span>定时任务</span>
									</a>
								</li>
								<li>
									<a href="javascript:void(0)" id="logon_journal_navigate">
										<xsl:attribute name="onclick">$('#journal_navigate_type').val(0); onJournalSearch();</xsl:attribute>
										<span>登录日志</span>
									</a>
								</li>
							</ul>
						</div>
					</div>
					<div id="system_error_hints" style="display:none;position: fixed;top:20%;left:25%;width:750px;height:380px;background-color: #E5E5E5;border: 10px;z-index:999;border-radius: 50px;">
						<div class="retrieve-con">
							<div style="position: absolute;top:5%;left:45%;font-size: 20px;font-weight: bold;">
								<!--<p style="float:right;cursor:pointer" onclick="$('#system_error_hints').hide()">&#215;</p>-->
								警告信息
							</div>
							<div style="margin-top:50px;padding: 40px 10px 0;position: relative;" id="activation_con" class="retrieve-con-txt activation">
								<h1><xsl:text disable-output-escaping="no"> </xsl:text></h1>
								<div style="color:#000000;font-size: 25px;font-weight: bold;position: absolute;top:180%;left:8%;">
									系统遭到破环，请尝试自行修复，也可以联系管理员！
								</div>
							</div>
						</div>
					</div>
					<div class="item" id="resource_setting_left" style="display:none">
						<div class="title">
							<span class="span4">功能配置</span>
						</div>
						<div class="div_txt">
							<div class="list">
								<div class="div_select">
									<select onchange="onResourceSetting(this.value);" id="resource_type_select">
										<option value="NONE">请选择资源类型</option>
										<option value="Hinge">Infoinge</option>
										<option value="DB">DB</option>
										<option value="HTTP">HTTP</option>
										<option value="FTP">FTP</option>
										<option value="HDFS">HDFS</option>
										<option value="HBASE">HBASE</option>
										<option value="WS">WS</option>
									</select>
								</div>
							</div>
							<div class="list resource_decomposing_select">
								<div class="div_select">
									<select style="padding-right: 18px" id="decomposing_code" onchange="onResourceConnectionSetting('')">
										<option value="">请选择资源定义</option>
									</select>
								</div>
							</div>
						</div>
						<input type="hidden" id="hinge_header"/>
						<input type="hidden" id="account_id"/>
						<input type="hidden" id="resource_id"/>
						<input type="hidden" id="container_id"/>
						<input type="hidden" id="navigater_id"/>
						<input type="hidden" id="v_identifier"/>
						<input type="hidden" id="v_template"/>
						<input type="hidden" id="v_instance"/>
						<input type="hidden" id="is_local"/>
						<div class="div_tips div_nav navigate_resource" id="resource_navigation" style="margin-top:0">
							<p>操作提示：</p>
							<p>1.选择资源类型后，请选择资源定义选择框中会显示资源类型对应的所有资源定义；</p>
							<p>2.选择资源定义后，会显示该资源定义的全部资源连接；</p>
							<p>3.点击资源连接的配置操作按钮，将显示该资源连接的配置内容。</p>
						</div>
					</div>
					<div class="item" id="basics_setting_left" style="display:none">
						<div class="title">
							<span class="span4">基本设置</span>
						</div>
						<div class="nav_list">
							<ul id="icon_list">
								<li  class="li-a"><a href="javascript:void(0)"><div id="processor" onclick="onProcessorSetting()" class="img img41"></div><span>驱动处理</span></a></li>
								<li class="li-a" ><a href="javascript:void(0)"><div id="vocabulary" class="img img3"></div><span>系统词表</span></a></li>
								<li class="li-a" ><a href="javascript:void(0)"><div id="trusting_host" class="img img5"></div><span>信任主机</span></a></li>
								<li class="li-a"><a href="javascript:void(0)"><div id="release" class="img img6"></div><span>发布主机</span></a></li>
								<!--li><a href="javascript:void(0)" onclick="onResourceDefinitionSetting()"><div class="img img7"></div><span>库表定义</span></a></li-->
								<li class="li-a" ><a href="javascript:void(0)"><div id="style" class="img img1"></div><span>界面风格</span></a></li>
								<li class="li-a"><a href="javascript:void(0)"><div id="language" class="img img2"></div><span>语言支持</span></a></li>
								<li class="li-a"><a href="javascript:void(0)"><div id="clean_out" class="img img7"></div><span>清洗规则</span></a></li>
								<li class="li-a"><a href="javascript:void(0)"><div id="verify" class="img img4"></div><span>验证规则</span></a></li>
							</ul>
						</div>
					</div>
					<div class="item" id="online_help_left" style="display:none">
						<div class="title">
							<span class="span4">在线帮助</span>
						</div>
						<div class="div_nav">
							<div class="tit">
								<span>帮助目录</span>
							</div>
							<ul id="online_help_tree_list">
								<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
							</ul>
						</div>
					</div>
					<div class="item" id="development_guide_left" style="display:none">
						<div class="title">
							<span class="span4">开发指南</span>
						</div>
						<div class="div_nav">
							<div class="tit">
								<span>开发目录</span>
							</div>
							<ul id="development_guide_tree_list">
								<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
							</ul>
						</div>
					</div>
					<div class="item" id="organization_setting_left" style="display:none">
						<div class="title">
							<span class="span4">机构设置</span>
						</div>
						<div style="display:none" class="div_nav" id="organization_style_list">
							<div class="tit" style="cursor:pointer" onclick="onOrganizationDepartment()">
								<span>组织机构</span>
							</div>
							<ul id="organization_setting_list">
								<li>
									<a href="javascript:void(0)" onclick="onOrganizationDepartment()">
										<span>青云之上</span>
									</a>
									<ul>
										<li>
											<a href="javascript:void(0)" onclick="onNavigateDepartment()">
												<span>技术部</span>
											</a>
											<ul>
												<li>
													<a href="javascript:void(0)" onclick="onNavigateDepartment()">
														<span>业务部经理</span>
													</a>
												</li>
											</ul>
										</li>
										<li>
											<a href="javascript:void(0)" onclick="onNavigateDepartment()">
												<span>商务部</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" onclick="onNavigateDepartment()">
												<span>销售部</span>
											</a>
										</li>
										<li>
											<a href="javascript:void(0)" onclick="onNavigateDepartment()">
												<span>人事部</span>
											</a>
										</li>
									</ul>
								</li>
							</ul>
							<!--<ul id="account_setting_list">-->

							<!--</ul>-->
						</div>
						<div class="div_nav">
							<div id="AccountInformation" class="tit" onclick="onAccountNaviagate()" style="cursor:pointer">
								<span>帐户信息</span>
							</div>
							<!--<input type="hidden" id="journal_navigate_type"/>-->
							<ul id="account_setting_list" style="display:none">

							</ul>
						</div>
					</div>
				</div>
				<div class="main1 ht2 flt row">
					<div class="item">
						<div class="main_tit">
							<div class="tit_list flt">
								<ul id="infoinge_business_ul">
									<li>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.connection.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<a class="a1" title="监控中心" id="nav_monitoring_center"/>
									</li>
									<li>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<a class="a4" title="监控网络" id="nav_monitoring_network" onclick="onMonitoringNetwork();"/>
									</li>
                                    <li onclick="CurentTime();">
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'catalog.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
                                        <a class="a2" title="监控日志" id="nav_monitoring_log" onclick="onMonitoringLog();"/>
                                    </li>
									<li>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'resource.decomposing.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<a class="a3" title="功能配置" id="nav_resource_setting" onclick="onResourceSetting('NONE');"/>
									</li>
									<li>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'processor.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
										<a class="a5" title="基本设置" id="nav_basics_setting" onclick="onBasicsSetting();"/>
									</li>
									<li>
										<xsl:choose>
											<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.navigate.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
											<xsl:otherwise>
												<xsl:attribute name="style">display:none</xsl:attribute>
											</xsl:otherwise>
										</xsl:choose>
                                        <a class="a6" title="机构设置" id="nav_organization_setting" onclick="onOrganizationSetting()"/>
                                    </li>
									<!-- 批量删除 -->
									<li id="removeSelectRecord" style="display:none">
										<a href="javascript:void(0)">
											<span id="pilian" class="span_dele" title="停用所选......">
												<xsl:choose>
													<xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'buddle.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
													<xsl:otherwise>
														<xsl:attribute name="style">display:none</xsl:attribute>
													</xsl:otherwise>
												</xsl:choose>
											</span>
										</a>
									</li>
								</ul>
							</div>
							<div class="tit_list2 frt">
								<!--<ul>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span>预览标签XX功能目录<i/>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span>预览标签XX功能目录<i/>
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)">
                                            <span>预览标签WEB服务<i/>
                                            </span>
                                        </a>
                                    </li>
                                </ul>-->
							</div>
							<div class="clear"/>
						</div>
						<div class="main_content" id="monitoring_center_main" style="width:1200px;height:700px">
							<img src="infoinge/base/zh-cn/img/img1.png"/>
							<div class="page_tb">
								<img src="infoinge/base/zh-cn/img/icon41.png"/>
								<img src="infoinge/base/zh-cn/img/icon42.png"/>
								<img src="infoinge/base/zh-cn/img/icon43.png"/>
								<img src="infoinge/base/zh-cn/img/icon44.png"/>
								<img src="infoinge/base/zh-cn/img/icon45.png"/>
								<img src="infoinge/base/zh-cn/img/icon46.png"/>
							</div>
							<div class="cur">
								<div class="wrap">
									<span class="circle"/>
									<div class="cur_text">
										<div class="text">
											<p>状态：正常/超时/失败/宕机</p>
											<p>地址：域名/ip</p>
											<p>版本：版本号/版本代号</p>
											<p>CPU：X核/使用率</p>
											<p>内存：16G/使用率</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main_content" id="monitoring_network_main" style="width:1200px;height:600px;display:none">
							<img src="infoinge/base/zh-cn/img/img1.png"/>
							<div class="page_tb">
								<img src="infoinge/base/zh-cn/img/icon41.png"/>
								<img src="infoinge/base/zh-cn/img/icon42.png"/>
								<img src="infoinge/base/zh-cn/img/icon43.png"/>
								<img src="infoinge/base/zh-cn/img/icon44.png"/>
								<img src="infoinge/base/zh-cn/img/icon45.png"/>
								<img src="infoinge/base/zh-cn/img/icon46.png"/>
							</div>
							<div class="cur">
								<div class="wrap">
									<span class="circle"/>
									<div class="cur_text">
										<div class="text">
											<p>状态：正常/超时/失败/宕机</p>
											<p>地址：域名/ip</p>
											<p>版本：版本号/版本代号</p>
											<p>CPU：X核/使用率</p>
											<p>内存：16G/使用率</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main_content" id="monitoring_log_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="monitoring_job_main" style="width:1200px;height:400px;display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="resource_setting_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="basics_setting_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="online_help_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="development_guide_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="organization_setting_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
						<div class="main_content" id="data_exception_main" style="display:none">
							<xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text>
						</div>
					</div>
				</div>
				<div class="right_side1 flt row ht2">
					<div class="item item_right" id="monitoring_center_right">
						<div class="title">
							<span>问题诊断</span>
						</div>
						<div class="div_tips div_txt">
							<p><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></p>
						</div>
					</div>
					<div class="item item_right" id="monitoring_network_right" style="display:none">
						<div id="statistics_buddle_name" style="width:350px;height:350px"></div>
						<div id="statistics_catalog_name" style="width:350px;height:350px"></div>
					</div>
					<div class="item item_right" id="monitoring_log_right" style="display:none">
						<div class="title">
							<span>搜索日志</span>
						</div>
						<div class="div_tips div_txt">
							<p>记录时间（如滑动选择时间后,请点击左侧的日志进行搜索）：</p>
						</div>
						<div class="record_time_slider">
							<input type="hidden" id="record_year" class="single-slider"/>
						</div>
						<div class="record_time_slider">
							<input type="hidden" id="record_month" class="single-slider"/>
						</div>
						<div class="record_time_slider">
							<input type="hidden" id="record_day" class="single-slider"/>
						</div>
						<div class="record_time_slider">
							<input type="hidden" id="record_hour" class="single-slider"/>
						</div>
						<div class="record_time_slider">
							<xsl:attribute name="id">record_minute_container</xsl:attribute>
							<xsl:attribute name="style">display:none</xsl:attribute>
							<input type="hidden" id="record_minute" class="single-slider"/>
						</div>
						<br/>
						<div style="float: left;margin-left: 15px">
							<input style="width: 50px;" type="text" id="year_search" disabled="disabled">
								<!--<xsl:attribute name="value"><xsl:value-of select="fn:year-from-dateTime(xs:dateTime(fn:current-date()))"/></xsl:attribute>-->
							</input>
						</div>
						<div style="float: left;margin-left: 5px">
							<input style="width: 50px;" type="text" id="month_search" disabled="disabled"/>
						</div>
						<div style="float: left;margin-left: 5px">
							<input style="width: 50px;" type="text" id="day_search" disabled="disabled"/>
						</div>
						<div style="float: left;margin-left: 5px">
							<input style="width: 50px;" type="text" id="hour_search" disabled="disabled"/>
						</div>
						<div>
							<xsl:attribute name="id">record_minute_search</xsl:attribute>
							<xsl:attribute name="style">display:none;margin-left: 15px;margin-top: 30px;width:100px;</xsl:attribute>
							<input style="width: 50px;" type="text" id="minute_search" disabled="disabled"/>
						</div>
						<div class="main2 flt row">
								<div class="div_txt">
									<div class="list">
										<div style="width:100px" class="div_btn">
											<a href="javascript:void(0)">
												<xsl:attribute name="onclick">onJournalSearchs();</xsl:attribute>
												<span>查询</span>
											</a>
										</div>
									</div>
								</div>
						</div>

					</div>
					<div class="item item_right" id="resource_setting_right" style="display:none">
						<div class="title">
							<span>功能配置</span>
						</div>
						<div class="div_tips div_txt">
							<p>操作提示：</p>
							<p>1.系统配置包括功能配置和基本设置两部分；</p>
							<p>2.功能配置会对讯枢节点、数据库、WEB服务进行设置，在设置过程中有可能会用到基本设置的内容；</p>
							<p>3.基本设置包括驱动处理、系统词表、信任主机、发布主机、库表定义、界面风格、语言支持的设置。</p>
						</div>
					</div>
					<div class="item item_right" id="basics_setting_right" style="display:none">
						<div class="title">
							<span>基本设置</span>
						</div>
						<div class="div_tips div_txt">
							<p>操作提示：</p>
							<p>1.系统配置包括功能配置和基本设置两部分；</p>
							<p>2.功能配置会对讯枢节点、数据库、WEB服务进行设置，在设置过程中有可能会用到基本设置的内容；</p>
							<p>3.基本设置包括驱动处理、系统词表、信任主机、发布主机、库表定义、界面风格、语言支持的设置。</p>
						</div>
					</div>
					<div class="item item_right" id="organization_setting_right" style="display:none">
						<div class="title">
							<span>基本设置</span>
						</div>
						<div class="div_tips div_txt">
							<p>操作提示：</p>
							<p>1.系统配置包括功能配置和基本设置两部分；</p>
							<p>2.功能配置会对讯枢节点、数据库、WEB服务进行设置，在设置过程中有可能会用到基本设置的内容；</p>
							<p>3.基本设置包括驱动处理、系统词表、信任主机、发布主机、库表定义、界面风格、语言支持的设置。</p>
						</div>
					</div>
					<div class="item item_right" id="online_help_right" style="display:none">
						<div class="title">
							<span>查阅历史</span>
						</div>
						<div class="div_tips div_txt">
							<p><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></p>
						</div>
					</div>
					<div class="item item_right" id="development_guide_left" style="display:none">
						<div class="title">
							<span>查阅历史</span>
						</div>
						<div class="div_tips div_txt">
							<p><xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text></p>
						</div>
					</div>
				</div>
				<div class="ht4 flt"/>
				<div class="left_side2 row flt ht3">
					<div class="item">
						<div class="title">
							<span class="span2">异常信息</span>
							<!--div class="div_cur">
								<a href="javascript:void(0)" class="a1"/>
								<a href="javascript:void(0)" class="a2"/>
							</div-->
						</div>
						<div class="div_list" id="hint_error_container">
							<ul id="hint_error">
								<!--li>
									<a href="javascript:void(0)">xxx同步操作超时</a>
								</li>
								<li>
									<a href="javascript:void(0)">移动xx数据失败</a>
								</li>
								<li>
									<a href="javascript:void(0)">xxx节点已停止工作</a>
								</li-->
							</ul>
						</div>
					</div>
				</div>
				<div class="main2 flt row ht3">
					<div class="item">
						<div class="div_txt">
							<div class="list">
								<div class="item1">
									<div class="div_select">
										<select id="console_hinge_select">
											<xsl:attribute name="onclick">onConsoleHingeChange()</xsl:attribute>
											<option value="infoinge-local-con" selected="selected">
													</option>
										</select>
										<input type="hidden" id="console_hinge_host"/>
									</div>
								</div>
								<div class="item1">
									<span class="span_tit">指令：</span>
									<div class="div_select">
										<select>
											<option>请选择指令</option>
											<option>重启应用</option>
											<option>重启连接池</option>
										</select>
									</div>
								</div>
								<div class="item1">
									<p class="p_tips">注：可以向任意节点发送指令，实施远程控制。</p>
								</div>
								<div class="clear"/>
							</div>
							<div class="list">
								<div class="div_input">
									<input type="text" placeholder="请按照操作手册录入指令参数"/>
								</div>
								<div class="div_btn">
									<a href="javascript:void(0)">发送</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="right_side2 row flt ht3">
					<div class="item">
						<div class="title">
							<span class="span3">提示信息</span>
							<!--div class="div_cur">
								<a href="javascript:void(0)" class="a1"/>
								<a href="javascript:void(0)" class="a2"/>
							</div-->
						</div>
						<div class="div_list">
							<ul id="hint_message">
								<!--li>
									<a href="javascript:void(0)">正在完成xxx数据的同步</a>
								</li>
								<li>
									<a href="javascript:void(0)">正在完成xxx数据的转移</a>
								</li-->
							</ul>
						</div>
					</div>
				</div>
				<div class="clear"/>
			</div>
		</div>
		<div class="footer">
			<div class="wrap">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</div>
		</div>
		<div id="password_modification" class="password_modification div_text">
			<p onclick="onPasswordBox()">x</p>
			<form class="form-horizontal" role="form" id="validate_password_modification_setting">
				<span id="password_warning" class="password_warning">修改密码</span>
				<div class="list">
					<span class="span_tit">新密码：</span>
					<div class="text">
						<div class="div_input">
							<input maxlength="32" id="account_password_new" class="validate[required,custom[onchinaese]]"/>
						</div>
					</div>
				</div>
				<div class="list">
					<span class="span_tit">确认密码：</span>
					<div class="text">
						<div class="div_input">
							<input maxlength="32" id="account_password_modification" placeholder="两次输入的密码必须一致" class="validate[required,custom[onchinaese]]"/>
						</div>
					</div>
				</div>
				<div class="list">
					<span class="span_tit"/>
					<div class="text">
						<div class="div_btn">
							<a href="javascript:void(0)" onclick="onPasswordModification()">提交</a>
							<a href="javascript:void(0)" onclick="resetData(this)">重置</a>
							<input type="reset" style="display:none" class="reset_data"/>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div id="now_remove" style="display:none;position:fixed;top:0;bottom:0;left:0;right:0;z-index:66"></div>
		<div id="ajax_loader_remove" style="display:none;position:fixed;top:45%;left:45%;z-index:88">
			<img src="infoinge/base/zh-cn/img/ajaxLoader.gif"/>
		</div>
	</xsl:template>
</xsl:stylesheet>
