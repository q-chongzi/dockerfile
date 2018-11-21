<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
                <link rel="icon" href="infoinge/base/zh-cn/img/xunshu.png" type="image/x-icon"/>
                <title> - 功能设计 - </title>
                <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
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
                <link rel="stylesheet" type="text/css" href="infoinge/base/zh-cn/css/validationEngine.jquery.css" media="all">
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
                <input id="catalog_type" type="hidden">
                    <xsl:attribute name="value">
                        <xsl:value-of select="parameter.cludove/type"/>
                    </xsl:attribute>
                </input>
                <div id="main_content">
                    <div id="myDiagramDiv" style="width:1200px;height:1000px">
                        <xsl:text disable-output-escaping="no"> </xsl:text>
                    </div>
                </div>
                <div>
                    <div style="position:absolute;right:0;top:0;width:350px" class="right_side1 row">
                        <div class="item">
                            <div class="div_txt">
                                <div class="list">
                                    <span class="span_tit">提示：</span>
                                    <div class="text">
                                        <div style="font-weight:bold;text-decoration:none">
                                            数据映射连线删除需选中连线后，点击键盘←（回退）完成操作
                                        </div>
                                    </div>
                                </div>
                                <div class="list" id="primary_prompt" style="display:none">
                                    <span class="span_tit">警告：</span>
                                    <div class="text">
                                        <div style="font-weight:bold;text-decoration:none;color:red">
                                            功能为同步时主键只能映射到数据长度大于或等于主键自身的数据长度
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">映射提示：</span>
                                    <div class="text">
                                        <div style="font-weight:bold;text-decoration:none">
                                            请尽量选择类型相同的字段之间建立映射关系,映射时按下鼠标滑轮可上下移动
                                        </div>
                                    </div>
                                </div>
                                <div class="list"  id="prompt_content" style="display:none">
                                    <span class="span_tit">错误提示：</span>
                                    <div class="text">
                                        <div style="font-weight:bold;text-decoration:none" id="prompt_content_show"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="data_setting">
                    <xsl:text disable-output-escaping="no"> </xsl:text>
                </div>
            </body>
            <script type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.validationEngine.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/jquery.validationEngine-zh_CN.js">
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
            <script type="text/javascript" src="infoinge/base/zh-cn/js/go.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="infoinge/base/zh-cn/js/model.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <!--<script type="text/javascript">-->
            <!--$(document).ready(function() {var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});-->
            <!--</script>-->
            <script type="text/javascript">
                $(document).ready(function(){setupHttpHeader(); model.init();})
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
