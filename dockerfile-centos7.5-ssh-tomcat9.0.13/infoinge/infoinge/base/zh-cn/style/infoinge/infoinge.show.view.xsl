<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
	<xsl:template match="content">
		<html>
			<head>
				<link rel="icon" href="infoinge/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
				<title> - 讯枢 - </title>
				<meta charset="utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/style.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/owl.carousel.min.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/validationEngine.jquery.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/jquery.range.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/jquery-ui-1.10.4.custom.min.css" media="all">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
			</head>
			<body style="background:#fff;">
				<div id="main_content">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</div>
			</body>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
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
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.range.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery-ui-1.10.4.custom.min.js">
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
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge-luban.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/organization.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/go.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/monitor.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/laydate/laydate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoapi.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/echarts.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/statistics.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/exchange.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/activation.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript">
				$(document).ready(function() {setupHttpHeader(); onInfoingeLoading();});
			</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
