<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_infoinge_job_setting">
            <p>
                <span>作业名字：</span>
                <input type="text" id="infoinge_job_name" class="input-1 validate[required,maxSize[128],custom[validateName]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/name"/>
                    </xsl:attribute>
                </input>
            </p>
            <p>
                <span>频度类型：</span>
                <input class="input_radio" value="true" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_year_true"  onclick="$('#infoinge_job_frequentness').val('year')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'year'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 年 </xsl:text>
                <input class="input_radio" value="false" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_month_true"  onclick="$('#infoinge_job_frequentness').val('month')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'month'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 月 </xsl:text>
                <input class="input_radio" value="false" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_day_true" onclick="$('#infoinge_job_frequentness').val('day')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'day'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 日 </xsl:text>
                <input class="input_radio" value="false" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_hour_true" onclick="$('#infoinge_job_frequentness').val('hour')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'hour'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 时 </xsl:text>
                <input class="input_radio" value="false" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_minute_true"  onclick="$('#infoinge_job_frequentness').val('minute')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'minute'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 分 </xsl:text>
                <input class="input_radio" value="false" type="radio" style="width:5%" name="infoinge_job_frequentness" id="infoinge_job_frequentness_second_true"  onclick="$('#infoinge_job_frequentness').val('second')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'second'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 秒 </xsl:text>
                <input id="infoinge_job_frequentness" type="hidden">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness != ''">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/frequentness"/></xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="value">year</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
            </p>
            <p>
                <span>间隔时间：</span>
                <input type="text" id="infoinge_job_interval_time" placeholder="请输入整数" maxlength="8" class="input-1 validate[required,custom[zpositive]]">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/interval_time"/>
                    </xsl:attribute>
                </input>
            </p>
            <p>
                <span>加入时间：</span>
                <input type="text" id="infoinge_job_join_time" onclick="onJobdate()" class="input-1 laydate-icon validate[required,custom[dateTimeFormat]]">
                    <xsl:attribute name="value"><xsl:value-of select="substring(cludove.crest.spruce.infoinge_job/record.crest/join_time, 1, 19) "/></xsl:attribute>
                </input>
            </p>
            <p>
                <span>开始时间：</span>
                <input type="text" id="infoinge_job_run_start_hour" class="input-1" style="width:10%;text-align:center" title="请输入开始小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_start_hour"/>
                    </xsl:attribute>
                </input>
                <xsl:text>:</xsl:text>
                <input type="text" id="infoinge_job_run_start_minute" class="input-1" style="width:75%;" title="请输入开始分钟" onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_start_minute"/>
                    </xsl:attribute>
                </input>
            </p>
            <p>
                <span>结束时间：</span>
                <input type="text" style="width:10%;text-align:center" class="input-1" id="infoinge_job_run_finish_hour"  title="请输入结束小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_finish_hour"/>
                    </xsl:attribute>
                </input>
                <xsl:text>:</xsl:text>
                <input type="text" style="width:75%;" class="input-1" id="infoinge_job_run_finish_minute" title="请输入结束分钟"  onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
                    <xsl:attribute name="value">
                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_finish_minute"/>
                    </xsl:attribute>
                </input>
            </p>
            <p>
                <span class="span_tit">是否执行：</span>
                <input class="input_radio" value="true" type="radio" style="width:5%" name="is_running" id="infoinge_job_is_running_true" onclick="$('#infoinge_job_is_running').val('true')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/is_running = 'true'">
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise/>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 是 </xsl:text>
                <input  class="input_radio" value="false" type="radio" style="width:5%" name="is_running" id="infoinge_job_is_running_false" onclick="$('#infoinge_job_is_running').val('false')">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/is_running = 'true'">
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="checked">checked</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
                <xsl:text disable-output-escaping="yes"> 否 </xsl:text>
                <input id="infoinge_job_is_running" type="hidden">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/is_running != ''">
                            <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/is_running"/></xsl:attribute>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:attribute name="value">false</xsl:attribute>
                        </xsl:otherwise>
                    </xsl:choose>
                </input>
            </p>
            <p>
                <span>作业描述：</span>
                <textarea id="infoinge_job_description"  class="validate[maxSize[256]]">
                    <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/description"/>
                </textarea>
            </p>
            <div class="configure-fr-side-bottom">
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'job.infoinge.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                    <xsl:otherwise>
                        <xsl:attribute name="style">display:none</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>

                <input class="sub" value="提交" type="button">
                    <xsl:attribute name="onclick">processJobSetting()</xsl:attribute>
                </input>
                <input class="res" value="清除" type="reset"/>
                <input class="but" value="取消" type="button">
                    <xsl:attribute name="onclick">$('#resource_setting_right').hide()</xsl:attribute>
                </input>

                <!--隐藏按钮-->
                <input type="hidden" name="code" id="code_infoinge_job">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/code"/></xsl:attribute>
                </input>
                <input type="hidden" name="connection_code" id="connection_code_infoinge_job">
                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/connection_code"/></xsl:attribute>
                </input>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
