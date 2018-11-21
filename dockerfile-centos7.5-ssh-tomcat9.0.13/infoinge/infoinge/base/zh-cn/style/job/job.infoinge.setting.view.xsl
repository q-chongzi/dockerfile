<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_infoinge_job_setting">
            <div class="item">
                <div class="title" style="margin-top:10px">
                    <xsl:choose>
                        <xsl:when test="count(cludove.crest.spruce.infoinge_job/record.crest) > 0">
                            <span class="set_infoinge_job_name">讯枢作业</span>
                            <span class="span_edit span_infoinge_job_edit" title="新增讯枢作业">
                                <xsl:choose>
                                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'job.infoinge.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                    <xsl:otherwise>
                                        <xsl:attribute name="style">display:none</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:attribute name="onclick">$(".set_infoinge_job_name").html("讯枢作业-新增"); $(".span_infoinge_job_edit").hide(); $('#code_infoinge_job').val(''); $('#connection_code_infoinge_job').val(''); $('input:radio[name="infoinge_job_select"]').attr('checked',false); $('input:radio[name="infoinge_job_frequentness"]').removeAttr('disabled');</xsl:attribute>
                            </span>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="set_infoinge_job_name">讯枢作业-新增</span>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
                <div class="div_txt" style="margin-top:10px">
                    <div class="list">
                        <span class="span_tit">作业名字：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="infoinge_job_name" class="validate[required,maxSize[128],custom[validateName]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/name"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">频度类型：</span>
                        <div class="text">
                            <input class="input_radio" value="true" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_year_true"  onclick="$('#infoinge_job_frequentness').val('year')">
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
                            <input class="input_radio" value="false" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_month_true"  onclick="$('#infoinge_job_frequentness').val('month')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'month'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text disable-output-escaping="yes"> 月 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_day_true" onclick="$('#infoinge_job_frequentness').val('day')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'day'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text disable-output-escaping="yes"> 日 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_hour_true" onclick="$('#infoinge_job_frequentness').val('hour')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'hour'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text disable-output-escaping="yes"> 时 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_minute_true"  onclick="$('#infoinge_job_frequentness').val('minute')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/frequentness = 'minute'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text disable-output-escaping="yes"> 分 </xsl:text>
                            <input class="input_radio" value="false" type="radio" name="infoinge_job_frequentness" id="infoinge_job_frequentness_second_true"  onclick="$('#infoinge_job_frequentness').val('second')">
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
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">间隔时间：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="infoinge_job_interval_time" placeholder="请输入整数" maxlength="8" class="validate[required,custom[zpositive]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/interval_time"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">加入时间：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="infoinge_job_join_time" onclick="onJobdate()" class="laydate-icon validate[required,custom[dateTimeFormat]]">
                                    <xsl:attribute name="value"><xsl:value-of select="substring(cludove.crest.spruce.infoinge_job/record.crest/join_time, 1, 19) "/></xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">开始时间：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="infoinge_job_run_start_hour" style="width:10%;text-align:center" title="请输入开始小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_start_hour"/>
                                    </xsl:attribute>
                                </input>
                                <xsl:text>:</xsl:text>
                                <input type="text" id="infoinge_job_run_start_minute"  style="width:10%;text-align:center" title="请输入开始分钟" onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_start_minute"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">结束时间：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" style="width:10%;text-align:center" id="infoinge_job_run_finish_hour"  title="请输入结束小时" onkeyup="if (!(/^((0[0123456789])|(1[0123456789])|(2[0123])|([0123456789]))$/.test(this.value))) this.value = '' " >
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_finish_hour"/>
                                    </xsl:attribute>
                                </input>
                                <xsl:text>:</xsl:text>
                                <input type="text" style="width:10%;text-align:center" id="infoinge_job_run_finish_minute" title="请输入结束分钟"  onkeyup="if (!(/^[0-5]?[0-9]$/.test(this.value))) this.value = '' ">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/run_finish_minute"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">是否执行：</span>
                        <div class="text">
                            <input class="input_radio" value="true" type="radio" name="is_running" id="infoinge_job_is_running_true" onclick="$('#infoinge_job_is_running').val('true')">
                                <xsl:choose>
                                    <xsl:when test="cludove.crest.spruce.infoinge_job/record.crest/is_running = 'true'">
                                        <xsl:attribute name="checked">checked</xsl:attribute>
                                    </xsl:when>
                                    <xsl:otherwise/>
                                </xsl:choose>
                            </input>
                            <xsl:text disable-output-escaping="yes"> 是 </xsl:text>
                            <input  class="input_radio" value="false" type="radio" name="is_running" id="infoinge_job_is_running_false" onclick="$('#infoinge_job_is_running').val('false')">
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
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">作业描述：</span>
                        <div class="text">
                            <div class="div_textarea">
                                <textarea id="infoinge_job_description"  class="validate[maxSize[256]]">
                                    <xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/description"/>
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'job.infoinge.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" class="submit_btn" onclick="processJobSetting()">提交</a>
                                <a href="javascript:void(0)" class="disable_btn" style="display:none;background:#eeeeee">提交</a>
                                <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                <input type="reset" style="display:none" class="reset_data"/>

                                <!--隐藏按钮-->
                                <input type="hidden" name="code" id="code_infoinge_job">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/code"/></xsl:attribute>
                                </input>
                                <input type="hidden" name="connection_code" id="connection_code_infoinge_job">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.infoinge_job/record.crest/connection_code"/></xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
