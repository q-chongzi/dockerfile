<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置目录数据？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img class="fl" src="img/dataS.jpg" style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            目录类型为服务功能的功能目录一般用于开发软件和设置权限等使用。配置形成的上下文需要用xsl样式单文件（以目录标识为名，xsl为文件类型，即“目录标识.xsl”）根据业务需要转换成功能目录的响应内容，然后返回给前端或者外部系统，并将功能目录样式单上传到“应用标识/base/zh-cn/style/第一级操作对象”目录中，功能目录样式单通常会include一个common.xsl文件。所以，第一次建立功能目录时需将其他平行目录中的common.xsl文件拷贝到该目录，然后将common.xsl中除了catalog之外的xsl模板全部删除。
                        </p>
                        <p style="text-indent:2em">
                            在目录数据配置模块，根据业务需要选择数据类型，不同数据类型的目录数据配置也不一样，具体如下：
                        </p>
                        <p style="text-indent:2em">
                            当数据类型为数据库时，还需要录入的参数为：资源定义就是选择数据库资源定义；数据库表就是该资源定义下的数据库表；
                            操作名字就是该数据库操作名字根据业务需要选择查询、保存、修改、删除、上传或下载其中一个；权限判断用于设置该目录数据是否需要判断权限才可操作；处理顺序用于设置数字立交对所有目录数据的执行顺序。
                        </p>
                        <p style="text-indent:2em">
                            当数据类型为功能数据时，资源定义就是集群节点；处理类名就是选择一个在基本设置中预先设置好的功能数据类。
                            功能数据类是继承了com.cludove.dirigible.hold.DataProcessor类并实现了com.cludove.dirigible.hold.CatalogProcessor接口的java程序，当为目录选择功能数据类以后，该处理顺序中的逻辑就交给所选择的java程序，上下文中的参数部分会自动以参数传递给功能数据类的transform方法，也可以用数据参数样式单生成为其传递明确的参数。
                        </p>
                        <p style="text-indent:2em">
                            当数据类型为外部数据时，资源定义就是集群节点；处理类名就是选择一个在基本设置中预先设置好的外部数据类。外部数据类和功能数据类类似，它需要外部协议等来连接数字立交，实现相应功能。
                        </p>
                        <!--<p style="text-indent:2em">-->
                            <!--当数据类型为讯枢时，资源定义就是集群节点/集成节点/总线节点；应用标识选择该节点下的应用名称；功能目录会显示该应用下有权限使用的，有数据元数据的功能目录（如果资源定义选择的是集群节点，那么会显示该应用下的所有的有数据元数据的功能目录）。-->
                        <!--</p>-->
                    </div>
                </div>
                <div class="configure-fl2-top-con clearfix" style="margin-top:30px">
                    <img class="fl" src="img/business-permission.png" style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            当数据类型为讯枢时，分两种情况：当资源定义是自身节点时，应用标识为数据融合；功能目录会显示该应用下的所有的符合条件的功能目录，包括所有的迅枢交换为是且有主目录数据（有输入/输出的数据元数据）的服务功能，也包括所有的迅枢交换为否的但有输入和输出数据元数据的服务功能。
                        </p>
                        <p style="text-indent:2em">
                            当资源定义为集成节点/总线节点时；应用标识为该节点下的应用名称；功能目录会显示该应用下的所有的有权限调用的符合上述条件的功能目录，权限指该节点的账号和密码正确（节点的账号和密码在集成节点/总线节点的资源连接中添加，点击前往<a onclick="integration.loadInfo()" title="点击前往集成节点操作指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer">集成节点</a>），且拥有访问业务模型的权限（权限至少包括功能目录、目录数据、数据元数据、资源定义、资源连接，点击前往<a onclick="permission.loadInfo()" title="点击前往权限设置操作指南" style="color:#1E90FF;text-decoration:underline;cursor: pointer">账号管理-权限设置</a>页面，否则只会显示所有的符合上述条件但不需要判断权限的服务功能。在业务模型-功能目录可修改是否需要判断权限，如左图：
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置数据引用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div style="color:#7f7f7f;margin-left:1%">
                        <p style="text-indent:2em">
                            针对清洗规则无法处理的复杂的情况，需要数据引用对某个数据库表字段写处理类来处理。
                        </p>
                        <p style="text-indent:2em">
                            在功能目录下，当目录数据的数据类型为数据库，操作类型为保存或修改时，都可在该目录数据下添加数据引用。点击目录数据，在其下方会弹出数据引用界面，点击左边的
                            <i class="add"></i>
                            即可进入数据引用设置界面。其中，数据名字显示的是该数据库表下的所有字段；表达式可以对数据进行四则运算；数据加工就是要选择一个数据加工类来生成选择字段的值。如下图：
                        </p>
                    </div>
                    <img src="img/quoteS.png" style="width:95%;margin-top:10px;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何添加功能数据/外部数据？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em;">1. 添加功能数据类/外部数据类</h2>
                                <p style="text-indent:2em;">
                                    写处理类（包括输入和输出两种类型的字段）来实现功能数据类/外部数据类，然后在基本设置-驱动处理页面，添加驱动处理类，并把数据元数据设置为是，驱动标识要和自己写的功能数据类/外部数据类类名一致。
                                </p>
                                <img src="img/Class-add.png"
                                     style="display:block;width:95%;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">2. 查看数据元数据</h2>
                                <p style="text-indent:2em">
                                    点击<i class="metadata"></i>按钮查看数据元数据，如下图：
                                </p>
                                <img src="img/Class-metadata.png"
                                     style="display:block;width:95%;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何添加迅枢？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em;">添加迅枢的功能目录有两种方法</h2>
                                <img class="fl" src="img/infoinge-exchange.png"
                                     style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                                <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                                    <p style="text-indent:2em;">
                                        方法一：在业务模型-业务模型下添加功能目录，选择目录类型为服务功能，迅枢交换选择为是；添加成功后，对它添加的第一条目录数据，它的数据类型可以选择数据库/功能数据/外部数据，但是数据类型为数据库时只能选择查询/保存（在功能设计中，分别做同步/迁移/查询和保存使用）；添加的查询的目录数据，会让该功能目录自动生成输出的数据元数据，而保存的目录数据，会让该功能目录自动生成输入的数据元数据；添加的其它的目录数据对该功能目录的数据元数据不会有任何影响。
                                    </p>
                                    <p style="text-indent:2em;margin-top:10px">
                                        方法二：在业务模型-业务模型下添加功能目录，选择目录类型为服务功能，迅枢交换选择为否；添加成功后，点击添加数据元数据，添加输入和输出两种类型的数据元数据后才能看到响应设计，该服务功能才能被选择为迅枢类型的目录数据（这种方法需要开发人员自己写处理类来实现）
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何使用服务功能？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:400px;">
                        <li style="height:300px;">
                            <div class="info">
                                <h2 style="text-indent:2em">1. 对功能目录设置权限</h2>
                                <img class="fl" src="img/serveS.png"
                                     style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                                <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                                    <p style="text-indent:2em">
                                        当在业务模型下-功能目录新增数据的时候，可以在功能目录/目录数据选择判断权限为是，即代表着该功能目录/目录数据需要权限才能进行操作。
                                    </p>
                                    <p style="text-indent:2em">
                                        要为某条目录数据添加权限，需要添加目录类型为服务功能的功能目录（只有它的第一条目录数据是用于判断权限的），该目录数据的名字必须和需要判断权限的目录数据的名称一致！
                                        如果该目录数据需要判断多个权限，就需要建立多个服务功能的功能目录，再为该目录数据添加其它的判断权限的目录数据（<a
                                            onclick="permission.loadInfo()" title="点击前往权限设置操作指南"
                                            style="color:#1E90FF;text-decoration:underline;cursor: pointer">
                                        详情点击前往权限设置操作指南</a>）。如左图：
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li style="height:300px;">
                            <div class="info">
                                <h2 style="text-indent:2em">2. 对功能目录设置定时执行</h2>
                                <img class="fl" src="img/serveS2.png"
                                     style="width:26%;margin:0 auto;box-shadow:0 0 3px #333;"/>
                                <div class="fl" style="width:73%;color:#7f7f7f;margin-left:1%">
                                    <p style="text-indent:2em">
                                        新增或修改功能目录时，可输入频度类型等数据，设置定时任务。
                                    </p>
                                    <p style="text-indent:2em">
                                        设置定时运行为否，该定时任务就会停止运行。频度类型只能越改越小，如从时改为秒，不能从秒改为时。
                                    </p>
                                    <p style="text-indent:2em">
                                        在左图，意味着该功能目录会从2018-01-27 00:00:00这天开始，在每天的9点到18点，以5秒的间隔时间定时执行一次。
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
