<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output encoding="GBK" method="xml"/>
	<xsl:template match="content">
		<html>
		<head>
			<title> - 讯枢 - 数字立交 - 接口手册 - </title>
			<meta charset="utf-8">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</meta>
			<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</meta>
			<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</meta>
			<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/public.css" media="all">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</link>
			<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/style.css" media="all">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</link>
			<link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/validationEngine.jquery.css">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</link>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine-zh_CN.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/hinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/cookie.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/navigate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/diginter_monitor.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/api.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/main.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
		</head>
		<body>
			<input type="hidden" id="api_account">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/api_account" />
				</xsl:attribute>
			</input>
			<input type="hidden" id="api_password">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/api_password" />
				</xsl:attribute>
			</input>
			<input id="permission" type="hidden">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/has_permission" />
				</xsl:attribute>
			</input>
			<input type="hidden" id="resource_name">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/resource_name" />
				</xsl:attribute>
			</input>
			<input type="hidden" id="resource_identifier">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/resource_identifier" />
				</xsl:attribute>
			</input>
			<input id="api_tele" type="hidden">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/telephone" />
				</xsl:attribute>
			</input>
			<input id="api_email" type="hidden">
				<xsl:attribute name="value">
					<xsl:value-of select="parameter.cludove/email" />
				</xsl:attribute>
			</input>
			<div id="api">

			</div>
			<script type="text/javascript">
				$(document).ready(function() {
				    setupHttpHeader();
				});
			</script>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
