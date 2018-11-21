<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="main_tab">
            <table style="word-break:break-all">
                <tr>
                    <td>
                        <span class="span_check span_check_infoinge_job" id="check_all_infoinge_job"></span>
                    </td>
                    <td>作业名字</td>
                    <td>频度类型</td>
                    <td>间隔时间</td>
                    <td>加入时间</td>
                    <td>开始时间</td>
                    <td>结束时间</td>
                    <td>是否执行</td>
                    <td>操作</td>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.infoinge_job/record.crest">
                    <xsl:sort order="ascending" select="name"/>
                    <!--<xsl:if test="identifier != 'infoinge'">-->
                    <tr>
                        <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                        <td>
                            <input type="hidden" class="infoinge_job_check">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="code" />
                                    <xsl:text>,</xsl:text>
                                    <xsl:value-of select="connection_code" />
                                </xsl:attribute>
                            </input>
                            <span class="span_check span_check_infoinge_job span_check_select_infoinge_job infoinge_job_check_select"></span>
                        </td>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="frequentness = 'year'">
                                    <xsl:text disable-output-escaping="yes">年</xsl:text>
                                </xsl:when>
                                <xsl:when test="frequentness = 'month'">
                                    <xsl:text disable-output-escaping="yes">月</xsl:text>
                                </xsl:when>
                                <xsl:when test="frequentness = 'day'">
                                    <xsl:text disable-output-escaping="yes">日</xsl:text>
                                </xsl:when>
                                <xsl:when test="frequentness = 'hour'">
                                    <xsl:text disable-output-escaping="yes">时</xsl:text>
                                </xsl:when>
                                <xsl:when test="frequentness = 'minute'">
                                    <xsl:text disable-output-escaping="yes">分</xsl:text>
                                </xsl:when>
                                <xsl:when test="frequentness = 'second'">
                                    <xsl:text disable-output-escaping="yes">秒</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="frequentness" />
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <xsl:value-of select="interval_time" />
                        </td>
                        <td>
                            <xsl:value-of select="substring(join_time, 1, 19)" />
                        </td>
                        <td>
                            <xsl:value-of select="run_start_hour" />
                            <xsl:text>:</xsl:text>
                            <xsl:value-of select="run_start_minute" />
                        </td>
                        <td>
                            <xsl:value-of select="run_finish_hour" />
                            <xsl:text>:</xsl:text>
                            <xsl:value-of select="run_finish_minute" />
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="is_running = 'true'">
                                    <xsl:text disable-output-escaping="yes">是</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping="yes"></xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <div class="div_btn">
                                <a href="javascript:void(0)" class="revise" title="查看|修改">
                                    <xsl:attribute name="onclick">showJobSetting('<xsl:value-of select="code" />')</xsl:attribute>
                                </a>
                                <a class="check-icon" href="javascript:void(0)" title="查看作业功能">
                                    <xsl:attribute name="onclick">onJobEdit('<xsl:value-of select="code"/>')</xsl:attribute>
                                </a>
                                <a class="execute-icon" href="javascript:void(0)" title="手工作业执行">
                                    <xsl:attribute name="onclick">onJobExecute('<xsl:value-of select="code"/>','<xsl:value-of select="name"/>','<xsl:value-of select="frequentness"/>')</xsl:attribute>
                                </a>
                                <a class="delete-icon" href="javascript:void(0)" title="停用">
                                    <xsl:choose>
                                        <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.infoinge.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                        <xsl:otherwise>
                                            <xsl:attribute name="style">display:none</xsl:attribute>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    <xsl:attribute name="onclick">zdconfirm('提示','确认停用 作业 <xsl:value-of select="identifier" />/<xsl:value-of select="name" />  吗？',function(confirm){if (confirm) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'infoinge_job_record_code', 'is_active', 'connection_code'), new Array('diginter', 'job.infoinge.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');} }) </xsl:attribute>
                                </a>

                            </div>
                        </td>
                    </tr>
                    <!--</xsl:if>-->
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
