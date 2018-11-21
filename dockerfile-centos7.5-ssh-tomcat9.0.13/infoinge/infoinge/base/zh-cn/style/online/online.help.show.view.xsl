<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<!--html>
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
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/style.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<script type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script type="text/javascript" src="infoinge/base/zh-cn/js/main.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script language="javascript" type="text/javascript" src="hinge/base/zh-cn/js/hinge.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script language="javascript" type="text/javascript" src="hinge/base/zh-cn/js/cookie.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
			</head>
			<body>
				<div id="main_content"-->
		<div class="header ht1" style="height: 64.7px;line-height: 64.7px;">
			<div class="wrap">
				<div class="logo flt">
					<a href="#">
						<img src="infoinge/base/zh-cn/img/xunshu2.png"/>
					</a>
				</div>
				<div class="h_nav frt">
					<ul>
						<li>
							<a href="#">
								<img src="infoinge/base/zh-cn/img/icon5.png"/>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="infoinge/base/zh-cn/img/icon4.png"/>
							</a>
						</li>
						<li>
							<a href="javascript:void(0)">
								<img src="infoinge/base/zh-cn/img/icon1.png"/>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="infoinge/base/zh-cn/img/icon2.png"/>
							</a>
						</li>
						<li>
							<a href="#">
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
					<div class="item">
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
				</div>
				<div class="main1 ht2 flt row" id="main_zone">
					<div class="item" id="online_help_edit_zone">
						<div class="main_img">
							<div id="online_help_content"/>
							<input type="hidden" id="online_save_help_content"/>
						</div>
					</div>
				</div>
				<div class="right_side1 flt row ht2">
					<div class="item">
						<div class="title">
							<span id="edit_zone_title">帮助目录</span>
							<a href="javascript:void(0)" onclick="onOnlineHelpSetting()">
								<xsl:if test="parameter.cludove/signed.cludove = 'true'">
									<span class="span_edit span_online_help_edit">
										<a/>
									</span>
								</xsl:if>
							</a>
						</div>
						<div class="div_tips" id="edit_zone_tips">
							<p>提示：</p>
							<p>1.在线帮助分级添加和显示；</p>
							<p>2.新增操作对应当前选中级别。</p>
						</div>
						<xsl:if test="parameter.cludove/signed.cludove = 'true'">
							<div class="div_txt" id="edit_zone" style="display: none;">
								<div class="list">
									<span class="span_tit">标题：</span>
									<div class="text">
										<div class="div_input">
											<input type="text" id="online_help_title"/>
										</div>
									</div>
								</div>
								<div class="list">
									<span class="span_tit"/>
									<div class="text">
										<div class="div_btn">
											<a href="javascript:void(0)" onclick="onOnlineHelpEditShow();">编辑</a>
											<a href="javascript:void(0)">保存</a>
											<a href="javascript:void(0)">删除</a>
										</div>
									</div>
								</div>
								<input type="hidden" id="online_help_parent_code"/>
								<input type="hidden" id="online_help_parent_code"/>
							</div>
						</xsl:if>
					</div>
				</div>
				<div class="ht4 flt"/>
				<div class="left_side2 row flt ht3">
					<div class="item">
						<div class="title">
							<span class="span2">报警信息</span>
							<div class="div_cur">
								<a href="#" class="a1"/>
								<a href="#" class="a2"/>
							</div>
						</div>
						<div class="div_list">
							<ul>
								<li>
									<a href="#">xxx同步操作超时</a>
								</li>
								<li>
									<a href="#">移动xx数据失败</a>
								</li>
								<li>
									<a href="#">xxx节点已停止工作</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="main2 flt row ht3">
					<div class="item">
						<div class="div_txt">
							<div class="list">
								<div class="div_input">
									<input type="text" placeholder="通过关键字搜索帮助信息"/>
								</div>
								<div class="div_btn">
									<a href="javascript:void(0)">搜索</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="right_side2 row flt ht3">
					<div class="item">
						<div class="title">
							<span class="span3">提示信息</span>
							<div class="div_cur">
								<a href="#" class="a1"/>
								<a href="#" class="a2"/>
							</div>
						</div>
						<div class="div_list">
							<ul>
								<li>
									<a href="#">正在完成xxx数据的同步</a>
								</li>
								<li>
									<a href="#">正在完成xxx数据的转移</a>
								</li>
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
		<!--/div>
			</body>
		</html-->
	</xsl:template>
</xsl:stylesheet>
