<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="pocessor_info">
            <div class="configure-fl2-top">
                <div class="configure-fl2-top-tit" style="background: url(img/set.png) no-repeat left center;">
                    <p>如何配置系统词表？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <div class="fl" style="color:#7f7f7f;margin-right:1%;margin-bottom:1%">
                        <p style="text-indent:2em">
                            系统词表在首页设置栏进行设置，点击首页导航栏 <i class="set"></i> 按钮进入基本设置，点击 <i class="vocabulary"></i> 即可进入系统词表界面。
                        </p>
                        <p style="text-indent:2em">
                            进入系统词表界面后，点击界面左上角的 <i class="add"></i> 进入系统词表新增界面，在新增区域录入系统词表的各个参数，即可完成对系统词表的新增操作。其中：参数标识为后台区分该功能的类型，配置项：参数为配置的那一条参数；配置内容：对系统词表该条内容加以解释。
                            <span style="color:#FC6767;">注意：所有的系统词表数据都只能修改，不能删除！</span>
                        </p>
                    </div>
                    <img src="img/nav-bar.png" class="fl" style="margin-left:22%; margin-top:20px;"/>
                    <img src="img/vocabulary.png" class="fl" style="margin-left:3%;box-shadow:0 0 3px #333;"/>
                </div>
            </div>
            <div class="configure-fl2-top" style="border-top: 1px dashed #333;">
                <div class="configure-fl2-top-tit" style="background: url(img/build.png) no-repeat left center;">
                    <p>系统词表有什么作用？</p>
                </div>
                <div class="configure-fl2-top-con clearfix">
                    <ul class="configure-fl2-top-con clearfix" style="height:280px;">
                        <li>
                            <p style="text-indent:2em">
                                系统词表里配置了一些讯枢框架运行的基本配置，可以通过修改其配置项来改变系统的运行状态。例如：在业务系统中，我们主要关心错误及其以上级别的日志，若LOG_LEVEL配置为debug级别即0，则日志数量庞大，所以为了减少日志数量及其磁盘占用，此时，可将LOG_LEVEL配置为warn级别以上即3，系统就会只记录错误及其以上级别的日志。以下是讯枢系统词表的各个配置项的详细解释:
                            </p>
                            <table style="font-size:10px;width:100%;">
                                <tr style="line-height:40px;background-color:#F4F4F4">
                                    <th width="30%">配置项</th>
                                    <th width="70%">说明</th>
                                </tr>
                                <tbody style="text-align:left;background-color:#F4F4F4">
                                    <tr style="line-height:normal">
                                        <td>MAINTENANCE_TELEPHONE</td>
                                        <td>维护电话：用于在预警信息中提示维护人员的电话联系方式</td>
                                    </tr>
                                    <tr>
                                        <td>CHECK_DELAY</td>
                                        <td>离线时间间隔：缺省值为900000，用于控制离线检测的时间间隔</td>
                                    </tr>
                                    <tr>
                                        <td>MAINTENANCE_EMAIL</td>
                                        <td>维护邮箱：用于在预警信息中提示维护人员的邮箱联系方式</td>
                                    </tr>
                                    <tr>
                                        <td>INFOINGE_VERSION</td>
                                        <td>讯枢版本：用于在开发指南中显示讯枢版本信息</td>
                                    </tr>
                                    <tr>
                                        <td>DEFAULT_STYLE</td>
                                        <td>默认样式：缺省值为base，当有多套样式定义时可修改为其他值</td>
                                    </tr>
                                    <tr>
                                        <td>DEFAULT_LANGUAGE</td>
                                        <td>默认语言：缺省值为zh-cn，当有多语言定义时可修改为其他值</td>
                                    </tr>
                                    <tr>
                                        <td>LOG_LEVEL</td>
                                        <td>日志级别：缺省值为0，0：debug，1：info，2：warn，3：error，4：fatal</td>
                                    </tr>
                                    <tr>
                                        <td>INFO_LEVEL</td>
                                        <td>日志长度：缺省值为9，可设置1~9控制记录日志的长度，9表示全部记录</td>
                                    </tr>
                                    <tr>
                                        <td>BUFFER_SIZE</td>
                                        <td>最大缓存数：缺省值为1，单位是MB，用于缓存数据流</td>
                                    </tr>
                                    <tr>
                                        <td>POOL_SIZE</td>
                                        <td>线程数：缺省值为200，线程池数量，根据配置做相应调整</td>
                                    </tr>
                                    <tr>
                                        <td>THREAD_PROCESS_NUMBER</td>
                                        <td>并发线程数：同一任务可以启动的线程数量</td>
                                    </tr>
                                    <tr>
                                        <td>SYNERGY_EQUILIBRIUM_PERCENT</td>
                                        <td>协同平衡因子：集群部署时协同主机同步数据的系数</td>
                                    </tr>
                                    <tr>
                                        <td>REQUEST_SIZE</td>
                                        <td>最大请求大小：缺省值为128，单位是MB，根据配置做相应调整</td>
                                    </tr>
                                    <tr>
                                        <td>SECURITY_REQUEST_HEADER</td>
                                        <td>安全访问协议头：缺省值为http://，正式上线后可改为https://</td>
                                    </tr>
                                    <tr>
                                        <td>FILE_SIZE</td>
                                        <td>文件上传临时文件存放阀值：缺省值为4，单位是MB，根据配置做相应调整</td>
                                    </tr>
                                    <tr>
                                        <td>SERVICE_ADDRESS</td>
                                        <td>WS地址：讯枢RESTFul转换成web services的访问地址</td>
                                    </tr>
                                    <tr>
                                        <td>DATEFORMAT_STYLE</td>
                                        <td>日期时间格式：缺省值为yyyy-MM-dd HH:mm:ss</td>
                                    </tr>
                                    <tr>
                                        <td>SECRECY_VALIDATION_CLASS</td>
                                        <td>安全验证类：缺省值为com.cludove.lock.validation.SecrecyVerification，用于控制新增、修改、删除权限</td>
                                    </tr>
                                    <tr>
                                        <td>RECORD_NUMBER</td>
                                        <td>每页记录数：缺省值为15</td>
                                    </tr>
                                    <tr>
                                        <td>SECRET_VALIDATION_CLASS</td>
                                        <td>保密验证类：缺省值为com.cludove.lock.validation.SecretVerification，用于控制读取权限</td>
                                    </tr>
                                    <tr>
                                        <td>BATCH_NUMBER</td>
                                    <td>批量处理数：缺省值为100，用于调整预处理效率</td>
                                    </tr>
                                    <tr>
                                        <td>PERMISSION_VALIDATION_CLASS</td>
                                        <td>权限验证类：缺省值为com.cludove.lock.validation.PermissionVerification，用于控制功能权限</td>
                                    </tr>
                                    <tr>
                                        <td>SYSTEM_ID</td>
                                        <td>系统标识：缺省值为001，用于集群部署时区分不同的服务器，不能重复</td>
                                    </tr>
                                    <tr>
                                        <td>HTTP_CONNECTION_REQUEST_TIMEOUT</td>
                                        <td>http请求超时：缺省值为60000</td>
                                    </tr>
                                    <tr>
                                        <td>INSPECT_DELAY</td>
                                        <td>升级检测时间间隔：缺省值为60000，用于控制检测升级包的时间间隔</td>
                                    </tr>
                                    <tr>
                                        <td>HTTP_SOCKET_TIMEOUT</td>
                                        <td>http读写超时：缺省值为60000</td>
                                    </tr>
                                    <tr>
                                        <td>HOT_DELAY</td>
                                        <td>热部署时间间隔：缺省值为60000，用于控制热部署等待的时间间隔</td>
                                    </tr>
                                    <tr>
                                        <td>EMAIL_HOST_NAME</td>
                                        <td>服务邮箱主机名：根据需要填写</td>
                                    </tr>
                                    <tr>
                                        <td>EMAIL_AUTHENTICATION</td>
                                        <td>服务邮箱密码：根据需要填写</td>
                                    </tr>
                                    <tr>
                                        <td>CONNECTION_REBUILD_PERIOD</td>
                                        <td>http读写超时：缺省值为240，单位是分钟</td>
                                    </tr>
                                    <tr>
                                        <td>HTTP_CONNECT_TIMEOUT</td>
                                        <td>http连接超时：缺省值为60000</td>
                                    </tr>
                                    <tr>
                                        <td>EMAIL_FROM</td>
                                        <td>服务邮箱地址：根据需要填写</td>
                                    </tr>
                                    <tr>
                                        <td>COMPASS_IDENTIFIER</td>
                                        <td>云杉数据库连接标识：缺省值为cludove.crest.spruce，不可修改</td>
                                    </tr>
                                    <tr>
                                        <td>COMPASS_CONNECTION_DESCRIPTION</td>
                                        <td>云杉数据库连接参数：替换为云杉运行的基础数据库的相应内容</td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
