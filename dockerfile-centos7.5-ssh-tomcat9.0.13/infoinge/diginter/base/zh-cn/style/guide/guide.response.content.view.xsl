<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>如何配置响应设计？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <p style="text-indent:2em">
                        用户通过配置响应设计后，即可用对目录类型为服务功能的功能目录进行迁移/同步。
                    </p>
                    <ul class="configure-fl2-top-con clearfix">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em;">1. 添加数据类型为数据库的目录数据</h2>
                                <p style="text-indent:2em;">
                                    对目录类型为服务功能的功能目录，点击<i class="metadata"></i>进入数据元数据编辑界面，点击新增目录数据
                                    <i class="add"></i>
                                    按钮添加数据元数据。添加了输入和输出两种类型的数据元数据后，才能进入响应设计页面。如下图：
                                </p>
                                <img src="img/response.png"
                                     style="display:block;width:95%;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">2. 添加其它数据类型的目录数据</h2>
                                <p style="text-indent:2em">
                                    设置好数据元数据后，点击
                                    <i class="response"></i>
                                    按钮进入响应设计页面。左边显示的是输入的数据元数据，右边显示的是输出的数据元数据。
                                </p>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">3. 添加目录数据</h2>
                                <p style="text-indent:2em">
                                    默认添加的第一条数据是主数据（除了操作名字为上传和下载的目录数据）。添加好主数据后，可以为输入的数据元数据表添加关联字段和本表字段。关联字段是从主数据的字段中选择，用以关联主数据，本表字段是从自身的字段中选择。在响应设计添加的所有的目录数据，都会显示在左边，右边只会显示该功能目录的输出的数据元数据字段。添加的数据类型为功能数据/外部数据/讯枢的目录数据，只会取它们的输出的数据元数据字段。
                                </p>
                                <p style="color:#FC6767;text-indent:2em">
                                    注意：当删除/修改主数据的数据类型、资源定义、数据库表（或处理类名或功能目录）时，所有的映射关系和非主数据的目录数据都会被删除；如果该目录数据不是主数据，那么只会删除该目录数据和输出的数据元数据表的映射关系。
                                </p>
                                <img src="img/response-data.png"
                                     style="display:block;width:95%;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info clearfix">
                                <h2 style="text-indent:2em;margin-top:5px;">4. 建立映射关系</h2>
                                <p style="text-indent:2em">
                                    通过拖拽的方式，可以为两个表之间建立映射关系，只能是一对一的关系，可以按回退键←删除错误的映射关系。
                                    为两个字段建立了映射关系，即代表着，左边的该表的该字段的所有数据都会被迁移/同步到右边的表的该字段下。
                                </p>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">5. 添加前置符号等</h2>
                                <p style="text-indent:2em">
                                    点击连线，可以为每个字段的每条数据添加前置符号和后置符号，顾名思义，会对每条数据的该字段的值都加上前置符号和后置符号，再把数据给右边的表。在下图，如果该功能目录的输入的数据元数据的字段COLUMN2的值为3，加上前置符号和后置符号值为132。同时，对前置符号和后置符号有长度限制，根据进行迁移/同步表的字段长度而定。如下图，左边的输入的数据元数据和表AA7的字段COLUMN2的长度和两个前置符号的长度+两个后置符号的长度必须小于或等于右边的输出的数据元数据的COLUMN6的长度，如下图的两个字段的前置符号+后置符号的长度之和不得超过80（200-60*2）。
                                </p>
                                <p style="text-indent:2em">
                                    两个表之间（左边的表结构之间）需要设置运算符号，如果不设置，会默认为字符串拼接。5种运算符号的区别如下：
                                </p>
                                <p style="text-indent:4em">
                                    字符串拼接：把字符串按照处理顺序拼接在一起为最后的保存表得到的数据（在下图，左边的输入的数据元数据的字段2的值为3，加上前置符号和后置符号值为132，表AA7的字段2的值为5，最后右边的输出的数据元数据的字段6拼接后的值为1325）；
                                </p>
                                <p style="text-indent:4em">
                                    字符串截取：前提条件：处理顺序更小的表的字段值必须包含处理顺序更大的字段值，即左边的表的数据必须有一部分值和右边的表的值相同（在下图，左边的输入的数据元数据的字段的字段2的值为33，加上前置符号和后置符号值为1332，表AA7的字段值为32，那么字段6截取后的值为13）；
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
                                <img src="img/response6.png"
                                     style="display:block;width:95%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">6. 调整某个字段的处理顺序</h2>
                                <p style="text-indent:2em">
                                    点击连线，有两个及以上的字段到一个字段时，就会出现调整处理顺序 <img src="img/icon-down.png"/> 按钮，点击该按钮，调整左边两个表的3个字段到右边的保存表的该字段的顺序。 在下图，如果不调整处理顺序，将会是左边的输入的数据元数据和表AA7的COLUMN2字段的所有数据按顺序到右边的输出的数据元数据的COLUMN6字段。但是如下图调整处理顺序后，现在将是表AA7和左边的输入的数据元数据的COLUMN2字段的所有数据倒序到右边的输出的数据元数据的COLUMN6字段。
                                </p>
                                <p style="color:#FC6767;text-indent:2em">
                                    注意：调整处理顺序后，运算符号恢复为字符串拼接！
                                </p>
                                <img src="img/response2.png"
                                     style="display:block;width:95%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                        <li style="margin-top:10px;">
                            <div class="info">
                                <h2 style="text-indent:2em;margin-top:5px;">7. 预览功能</h2>
                                <p style="text-indent:2em">
                                    选择响应类型后，点击 <img style="vertical-align: middle;" src="img/response3.png"/> 按钮，即可查看该功能目录的执行结果。最后输出的数据元数据得到的数据，会根据选择的响应类型返回相应的格式的数据。预览页面如下图：
                                </p>
                                <img src="img/response5.png"
                                     style="display:block;width:95%;margin:10px auto;box-shadow:0 0 3px #333;"/>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
