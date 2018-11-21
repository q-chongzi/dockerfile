<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:template match="content">
        <html>
            <head>
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
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/api.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </script>
                <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </script>
                <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/navigate.js">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </script>
                <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/api.js">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </script>
            </head>
            <body>
                <input id="buddle_id" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/buddle_id"/>
                    </xsl:attribute>
                </input>
                <input id="catalog_id" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/catalog_id"/>
                    </xsl:attribute>
                </input>
                <div id="api_description"></div>
            </body>
        </html>
        <script type="text/javascript">
            $(document).ready(function() {setupHttpHeader(); onApiDescription($("#buddle_id").val(),$("#catalog_id").val());});
        </script>
    </xsl:template>
</xsl:stylesheet>
