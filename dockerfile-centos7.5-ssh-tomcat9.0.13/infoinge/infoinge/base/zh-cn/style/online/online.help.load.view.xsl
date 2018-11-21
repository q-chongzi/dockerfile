<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<html lang="en">
			<head>
			    <title>讯枢 - 在线帮助</title>
				<meta charset="utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/bootstrap.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/font-awesome.min.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
				<link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/summernote/summernote.css">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</link>
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
				<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/bootstrap.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/online.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
			</head>
			<body>
				<div id="main_content">
					
				</div>
			</body>
			<script type="text/javascript">$(document).ready(function() {onOnlinHelpShow();});</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
