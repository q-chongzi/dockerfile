<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div id="map" style="width:100%;height: 100%;position: fixed" class="mapDiagram">
            <div style="width:100%;  height: 100%;" id="myDiagramDiv" class="mapDiagram">

            </div>
        </div>
        <div id="network_view" style="display:none;width:100%;height:100%;position: fixed;">
            <div id="myDiagramDiv_network"></div>

        </div>

        <div class="menu">
            <div class="header">
                <div class="header-con">
                    <img src="img/head.bg.png" class="header-img"/>
                    <div class="logo">
                        <a href="">
                            <img src="img/logo.png" alt=""/>
                        </a>
                    </div>
                    <div data-intro='操作指南：在这里可以查看所有功能的功能介绍和详细说明等。' data-step='8' id="operation_guide" class="operation operation1">
                        <xsl:choose>
                            <xsl:when
                                    test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="oper">
                            <a target="blank">
                                <xsl:attribute name="href">
                                    <xsl:text>guide.html?account=</xsl:text>
                                    <xsl:value-of select="parameter.cludove/account.cludove"/>
                                    <xsl:text>&amp;template=</xsl:text>
                                    <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                    <xsl:text>&amp;content=business</xsl:text>
                                </xsl:attribute>
                                操作指南
                            </a>
                        </span>
                    </div>
                    <div class="operation operation2" style="left:310px">
                        <span class="admin">
                            <xsl:choose>
                                <xsl:when test="count(parameter.cludove/account.cludove) > 0">
                                    <xsl:value-of select="parameter.cludove/account.cludove"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text>请登录</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </span>
                        <div class="operation-nav operation-nav2 hidden" style="left:-100px">
                            <ul class="nav1" style="padding-bottom:10px;">
                                <li class="li1 li1-1">
                                    <a href="javascript:void(0)" onclick="onPasswordBox()">
                                        <i>
                                            <img src="img/modifyAccount.png"/>
                                        </i>
                                        修改密码
                                    </a>
                                </li>
                                <li class="li1 li1-2">
                                    <a href="javascript:void(0)" onclick="$.diginterLogout();">
                                        <i>
                                            <img src="img/accountOut.png"/>
                                        </i>
                                        退出登录
                                    </a>
                                </li>

                            </ul>
                        </div>
                    </div>
                    <div class="switch">
                        <div id="second_div">
                            <form data-intro='节点状态：这里显示集成节点、集群节点（自身节点）和总线节点的连接状态，蓝色表示正常连接，橘黄色表示无法连接，灰色表示没有节点。' data-step='9'>
                                <span style="cursor: pointer;"
                                      onMouseOver="javascript:nodeInformationShow(this,'integrated_node_view');"
                                      onMouseOut="nodeInformationHide(this,'integrated_node_view')">集成节点
                                    <input type="checkbox" class="switchP lcs_check" id="is_integration" name="check-1"
                                           value="4" disabled="disabled" autocomplete="off"/>
                                </span>
                                <span style="cursor: pointer;"
                                      onMouseOver="javascript:nodeInformationShow(this,'cluster_node_view');"
                                      onMouseOut="nodeInformationHide(this,'cluster_node_view')">集群节点
                                    <input type="checkbox" class="switchP lcs_check" id="is_colony" name="check-1"
                                           value="4" disabled="disabled" autocomplete="off"/>
                                </span>
                                <span style="cursor: pointer;"
                                      onMouseOver="javascript:nodeInformationShow(this,'bus_node_view');"
                                      onMouseOut="nodeInformationHide(this,'bus_node_view')">总线节点
                                    <input type="checkbox" class="switchP lcs_check" id="is_dsb" name="check-1"
                                           value="4" disabled="disabled" autocomplete="off"/>
                                </span>
                                <span class="is_integration" style="display: none"></span>
                                <span class="is_colony" style="display: none"></span>
                                <span class="is_dsb" style="display: none"></span>
                            </form>
                            <div id="integrated_node_view"
                                 style="position:absolute;display:none;color:#8b8b8b;background:#ffffff;border-radius: 2px;">
                            </div>
                            <div id="cluster_node_view"
                                 style="position:absolute;display:none;color:#8b8b8b;background:#ffffff;border-radius: 2px;">
                            </div>
                            <div id="bus_node_view"
                                 style="position:absolute;display:none;color:#8b8b8b;background:#ffffff;border-radius: 5px;">
                            </div>
                        </div>
                    </div>
                    <div id="activation_prompt" class="activation_prompt">
                        <!--<xsl:choose>-->
                            <!--<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'mac.address.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />-->
                            <!--<xsl:otherwise>-->
                                <!--<xsl:attribute name="style">display:none</xsl:attribute>-->
                            <!--</xsl:otherwise>-->
                        <!--</xsl:choose>-->
                        <!--<a href="details.html" target="_blank">-->
                            <xsl:text disable-output-escaping="no"> </xsl:text>
                        <!--</a>-->
                    </div>
                    <div id="activate_purchase" style="display:none" class="activation_prompt">
                        <a id="guide_width" data-intro="在这里进行激活或者购买！" data-step="14">
                            激活/购买
                        </a>
                    </div>

                    <div class="languages">
                        <select name="" disabled="disabled">
                            <option value="">中文(简体)</option>
                            <option value="">Deutsch</option>
                            <option value="">English</option>
                            <option value="">Russian</option>
                            <option value="">French</option>
                            <option value="">German</option>
                        </select>
                    </div>
                    <div id="serial_mac" class="serial_mac">
                        <!--<xsl:choose>-->
                            <!--<xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'mac.address.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />-->
                            <!--<xsl:otherwise>-->
                                <!--<xsl:attribute name="style">display:none</xsl:attribute>-->
                            <!--</xsl:otherwise>-->
                        <!--</xsl:choose>-->
                        <a target="_blank">
                            <xsl:text disable-output-escaping="no"> </xsl:text>
                        </a>
                    </div>
                    <div id="serial_mac_guide" style="display:none" class="serial_mac">
                        <a target="_blank" data-intro="版本信息：在这里可以查看实例序号、MAC地址和数字立交的到期时间，请在过期前去营运网站购买租期。" data-step="13">
                            &#160;&#160;实例序号：正在加载中...<br/><br/>&#160;MAC地址：正在加载中...<br/><br/>&#160;&#160;到期时间：正在加载中...
                        </a>
                    </div>
                    <input type="hidden" id="template_business"/>
                    <input type="hidden" id="business_guide_setting" value="false"/>
                    <div id="digital_interchange" class="itsm-nav" data-step='1' data-intro='数字立交的业务在这里开展'>
                        <xsl:choose>
                            <xsl:when
                                    test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.infoinge.monitor.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a href="javascript:void(0)" data-intro='作业监控：可以查看正在进行、即将开始、休眠作业和已经结束的作业。' data-step='2' class="big-link" data-reveal-id="myModal6"
                                   onclick="$('#first_monitor').trigger('click')" title="作业监控">
                                    <i class="nav1">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a href="javascript:void(0)" data-intro='作业监控：可以查看正在进行、即将开始、休眠作业和已经结束的作业。' data-step='2' class="big-link" title="作业监控">
                                    <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问作业监控页面！");</xsl:attribute>
                                    <i class="nav1">
                                    </i>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'statistics.report.rate.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a href="javascript:void(0)" class="big-link" data-reveal-id="myModal4"
                                   onclick="statistics.report();" data-intro='数据统计：包括迁移统计、同步统计和操作统计信息，每个统计包括时时、日报、月报和年报统计。' data-step='3' title="数据统计">
                                    <i class="nav2">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a href="javascript:void(0)" data-intro='数据统计：包括迁移统计、同步统计和操作统计信息，每个统计包括时时、日报、月报和年报统计。' data-step='3' class="big-link" title="数据统计">
                                    <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问数据统计页面！");</xsl:attribute>
                                    <i class="nav2">
                                    </i>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'journal.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a href="javascript:void(0)" data-intro='监控日志：包括异常日志、操作日志、迁移日志、同步日志、定时任务和登录日志。' data-step='4' class="big-link" data-reveal-id="myModal" onclick="CurentTime()"
                                   title="监控日志">
                                    <i class="nav3">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a href="javascript:void(0)" data-intro='监控日志：包括异常日志、操作日志、迁移日志、同步日志、定时任务和登录日志。' data-step='4' class="big-link" title="监控日志">
                                    <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问监控日志页面！");</xsl:attribute>
                                    <i class="nav3">
                                    </i>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and (catalog_id = 'catalog.search.view' or catalog_id = 'resource.decomposing.search.view' or catalog_id = 'job.infoinge.search.view' or catalog_id = 'response.exception.search.view')]) > 0 and count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.connection.navigate.view']) > 0) or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a style="cursor: pointer;" onclick="onResourceConnectionManage();" class="big-link"
                                   data-reveal-id="myModal1" data-hintPosition="middle-middle" data-hint='点击这里进入业务模型' data-intro='业务模型：包括业务模型（添加功能目录和目录数据等，进行迁移/同步、配置权限等）、数据库、集成节点、总线节点、作业管理、异常响应和应用上传' data-step='5' title="业务模型">
                                    <i class="nav4">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a style="cursor: pointer;" data-hintPosition="middle-middle" data-hint='点击这里进入业务模型' data-intro='业务模型：包括业务模型（添加功能目录和目录数据等，进行迁移/同步、配置权限等）、数据库、集成节点、总线节点、作业管理、异常响应和应用上传' data-step='5' class="big-link" title="业务模型">
                                    <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问业务模型页面！");</xsl:attribute>
                                    <i class="nav4">
                                    </i>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a href="javascript:void(0)" onclick="onProcessSearchMain('DB')" data-intro='基本设置：包括驱动处理、系统词表、界面风格、语言支持、清洗规则和验证规则。' data-step='6' class="big-link"
                                   data-reveal-id="myModal2" title="基本设置">
                                    <i class="nav5">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:choose>
                                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and (catalog_id = 'processor.search.view' or catalog_id = 'vocabulary.search.view' or catalog_id = 'style.search.view' or catalog_id = 'language.search.view' or catalog_id = 'cleanout.search.view' or catalog_id = 'verify.search.view')]) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                        <a href="javascript:void(0)" class="big-link"
                                           data-reveal-id="myModal2" data-intro='基本设置：包括驱动处理、系统词表、界面风格、语言支持、清洗规则和验证规则。' data-step='6' title="基本设置">
                                            <i class="nav5">
                                            </i>
                                        </a>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <a href="javascript:void(0)" class="big-link" title="基本设置">
                                            <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问基本设置页面！");</xsl:attribute>
                                            <i class="nav5">
                                            </i>
                                        </a>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:otherwise>
                        </xsl:choose>
                        <xsl:choose>
                            <xsl:when test="/content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <a href="javascript:void(0);" onclick="onAccountSetting('','');$('#jurisdiction_setting_main').hide();" data-intro='帐号管理：在这里你可以添加数字立交用户帐号并赋予一定权限。' data-step='7' data-reveal-id="myModal3" title="帐号管理">
                                    <i class="nav6">
                                    </i>
                                </a>
                            </xsl:when>
                            <xsl:otherwise>
                                <a href="javascript:void(0);" onclick="" title="帐号管理" data-intro='帐号管理：在这里你可以添加数字立交用户帐号并赋予一定权限。' data-step='7'>
                                    <xsl:attribute name="onclick">zdconfirm("提示", "您没有权限访问帐号管理页面！");</xsl:attribute>
                                    <i class="nav6">
                                    </i>
                                </a>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="top-hid">
                        <span style="margin-left:7.4%">
                            <img src="img/top-hid.png"/>
                        </span>
                    </div>
                </div>
                <div class="top-spr hidden">
                    <span>
                        <img src="img/top-spr.png"/>
                    </span>
                </div>
            </div>
            <div class="map">
                <div class="mp mp1">
                    <!--<div class="feng">-->
                        <!--<div class="tree">-->
                            <!--<div class="sang">-->
                            <!--</div>-->
                            <!--<div class="du_size">-->
                                <!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
                                <!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                </div>
                <div class="mp mp2">
                    <!--<div class="feng">-->
                        <!--<div class="tree">-->
                            <!--<div class="sang">-->
                            <!--</div>-->
                            <!--<div class="du_size">-->
                                <!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
                                <!--<p>提供XXXXXXX数据 提供XXXXXXX服务</p>-->
                            <!--</div>-->
                        <!--</div>-->
                    <!--</div>-->
                </div>
            </div>
            <div class="retrieve-con" id="password_modification" style="display:none">
                <div class="retrieve-con-tit">
                    <p style="float:right;cursor:pointer" onclick="$('#password_modification').hide()">X</p>
                    <p>修改密码</p>
                </div>
                <div class="retrieve-con-txt">
                    <h1 style="line-height:40px">请输入你需要修改的密码</h1>
                    <form id="validate_password_modification_setting" role="form" class="form-horizontal">
                        <div>
                            <label for="account_password_new" style="padding-left:14px">新密码：</label>
                            <input type="password" class="user validate[required,custom[onchinaese]]"
                                   id="account_password_new" maxlength="32" value="" placeholder="请输入密码"/>
                        </div>
                        <div>
                            <label for="account_password_modification">确认密码：</label>
                            <input type="password" class="user validate[required,custom[onchinaese]]" maxlength="32"
                                   id="account_password_modification" value="" placeholder="两次输入的密码必须一致"/>
                        </div>
                        <br/>
                        <input type="button" onclick="onPasswordModification()" value="确定" class="sub"/>
                    </form>
                </div>
            </div>
            <div class="retrieve-con" id="diginter_activation" style="display:none">

            </div>
            <div class="retrieve-con" id="system_error_hints" style="display:none">
                <div class="retrieve-con">
                    <div style="position: relative" class="retrieve-con-tit">
                        <!--<p style="float:right;cursor:pointer" onclick="$('#system_error_hints').hide()">&#215;</p>-->
                        <p class="activation-title">警告信息</p>
                    </div>
                    <div style="margin-top:50px;padding: 40px 10px 0;position: relative;" id="activation_con" class="retrieve-con-txt activation">
                        <h1><xsl:text disable-output-escaping="no"> </xsl:text></h1>
                        <div style="color:#000000;font-size: 25px;font-weight: bold;position: absolute;top:48px;left:80px">
                            系统遭到破环，请尝试自行修复，也可以联系管理员！
                        </div>
                    </div>
                </div>
            </div>
            <!--鼠标悬浮提示节点信息-->
            <div id="connection_node_mouse_view"
                 style="position:absolute;display:none;color:#8b8b8b;background:#ffffff;border-radius: 2px;font-size:12px">
            </div>
            <div class="menu-con1">
                <div class="menu-con1-con" id="index-con1">
                    <div class="menu-con1-tit">
                        异常报警
                    </div>
                    <div class="menu-con1-txt">
                        <div class="menu-con-box">
                            <ul id="exception_warning_view">
                                <!--<li class="txt-color1"><i>1</i><a href="">数据迁移(又称分级存储管理（简称带库）等</a><span>2017-11-01</span></li>-->
                            </ul>
                        </div>
                        <a class="help" target="_blank" title="查看操作指南">
                            <xsl:attribute name="href">
                                <xsl:text>guide.html?account=</xsl:text>
                                <xsl:value-of select="parameter.cludove/account.cludove"/>
                                <xsl:text>&amp;template=</xsl:text>
                                <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                <xsl:text>&amp;content=alert</xsl:text>
                            </xsl:attribute>
                        </a>
                    </div>
                    <div class="left-hid">
                        <span>
                            <img src="img/left-hid.png"/>
                        </span>
                    </div>
                </div>
                <div class="left-spr hidden">
                    <span>
                        <img src="img/left-spr.png"/>
                    </span>
                </div>
            </div>
            <!--异常报警显示-->
            <div id="monitoring_center_right" class="hidden"></div>
            <!--网络视图-->
            <xsl:choose>
                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                    <div data-intro='拓扑节点：点击该按钮后可查看节点和数据库连接状态，绿色表示连接成功的数据库，橘黄色表示连接失败的节点/数据库，点击蓝色的节点可查看API信息。' data-step='12' id="network_view_display" class="network_view">
                        <xsl:attribute name="onclick">
                            $('.map').hide();$('.header-con .itsm-nav').hide();monitor.onTopologyData();
                        </xsl:attribute>
                    </div>
                </xsl:when>
                <xsl:otherwise/>
            </xsl:choose>
            <div style="display: none" id="city_network_view_display" class="city_network_view"
                 onclick="$('.map').show();$('.header-con .itsm-nav').show();$('#show_contact').hide();$('#city_network_view_display').hide();$('#network_view_display').show();$('#network_view').hide();">
            </div>
            <div class="menu-con2">
                <div class="menu-con2-con" id="index-con2">
                    <div class="menu-con1-tit" data-intro='数据异常：当数据库表的数据不符合验证规则时，会在这里显示数据异常信息（一般情况是迁移/同步时不符合验证规则时提示）。' data-step='11'>
                        数据异常
                    </div>
                    <div class="menu-con1-txt">
                        <div class="menu-con-box">
                            <ul id="diginter_exception">
                                <xsl:text disable-output-escaping="no"> </xsl:text>
                                <!--<li>
                                    <i>1</i>
                                    <a href="">数据迁移(又称分级存储管理（简称带库）等</a>
                                    <span>2017-11-01</span>
                                </li>-->
                            </ul>
                        </div>
                        <a class="help" target="_blank" title="查看操作指南">
                            <xsl:attribute name="href">
                                <xsl:text>guide.html?account=</xsl:text>
                                <xsl:value-of select="parameter.cludove/account.cludove"/>
                                <xsl:text>&amp;template=</xsl:text>
                                <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                <xsl:text>&amp;content=alert</xsl:text>
                            </xsl:attribute>
                        </a>
                    </div>
                    <div class="right-hid">
                        <span>
                            <img src="img/right-hid.png"/>
                        </span>
                    </div>
                </div>
                <div class="right-spr hidden">
                    <span>
                        <img src="img/right-spr.png"/>
                    </span>
                </div>
            </div>
            <div id="exception_page" class="hidden">
                <xsl:text disable-output-escaping="no"> </xsl:text>
            </div>
            <div class="menu-con3">
                <div class="menu-con3-con" id="index-con3">
                    <div class="menu-con1-tit" data-intro='服务总线：当被注册为总线节点时，可在这里同意/拒绝总线请求；当发起总线请求被拒绝时，可在这里重新发起请求。' data-step='10'>
                        服务总线
                    </div>
                    <div class="menu-con1-txt serve_dsb" id="serve_dsb">
                        <div class="menu-con-box">
                            <div class="serve_dsb_content" style="height: 110%;width: 110%;overflow: scroll;">
                                <ul id="diginter_serve">
                                    <!--<li>
                                        <i>1</i>
                                        <a href="">数据迁移(又称分级存储管理（简称带库）等</a>
                                        <span>2017-11-01</span>
                                    </li>-->
                                </ul>
                                <ul id="diginter_dsb">
                                </ul>
                                <ul id="diginter_migr_sync">
                                    <!--<li>-->
                                        <!--<i>1</i>-->
                                        <!--<a href="">正在进行迁移/同步，已经迁移/同步XXX条数据</a>-->
                                        <!--<span class='remove-bottom' onclick="$(this).parent('li').remove()">删除</span>-->
                                    <!--</li>-->
                                </ul>
                            </div>
                        </div>
                        <a class="help" target="_blank" title="查看操作指南">
                            <xsl:attribute name="href">
                                <xsl:text>guide.html?account=</xsl:text>
                                <xsl:value-of select="parameter.cludove/account.cludove"/>
                                <xsl:text>&amp;template=</xsl:text>
                                <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                <xsl:text>&amp;content=alert</xsl:text>
                            </xsl:attribute>
                        </a>
                    </div>
                    <div class="left-hid2">
                        <span>
                            <img src="img/left-hid.png"/>
                        </span>
                    </div>
                </div>
                <div class="left-spr2 hidden">
                    <span>
                        <img src="img/left-spr.png"/>
                    </span>
                </div>
            </div>
            <div id="serve_page" class="hidden"></div>
            <div class=" menu-con4">
                <div class="menu-con4-con" id="index-con4">
                    <div class="menu-con1-tit">
                        系统监视
                    </div>
                    <div class="menu-con1-txt">
                        <div class="menu-con-box">
                            <div id="resource_monitor_connect" style="width:480px;height:350px;display:none;"></div>
                            <div id="resource_monitor_thread" style="width:480px;height:290px;"></div>
                        </div>
                        <a class="help" target="_blank" title="查看操作指南">
                            <xsl:attribute name="href">
                                <xsl:text>guide.html?account=</xsl:text>
                                <xsl:value-of select="parameter.cludove/account.cludove"/>
                                <xsl:text>&amp;template=</xsl:text>
                                <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                <xsl:text>&amp;content=alert</xsl:text>
                            </xsl:attribute>
                        </a>
                    </div>
                    <div class="right-hid2">
                        <span>
                            <img src="img/right-hid.png"/>
                        </span>
                    </div>
                </div>
                <div class="right-spr2 hidden">
                    <span>
                        <img src="img/right-spr.png"/>
                    </span>
                </div>
            </div>
            <!--数据统计-->
            <div class="configure clearfix reveal-modal" id="myModal4">
                <div class="configure-fl fl">
                    <div class="configure-fl-about">
                        <div class="configure-fl-about-tit">
                            统计类型
                        </div>
                        <input type="hidden" id="statistics_navigate_type" value="1"/>
                        <input type="hidden" id="report_time" value="0"/>
                        <ul class="configure-nav1">
                            <li>
                                <a href="javascript:void(0)" style="border: 1px solid #EFF0F0"
                                   onclick="$(this).next().slideToggle()">操作统计
                                </a>
                                <ul>
                                    <li>
                                        <a href="javascript:void(0)" class="active"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(0);$('#statistics_navigate_type').val(1);statistics.report();">
                                            时时统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(1);$('#statistics_navigate_type').val(1);statistics.report();">
                                            日报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(2);$('#statistics_navigate_type').val(1);statistics.report();">
                                            月报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(3);$('#statistics_navigate_type').val(1);statistics.report();">
                                            年报统计
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" style="border: 1px solid #EFF0F0"
                                   onclick="$(this).next().slideToggle()">同步统计
                                </a>
                                <ul class="hidden">
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(0);$('#statistics_navigate_type').val(4);statistics.report();">
                                            时时统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(1);$('#statistics_navigate_type').val(4);statistics.report();">
                                            日报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(2);$('#statistics_navigate_type').val(4);statistics.report();">
                                            月报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(3);$('#statistics_navigate_type').val(4);statistics.report();">
                                            年报统计
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="javascript:void(0)" style="border: 1px solid #EFF0F0"
                                   onclick="$(this).next().slideToggle()">迁移统计
                                </a>
                                <ul class="hidden">
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(0);$('#statistics_navigate_type').val(3);statistics.report();">
                                            时时统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(1);$('#statistics_navigate_type').val(3);statistics.report();">
                                            日报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(2);$('#statistics_navigate_type').val(3);statistics.report();">
                                            月报统计
                                        </a>
                                    </li>
                                    <li>
                                        <a href="javascript:void(0)"
                                           onclick="$('#myModal4 ul ul a').removeClass('active');$(this).addClass('active');$('#report_time').val(3);$('#statistics_navigate_type').val(3);statistics.report();">
                                            年报统计
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="configure-fr fl">
                    <div class="design-tit">
                        <a target="_blank" class="to_guide" data-step='8' title="查看操作指南">
                            <xsl:attribute name="href">
                                <xsl:text>guide.html?account=</xsl:text>
                                <xsl:value-of select="parameter.cludove/account.cludove"/>
                                <xsl:text>&amp;template=</xsl:text>
                                <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                <xsl:text>&amp;content=statistics</xsl:text>
                            </xsl:attribute>
                        </a>
                    </div>
                    <div class="top clearfix">
                        <div class="top1 fl" style="width:60%;">
                            <div id="monitoring_network_main" style="width: 100%;height: 580px"></div>
                        </div>
                        <div class="top1 fr" style="width:38%">
                            <div id="statistics_buddle_name" style="width: 500px;height: 300px"></div>
                            <div id="statistics_catalog_name" style="width: 500px;height: 300px"></div>
                        </div>
                    </div>
                </div>
                <a class="close-reveal-modal">&#215;</a>
            </div>
            <!--数据统计结束-->

            <!--库表标注-->
            <div class="configure clearfix reveal-modal" style="z-index: 500" id="myModa3">
                <div class="configure-fl fl" style="width: 300px">
                    <div class="configure-fl-about" id="resource_navigation">
                    </div>
                </div>
                <div class="configure-fr fl" style="width: 50%;height:100%" id="resource_db_setting_main">
                </div>
                <div class="configure-fr fl" style="width: 20%">
                    <div class="configure-fr-side configure-fr-two" style="display: none;top: 23px"
                         id="resource_db_setting_right"></div>
                </div>
                <a class="close-reveal-modal2" onclick="hideDbEdit()">&#215;</a>
            </div>
            <!--库表标注结束-->
            <!--百度地图-->
            <div class="configure clearfix reveal-modal" style="z-index: 500" id="myModal7">
                <!--<div class="configure-fl fl" style="width: 300px">-->
                <!--<div class="configure-fl-about" id="resource_navigation">-->
                <!--</div>-->
                <!--</div>-->
                <!--<div class="configure-fr fl" style="width: 50%" id="resource_db_setting_main">-->
                <!--</div>-->
                <!--<div class="configure-fr fl" style="width: 20%">-->
                <!--<div class="configure-fr-side configure-fr-two" style="display: none;top: 23px" id="resource_db_setting_right"></div>-->
                <!--</div>-->
                <div style="height:100%" id="resource_connection_location"></div>
                <a class="close-reveal-modal2" onclick="hideMapEdit()">&#215;</a>
            </div>
            <!--百度地图结束-->
            <!--监控日志-->
            <div class="configure clearfix reveal-modal" id="myModal">
                <div class="configure-fl fl">
                    <div class="configure-fl-about">
                        <div class="configure-fl-about-tit">
                            监控日志
                        </div>
                        <ul class="configure-nav1">
                            <li>
                                <a href="javascript:void(0)" id="first_journal_search" class="active"
                                   onclick="$('#journal_navigate_type').val(-1);$('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    异常日志
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#journal_navigate_type').val(1); $('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    操作日志
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#journal_navigate_type').val(3);$('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    迁移日志
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#journal_navigate_type').val(4);$('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    同步日志
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#journal_navigate_type').val(2);$('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    定时任务
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#journal_navigate_type').val(0);$('#myModal .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#journal_page_number').val(0);$('#journal_record_number').val(15);onJournalSearch();">
                                    登录日志
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <a target="_blank" class="to_guide" title="查看操作指南">
                    <xsl:attribute name="href">
                        <xsl:text>guide.html?account=</xsl:text>
                        <xsl:value-of select="parameter.cludove/account.cludove"/>
                        <xsl:text>&amp;template=</xsl:text>
                        <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                        <xsl:text>&amp;content=journal</xsl:text>
                    </xsl:attribute>
                </a>
                <div class="configure-fr fl">
                    <div class="">
                        <input style="display: inline-block;width: 200px;height: 32px;padding: 0 23px;border-radius: 6px;border: 1px solid #b7b7b7;" type="text" id="journal_date" class="laydate-icon validate[required] future[now]"
                               onclick="onJournalDate()">
                        </input>
                        <input type="hidden" id="journal_navigate_type" value="-1"/>
                    </div>
                    <div id="monitoring_log_main"
                         style="height:97%; overflow:scroll; overflow-x:hidden; position:relative">

                    </div>
                </div>
                <a class="close-reveal-modal">&#215;</a>
            </div>
            <!--监控日志结束-->
            <!--作业监控-->
            <div class="configure clearfix reveal-modal" id="myModal6">
                <div class="configure-fl fl">
                    <div class="configure-fl-about">
                        <div class="configure-fl-about-tit">
                            作业监控
                        </div>
                        <ul class="configure-nav1">
                            <li>
                                <a href="javascript:void(0)" id="first_monitor"
                                   onclick="$('#myModal6 .configure-nav1>li a').removeClass('active');$(this).addClass('active'); $('#monitoring_job_type').val('execution');onInfoingeJobMonitor();">
                                    正在进行
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick=" $('#myModal6 .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#monitoring_job_type').val('soon');onInfoingeJobMonitor();">
                                    即将开始
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#myModal6 .configure-nav1>li a').removeClass('active');$(this).addClass('active');$('#monitoring_job_type').val('dormancy'); onInfoingeJobMonitor();">
                                    休眠作业
                                </a>
                            </li>
                            <li>
                                <a href="javascript:void(0)"
                                   onclick="$('#myModal6 .configure-nav1>li a').removeClass('active');$(this).addClass('active'); $('#monitoring_job_type').val('end');onInfoingeJobMonitor();">
                                    已经结束
                                </a>
                            </li>
                        </ul>
                        <input type="hidden" id="monitoring_job_type" value="execution"/>
                    </div>
                </div>
                <a target="_blank" class="to_guide" title="查看操作指南">
                    <xsl:attribute name="href">
                        <xsl:text>guide.html?account=</xsl:text>
                        <xsl:value-of select="parameter.cludove/account.cludove"/>
                        <xsl:text>&amp;template=</xsl:text>
                        <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                        <xsl:text>&amp;content=jobMonitoring</xsl:text>
                    </xsl:attribute>
                </a>
                <div class="configure-fr fl" style="height: 96%;margin-top: 3.5%">
                    <div id="monitoring_job_main" style="height:100%; overflow:scroll; overflow-x:hidden">

                    </div>
                </div>
                <a class="close-reveal-modal">&#215;</a>
            </div>
            <!--作业监控结束-->
            <!--业务模型-->
            <div class="configure-fr configure-fr2 service reveal-modal clearfix" id="myModal1">
                <div style="height:100%">
                    <!--<div style="float:left;padding:25px;">-->
                        <!--<div style="height:45px;width:100px">业务模型</div>-->
                    <!--</div>-->
                    <div class="service-tit2">
                        <ul>
                            <li>
                                <a href="javascript:void(0);" class="service8"  title="业务模型">
                                </a>
                                <span id="service_nav">业务模型</span>
                                <input type="hidden" id="resource_type" value=""/>
                                <input type="hidden" id="resource_hinge_type" value=""/>
                            </li>
                            <li>
                                <a href="javascript:void(0);" id="service_nav_add" class="service1" title="新增业务模型">
                                </a>
                            </li>
                            <li style="display:none">
                                <a href="javascript:void(0);" id="removeSelectRecordBusiness" class="service2"
                                   title="批量删除">

                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="service-tit">
                        <ul style="display:inline-block;">
                            <!--<li>-->
                            <!--<a href="javascript:void(0);" class="service1" title="新增业务模型">-->
                            <!--</a>-->
                            <!--</li>-->

                            <li class="tit-active">
                                <div class="prohibit_grey" title="业务模型没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'catalog.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service8" title="业务模型">

                                </a>
                            </li>
                            <li>
                                <div class="prohibit_grey" title="数据库没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service3" title="数据库">

                                </a>
                            </li>
                            <li>
                                <div class="prohibit_grey" title="集成节点没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service4" title="集成节点">

                                </a>
                            </li>
                            <xsl:if test="instance.type = 'colony'">
                                <li>
                                    <div class="prohibit_grey" title="集群节点没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="service5" title="集群节点">

                                    </a>
                                </li>
                            </xsl:if>
                            <li>
                                <div class="prohibit_grey" title="总线节点没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'resource.decomposing.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service6" title="总线节点">

                                </a>
                            </li>
                            <li>
                                <div class="prohibit_grey" title="作业管理没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.infoinge.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service10" title="作业管理">

                                </a>
                            </li>
                            <li>
                                <div class="prohibit_grey" title="异常响应没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'response.exception.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service14" title="异常响应" onclick="onExceptionResponseSearch('')">

                                </a>
                            </li>
                            <li>
                                <div class="prohibit_grey" title="应用上传没有访问权限">
                                    <xsl:choose>
                                        <xsl:when test="/content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise/>
                                    </xsl:choose>
                                </div>
                                <a href="javascript:void(0);" class="service12" title="应用上传">
                                </a>
                            </li>
                            <!--<li>
                                <a href="javascript:void(0);" class="service9" title="应用下载">
                                    <xsl:attribute name="href">/s?buddle.cludove=diginter&amp;catalog.cludove=buddle.download.process&amp;buddle_id=exchange&amp;style_name=base&amp;language_name=zh-cn&amp;buddle_file=exchange.buddle</xsl:attribute>
                                </a>
                            </li>-->
                        </ul>
                        <xsl:choose>
                            <xsl:when test="/content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'">
                                <div class="upload" style="display:none">
                                    选择文件
                                    <input type="file" id="buddle_file_input" name="buddle_file"
                                           style="opacity: 0; cursor: pointer;position:absolute;top:0;left:0;">
                                        <xsl:attribute name="onchange">uploadBuddleFile('base', 'zh-cn', 'buddle_file_input',
                                            '应用文件','exchange')
                                        </xsl:attribute>
                                    </input>
                                </div>
                            </xsl:when>
                            <xsl:otherwise/>
                        </xsl:choose>
                        <select id="resource_connection_navigate" style="display:none" onchange="onCatalogSearch()">
                            <option value="">请选择资源连接</option>
                        </select>
                    </div>
                    <a target="_blank" data-hint='点击查看业务模型的操作指南' data-hintPosition="middle-middle" class="to_guide" title="查看操作指南" id="toGuideBusiness">
                        <xsl:attribute name="href">
                            <xsl:text>guide.html?account=</xsl:text>
                            <xsl:value-of select="parameter.cludove/account.cludove"/>
                            <xsl:text>&amp;template=</xsl:text>
                            <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                            <xsl:text>&amp;content=</xsl:text>
                        </xsl:attribute>
                    </a>
                    <div id="resource_setting_main" style="position:absolute;width:98%; height:84%; overflow:auto">

                    </div>
                </div>
                <div class="configure-fr-side configure-fr-one hidden" style="z-index:999" id="resource_setting_right">
                </div>
                <a class="close-reveal-modal" onclick="hideMapEdit()">&#215;</a>
            </div>

            <!--业务模型结束 -->
            <!--基本设置-->
            <div class="configure clearfix reveal-modal " id="myModal2">
                <div class="configure-fl fl">
                    <div class="configure-fl-about">
                        <div class="configure-fl-about-tit">
                            基本设置
                        </div>
                        <ul style="border-bottom: 2px solid #EEEEEE" id="diginter_basic_setup" class="configure-nav1">
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_drive_processing" class="nav1-lis">
                                        <a href="javascript:void(0);">驱动处理</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="驱动处理没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">驱动处理</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'vocabulary.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_system_word_list" class="nav1-lis">
                                        <a href="javascript:void(0);">系统词表</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="系统词表没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">系统词表</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'style.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_interface_style" class="nav1-lis">
                                        <a href="javascript:void(0);">界面风格</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="界面风格没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">界面风格</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'language.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_language_support" class="nav1-lis">
                                        <a href="javascript:void(0);">语言支持</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="语言支持没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">语言支持</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'cleanout.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_cleaning_rules" class="nav1-lis">
                                        <a href="javascript:void(0);">清洗规则</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="清洗规则没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">清洗规则</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                            <xsl:choose>
                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'verify.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                    <li id="diginter_validation_rules" class="nav1-lis">
                                        <a href="javascript:void(0);">验证规则</a>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise>
                                    <li class="nav1-lis">
                                        <div class="prohibit_left" title="验证规则没有访问权限">
                                            <xsl:text disable-output-escaping="no"> </xsl:text>
                                        </div>
                                        <a href="javascript:void(0);">验证规则</a>
                                    </li>
                                </xsl:otherwise>
                            </xsl:choose>
                        </ul>
                    </div>
                </div>
                <div class="configure-fr fl" style="margin-top: -1%">
                    <div style="height:100%">
                        <div class="basics-tit2">
                            <ul>
                                <li style="display:none">
                                    <a href="javascript:void(0);" id="basics_nav" class="basics1" title="驱动处理">

                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" id="basics_nav_add" class="basics10" title="新增驱动处理">
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" class="basics9" id="removeSelectRecordBasic"
                                       title="批量删除">
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div class="basics-tit">
                            <ul>
                                <li>
                                    <div class="prohibit_grey" title="驱动处理没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'processor.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics1 basics1_active" title="驱动处理">

                                    </a>
                                </li>
                                <li>
                                    <div class="prohibit_grey" title="系统词表没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'vocabulary.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics2" title="系统词表">

                                    </a>
                                </li>
                                <li>
                                    <div class="prohibit_grey" title="界面风格没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'style.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics5" title="界面风格">

                                    </a>
                                </li>
                                <li>
                                    <div class="prohibit_grey" title="语言支持没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'language.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics6" title="语言支持">

                                    </a>
                                </li>
                                <li>
                                    <div class="prohibit_grey" title="清洗规则没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'cleanout.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics7" title="清洗规则">

                                    </a>
                                </li>
                                <li>
                                    <div class="prohibit_grey" title="验证规则没有访问权限">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'verify.search.view']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')">
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:when>
                                            <xsl:otherwise/>
                                        </xsl:choose>
                                    </div>
                                    <a href="javascript:void(0);" class="basics8" title="验证规则">

                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div id="basics_setting_main" style="height:94%; overflow:scroll; overflow-x:hidden"></div>
                    </div>
                    <div class="configure-fr-side configure-fr-two hidden" id="basics_setting" style="display: none;">
                        <!--<div class="configure-fr-tit1">
                            <ul>
                                <li><a href="">预览</a></li>
                                <li><a href="">上传样式单</a></li>
                                <li><a href="">手工交换</a></li>
                                <li><a href="">功能设计</a></li>
                            </ul>
                        </div>
                        <form action="" class="configure-form">
                            <p>目录标志：<input type="text" value="" placeholder="请输入" class="input-1"/></p>
                            <p>目录名称：<input type="text" value="" placeholder="请输入" class="input-1"/></p>
                            <p>目录类型：
                                <select name="">
                                    <option value=""></option>
                                    <option value="">功能设计</option>
                                </select>
                            </p>
                            <p>响应类型：
                                <select name="">
                                    <option value=""></option>
                                    <option value="">功能设计</option>
                                </select>
                            </p>
                            <p class="rad">判断权限：
                                <input type="radio" name="radio1" id="yes" value="" checked="checked"/>
                                <label for="yes"> 是 </label>
                                <input type="radio" name="radio1" id="no" value="" />
                                <label for="no"> 否 </label>
                            </p>
                            <p class="rad">入口目录：
                                <input type="radio" name="radio2" id="yes1" value="" checked="checked"/>
                                <label for="yes1"> 是 </label>
                                <input type="radio" name="radio2" id="no1" value="" />
                                <label for="no1"> 否 </label>
                            </p>
                            <p  class="rad">是否暂停：
                                <input type="radio" name="radio3" id="yes2" value="" checked="checked"/>
                                <label for="yes2"> 是 </label>
                                <input type="radio" name="radio3" id="no2" value="" />
                                <label for="no2"> 否 </label>
                            </p>
                            <p  class="rad">循环取值：
                                <input type="radio" name="radio4" id="yes3" value="" checked="checked"/>
                                <label for="yes3"> 是 </label>
                                <input type="radio" name="radio4" id="no3" value="" />
                                <label for="no3"> 否 </label>
                            </p>
                            <p class="texta">
                                取值条件：
                                <textarea name="" rows="" cols="" placeholder="请输入200字以内"  maxlength="200"></textarea>
                            </p>
                            <p class="texta">
                                功能描述：
                                <textarea name="" rows="" cols="" placeholder="请输入200字以内" maxlength="200"></textarea>
                            </p>
                            <p  class="rad">定时运行：
                                <input type="radio" name="radio5" id="yes4" value="" checked="checked"/>
                                <label for="yes4"> 是 </label>
                                <input type="radio" name="radio5" id="no4" value="" />
                                <label for="no4"> 否 </label></p>
                            <p>定时年份：<input type="text" value=""  class="input-1"  placeholder="保留空每年，多个用半角逗号分开" /></p>
                            <div class="configure-fr-side-bottom">
                                <input type="submit" value="提交" class="sub"/>
                                <input type="reset" value="清除" class="res"/>
                                <input type="button" value="取消" class="but"/>
                            </div>
                        </form>-->
                    </div>
                    <a class="close-reveal-modal">&#215;</a>
                </div>
                <a target="_blank" class="to_guide" title="查看操作指南" id="toGuide">
                    <xsl:attribute name="href">
                        <xsl:text>guide.html?account=</xsl:text>
                        <xsl:value-of select="parameter.cludove/account.cludove"/>
                        <xsl:text>&amp;template=</xsl:text>
                        <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                        <xsl:text>&amp;content=</xsl:text>
                    </xsl:attribute>
                </a>
                <!--基本设置结束-->
            </div>
            <!--基本设置结束-->
            <!--账号管理-->
            <div class="configure clearfix reveal-modal " id="myModal3">
                <div class="configure-fl fl">
                    <div class="configure-fl-about">
                        <div class="configure-fl-about-tit">
                            帐号管理
                        </div>
                        <ul class="configure-nav1">
                            <li style="border: 2px solid #EFF0F0" onclick="onAccountManage('');" class="nav1-lis">
                                <a href="javascript:void(0);">帐号信息</a>
                                <!--<ul class="configure-nav2  hidden">-->
                                <!--<li class="nav1-lis2"><a href="">AWS免费套餐</a></li>-->
                                <!--<li class="nav1-lis2"><a href="">AWS云产品</a></li>-->
                                <!--<li class="nav1-lis2"><a href="">云计算类型</a></li>-->
                                <!--</ul>-->
                            </li>
                        </ul>
                        <ul id="account_setting_list" style="display: none" class="configure-nav1">

                        </ul>
                    </div>
                    <div class="configure-fl-link">
                        <!--<div class="configure-fl-link-tit">-->
                        <!--相关链接-->
                        <!--</div>-->
                        <!--<ul>-->
                        <!--<li><a href="">开始使用AWS</a></li>-->
                        <!--<li><a href="">AWS Marketplace 软件</a></li>-->
                        <!--<li><a href="">网络研讨会计划</a></li>-->
                        <!--</ul>-->
                        <a id="account_nav_add_new" href="javascript:void(0);" class="add">+ 创建帐号</a>
                    </div>
                </div>
                <div class="configure-fr fl">
                    <div style="height:100%">
                        <div style="margin-top: -27px" class="basics-tit2">
                            <ul>
                                <!--<li>-->
                                    <!--<a href="javascript:void(0);" id="account_nav" class="account1" title="帐号信息">-->

                                    <!--</a>-->
                                    <!--&lt;!&ndash;<input type="hidden" id="resource_type" value="">&ndash;&gt;-->
                                    <!--&lt;!&ndash;<input type="hidden" id="resource_hinge_type" value="">&ndash;&gt;-->
                                <!--</li>-->
                                <li>
                                    <a href="javascript:void(0);" id="account_nav_add" class="basics10" title="新增帐号">
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:void(0);" id="removeSelectRecordAccount" class="basics9"
                                       title="批量删除">
                                    </a>
                                </li>
                            </ul>
                            <a target="_blank" class="to_guide" title="查看操作指南" id="toGuideAccount">
                                <xsl:attribute name="href">
                                    <xsl:text>guide.html?account=</xsl:text>
                                    <xsl:value-of select="parameter.cludove/account.cludove"/>
                                    <xsl:text>&amp;template=</xsl:text>
                                    <xsl:value-of select="parameter.cludove/universalLocalPath.cludove"/>
                                    <xsl:text>&amp;content=</xsl:text>
                                </xsl:attribute>
                            </a>
                        </div>
                        <div id="jurisdiction_setting_main" class="configure1-fr-tit">
                        </div>
                        <div id="account_setting_main"
                             style="width:98%;height:94%; overflow:scroll; overflow-x:hidden"></div>
                    </div>
                    <div class="configure-fr-side configure-fr-two hidden" id="account_setting"
                         style="display: none;"></div>
                    <a class="close-reveal-modal">&#215;</a>
                </div>
                <!--账户管理结束-->
            </div>
            <!--API查询登录-->
            <div id="api_login" style="display:none;"></div>

            <div style="display: none">
                <select id="console_hinge_select" onclick="onConsoleHingeChange()">
                </select>
                <input id="console_hinge_host" type="hidden"/>
            </div>
            <div class="retrieve-con" id="show_contact"
                 style="display:none;height:300px;width:500px;margin-left:-255px;margin-top:-195px;">

            </div>

            <!--信息提示框-->
            <div class="retrieve-con" id="hint_information" style="display:none">
                <div class="retrieve-con-tit">
                    <p style="float:right;cursor:pointer" onclick="$('#hint_information').hide()">&#215;</p>
                    <!--<p>修改密码</p>-->
                </div>
                <!--<div class="retrieve-con-txt">-->
                <!--<h1 style="line-height:40px">请输入你需要修改的密码</h1>-->
                <!--<form id="validate_password_modification_setting" role="form" class="form-horizontal">-->
                <!--<div>-->
                <!--<label for="account_password_new" style="padding-left:14px" >新密码：</label>-->
                <!--<input type="password" class="user validate[required,custom[onchinaese]]" id="account_password_new" maxlength="16" value="" placeholder="请输入密码" />-->
                <!--</div>-->
                <!--<div>-->
                <!--<label for="account_password_modification">确认密码：</label>-->
                <!--<input type="password" class="user validate[required,custom[onchinaese]]" maxlength="16" id="account_password_modification"  value="" placeholder="两次输入的密码必须一致" />-->
                <!--</div>-->
                <!--<br/>-->
                <!--<input type="button" onclick="onPasswordModification()" value="确定" class="sub"/>-->
                <!--</form>-->
                <!--</div>-->
            </div>
            <!--信息提示框结束-->
        </div>

        <input type="hidden" id="instance_type" value=""/>
        <input type="hidden" id="link_data_array" value=""/>
        <div style="display:none;position:fixed;top:0;bottom:0;left:0;right:0;z-index:166" id="now_remove"></div>
        <div style="display:none;position:fixed;top:45%;left:45%;z-index:188" id="ajax_loader_remove">
            <img src="img/iconloading.gif"/>
        </div>
    </xsl:template>
</xsl:stylesheet>
