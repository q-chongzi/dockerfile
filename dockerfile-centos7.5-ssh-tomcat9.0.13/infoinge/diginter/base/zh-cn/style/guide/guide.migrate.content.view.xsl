<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>迁移同步功能说明</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        迁移和同步指的是对数据库/功能数据的数据库元数据/外部数据的数据库元数据/讯枢的数据库元数据的数据进行迁移/同步。该功能适用于所有的数据库，主流数据库：mysql、oracle、sql
                        sever和postgresql。
                        该功能也适用于数据库到功能数据的数据库元数据等，它们4个可以进行任意迁移/同步。
                    </p>
                    <p style="text-indent:2em">
                        区别：迁移指的是一个表的所有数据都到另一个表；同步指的是一个表的所有数据都到目标表，同时，如果该表的数据有修改，还需要把修改后的数据同步到目标表。
                    </p>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>如何配置功能设计？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        点击
                        <i class="data_map"></i>
                        进入功能设计界面，点击新增目录数据
                        <i class="add"></i>
                        按钮添加目录数据。下面的例子以数据类型：数据库，操作方式：同步为例。迁移比同步简单，其它3种数据类型是类似的操作方式，比数据库操作简单。
                    </p>
                    <ul class="configure-fl2-top-con clearfix" style="height:3470px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em;">1. 添加数据类型为数据库的目录数据</h2>
                                <div class="clearfix">
                                    <img class="fl" src="img/syncS.png" style="width:26%;box-shadow:0 0 3px #333;"/>
                                    <div class="fl" style="width:71%;color:#7f7f7f;margin:0 1%;">
                                        <p style="text-indent:2em;">
                                            添加数据类型为数据库时（<a onclick="database.loadInfo()" title="点击前往数据库"
                                                           style="color:#1E90FF;text-decoration:underline;cursor: pointer">
                                            点击前往数据库</a>
                                            ）：资源定义选择要进行迁移/同步的数据库；数据库表选择要进行迁移/同步的表；操作名字选择JDBC通用迁移/同步、日志Mysql迁移/同步、日志Oracle迁移/同步或日志Sqlserver迁移/同步。第一种所有的数据库都可以使用，可以多个数据库到一个数据库进行迁移/同步；mysql迁移/同步只有mysql数据库能使用，另外两种是一样的，而且只能一对一迁移/同步。JDBC通用同步有同步时间和标志字段两种方式来标志一条数据的值是否有改变，这两个只能二选一，另外3种同步方式不需要选择同步时间和标志字段；迁移不用选择迁移时间和标志字段。
                                        </p>
                                        <p style="text-indent:2em;">
                                            同步时间和标志字段的区别。同步时间：当一条数据进行迁移后，如果该条数据的值有改变，需要把该时间改得比当前时间大，也要比以前的时间值大，数据库才会把修改后的数据同步到目标表去；如果同步时间为DATETIME，数据库的某条数据的时间为：2018-01-17
                                            11:00:00，当这条数据的值发生改变时，要让这条数据进行同步，就需要把时间字段的值改得比当前时间大，也比原来的时间大，可以改为2020-01-17
                                            11:00:00。同步字段：当一条数据进行迁移后，如果该条数据的值有改变，需要把该同步字段的值改为输入的标志改变的值，数据库才会把修改后的数据同步到目标表去；如果标志字段为COLUMN10，标志改变为1，标志复位为0。所以同步表的所有数据的COLUMN10的初始值都最好为0，当有数据改变时，我们需要手动修改该数据的标志字段为1。然后系统会自动完成同步操作，待系统把改变后的数据同步过去后，同步字段的值会自动修改为标志复位的值：0，以此标志该数据已经完成了同步操作。如左图：
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">2. 添加其它数据类型的目录数据</h2>
                                <div class="clearfix">
                                    <img class="fl" src="img/func.png" style="width:26%;box-shadow:0 0 3px #333;"/>
                                    <div class="fl" style="width:71%;color:#7f7f7f;margin:0 1%;">
                                        <p style="text-indent:2em">
                                            添加数据类型为功能数据时，资源定义就是本机节点；处理类名就是选择一个在基本设置-功能数据类有数据元数据的类名。
                                        </p>
                                        <p style="text-indent:2em">
                                            添加数据类型为外部数据时，资源定义就是本机节点；处理类名就是选择一个在基本设置-外部数据类有数据元数据的类名。
                                        </p>
                                        <p style="text-indent:2em">
                                            添加数据类型为讯枢时，资源定义就是本机节点/集成节点/总线节点；应用标识选择该节点下的应用名称；功能目录会显示该应用下有权限使用的，有数据元数据的功能目录（如果资源定义选择的是本机节点，那么会显示该应用下的所有的有数据元数据的功能目录）。选择数据类型为迅枢的目录数据时，迅枢交换为是的功能目录，第一条目录数据为查询时，只能做同步/迁移/查询的目录数据用；迅枢交换为是的功能目录，第一条目录数据为保存时，只能做同步/迁移/查询的目录数据用。迅枢的操作方式和数据库通用迁移/同步类似，如果是同步，也需要选择同步时间/标志字段。如左图：
                                        </p>
                                        <p style="text-indent:2em">
                                            这3种方式的迁移/同步方式和数据类型为数据库的是类似的。只是功能数据和外部数据的操作名字为程序通用迁移/同步，讯枢的操作名字为迅枢通用迁移/同步。添加的数据类型为功能数据/外部数据/讯枢的目录数据，只会取它们的输出的数据元数据字段。
                                        </p>
                                        <p style="color:#FC6767;text-indent:2em">
                                            注意：当数据类型为功能数据/外部数据/讯枢时，同步/查询表显示的是所有的输出字段，保存表显示的是所有的输入字段。数据类型为功能数据/外部数据的迁移/同步方式等，需要用处理类来实现！当删除/修改主数据的数据类型、资源定义、数据库表（或处理类名或功能目录）时，所有的映射关系和非主数据的目录数据都会被删除；如果该目录数据不是主数据，那么只会删除该目录数据和输出的数据元数据表的映射关系。
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">3. 添加保存的目录数据</h2>
                                <p style="text-indent:2em">
                                    添加好迁移/同步的目录数据后，才可以添加保存的目录数据的信息。资源定义选择目标数据库的数据库，数据库表选择目标数据库，把操作名字选择为保存即可。添加的数据类型为功能数据/外部数据/讯枢的目录数据，只会取它们的输入的数据元数据字段。
                                </p>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info clearfix">
                                <h2 style="text-indent:2em;margin-top:5px;">4. 添加查询的目录数据</h2>
                                <div class="clearfix">
                                    <img class="fl" src="img/sync1.png" style="width:26%;box-shadow:0 0 3px #333;"/>
                                    <div class="fl" style="width:71%;color:#7f7f7f;margin:0 1%;">
                                        <p style="text-indent:2em">
                                            添加好迁移/同步的目录数据后，才可以添加查询的目录数据的信息。查询的目录数据需要输入关联字段和本表字段的值。关联字段就是同步数据库表的字段；本表字段就是选择的查询数据库表的字段，这两个字段最好选择为数据库表的主键。
                                            在进行迁移/同步时，两个表的每条数据的这两个字段的值都必须是不一样的，且对应数据的值是一样的。
                                            例如，A表（同步表）和B表（查询表）要迁移/同步数据到C表（保存表），本表字段和查询字段都为COLUMN1。
                                            对于要进行迁移/同步的数据，A表的数据的COLUMN1主键值为1，那么对应的B表的COLUMN1的值也必须为1，A表和B表的主键值为1的数据才会迁移/同步数据到C表，以此类推。添加的数据类型为功能数据/外部数据/讯枢的目录数据，只会取它们的输出的数据元数据字段。如左图：
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">5. 建立映射关系</h2>
                                <p style="text-indent:2em">
                                    通过拖拽的方式，可以为两个目录数据建立映射关系，只能是一对一的关系，可以按回退键←删除错误的映射关系。
                                    为两个字段建立了映射关系，即代表着，左边的该表的该字段的所有数据都会被迁移/同步到右边的表的该字段下。
                                </p>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">6. 添加前置符号等</h2>
                                <p style="text-indent:2em">
                                    点击连线，可以为每个字段的每条数据添加前置符号和后置符号，顾名思义，在进行迁移数据时，会对每条数据的该字段的值都加上前置符号和后置符号，再进行迁移。在下图，如果表6的COLUMN2的值为3，加上前置符号和后置符号值为132。同时，对前置符号和后置符号有长度限制，根据进行迁移/同步表的字段长度而定。如下图，表6、7、8的3个字段COLUMN2的长度和3个前置符号的长度和3个后置符号的长度必须小于或等于表5的COLUMN2的长度，如下图的3个字段的前置符号+后置符号的长度之和不得超过50（230-60*3）。
                                </p>
                                <p style="text-indent:2em">
                                    两个表之间（同步表和查询表或查询表和查询表）需要设置运算符号，如果不设置，会默认为字符串拼接。5种运算符号的区别如下：
                                </p>
                                <p style="text-indent:4em">
                                    字符串拼接：把字符串按照处理顺序拼接在一起为最后的保存表得到的数据（在下图，不考虑表8，表6的字段2的值为1，加上前置符号和后置符号值为112，表7的字段2的值为5，那么表5的字段2的值为1125）；
                                </p>
                                <p style="text-indent:4em">
                                    字符串截取：前提条件为处理顺序更小的表的字段值必须包含处理顺序更大的字段值（在下图，不考虑表8，表6的字段2的值为33，加上前置符号和后置符号值为1332，表7的字段值为33，那么表5的字段2截取后的值为12；如果表7的字段2的值不被包含在表6的字段2，则截取后的值为表6的字段2的值！）；
                                </p>
                                <p style="text-indent:4em">
                                    数字加法：对数字进行加法操作，对字符串进行字符串拼接操作；
                                </p>
                                <p style="text-indent:4em">
                                    数字减法：对数字进行减法操作，对字符串进行字符串截取操作；
                                </p>
                                <p style="text-indent:4em">
                                    数字乘法：对数字进行乘法操作，对字符串进行字符串拼接操作，对字符串和数字进行字符串*数字操作（如字符串和数字5，最后结果是5个字符串拼接）；
                                </p>
                                <p style="text-indent:4em">
                                    数字除法：对数字进行除法操作，对字符串进行字符串截取操作。
                                </p>
                                <img src="img/suanf.png"
                                     style="display:block;width:95%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">7. 添加验证规则和清洗规则</h2>
                                <p style="text-indent:2em">
                                    通过拖拽的方式，可以为两个目录数据建立映射关系，只能是一对一的关系，可以按回退键←删除错误的映射关系。对所有的目录数据建立好映射关系后，点击连线，点击
                                    <img src="img/icon-validate.png"/>
                                    添加验证规则
                                    （<a onclick="verify.loadInfo()" title="点击查看验证规则"
                                        style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击查看验证规则</a>
                                    ）和清洗规则
                                    （<a onclick="cleanout.loadInfo()" title="点击查看清洗规则"
                                        style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击查看清洗规则</a>）。
                                </p>
                                <p style="color:#FC6767;text-indent:2em">
                                    注意：在同一个功能设计页面，只要有日志mysql/日志sqlseve/日志oracle迁移/同步、功能数据、外部数据、迅枢，就不能添加验证规则和清洗规则！即只有JDBC通用迁移/同步可以添加验证规则和清洗规则！
                                </p>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">8. 调整某个字段的处理顺序</h2>
                                <p style="text-indent:2em">
                                    点击连线，有两个及以上的字段到一个字段时，就会出现调整处理顺序
                                    <img src="img/icon-down.png"/>
                                    按钮，点击该按钮，调整左边3个表的3个字段到右边的保存表的该字段的顺序。
                                    在下图，如果不调整处理顺序，将会是EE4、EE6和EE7表的COLUMN3字段的所有数据按顺序到EE5表的COLUMN3字段，但是如下图调整处理顺序后，现在将是EE7、EE6和EE4表的COLUMN3字段的所有数据按顺序到EE5表的COLUMN3字段，就是倒序处理数据了。
                                </p>
                                <p style="color:#FC6767;text-indent:2em">
                                    注意：调整处理顺序后，运算符号恢复为字符串拼接
                                </p>
                                <img src="img/sync2.png"
                                     style="display:block;width:95%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>如何启动迁移/同步？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:200px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 定时任务启动</h2>
                                <p style="text-indent:2em">
                                    在功能目录下，把定时运行改为是，输入频度类型和间隔时间并保存后，数字立交即会执行定时任务，定时检测并执行迁移/同步操作。
                                    （<a onclick="serve.loadInfo()" title="点击前往如何使用服务功能"
                                        style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往如何使用服务功能</a>
                                    ）
                                </p>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 作业管理启动</h2>
                                <p style="text-indent:2em">
                                    点击
                                    <i class="job_check"></i>
                                    进入作业功能页面，选择刚才新增的功能目录信息并保存。 把该作业的是否执行改为是，该作业就会在设置的时间段内以一定频度定时执行了。
                                    也可以点击手工执行
                                    <i class="job_run"></i>
                                    按钮进行手动执行，该作业只会执行一次，会显示出运行的时间和结果。
                                    用户也可以在监控中心-作业监控查看所有的是否执行为是的作业的当前状态。
                                    （<a onclick="jobs.loadInfo()" title="点击前往如何设置作业"
                                        style="color:#1E90FF;text-decoration:underline;cursor: pointer">点击前往如何设置作业</a>）
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
