<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xal="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="main_tab">
            <table style="word-break: break-all">
                <tr>
                    <th>
                        <!--<xsl:choose>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = -1">-->
                        <!--<xsl:text disable-output-escaping="yes">异常日志</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = 1">-->
                        <!--<xsl:text disable-output-escaping="yes">功能日志</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = 2">-->
                        <!--<xsl:text disable-output-escaping="yes">迁移日志</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = 3">-->
                        <!--<xsl:text disable-output-escaping="yes">同步日志</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = 4">-->
                        <!--<xsl:text disable-output-escaping="yes">定时任务</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:when test="parameter.cludove/journal_type = 0">-->
                        <!--<xsl:text disable-output-escaping="yes">登陆日志</xsl:text>-->
                        <!--</xsl:when>-->
                        <!--<xsl:otherwise/>-->
                        <!--</xsl:choose>-->
                        <xsl:text disable-output-escaping="yes">时间</xsl:text>
                    </th>
                    <th>请求标识</th>
                    <th>请求地址</th>
                    <th>登录帐号</th>
                    <th class="th7">插件名字</th>
                    <th class="th7">目录名字</th>
                    <th class="th1">耗时</th>
                    <th class="th1">结果</th>
                    <th class="th1">上下文</th>
                </tr>
                <xsl:for-each select="journal.cludove/record.crest">
                    <xsl:sort order="ascending" select="record_time"/>
                    <tr>
                        <td>
                            <xsl:value-of select="record_time"/>
                        </td>
                        <td>
                            <xsl:value-of select="request_id"/>
                        </td>
                        <td>
                            <xsl:value-of select="request_ip"/>
                        </td>
                        <td>
                            <xsl:value-of select="account_name"/>
                        </td>
                        <td>
                            <xsl:value-of select="buddle_id"/>
                            <xsl:text disable-output-escaping="yes">[</xsl:text>
                            <xsl:value-of select="buddle_name"/>
                            <xsl:text disable-output-escaping="yes">]</xsl:text>
                        </td>
                        <td style="overflow: hidden;">
                            <xsl:value-of select="catalog_id"/>
                            <!--<xsl:text disable-output-escaping="yes">[</xsl:text>-->
                            <!--<xsl:value-of select="catalog_name"/>-->
                            <!--<xsl:text disable-output-escaping="yes">]</xsl:text>-->
                        </td>
                        <td>
                            <xsl:value-of select="operate_times"/>
                        </td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="operate_result = 'success'">
                                    <xsl:text disable-output-escaping="yes">成功</xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:text disable-output-escaping="yes">失败</xsl:text>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                        <td>
                            <div class="div_btn">
                                <a class="a_add" target="_blank">
                                    <!--<xsl:attribute name="onclick">onJournalShow('<xsl:value-of select="record_host"/>','<xsl:value-of select="record_year"/>','<xsl:value-of select="record_month"/>','<xsl:value-of select="record_day"/>','<xsl:value-of select="record_hour"/>','<xsl:value-of select="record_minute"/>','<xsl:value-of select="request_id"/>','<xsl:value-of select="buddle_id"/>','<xsl:value-of select="catalog_id"/>','<xsl:value-of select="position"/>','<xsl:value-of select="process_index"/>')</xsl:attribute>-->
                                    <xsl:choose>
                                        <xsl:when test="(position ='' or position ='null') and (process_index='' or process_index ='null')">
                                            <xsl:attribute name="href">
                                                <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=journal.show.view&amp;record_host=</xsl:text><xsl:value-of
                                                    select="record_host"/><xsl:text disable-output-escaping="yes">&amp;record_year=</xsl:text><xsl:value-of
                                                    select="record_year"/><xsl:text disable-output-escaping="yes">&amp;record_month=</xsl:text><xsl:value-of
                                                    select="record_month"/><xsl:text disable-output-escaping="yes">&amp;record_day=</xsl:text><xsl:value-of
                                                    select="record_day"/><xsl:text disable-output-escaping="yes">&amp;record_hour=</xsl:text><xsl:value-of
                                                    select="record_hour"/><xsl:text disable-output-escaping="yes">&amp;record_minute=</xsl:text><xsl:value-of
                                                    select="record_minute"/><xsl:text disable-output-escaping="yes">&amp;request_id=</xsl:text><xsl:value-of
                                                    select="request_id"/><xsl:text
                                                    disable-output-escaping="yes">&amp;buddle_id=</xsl:text><xsl:value-of
                                                    select="buddle_id"/><xsl:text
                                                    disable-output-escaping="yes">&amp;catalog_id=</xsl:text><xsl:value-of
                                                    select="catalog_id"/>
                                            </xsl:attribute>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:choose>
                                                <xsl:when test="position ='' or position ='null' ">
                                                    <xsl:attribute name="href">
                                                        <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=journal.show.view&amp;record_host=</xsl:text><xsl:value-of
                                                            select="record_host"/><xsl:text disable-output-escaping="yes">&amp;record_year=</xsl:text><xsl:value-of
                                                            select="record_year"/><xsl:text disable-output-escaping="yes">&amp;record_month=</xsl:text><xsl:value-of
                                                            select="record_month"/><xsl:text disable-output-escaping="yes">&amp;record_day=</xsl:text><xsl:value-of
                                                            select="record_day"/><xsl:text disable-output-escaping="yes">&amp;record_hour=</xsl:text><xsl:value-of
                                                            select="record_hour"/><xsl:text disable-output-escaping="yes">&amp;record_minute=</xsl:text><xsl:value-of
                                                            select="record_minute"/><xsl:text disable-output-escaping="yes">&amp;request_id=</xsl:text><xsl:value-of
                                                            select="request_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;buddle_id=</xsl:text><xsl:value-of
                                                            select="buddle_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;catalog_id=</xsl:text><xsl:value-of
                                                            select="catalog_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;process_index=</xsl:text><xsl:value-of
                                                            select="process_index"/>
                                                    </xsl:attribute>
                                                </xsl:when>
                                                <xsl:when test="process_index ='' or process_index ='null' ">
                                                    <xsl:attribute name="href">
                                                        <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=journal.show.view&amp;record_host=</xsl:text><xsl:value-of
                                                            select="record_host"/><xsl:text disable-output-escaping="yes">&amp;record_year=</xsl:text><xsl:value-of
                                                            select="record_year"/><xsl:text disable-output-escaping="yes">&amp;record_month=</xsl:text><xsl:value-of
                                                            select="record_month"/><xsl:text disable-output-escaping="yes">&amp;record_day=</xsl:text><xsl:value-of
                                                            select="record_day"/><xsl:text disable-output-escaping="yes">&amp;record_hour=</xsl:text><xsl:value-of
                                                            select="record_hour"/><xsl:text disable-output-escaping="yes">&amp;record_minute=</xsl:text><xsl:value-of
                                                            select="record_minute"/><xsl:text disable-output-escaping="yes">&amp;request_id=</xsl:text><xsl:value-of
                                                            select="request_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;buddle_id=</xsl:text><xsl:value-of
                                                            select="buddle_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;catalog_id=</xsl:text><xsl:value-of
                                                            select="catalog_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;position=</xsl:text><xsl:value-of
                                                            select="position"/>
                                                    </xsl:attribute>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:attribute name="href">
                                                        <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=journal.show.view&amp;record_host=</xsl:text><xsl:value-of
                                                            select="record_host"/><xsl:text disable-output-escaping="yes">&amp;record_year=</xsl:text><xsl:value-of
                                                            select="record_year"/><xsl:text disable-output-escaping="yes">&amp;record_month=</xsl:text><xsl:value-of
                                                            select="record_month"/><xsl:text disable-output-escaping="yes">&amp;record_day=</xsl:text><xsl:value-of
                                                            select="record_day"/><xsl:text disable-output-escaping="yes">&amp;record_hour=</xsl:text><xsl:value-of
                                                            select="record_hour"/><xsl:text disable-output-escaping="yes">&amp;record_minute=</xsl:text><xsl:value-of
                                                            select="record_minute"/><xsl:text disable-output-escaping="yes">&amp;request_id=</xsl:text><xsl:value-of
                                                            select="request_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;buddle_id=</xsl:text><xsl:value-of
                                                            select="buddle_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;catalog_id=</xsl:text><xsl:value-of
                                                            select="catalog_id"/><xsl:text
                                                            disable-output-escaping="yes">&amp;position=</xsl:text><xsl:value-of
                                                            select="position"/><xsl:text
                                                            disable-output-escaping="yes">&amp;process_index=</xsl:text><xsl:value-of
                                                            select="process_index"/>
                                                    </xsl:attribute>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:otherwise>
                                    </xsl:choose>

                                    <img src="infoinge/base/zh-cn/img/add.png" title="查看上下文"/>
                                </a>
                            </div>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
