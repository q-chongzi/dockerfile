<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<html>
			<head>
				<meta charset="utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<link rel="icon" href="diginter/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
				<title> - 讯枢 - 数字立交 - </title>
				<meta name="author" content="青云之上" />
				<meta name="keywords" content="数据 融合 交换 同步 迁移 清洗 开发 框架 软件 工厂"/>
				<meta name="description" content="数据标准化是唯一的解决方法，除此之外，都会让解决方法变得不经济"/>

				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/global.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/style.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/owl.carousel.min.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/public.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/style.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/leaflet.css" >
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/js/laydate/need/laydate.css" >
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<style type="text/css">
					body{
					width:100%;
					height: 100% !important;
					color: #FFFFFF;
					background: url(diginter/base/zh-cn/img/bg.jpg) no-repeat center;
					position: relative;
					}
					.mapDiagram { width:100%;  height: 100%;}
					#myDiagramDiv {  z-index: 9999;  }
					#prompt a{color:red;}
					#prompt{margin-left: 70px;margin-top: 15px;display:none;position: relative}
					#prompt span li{position: absolute;top:-5px;left:26px;width:350px}
				</style>
			</head>

			<body>
				<div id="map" style="width:100%;height: 1000px;position: fixed" class="mapDiagram">
					<div  style="width:100%;  height: 1000px;" id="myDiagramDiv" class="mapDiagram"><!--ondblclick="$('#diginter_sign_in').show()"-->
						<xsl:text disable-output-escaping="no"> </xsl:text>
					</div>
				</div>
				<div class="menu">
					<div class="header">
						<div class="header-con">
							<img src="diginter/base/zh-cn/img/head.bg.png" class="header-img"/>
							<div class="logo">
								<a href="javascript:void(0)"><img src="diginter/base/zh-cn/img/logo.png" alt="" /></a>
							</div>
							<div class="operation operation1 hidden">
								<span class="oper">
									<a target="blank">
										<xsl:attribute name="href">
											<xsl:text>diginter/base/zh-cn/guide.html?account=</xsl:text>
											<xsl:value-of select="parameter.cludove/account.cludove"/>
											<xsl:text>&amp;template=</xsl:text>
											<xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
											<xsl:text>&amp;content=processor</xsl:text>
										</xsl:attribute>
										操作指南
									</a>
								</span>
							</div>
							<div class="switch">
								<div id="second_div">
									<form>
										<span style="cursor: pointer;" onMouseOver="javascript:nodeInformationShow(this,'integrated_node_view');" onMouseOut="nodeInformationHide(this,'integrated_node_view')">集成节点 <input type="checkbox" class="switchP lcs_check" id="is_integration" name="check-1" value="4" disabled="disabled"   autocomplete="off" /></span>
										<span style="cursor: pointer;" onMouseOver="javascript:nodeInformationShow(this,'cluster_node_view');" onMouseOut="nodeInformationHide(this,'cluster_node_view')">集群节点 <input type="checkbox" class="switchP lcs_check" id="is_colony" name="check-1" value="4" disabled="disabled"  autocomplete="off" /></span>
										<span style="cursor: pointer;" onMouseOver="javascript:nodeInformationShow(this,'bus_node_view');" onMouseOut="nodeInformationHide(this,'bus_node_view')">总线节点 <input type="checkbox" class="switchP lcs_check" id="is_dsb" name="check-1" value="4" disabled="disabled"  autocomplete="off" /></span>
										<span class="is_integration" style="display: none"><xsl:text disable-output-escaping="no"> </xsl:text></span>
										<span class="is_colony" style="display: none"><xsl:text disable-output-escaping="no"> </xsl:text></span>
										<span class="is_dsb" style="display: none"><xsl:text disable-output-escaping="no"> </xsl:text></span>
									</form>
									<div id="integrated_node_view" style="z-index:100;position:absolute;display:none;color:#000000;background:#ffffff;border-radius: 2px;">
										<xsl:text disable-output-escaping="no"> </xsl:text>
									</div>
									<div id="cluster_node_view" style="z-index:100;position:absolute;display:none;color:#000000;background:#ffffff;border-radius: 2px;border: 0.5px solid #000000;">
										<xsl:text disable-output-escaping="no"> </xsl:text>
									</div>
									<div id="bus_node_view" style="z-index:100;position:absolute;display:none;color:#000000;background:#ffffff;border-radius: 5px;">
										<xsl:text disable-output-escaping="no"> </xsl:text>
									</div>
								</div>
							</div>
							<!--<div class="help">-->
								<!--<a href="javascript:void(0)">-->
									<!--<xsl:text disable-output-escaping="no"> </xsl:text>-->
								<!--</a>-->
							<!--</div>-->
							<div class="languages">
								<select name="" disabled="disabled">
									<option value="">中文(简体)</option>
									<option value="">Deutsch</option>
									<option value="">English</option>
									<option value="">Russian</option>
									<option value="">French</option>
									<option value="">German</option>
								</select>
							</div>
							<div class="top-hid">
								<span><img src="diginter/base/zh-cn/img/top-hid.png"/></span>
							</div>
							<input type="hidden" id="buddle_id"/>
							<input type="hidden" id="catalog_id"/>
							<input type="hidden" id="design_code"/>
							<input type="hidden" id="data_select_code"/>
							<input type="hidden" id="data_select_value_code"/>
							<input type="hidden" id="data_select_tag_code"/>
							<input type="hidden" id="data_select_condition_code"/>
							<input type="hidden" id="data_select_response_code"/>
							<input type="hidden" id="data_select_item_code"/>
							<input type="hidden" id="data_select_expression_code"/>
							<input type="hidden" id="data_select_type"/>
							<input type="hidden" id="data_select_connection_id"/>
							<input type="hidden" id="data_select_resource_name"/>
						</div>
						<div class="top-spr hidden">
							<span><img src="diginter/base/zh-cn/img/top-spr.png"/></span>
						</div>
					</div>
					<!--<div class="map">-->
					<!--<div class="mp mp1">-->
					<!--<div class="feng">-->
					<!--<div class="tree">-->
					<!--<div class="sang">-->
					<!--<xsl:text disable-output-escaping="no"> </xsl:text>-->
					<!--</div>-->
					<!--<div class="du_size">-->
					<!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
					<!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
					<!--</div>-->
					<!--</div>-->
					<!--</div>-->
					<!--</div>-->
					<!--<div class="mp mp2">-->
					<!--<div class="feng">-->
					<!--<div class="tree">-->
					<!--<div class="sang">-->
					<!--<xsl:text disable-output-escaping="no"> </xsl:text>-->
					<!--</div>-->
					<!--<div class="du_size">-->
					<!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
					<!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
					<!--</div>-->
					<!--</div>-->
					<!--</div>-->
					<!--</div>-->
					<!--</div>-->
					<!--<div class="menu-con1">
						<div class="menu-con1-con">
							<div class="menu-con1-tit">
								异常报警
							</div>
							<div class="menu-con1-txt">
								<ul id="exception_warning_view">
									&lt;!&ndash;<li class="txt-color1"><i>1</i><a href="">数据迁移(又称分级存储管理（简称带库）等</a><span>2017-11-01</span></li>&ndash;&gt;
								</ul>
								<a  href="javascript:void(0)" class="help">
									<xsl:text disable-output-escaping="no"> </xsl:text>
								</a>
							</div>
							<div class="left-hid">
								<span><img src="diginter/base/zh-cn/img/left-hid.png"/></span>
							</div>
						</div>
						<div class="left-spr hidden">
							<span><img src="diginter/base/zh-cn/img/left-spr.png"/></span>
						</div>
					</div>
					<div class=" menu-con2">
						<div class="menu-con2-con">
							<div class="menu-con1-tit">
								数据异常
							</div>
							<div class="menu-con1-txt">
								<ul id="data_exception_index">
									&lt;!&ndash;<li ><i>1</i><a href="">数据迁移(又称分级存储管理（简称带库）等</a><span>2017-11-01</span></li>&ndash;&gt;
								</ul>
								<a  href="javascript:void(0)" class="help">
									<xsl:text disable-output-escaping="no"> </xsl:text>
								</a>
							</div>
							<div class="right-hid">
								<span><img src="diginter/base/zh-cn/img/right-hid.png"/></span>
							</div>
						</div>
						<div class="right-spr hidden">
							<span><img src="diginter/base/zh-cn/img/right-spr.png"/></span>
						</div>
					</div>-->
				</div>
				<div id="diginter_sign_in">
					<div class="retrieve-con">
						<div style="position: relative" class="retrieve-con-tit">
							<p>系统登录</p>
							<!--<div onclick="$('#diginter_sign_in').hide();" style="position: absolute;top:10px;right:0;font-weight: bold;cursor: pointer">
								X
							</div>-->
						</div>
						<div style="margin-top:-20px" class="retrieve-con-txt">
							<h1>请输入登录名和密码</h1>
							<form action="" method="post">
								<label for="account">登录名：</label>
								<input type="text" maxlength="32" id="account" placeholder="邮箱/会员名" class="user"  onFocus="this.select();" onclick="$.switchblank(this.id, this.title, '')" onblur="$.switchblank(this.id, '', this.title)" onkeypress="$(this).controlFocusMove(true, 'password', event);"/>
								<br/>
								<label for="password">密
									<xsl:text disable-output-escaping="yes"><![CDATA[&nbsp;]]><![CDATA[&nbsp;]]></xsl:text>
									码：</label>
								<input class="user" maxlength="32" id="password" type="password" placeholder="密码" onFocus="this.select();" onclick="$.switchblank(this.id, this.title, '')" onblur="$.switchblank(this.id, '', this.title)" onkeypress="$.enterByEnter(event);$('#prompt').show();"/>
								<div id="drag">
									<xsl:text disable-output-escaping="no"> </xsl:text>
								</div>
								<br />
								<div id="logon_button_zone" style="display:none">
									<input type="button" class="sub" value="登录">
										<xsl:attribute name="onclick"><xsl:text disable-output-escaping="yes">if ($.validLogon()){$.enter();}$('#prompt').show();</xsl:text></xsl:attribute>
									</input>
								</div>
							</form>
							<div id="prompt" style="text-align:left;color:#666666;font-size:12px;">
								<span>提示</span> <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text><span id="hint_error" style="color: #FF6633; margin: 5px;"><xsl:text disable-output-escaping="no"> </xsl:text></span>
							</div>
						</div>
					</div>
				</div>
				<div style="position:fixed;top:0;bottom:0;left:0;right:0;z-index:166;background:black" id="now_loading_background"><xsl:text> </xsl:text></div>
				<div style="position:fixed;top:30%;left:42%;z-index:188" id="now_loading"><img src="diginter/base/zh-cn/img/loading.gif" width="300" height="300"/></div>
				<!--数据异常显示-->
				<div id="exception_page" class="hidden"></div>
				<!--异常报警显示-->
				<div id="monitoring_center_right" class="hidden"></div>
			</body>
			<script src="diginter/base/zh-cn/js/jquery.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/lc_switch.min.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/main.js" type="text/javascript" charset="utf-8">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/leaflet.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/proj4-compressed.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/proj4leaflet.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/go.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/index.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/diginter_signin.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script src="diginter/base/zh-cn/js/diginter_monitor.js" type="text/javascript">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.validationEngine.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.validationEngine-zh_CN.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/ajaxfileupload.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/navigate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/cookie.js" >
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge-luban.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/diginter_monitor.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/laydate/laydate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<!--<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/socket.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>-->


			<script type="text/javascript">
				$(document).ready(function() {setupHttpHeader();$('#drag').drag();main();monitorInit();<!--indexMap.init();-->$('#now_loading_background').hide();$('#now_loading').hide();onExceptionWarningJournal();dataExceptionIndexShow();<!--isSupportWebSocket();-->});
			</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
