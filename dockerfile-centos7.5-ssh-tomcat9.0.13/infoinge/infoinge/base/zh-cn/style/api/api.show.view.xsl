<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
	<xsl:template match="content">
		<html>
			<head>
				<link rel="icon" href="infoinge/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
				<title> - API - </title>
				<meta charset="utf-8">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
					<xsl:text disable-output-escaping="no"> </xsl:text>
				</meta>

			</head>
			<frameset cols="20%,80%">
				<frameset rows="30%,70%">
					<frame name="apiApplication">
						<xsl:attribute name="src">
							<xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.application.show.view</xsl:text>
						</xsl:attribute>
					</frame>
					<frame name="apiCatalog">
						<xsl:attribute name="src">
							<xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.catalog.show.view</xsl:text>
						</xsl:attribute>
					</frame>
				</frameset>
				<frame name="apiDescription">
					<xsl:attribute name="src">
							<xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.description.show.view</xsl:text>
					</xsl:attribute>
				</frame>
			</frameset>
		</html>
	</xsl:template>
</xsl:stylesheet>
