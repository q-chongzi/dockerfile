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
                <div class="mianer" style="overflow: hidden">
                    <div class="wrap">
                        <div class="left_side1 row ht2 flt">
                             <div class="item">
                                 <div class="title">
                                     <span class="span4">讯枢版本<xsl:value-of select="cludove.crest.spruce.vocabulary/record.crest[keyword='INFOINGE_VERSSION']/content"/> </span>
                                 </div>
                             </div>
                            <div class="div_txt" style="margin-top:10px">
                                <div class="div_select">
                                    <select id="console_hinge_select" disabled="disabled">
                                        <xsl:attribute name="onclick">onApiConsoleHingeChange()</xsl:attribute>
                                        <option value="infoinge-local-con" selected="selected">
                                        </option>
                                    </select>
                                    <input type="hidden" id="console_hinge_host"/>
                                </div>
                            </div>
                            <div id="api_application">
                            </div>
                        </div>
                    </div>
                </div>
            </body>
            <script type="text/javascript">
                $(document).ready(function() {setupHttpHeader(); onApiResourceConnectionSelect('console_hinge_select', 'Hinge', '', 'onApiConsoleHingeChange()');});
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
