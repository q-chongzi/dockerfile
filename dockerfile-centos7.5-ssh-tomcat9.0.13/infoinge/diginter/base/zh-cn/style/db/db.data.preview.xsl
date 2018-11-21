<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<html>
			<head>
				<title> - 导出XML - </title>
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
			</head>
			<body style="background:#fff;">
				<input id="x_resource_name" type="hidden">
					<xsl:attribute name="value">
						<xsl:value-of select="parameter.cludove/resource_name"/>
					</xsl:attribute>
				</input>
				<input id="x_connection_id" type="hidden">
					<xsl:attribute name="value">
						<xsl:value-of select="parameter.cludove/connection_id"/>
					</xsl:attribute>
				</input>
				<div id="data_xml" style="font-size:17px;">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</div>
			</body>
			<script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
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

			<script type="text/javascript">
				$(document).ready(function() {setupHttpHeader(); onDataShowsearch();});
				<!--window.location.href="infoinge/base/zh-cn/style/db/db.data.preview.search.xsl";-->
			</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
