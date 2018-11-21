<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
                <link rel="icon" href="diginter/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
                <title> - 编辑功能参数说明 - </title>
                <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </meta>
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/global.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/style.css" media="all">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </link>
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/public.css" media="all">
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
            </head>
            <body style="position:relative">
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
                <div  style="height:100%">
                    <div class="service-tit2">
                        <ul>
                            <li style="width:60px;">
                                <a href="javascript:void(0);" class="service11" title="功能参数">

                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" onclick="showCatalogParameterSetting('')" class="service1" title="新增功能返回">
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0);" id="removeSelectRecordParamemter" class="service2" title="批量删除">

                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="configure-fr" id="parameter_setting_main" style="width:100%; height:84%; overflow:auto">

                    </div>
                </div>
                <div class="configure-fr-side configure-fr-one hidden" style="z-index:999" id="parameter_setting_right">
                </div>
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
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/hinge.js">
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
            <script type="text/javascript" src="diginter/base/zh-cn/js/diginter_business.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/diginter_configuration.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/main.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <!--<script type="text/javascript">-->
            <!--$(document).ready(function() {var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});-->
            <!--</script>-->
            <script type="text/javascript">
                <!--$(document).ready(function(){model.init();})-->
                $(document).ready(function(){setupHttpHeader(); onCatalogInfoapiSearch();})
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
