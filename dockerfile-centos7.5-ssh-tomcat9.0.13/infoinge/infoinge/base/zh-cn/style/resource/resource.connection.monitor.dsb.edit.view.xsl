<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <html>
            <head>
                <title> - 总线注册资源连接 - </title>
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
            <body style="background:#fff;">
                <div class="main_content">
                    <form>
                        <div class="item">
                            <div class="div_txt">
                                <div class="list">
                                    <xsl:choose>
                                        <xsl:when test="parameter.cludove/status = 'refuse'">
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                                            <xsl:text>[</xsl:text>
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                                            <xsl:text>]的</xsl:text>
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                                            <xsl:text>注册服务节点被拒绝</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:if test="parameter.cludove/status = 'fail'">
                                                <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                                                <xsl:text>[</xsl:text>
                                                <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                                                <xsl:text>]的</xsl:text>
                                                <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                                                <xsl:text>注册服务节点失败,原因是</xsl:text>
                                                <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/reg_reason"/>
                                            </xsl:if>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </div>
                            <div class="div_txt">
                                <div class="list">
                                    <span class="span_tit">连接名字：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/name"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">连接标识：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/identifier"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">连接类型：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:choose>
                                                <xsl:when test="parameter.cludove/type = 'Hinge'">
                                                    <xsl:text disable-output-escaping="yes">Infoinge</xsl:text>
                                                </xsl:when>
                                                <xsl:when test="parameter.cludove/type = 'DB'">
                                                    <xsl:text disable-output-escaping="yes">DB</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping="yes">未知连接</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">注册状态：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:choose>
                                                <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'regist'">
                                                    <xsl:text disable-output-escaping="yes">注册</xsl:text>
                                                </xsl:when>
                                                <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'work'">
                                                    <xsl:text disable-output-escaping="yes">工作</xsl:text>
                                                </xsl:when>
                                                <xsl:when test="cludove.crest.spruce.resource_connection/record.crest/reg_status = 'refuse'">
                                                    <xsl:text disable-output-escaping="yes">拒绝</xsl:text>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:text disable-output-escaping="yes">未注册</xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">服务地址：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/host"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                <span class="span_tit">服务端口：</span>
                                <div class="text">
                                <div class="div_input">
                                <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/port"/>
                                <xsl:text> </xsl:text>
                                </div>
                                </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit">连接模板：</span>
                                    <div class="text">
                                        <div class="div_input">
                                            <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
                                        </div>
                                    </div>
                                </div>
                                <div class="list">
                                    <span class="span_tit"><xsl:text> </xsl:text></span>
                                    <div class="text">
                                        <div class="div_btn">
                                            <a href="javascript:void(0)">
                                                <xsl:attribute name="onclick">processResourceMonitor('<xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/code"/>','')</xsl:attribute>
                                                <xsl:text>重新注册</xsl:text>
                                            </a>
                                            <a href="javascript:void(0)" onclick="window.close();">取消</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </body>
            <script type="text/javascript" src="infoinge/base/zh-cn/js/jquery.min.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script language="javascript" type="text/javascript" src="infoinge/base/zh-cn/js/ajaxfileupload.js">
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
            <script type="text/javascript" src="infoinge/base/zh-cn/js/configuration.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <script type="text/javascript" src="infoinge/base/zh-cn/js/monitor.js">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </script>
            <!--<script type="text/javascript">-->
            <!--$(document).ready(function() {var base64 = new Base64(); $('#return_content').text(base64.decode($('#return_content').text())); var ue = UE.getEditor('return_content');});-->
            <!--</script>-->
            <script type="text/javascript">
                $(document).ready(function(){setupHttpHeader();})
            </script>
        </html>
    </xsl:template>
</xsl:stylesheet>
