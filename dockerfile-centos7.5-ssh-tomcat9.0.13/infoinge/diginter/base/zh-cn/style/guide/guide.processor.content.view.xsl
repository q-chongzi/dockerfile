<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置驱动处理？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <img src="img/processorS.png" class="fl" style="width:27%; box-shadow:0 0 3px #333;"/>
                    <div class="fl" style="width:72%;color:#7f7f7f;margin-left:1%;">
                        <p style="text-indent:2em">
                            驱动处理在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮，即可进入驱动处理界面。
                        </p>
                        <p style="text-indent:2em">
                            进入驱动处理界面后，点击界面左上角的 <i class="add"></i> 进入驱动处理新增界面，在新增区域录入驱动处理的各个参数，即可完成对驱动处理的新增操作。其中：驱动标识是唯一的且不可修改，驱动类型用以区分驱动处理类。可通过驱动名字对其进行调用，如目录数据、验证规则、清洗规则。
                        </p>
                        <p style="text-indent:2em">
                            只有功能数据类和外部数据类才能添加数据元数据，只有当数据元数据的值为是时，该数据才能添加数据元数据。只有外部数据类才能添加维护帐号和维护邮箱信息。如左图：
                        </p>
                    </div>
                </div>
            </div>
            <div class="configure-fl2-top" style="height:530px;border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>驱动处理在哪里使用？</p>
                </div>
                <ul class="configure-fl2-top-con clearfix" style="height:220px;">
                    <li class="fl" style="width:49%;margin-right:1%;height:100%;border-right:1px solid #e6e6e6;">
                        <img src="img/data.png"/>
                        <div class="info">
                            <h2>1. 设置功能数据时调用</h2>
                            <p>
                                在业务模型-功能目录下进行目录数据设置时，选择"功能数据"，通过选择"处理类名"完成对驱动处理的调用；
                            </p>
                            <p style="color:#FC6767;">
                                注意：在调用驱动处理时，必须确保该驱动处理下有数据元数据。可通过点击功能数据的 <i class="metadata"></i> 查看数据元数据里是否有数据。
                            </p>
                        </div>
                    </li>
                    <li class="fl" style="width:50%;height:100%">
                        <img src="img/outer.png"/>
                        <div class="info">
                            <h2>2. 设置外部数据时调用</h2>
                            <p>
                                在业务模型-功能目录下进行目录数据设置时,选择"外部数据"，通过选择"处理类名"完成对驱动处理的调用；
                            </p>
                            <p style="color:#FC6767;">
                                注意：在调用驱动处理时，必须确保该驱动处理下有数据元数据。可通过点击外部数据的 <i class="metadata"></i> 查看数据元数据里是否有数据。
                            </p>
                        </div>
                    </li>
                    <li class="fl" style="width:49%;margin-right:1%;height:100%;border-right:1px solid #e6e6e6; margin-top:15px;">
                        <img src="img/resource.png"/>
                        <div class="info">
                            <h2>3. 配置资源定义时调用</h2>
                            <p>
                                在数据库下进行资源定义配置时，选择对应数据库的"驱动处理"，即完成了驱动处理的调用。
                            </p>
                        </div>
                    </li>
                    <li class="fl" style="width:50%;height:100%; margin-top:15px;">
                        <img src="img/cleanout.png"/>
                        <div class="info">
                            <h2>4. 设置验证清洗时调用</h2>
                            <p>
                                在基本设置界面进行验证规则、清洗规则设置时，选择相应的驱动处理类，即完成了驱动处理的调用。
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="configure-fl2-top" style="height:680px;border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/run.png) no-repeat left center;">
                    <p>如何配置数据清洗类和验证规则类？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:230px;">
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">1. 配置验证规则类</h2>
                                <p style="text-indent:2em">
                                    验证规则类，是对指定数据按照指定规则进行验证，并返回验证结果。该处理类需要实现ValidatorBase接口，并在validate方法中，从参数parameter中取得需要验证的数据，按照定义的规则进行验证，完成后在方法最后返回验证结果：true、false。一个非空验证处理类示例：
                                </p>
                                <div style="width:80%;height:230px;background-color: #F0F0F0;">
                                    <p style="text-indent:2em;padding-top:5px">
                                        <span style="font-weight: bold;color:#950055">public&#160; class</span>&#160; RequiredValidator&#160; <span style="font-weight: bold;color:#950055">implements</span>&#160; ValidatorBase {
                                    </p>
                                    <p style="text-indent:5em">
                                        @Override
                                    </p>
                                    <p style="text-indent:4em">
                                        <span style="font-weight: bold;color:#950055">public</span>&#160; Object&#160; validate(Map&lt;String, Object>&#160; <span style="color:#9E3E63">parameters</span>) {
                                    </p>
                                    <p style="text-indent:5em">
                                        String <span style="color:#9E3E63">varifyContent</span>&#160; =&#160; String.<span style="font-family: 仿宋;">valueOf</span>(parameters.get(VerifyRegulation.<b>VERIFY_CONTENT</b>));
                                    </p>
                                    <p style="text-indent:5em">
                                        if (<span style="font-weight: bold;color:#950055">null</span>&#160; !=&#160; <span style="font-family: 仿宋;">varifyContent</span> &amp;&amp;&#160; !&#160;<span style="color:#2A00FF">""</span>.equals(varifyContent.trim()) &amp;&amp;&#160; !"<span style="color:#2A00FF">NULL</span>".equalsIgnoreCase(varifyContent))&#160; {
                                    </p>
                                    <p style="text-indent:5em">
                                        <span style="font-weight: bold;color:#950055">return&#160; true</span>;
                                    </p>
                                    <p style="text-indent:5em">
                                        }
                                    </p>
                                    <p style="text-indent:4em">
                                        }
                                    </p>
                                    <p style="text-indent:2em">
                                        }
                                    </p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="info">
                                <h2 style="text-indent:2em">2. 配置数据清洗类</h2>
                                <p style="text-indent:2em">
                                    数据清洗类，是对指定的数据项进行清洗处理，以达到业务需要。该处理类需要实现CleanerBase接口，并在clean方法中，从参数parameter取得需要清洗的数据，然后完成数据的清洗操作，清洗完成后在方法最后返回清洗后的值。我们可以添加多个清洗规则，这样就可以很方便的清洗我们的数据。一个空格清洗类示例：
                                </p>
                                <div style="width:80%;height:190px;background-color: #F0F0F0;">
                                    <p style="text-indent:2em;padding-top:5px">
                                        <span style="font-weight: bold;color:#950055">public&#160; class</span> RequiredCleaner&#160; <span style="font-weight: bold;color:#950055">implements</span>&#160; CleanerBase {
                                    </p>
                                    <p style="text-indent:5em">
                                        @Override
                                    </p>
                                    <p style="text-indent:4em">
                                        <span style="font-weight: bold;color:#950055">public</span>&#160; Object&#160; clean(Map&lt;String, Object>&#160; <span style="color:#9E3E63">parameters</span>) {
                                    </p>
                                    <p style="text-indent:5em">
                                        Object&#160; <span style="color:#9E3E63">content</span>&#160; =&#160; parameters.get(Regulation.<b>VERIFY_CONTENT</b>);
                                    </p>
                                    <p style="text-indent:5em">
                                        <span style="font-weight: bold;color:#950055">return</span>&#160; <span style="color:#9E3E63">content</span>.toString().replaceAll("<span style="color:#2A00FF">\\s+</span>",&#160; <span style="color:#2A00FF">""</span>);;
                                    </p>
                                    <p style="text-indent:5em">
                                        }
                                    </p>
                                    <p style="text-indent:2em">
                                        }
                                    </p>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>如何部署驱动处理？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                首先，要将工程里的继承了com.cludove.dirigible.hold.DataProcessor并实现了com.cludove.dirigible.hold.CatalogProcessor接口的java文件打成应用包：[包括中扩号替换成应用名].jar，并将打包好的jar文件保存到web目录的WEB-INF/lib目录中；
                            </p>
                            <p style="text-indent:2em">
                                其次，将要部署的jar文件（如：数据库驱动的jdbc包、[包括中扩号替换成应用包名].jar等等），按web目录的位置打包成：[包括中扩号替换成应用名].buddle，结构如图：
                            </p>
                            <p style="text-indent:2em">
                                最后，在业务模型中上传[包括中扩号替换成应用名].buddle，文件上传后打包在里面的jar文件会被重新加载并完成部署
                                （<a onclick="upload.loadInfo()" title="参考应用上传" style="color:#1E90FF;text-decoration:underline;cursor: pointer">参考应用上传</a>）：
                            </p>
                            <img src="img/path.png" style="float:left;width:23%;height:100%;margin-top:10px;margin-left:12%"/>
                            <img src="img/set_nav.png" style="width:43%;height:70px;margin-top:56px"/>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
