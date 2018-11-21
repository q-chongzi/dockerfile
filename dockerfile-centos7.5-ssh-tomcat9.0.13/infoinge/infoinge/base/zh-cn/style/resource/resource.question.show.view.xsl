<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="item item_right">
            <div class="div_txt">
                <div class="list">
                    <div class="div_txt">
                        <div class="div_btn">
                            <a style="margin-left:35%; margin-right: 35%;" href="javascript:void(0)" onclick="onResourceIcon()">返回</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="title">
                <span>问题诊断</span>
            </div>
            <div class="div_tips div_txt">
                <p><b>问题说明</b></p>
                <div class="list1">
                    <xsl:if test="journal.cludove/record.crest/description != 'null'">
                        <div class="text">
                            <xsl:value-of select="journal.cludove/record.crest/description"/>
                        </div>
                    </xsl:if>
                </div>
                <p><b>问题来源</b></p>
                <div class="list1">
                    <div class="text">
                        <ul style="word-break: break-all;overflow:hidden;">
                            <xsl:choose>
                                <xsl:when test="journal.cludove/record.crest/journal_type = 6">
                                    <li>
                                        <xsl:text>作业编号：</xsl:text>
                                        <xsl:value-of select="journal.cludove/record.crest/request_id"/>
                                    </li>
                                </xsl:when>
                                <xsl:when test="journal.cludove/record.crest/journal_type = 5">
                                    <li>
                                        <xsl:text>执行编号：</xsl:text>
                                        <xsl:value-of select="journal.cludove/record.crest/request_id"/>
                                    </li>
                                </xsl:when>
                                <xsl:otherwise/>
                            </xsl:choose>
                            <xsl:if test="journal.cludove/record.crest/buddle_id != '' and journal.cludove/record.crest/buddle_id != 'null'">
                                <li>
                                    <xsl:value-of select="journal.cludove/record.crest/buddle_id"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="journal.cludove/record.crest/buddle_name"/>
                                    <xsl:text>]</xsl:text>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/catalog_id != '' and journal.cludove/record.crest/catalog_id != 'null'">
                                <li>
                                    <xsl:value-of select="journal.cludove/record.crest/catalog_id"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="journal.cludove/record.crest/catalog_name"/>
                                    <xsl:text>]</xsl:text>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/data_code != '' and journal.cludove/record.crest/data_code != 'null'">
                                <li>
                                    <xsl:value-of select="journal.cludove/record.crest/data_name"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="journal.cludove/record.crest/position"/>
                                    <xsl:text>]</xsl:text>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/error_id != '' and journal.cludove/record.crest/error_id != 'null'">
                                <li>
                                    <xsl:value-of select="journal.cludove/record.crest/error_id"/>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/error_id != '' and journal.cludove/record.crest/error_id != 'null'">
                                <li>
                                    <xsl:value-of select="journal.cludove/record.crest/error_id"/>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/error_id != '' and journal.cludove/record.crest/error_id != 'null'">
                                <li>
                                    <xsl:call-template name="error_intro">
                                        <xsl:with-param name="error_id">
                                            <xsl:value-of select="journal.cludove/record.crest/error_id"/>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </li>
                            </xsl:if>
                            <xsl:if test="journal.cludove/record.crest/error_id != '' and journal.cludove/record.crest/error_id != 'null'">
                                <li >
                                    <xsl:value-of select="journal.cludove/record.crest/location"/>
                                </li>
                            </xsl:if>
                        </ul>
                    </div>
                </div>
                <xsl:choose>
                    <xsl:when test="journal.cludove/record.crest/journal_type = 5 or journal.cludove/record.crest/journal_type = 6">
                        <div class="list1">
                            <div class="text">
                                <div class="div_input1">
                                    <b>
                                        <a target="_blank" href="javascript:void(0)">
                                            <span>作业执行异常，请在作业监控中进一步检查。</span>
                                        </a>
                                    </b>
                                </div>
                            </div>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <div class="list1">
                            <div class="text">
                                <div class="div_input1">
                                    <b>
                                        <a target="_blank">
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=journal.show.view&amp;record_host=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_host"/><xsl:text disable-output-escaping="yes">&amp;record_year=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_year"/><xsl:text disable-output-escaping="yes">&amp;record_month=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_month"/><xsl:text disable-output-escaping="yes">&amp;record_day=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_day"/><xsl:text disable-output-escaping="yes">&amp;record_hour=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_hour"/><xsl:text disable-output-escaping="yes">&amp;record_minute=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/record_minute"/><xsl:text disable-output-escaping="yes">&amp;request_id=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/request_id"/><xsl:text
                                                    disable-output-escaping="yes">&amp;buddle_id=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/buddle_id"/><xsl:text
                                                    disable-output-escaping="yes">&amp;catalog_id=</xsl:text><xsl:value-of
                                                    select="journal.cludove/record.crest/catalog_id"/>
                                            </xsl:attribute>
                                            <span>查看上下文</span>
                                        </a>
                                    </b>
                                </div>
                            </div>
                        </div>
                    </xsl:otherwise>
                </xsl:choose>
                <p><b>解决方案</b></p>
                <div class="div_txt1">
                    <div class="list1">
                        <span class="span_tit"></span>
                        <div class="text">
                            <div class="div_input1">
                                <xsl:call-template name="solution_intro">
                                    <xsl:with-param name="error_id">
                                        <xsl:value-of select="journal.cludove/record.crest/error_id"/>
                                    </xsl:with-param>
                                    <xsl:with-param name="location">
                                        <xsl:value-of select="journal.cludove/record.crest/location"/>
                                    </xsl:with-param>
                                </xsl:call-template>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="div_txt1">
                    <div class="list1">
                        <span class="span_tit">维护电话：</span>
                        <div class="text">
                            <div class="div_input1">
                                <xsl:choose>
                                    <xsl:when test="count(cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']) = 0">
                                        <xsl:value-of select="/content/cludove.crest.spruce.vocabulary/record.crest[keyword = 'MAINTENANCE_TELEPHONE']/content"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'telephone']/content"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                    </div>
                    <div class="list1">
                        <span class="span_tit">维护邮箱：</span>
                        <div class="text">
                            <div class="div_input1">
                                <xsl:choose>
                                    <xsl:when test="count(cludove.crest.spruce.contact[1]/record.crest[type = 'email']) = 0">
                                        <xsl:value-of select="/content/cludove.crest.spruce.vocabulary/record.crest[keyword = 'MAINTENANCE_EMAIL']/content"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="cludove.crest.spruce.contact[1]/record.crest[type = 'email']/content"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </div>
                        </div>
                    </div>
                </div>
                <xsl:if test="count(cludove.crest.spruce.resource_decomposing/record.crest) > 0">
                    <div class="div_txt1">
                        <div class="list1">
                            <span class="span_tit">资源名字：</span>
                            <div class="text">
                                <div class="div_input1">
                                    <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/name"/>
                                </div>
                            </div>
                        </div>
                        <div class="list1">
                            <span class="span_tit">资源标识：</span>
                            <div class="text">
                                <div class="div_input1">
                                    <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/identifier"/>
                                </div>
                            </div>
                        </div>
                        <div class="list1">
                            <span class="span_tit">资源类型：</span>
                            <div class="text">
                                <div class="div_input1">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/type = 'Hinge'">
                                            <xsl:text disable-output-escaping="yes">讯枢</xsl:text>
                                        </xsl:when>
                                        <xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/type = 'DB'">
                                            <xsl:text disable-output-escaping="yes">数据库</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text disable-output-escaping="yes">未知资源</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </div>
                            </div>
                        </div>
                        <div class="list1">
                            <span class="span_tit">服务地址：</span>
                            <div class="text">
                                <div class="div_input1">
                                    <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/host"/>
                                </div>
                            </div>
                        </div>
                        <div class="list1">
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/type = 'Hinge'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span class="span_tit">服务端口：</span>
                                    <div class="text">
                                        <div class="div_input1">
                                            <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/port"/>
                                        </div>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                        <div class="list1">
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/type = 'Hinge'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span class="span_tit">方案标识:</span>
                                    <div class="text">
                                        <div class="div_input1">
                                            <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/pattern"/>
                                        </div>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                        <div class="list1">
                            <xsl:choose>
                                <xsl:when test="cludove.crest.spruce.resource_decomposing/record.crest/type = 'Hinge'">
                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span class="span_tit">数据实例：</span>
                                    <div class="text">
                                        <div class="div_input1">
                                            <xsl:value-of select="cludove.crest.spruce.resource_decomposing/record.crest/instance"/>
                                        </div>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
    <xsl:template name="solution_intro">
        <xsl:param name="error_id"/>
        <xsl:param name="location"/>
        <xsl:choose>
            <xsl:when test="$error_id = 'java.lang.NullPointerException' and contains($location, 'com.cludove.dirigible.instrument.DataBase.convert')">
                <b><xsl:text>由于样式单文件格式不符，无法对上下文进行转换，请联系开发单位检修</xsl:text></b>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.ResourceIsNotDefined' and contains($location, 'com.cludove.hinge.processor.data.buddle.BuddleUpload.transform')">
                <b><xsl:text>上传文件时没有选择文件，此为前端功能异常，请联系开发单位检修</xsl:text></b>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.ResourceIsNotDefined' and contains($location, 'com.cludove.hinge.processor.data.buddle.BuddleUpload.updateBuddleFile')">
                <b><xsl:text>上传文件时选择的文件格式不符合要求，请参见问题说明</xsl:text></b>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.ResourceIsNotDefined' and contains($location, 'com.cludove.dirigible.hold.db.DBData.getConnection')">
                <b><xsl:text>无法为指定数据库建立连接，请联系开发单位检修</xsl:text></b>
            </xsl:when>
            <xsl:otherwise>
                <b><xsl:text>还没有得到规范的问题，建议联系开发单位检修</xsl:text></b>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template name="error_intro">
        <xsl:param name="error_id"/>
        <xsl:choose>
            <xsl:when test="$error_id = 'java.lang.NullPointerException'">
                <xsl:text>当应用程序试图在需要对象的地方使用 null 时，抛出该异常</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'info.com.cludove.AccountIsNotLogon'">
                <xsl:text>请先登陆</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.DataTruncation'">
                <xsl:text>以 DataTruncation 异常形式抛出的异常（写入时），或者由于除数据值超出 MaxFieldSize 之外的某种原因意外地截断该数据值时以 DataTruncation 警告形式报告的异常（读取时）</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.AuthorizationNotAccept'">
                <xsl:text>操作还没有授权</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.BuddleIsNotDefined'">
                <xsl:text>应用还没有定义</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.BuddleIsNotEntry'">
                <xsl:text>不能作为入口应用</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.ConnectionCanNotBuild'">
                <xsl:text>数据库连接不能建立</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.DatabaseNotFound'">
                <xsl:text>数据库没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.DataSourceNotSupport'">
                <xsl:text>数据源类型框架不支持，数据源必须是数据库、功能数据、外部数据、数据库元数据、讯枢RESTFul中的一种</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.AddressIsInvilde'">
                <xsl:text>无效地址，不能提供路由</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.BackupIsNotPermit'">
                <xsl:text>备份系统请求未有被允许</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.BuddleNoMainCatalog'">
                <xsl:text>应用插件没有发现主功能目录</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.FluhIsNotPermit'">
                <xsl:text>系统刷新请求未有被允许</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.LogIsNotPermit'">
                <xsl:text>日志管理请求未有被允许</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.PasswordIsNotPermit'">
                <xsl:text>修改密码请求未有被允许</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Commissary.ValidationIsInvalide'">
                <xsl:text>无效验证信息，不能提供路由</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Register.AccountIsNotLogon'">
                <xsl:text>没有完成注册，原因可能是没有登陆</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Register.AccountIsNull'">
                <xsl:text>注册参数帐号为空</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Register.PermissionParameterIsNull'">
                <xsl:text>权限判断的参数为：帐号，对象，操作</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Register.SessionIsNull'">
                <xsl:text>注册参数会话为空</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Rudder.BuddleIsInactive'">
                <xsl:text>应用插件没有激活</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Rudder.BuddleLevelIsHigher'">
                <xsl:text>应用插件的等级较高</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.bridge.Rudder.EntrywayIsNotDefined'">
                <xsl:text>框架运行入口定义没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.gear.expression.NormalExpression.AlgorithmIsNotDefined'">
                <xsl:text>运算法则定义没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.gear.security.MACAddress.MACNotFound'">
                <xsl:text>MAC地址没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.gear.security.MACAddress.OSNotSupport'">
                <xsl:text>不能识别的操作系统</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.hold.hinge.HingeSource.CatalogIsNotDefined'">
                <xsl:text>讯枢的服务目录没有定义</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.hold.hinge.HingeSource.HingeIsNotDefined'">
                <xsl:text>讯枢没有定义</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.hold.xml.XMLData.DataIsNotDefined'">
                <xsl:text>数据没有定义</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.ResourceIsNotDefined'">
                <xsl:text>资源没有定义</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.hold.xml.XMLSource.DataSourceNotSupport'">
                <xsl:text>XML数据源类型框架不支持，数据源必须是SETTLE、NATANT中的一种</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.DataSourceNotFound'">
                <xsl:text>数据源没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.hold.BaseData.IdentifierArrayIsNull'">
                <xsl:text>资源标识组为空</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.module.BaseModule.OperationNotSupport'">
                <xsl:text>操作框架不支持</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.module.BaseModule.BuilderIsInvalide'">
                <xsl:text>操作者无效</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.module.RecordIsLost'">
                <xsl:text>记录已经丢失</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.dirigible.module.RecordIsExist'">
                <xsl:text>记录已经存在</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.CaptchaError'">
                <xsl:text>验证码错误，请重新输入或者刷新后再试</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.CaptchaOverdue'">
                <xsl:text>验证码已过期，请重新刷新验证码</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.Invalide'">
                <xsl:text>无效</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.IsNotPermit'">
                <xsl:text>不允许的操作</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.logon.Invalide'">
                <xsl:text>无效的用户名或密码</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.Null'">
                <xsl:text>为空</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.SystemIsUpdating'">
                <xsl:text>系统正在更新，请稍候......</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.TableNotFound'">
                <xsl:text>表或视图没有找到</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.UniqueIsNull'">
                <xsl:text>唯一键值为空</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.UniqueIsNotDefined'">
                <xsl:text>唯一键没有设置</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'com.cludove.UniqueIsNotAccord'">
                <xsl:text>唯一键值不配对</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLException'">
                <xsl:text>提供关于数据库访问错误或其他错误信息的异常</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLWarning'">
                <xsl:text>提供关于数据库访问警告信息的异常。这些警告直接链接到导致报告警告的方法所在的对象</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.BatchUpdateException'">
                <xsl:text>进行批量更新操作期间发生错误时抛出的 SQLException 子类。除了 SQLException 提供的信息以外，BatchUpdateException 还提供批量更新期间成功执行的所有命令的更新计数，也就是发生错误之前执行的所有命令的更新计数。更新计数数组中元素的顺序对应于将命令添加到批处理中的顺序</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLNonTransientException'">
                <xsl:text>重试相同操作将失败（除非纠正了 SQLException 的 cause）的情况下抛出的 SQLException 子类</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLClientInfoException'">
                <xsl:text>当无法在 Connection 上设置一个或多个客户端信息属性时，抛出此 SQLException 的子类。除了 SQLException 提供的信息外，SQLClientInfoException 还提供未设置的客户端信息属性列表。 某些数据库不允许一次设置多个客户端信息属性。对于这些数据库，即使 Connection.setClientInfo 方法抛出异常，可能也已经设置了一些客户端信息属性。应用程序可以使用 getFailedProperties 方法获取未设置的客户端信息属性列表。通过将 Map String,ClientInfoStatus 传递给适当的 SQLClientInfoException 构造方法来标识属性</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLTransientException'">
                <xsl:text>没有任何应用程序级功能干预时，重试先前失败操作可以成功的情况下抛出的 SQLException 子类</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLRecoverableException'">
                <xsl:text>应用程序执行某些恢复步骤并重试整个事务或事务分支（在分布式事务中）后，可以成功执行先前失败操作的情况下抛出的 SQLException 子类。恢复操作至少必须包括关闭当前连接和获得一个新连接</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLIntegrityConstraintViolationException'">
                <xsl:text>当 SQLState 类值为“23”时抛出的 SQLException 子类。此异常表示违反了一个完整性约束（外键、主键或唯一键）</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLNonTransientConnectionException'">
                <xsl:text>SQLState 类值为“08”时抛出的 SQLException 子类，表示在失败原因没有纠正的情况下重试操作时，失败的连接操作不会成功</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLDataException'">
                <xsl:text>当 SQLState 类值为“22”时抛出的 SQLException 子类。此异常表示各种数据错误，包括但不限于未经允许的转换、除以 0、对函数无效的参数</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLFeatureNotSupportedException'">
                <xsl:text>当 SQLState 类值为“0A”（值为“零”A）时抛出的 SQLException 子类。此异常表示 JDBC 驱动程序不支持可选的 JDBC 特性</xsl:text>
            </xsl:when>
            <xsl:when test="$error_id = 'java.sql.SQLIntegrityConstraintViolationException'">
                <xsl:text>当 SQLState 类值为“23”时抛出的 SQLException 子类。此异常表示违反了一个完整性约束（外键、主键或唯一键）</xsl:text>
            </xsl:when>
            <xsl:otherwise/>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>
