<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
                <link rel="icon" href="diginter/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
                <title> - 响应设计 - </title>
                <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </meta>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/global.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/public.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/style.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/owl.carousel.min.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/validationEngine.jquery.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/jquery.range.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/jquery-ui-1.10.4.custom.min.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
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
                <style>
                    body{
                    background-color: #F0F0F0;
                    }
                    .link-input {
                    width:80% !important;
                    color:#808080;
                    display:inline-block;
                    height:13px;
                    float:right;
                    margin-right: 5%
                    }
                    .bottom {
                    margin-bottom:30px !important;
                    }

                    .list {
                    color: #808080;
                    margin-bottom: 30px
                    }

                    .configure-fr-side  p {
                    color: #808080;
                    margin-bottom: 30px;
                    }


                    .configure-fr div {
                    text-align: center;
                    font-size: 14px;
                    color: #7a7a7a
                    }

                    table td {
                    max-width:300px;
                    }

                    .position-up {
                    position:absolute;
                    right:12px;
                    top:5px
                    }

                    .position-down {
                    position:absolute;
                    right:12px;
                    top:20px
                    }
                    .position{
                    position:absolute;
                    right:12px;
                    top:5px
                    }

                    .div_list {
                        border:1px solid #eee;
                        margin-bottom:10px;
                        position:relative
                    }

                    .left-padding {
                        padding-left:10px
                    }

                    .input-width {
                        width:360px !important;
                    }
                </style>
            </head>
            <body style="position:relative">
                <input id="buddle_id" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/buddle_id"/>
                    </xsl:attribute>
                </input>
                <input id="is_exchange" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/is_exchange"/>
                    </xsl:attribute>
                </input>
                <input id="catalog_id" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/catalog_id"/>
                    </xsl:attribute>
                </input>
                <input id="catalog_type" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/type"/>
                    </xsl:attribute>
                </input>
                <div class="design">
                    <!--<div class="design-tit">-->
                    <!--<a>-->
                    <!--<img src="img/help1.png"/>-->
                    <!--</a>-->
                    <!--</div>-->
                    <div class="design-img">
                        <xsl:text disable-output-escaping="no"> </xsl:text>
                        <div id="myDiagramDiv" style="width:68%">
                            <xsl:text disable-output-escaping="no"> </xsl:text>
                        </div>
                    </div>

                    <div class="configure-fr-side" id="catalog_setting" style="height:60px;top:30px;z-index:99;max-width:33%">
                        <xsl:text> </xsl:text>
                    </div>
                    <xsl:if test="parameter.cludove/is_exchange != 'true'">
                        <div class="configure-fr-side"  id="data_metadata_setting" style="top:110px;height:60px;z-index:99;max-width:33%">
                            <xsl:text> </xsl:text>
                        </div>
                    </xsl:if>

                    <div class="configure-fr-side" style="max-height:80%;max-width:33%" id="data_setting">
                        <xsl:choose>
                            <xsl:when test="parameter.cludove/is_exchange != 'true'">
                                <xsl:attribute name="style">top:200px;z-index:99;</xsl:attribute>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:attribute name="style">top:110px;z-index:99;</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:text disable-output-escaping="no"> </xsl:text>
                    </div>
                </div>
                <div style="display:none;position:fixed;top:0;bottom:0;left:0;right:0;z-index:1660" id="now_remove">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </div>
                <div style="display:none;position:fixed;top:45%;left:45%;z-index:1880" id="ajax_loader_remove"><img src="diginter/base/zh-cn/img/iconloading.gif"/></div>
            </body>
            <script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/jquery.validationEngine-zh_CN.js">
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
            <script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/hinge.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="diginter/base/zh-cn/js/navigate.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/cookie.js" >
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/infoinge-luban.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/main.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/go.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/diginter_business.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/response_design.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <!--<script type="text/javascript">-->
            <!--$(document).ready(function() {var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});-->
            <!--</script>-->
            <script type="text/javascript">
                $(document).ready(function(){setupHttpHeader(); responseDesign.init();})
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
