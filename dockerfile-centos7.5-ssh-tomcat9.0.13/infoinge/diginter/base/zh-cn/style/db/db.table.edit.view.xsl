<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
                <link rel="icon" href="diginter/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
                <title> - 依赖关系 - </title>
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
                <link rel="stylesheet" type="text/css" href="diginter/base/zh-cn/css/validationEngine.jquery.css" media="all">
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
                    @media only screen and (max-device-width: 1500px) {
                        #myDiagramDiv { width: 780px!important }
                        #db_data_setting { width: 350px!important }
                        #data_connection_id,#data_resource_name { width: 250px!important }
                    }
                </style>
            </head>
            <body style="position:relative">
                <input id="s_resource_name" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/s_resource_name"/>
                    </xsl:attribute>
                </input>
                <input id="s_identifier" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/s_identifier"/>
                    </xsl:attribute>
                </input>
                <div id="main_content">
                    <div id="myDiagramDiv" style="width:70%">
                        <xsl:text disable-output-escaping="no"> </xsl:text>
                    </div>
                </div>
                <div id="db_data_setting" class="configure-fr-side" style="right:40px;width:400px;z-index:99;max-width:40%">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </div>
                <div style="display:none;position:fixed;top:0;bottom:0;left:0;right:0;z-index:166" id="now_remove"></div>
                <div style="display:none;position:fixed;top:45%;left:45%;z-index:188" id="ajax_loader_remove"><img src="diginter/base/zh-cn/img/iconloading.gif"/></div>
            </body>
            <script type="text/javascript" src="diginter/base/zh-cn/js/jquery.js">
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
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/main.js">
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
            <script type="text/javascript" src="diginter/base/zh-cn/js/main.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/go.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/diginter_business.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="diginter/base/zh-cn/js/diginter_configuration.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <!--<script type="text/javascript">-->
            <!--$(document).ready(function() {var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});-->
            <!--</script>-->
            <script type="text/javascript">
            $(document).ready(function(){setupHttpHeader(); db.init();})
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
