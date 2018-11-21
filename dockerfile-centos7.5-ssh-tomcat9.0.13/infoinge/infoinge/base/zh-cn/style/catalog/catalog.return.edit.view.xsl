<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
	<xsl:include href="common.xsl"/>
	<xsl:template match="content">
		<html>
			<head>
				<link rel="icon" href="infoinge/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
				<title> - 编辑功能返回说明 - </title>
				<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.config.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<script type="text/javascript" charset="utf-8" src="ueditor/ueditor.all.min.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>
				<!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
				<!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
				<script type="text/javascript" charset="utf-8" src="ueditor/lang/zh-cn/zh-cn.js">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</script>

				<style type="text/css">
					div {width:100%; height:100%;}
				</style>
			</head>
			<body>
				<div>
					<button onclick="processCatalogReturnSetting()">保存</button>
					<br/>
					<br/>
					<script id="return_content" type="text/plain" style="width:100%; height:600px;">
						<xsl:value-of select="cludove.crest.spruce.catalog_return/record.crest/content"/>
						<xsl:text disable-output-escaping="no"> </xsl:text>
					</script>
				</div>
				<input type="hidden" name="code" id="code_catalog_return">
					<xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.catalog_return/record.crest/code"/></xsl:attribute>
				</input>
				<input type="hidden" name="connection_code" id="connection_code_catalog_return">
					<xsl:attribute name="value">
						<xsl:choose>
							<xsl:when test="cludove.crest.spruce.catalog_return/record.crest/connection_code != ''">
								<xsl:value-of select="cludove.crest.spruce.catalog_return/record.crest/connection_code"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>spruce-con-2010001</xsl:text>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
				</input>
				<input type="hidden" name="buddle_id" id="buddle_id">
					<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/buddle_id"/></xsl:attribute>
				</input>
				<input type="hidden" name="catalog_id" id="catalog_id">
					<xsl:attribute name="value"><xsl:value-of select="parameter.cludove/catalog_id"/></xsl:attribute>
				</input>
			</body>
			<script type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript" src="infoinge/base/zh-cn/js/navigate.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
				<xsl:text disable-output-escaping="no"> </xsl:text>
			</script>
			<script type="text/javascript">
				$(document).ready(function() {setupHttpHeader(); var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});
			</script>
		</html>
	</xsl:template>
</xsl:stylesheet>
