<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何建立业务模型？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/businessS.png" style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            业务模型下可以配置多条功能目录用于完成类似于子系统规模的需求，这些功能都以功能目录的方式配置，应用标识加目录标识就可以唯一确定一个功能入口。
                            点击首页导航栏 <i class="busi_bar"></i> 按钮即可进入业务模型界面。
                        </p>
                        <p style="text-indent:2em">
                            点击界面左上角的 <i class="add"></i> 进入功能目录新增界面，在新增区域录入功能目录的各个参数，即可完成对功能目录的新增操作。其中：目录标识和目录名称唯一，目录标识添加后不可修改。目录类型分服务功能、数据迁移、数据同步三种，服务功能用于项目的开发，数据迁移即用于迁移数据，数据同步用于同步数据。
                            当该功能目录的判断权限为是时，意味着别的节点需要有权限才能使用该功能目录。是否日志是指在调用该功能时是否需要产生日志。定时运行到结束时间字段是把该功能目录设置为定时运行的定时任务。如左图。
                        </p>
                        <p style="text-indent:2em">
                            功能目录配置好后，点击功能目录数据可查看该功能目录下的目录数据，点击左边的 <i class="add"></i> 即可进入目录数据的新增界面。每个功能目录最好配置多条目录数据，以便数字立交在接受到目录标识后，可以根据目录数据完成特定业务处理。目录数据设置模块较为复杂，具体如何使用请参考业务模型下的服务功能设置和迁移/同步配置两个模块。
                        </p>
                        <p style="color:#FC6767;text-indent:2em">
                            注意：数据类型为数据库，操作名字为迁移/同步的目录数据提交后无法修改，无法删除！对于已经运行成功了的迁移/同步的功能目录，功能目录和目录数据都无法修改，无法删除！只有当把保存的目录数据删除了，才能删除该功能目录！
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何建立功能返回和功能参数？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div style="color:#7f7f7f;">
                        <p style="text-indent:2em">
                            功能返回、功能参数和数据库元数据是为功能目录提供辅助作用。
                        </p>
                        <p style="text-indent:2em">
                            功能返回、功能参数用于提供功能目录的作用的说明，以对文本在线编辑的方式完成。对功能目录点击功能返回 <i class="return"></i> 按钮进入功能返回新增界面，输入字符完成新增操作。如下图：
                        </p>
                        <img src="img/business1.png" style="width:95%;margin-top:10px;margin-bottom:5px;box-shadow:0 0 3px #333;"/>
                        <p style="text-indent:2em">
                            对功能目录点击功能参数 <i class="param"></i> 按钮进入功能参数新增界面，输入字符完成新增操作。
                            对功能目录添加数据类型为数据库的目录数据时，功能参数会自动添加该目录数据的数据库字段；
                            对功能目录添加数据类型为功能数据/外部数据/讯枢的目录数据时，功能参数会自动添加该目录数据的输出类型的数据元数据字段；
                            当该功能目录添加数据元数据后，功能参数表的所有数据（除了手动添加的数据）会全部清空，并只显示输入类型的数据元数据；
                            当数据元数据新增、修改或删除时，功能参数会随之而变化。<br/>
                            <p style="text-indent:2em"><span style="color:#FC6767;">注意：只有目录类型为服务功能的功能目录才有功能参数；对功能目录先添加数据元数据，再添加目录数据时，目录数据不会显示在功能参数里面。</span>功能参数页面如下图：</p>
                        </p>
                        <img src="img/parameter.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                        <p style="text-indent:2em">
                            功能返回用于描述调用功能后返回内容的格式，查看API时，可看到功能目录下的功能参数和功能返回信息。<span style="color:#FC6767">注意：API页面的功能参数，只会显示是否参数为是的数据，需要该节点的管理人员去设置 。</span>如下图：
                        </p>
                        <img src="img/api_param.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何建立数据库元数据？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="clearfix" style="color:#7f7f7f;">
                        <img class="fl" src="img/metadata.png" style="width:26%;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                        <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                            <p style="text-indent:2em">
                                数据库元数据界面可新增字段，类似于输入数据库字段和长度等信息，该功能用于添加数据类型为讯枢的目录数据。对功能目录点击数据库元数据 <i class="metadata"></i> 按钮进入数据库元数据界面，点击 <i class="add"></i> 按钮输入相应参数，即可完成新增操作。
                            </p>
                            <p style="text-indent:2em">
                                其中，字段名称为数据库元数据添加字段名称，必须为大写字母；字段类型只能为字符串（String）类型，不可修改；字段长度为1-999999999的正整数；主键字段为数据库元数据的主键名称。
                            </p>
                            <p style="text-indent:2em">
                                添加第一条数据库元数据时，输入的字段名称即为主键字段的值，可修改主键字段的值；添加第二条及以上的数据库元数据时，主键字段的值就不会跟着主键字段修改了；修改任意一条数据库元数据的主键字段的值，其它的数据库元数据都会自动修改为该主键字段。
                            </p>
                            <p style="text-indent:2em">
                                <span style="color:#FC6767;">注意：只有目录类型为服务功能的功能目录才有功能参数。</span>
                                如左图：
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用业务模型？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 通过API查看业务模型</h2>
                                <p style="text-indent:2em">
                                    API查询分为两种情况，一种是查看本节点的业务模型情况，一种是查看其他节点的业务模型情况。其中，本节点API的查询直接点击该页面导航栏的“接口手册”即可进行查看。而其他节点的API查询需要在首页，点击底部 <img src="img/icon14-1.png" style="height:25px;width:25px;"/> 进入拓扑节点界面，点击总线节点 <img src="img/icon101.png" style="height:25px;width:25px;"/>
                                    或集成节点 <img src="img/icon102.png" style="height:25px;width:25px;"/> 即可跳转至点API查询界面，可查看该节点的功能目录信息。
                                    在API查询界面，我们可以查看功能目录的一些功能参数、功能返回、是否设有权限等情况。
                                </p>
                                <img src="img/colonyApi.png" style="width:95%;margin-top:10px;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li>
                            <div class="info clearfix">
                                <h2 style="text-indent:2em;display:block">2. 总线同步时调用</h2>
                                <img class="fl" src="img/dsbS4.png" style="width:26%;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                                <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                                    <p style="text-indent:2em;">
                                        在业务模型-总线节点添加总线节点后，待对方同意后，可把想同步的功能目录的发布总线改为是，该功能目录即会开始同步到总线节点（<a onclick="dsb.loadInfo()" title="点击前往总线节点指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往总线节点指南</a>）。待该功能目录或目录数据同步成功后，同步原因会显示为：同步成功。
                                        <span style="color:#FC6767;">注意：每条功能目录只有第一条目录数据会同步到总线！</span>如左图：
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="info clearfix">
                                <h2 style="text-indent:2em;display:block">3. 预览功能和手工交换功能</h2>
                                <div style="height:360px;">
                                    <img class="fl" src="img/dsbS5.png" style="width:26%;margin-bottom:10px;box-shadow:0 0 3px #333;"/>
                                    <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                                        <p style="text-indent:2em;">
                                            当功能目录的目录类型为数据迁移/数据同步时，才可使用预览功能和手工交换功能。必须把是否日志置为是，才能正常使用这两个功能。如左图：
                                        </p>
                                        <p style="text-indent:2em;">
                                            对功能目录把功能设计完成后（<a onclick="migrate.loadInfo()" title="点击前往如何配置功能设计" style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往如何配置功能设计</a>），可点击预览功能查看迁移第一条数据后的结果（如果页面加载失败，请刷新页面重新查看结果）。
                                        </p>
                                    </div>
                                </div>
                                <p style="text-indent:2em;display:block;">
                                    对功能目录把功能设计完成后，可点击手工交换按钮，显示预览和执行按钮。在输入框输入需要进行手工交换的主键值，点击预览功能，执行预览功能；点击执行按钮，执行迁移操作。注意：手工交换只能用于数据补漏，如果用手工交换执行了数据迁移，再用定时任务执行数据迁移/同步，会报错！预览页面如下图：
                                </p>
                                <img src="img/dsbS6.png" style="width:95%;margin-top:10px;margin-bottom:30px;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
