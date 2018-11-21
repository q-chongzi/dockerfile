<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
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
            </head>
            <body style="background:#fff;">
                <div id="main_content">
                    <div >
                        <div class="div_txt">
                            <xsl:for-each select="journal.cludove/content/journal.cludove/execution.configuration/*">
                                <div class="list">
                                    <span class="span_tit" style="width:20%">
                                        <xsl:value-of select="@name"/>
                                    </span>
                                    <div class="text" style="height:2em">
                                        <div class="div_input" style="border:0">
                                            <!--<xsl:choose>-->
                                            <!--<xsl:when test=". = ''">-->
                                            <xsl:text> </xsl:text>
                                            <!--</xsl:when>-->
                                            <!--<xsl:otherwise>-->
                                            <!--<xsl:value-of select="."/>-->
                                            <!--</xsl:otherwise>-->
                                            <!--</xsl:choose>-->
                                        </div>
                                    </div>
                                </div>
                                <xsl:for-each select="*">
                                    <div class="list">
                                        <span class="span_tit" style="width:20%">
                                            <xsl:value-of select="@name"/>
                                        </span>
                                        <div class="text">
                                            <xsl:choose>
                                                <xsl:when test=". = ''">
                                                    <xsl:attribute name="style">
                                                        <xsl:text>height:2em </xsl:text>
                                                    </xsl:attribute>
                                                </xsl:when>
                                                <xsl:otherwise/>
                                            </xsl:choose>
                                            <div class="div_input">
                                                <xsl:choose>
                                                    <xsl:when test=". = ''">
                                                        <xsl:text> </xsl:text>
                                                    </xsl:when>
                                                    <xsl:otherwise>
                                                        <xsl:value-of select="."/>
                                                    </xsl:otherwise>
                                                </xsl:choose>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </xsl:for-each>
                        </div>
                    </div>
                </div>
            </body>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript">
                <!--$(document).ready(function() {var base64 = new Base64(); $('#journal_content').text(base64.decode($('#journal_content').text()));});-->
                $(document).ready(function() {setupHttpHeader();})
            </script>
        </html>
    </xsl:template>

</xsl:stylesheet>
