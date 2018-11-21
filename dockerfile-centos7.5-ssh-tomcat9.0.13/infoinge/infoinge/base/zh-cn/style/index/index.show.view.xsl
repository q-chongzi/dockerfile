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
				<link rel="icon" href="infoinge/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
			    <title> - 讯枢 - 软件工厂 - </title>
				<meta name="author" content="青云之上" />
				<meta name="keywords" content="数据 融合 交换 同步 迁移 清洗 开发 框架 软件 工厂"/>
				<meta name="description" content="数据标准化是唯一的解决方法，除此之外，都会让解决方法变得不经济"/>

				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/style.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/owl.carousel.min.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/validationEngine.jquery.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
			</head>
			<body style="background:#fff;">
				<div id="main_content">
					<div class="login">
						<div class="login_text">
							<div class="wrap">
								<div class="logo">
									<a>
										<img src="infoinge/base/zh-cn/img/xunshu.png" style="width:128px;height:140px;"/>
									</a>
								</div>
								<div class="version_information">
									<div class="box_information">
										<div class="information_text">
											<xsl:text disable-output-escaping="yes"> </xsl:text>
										</div>
										<div class="on_left_version">
											<img src="infoinge/base/zh-cn/img/left.png"/>
										</div>
									</div>
								</div>
								<div class="logo_text">数据融合专业服务</div>
								<div class="logo_text">青云之上</div>
								<div style="position: relative" class="frt">
									<div id="activation_prompt" style="position: absolute;right:300px;display:none" class="activation_button">
										<a href="javascript:void(0)" title="如果加载失败，请重新刷新页面！">加载中</a>
									</div>
									<input type="hidden" id="template_business_infoinge"/>
								</div>
								<div class="div_txt2">
									<div class="list">
										<div class="div_input input_user">
											<input maxlength="32" id="account" type="text" placeholder="用户名或邮箱"/>
										</div>
									</div>
									<div class="list">
										<div class="div_input input_pwd">
											<input maxlength="32" id="password" type="password" placeholder="密码"/>
										</div>
									</div>
									<div class="list">
										<div class="div_btn1" id="logon_button_zone" style="position: relative;">
											<a id="login_button" href="javascript:void(0)">
												<xsl:text disable-output-escaping="yes">登录</xsl:text>
											</a>
											<a id="logon_button_prohibit" href="javascript:void(0)">
												<xsl:text disable-output-escaping="yes">正在查询版本信息，请稍等...</xsl:text>
											</a>
										</div>
										<!--<div class="div_btn1" id="logon_button_wait">-->
											<!--<xsl:text disable-output-escaping="yes">登录</xsl:text>-->
										<!--</div>-->
									</div>
									<!--<div class="list">-->
										<!--<div class="div_check" id="check_rember_password">-->
											<!--<p>记住我</p>-->
										<!--</div>-->
										<!--<div class="div_forget">-->
											<!--<span>忘记密码?</span>-->
											<!--<a href="javascript:void(0)">注册</a>-->
										<!--</div>-->
									<!--</div>-->
									<div class="list" style="text-align:left;color:#666666;font-size:12px;">
										提示 <xsl:text disable-output-escaping="yes">&amp;nbsp;</xsl:text><span id="hint_error" style="color: #FF6633; margin: 5px;"></span>
									</div>
									<div class="list">
										<div class="list_tips">
											<a href="help/help_user.htm" class="flt" target="_blank">
												<span class="span1">在线帮助</span>
											</a>
											<a class="frt" target="_blank">
												<xsl:attribute name="href">
													<xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.show.view</xsl:text>
												</xsl:attribute>
												<span class="span2">开发指南</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="system_error_hints">
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
						<div id="diginter_activation">
							<xsl:text disable-output-escaping="no"> </xsl:text>
						</div>
						<div class="login_main">
							<div class="main_tit">
								<h3>提供数据交换、同步、迁移、集成服务</h3>
								<p>Data exchange service solutions for you</p>
							</div>
							<div class="main_content" id="monitoring_center_main" style="width:1200px;height:700px">
								<img src="infoinge/base/zh-cn/img/img1.png"/>
								<div class="cur">
									<div class="wrap">
										<span class="circle"> </span>
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
						</div>
						<div class="clear"> </div>
					</div>
				</div>
			</body>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine-zh_CN.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/ajaxfileupload.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/main.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/navigate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/cookie.js" >
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<!--<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge-luban.js">-->
				<!--<xsl:text disable-output-escaping="no"> </xsl:text>-->
			<!--</script>-->
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge-luban.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/go.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/monitor.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/activation.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript">
				$(document).ready(function() {setupHttpHeader(); $('#account').focus(); $.enterByFlush();monitor.init();monitor.onTopologyData();onInstanceSearch();});
			</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
