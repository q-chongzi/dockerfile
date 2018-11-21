<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <xsl:if test="count(journal.cludove/record.crest) > 0">
            <div class="main_tab">
                <table style="word-break: break-all">
                    <xsl:for-each select="journal.cludove/record.crest">
                        <xsl:sort select="position()" order="descending" data-type="number"/>
                        <tr style="cursor:pointer;">
                            <xsl:if test="/content/parameter.cludove/journal_type = '6'">
                                <xsl:attribute name="onclick">showJobJournalExecute('<xsl:value-of select="code"/>','<xsl:value-of select="request_id"/>','<xsl:value-of select="/content/parameter.cludove/record_year"/>','<xsl:value-of select="/content/parameter.cludove/record_month"/>','<xsl:value-of select="/content/parameter.cludove/record_day"/>','<xsl:value-of select="/content/parameter.cludove/record_host"/>')</xsl:attribute>
                            </xsl:if>
                            <xsl:choose>
                                <xsl:when test="/content/parameter.cludove/journal_type = '5'">
                                    <!--<xsl:attribute name="href">?buddle.cludove=infoinge&amp;catalog.cludove=job.journal.show.view&amp;record_host=<xsl:value-of select="record_host"/>&amp;record_year=<xsl:value-of select="record_year"/>&amp;record_month=<xsl:value-of select="record_month"/>&amp;record_day=<xsl:value-of select="record_day"/>&amp;record_hour=<xsl:value-of select="record_hour"/>&amp;record_minute=<xsl:value-of select="record_minute"/>&amp;record_second=<xsl:value-of select="record_second"/>&amp;request_id=<xsl:value-of select="request_id"/>&amp;buddle_id=<xsl:value-of select="buddle_id"/>&amp;catalog_id=<xsl:value-of select="catalog_id"/></xsl:attribute>-->
                                    <!--<xsl:attribute name="target">_blank</xsl:attribute>-->
                                    <xsl:attribute name="onclick">openJournal('<xsl:value-of select="request_id"/>','<xsl:value-of select="record_year"/>','<xsl:value-of select="record_month"/>','<xsl:value-of select="record_day"/>','<xsl:value-of select="record_hour"/>','<xsl:value-of select="record_minute"/>','<xsl:value-of select="record_second"/>','<xsl:value-of select="record_host"/>','<xsl:value-of select="buddle_id"/>','<xsl:value-of select="catalog_id"/>','<xsl:value-of select="position"/>','<xsl:value-of select="process_index"/>')</xsl:attribute>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:attribute name="href">javascript:void(0)</xsl:attribute>
                                </xsl:otherwise>
                            </xsl:choose>
                            <td>
                                <xsl:if test="/content/parameter.cludove/journal_type = '6'">
                                    <xsl:text>执行时间: </xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_year"/>
                                <xsl:text>-</xsl:text>
                                <xsl:if test="record_month &lt; 10">
                                    <xsl:text>0</xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_month"/>
                                <xsl:text>-</xsl:text>
                                <xsl:if test="record_day &lt; 10">
                                    <xsl:text>0</xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_day"/>
                                <xsl:text> </xsl:text>
                                <xsl:if test="record_hour &lt; 10">
                                    <xsl:text>0</xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_hour"/>
                                <xsl:text>:</xsl:text>
                                <xsl:if test="record_minute &lt; 10">
                                    <xsl:text>0</xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_minute"/>
                                <xsl:text>:</xsl:text>
                                <xsl:if test="record_second &lt; 10">
                                    <xsl:text>0</xsl:text>
                                </xsl:if>
                                <xsl:value-of select="record_second"/>
                            </td>
                            <td>
                                <xsl:text>耗时: </xsl:text>
                                <xsl:value-of select="operate_times"/>
                            </td>
                            <td>
                                <xsl:if test="/content/parameter.cludove/journal_type = '6'">
                                    <xsl:text>结果: </xsl:text>
                                </xsl:if>
                                <xsl:choose>
                                    <xsl:when test="operate_result = 'success'">
                                        <xsl:text disable-output-escaping="yes">成功</xsl:text>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:text disable-output-escaping="yes">失败</xsl:text>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                            <xsl:if test="/content/parameter.cludove/journal_type = '5'">
                                <td>
                                    <xsl:value-of select="buddle_id"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="buddle_name"/>
                                    <xsl:text>]</xsl:text>
                                </td>
                                <td>
                                    <xsl:value-of select="catalog_id"/>
                                    <xsl:text>[</xsl:text>
                                    <xsl:value-of select="catalog_name"/>
                                    <xsl:text>]</xsl:text>
                                </td>
                                <td>
                                    <xsl:value-of select="effect_number"/>
                                </td>
                            </xsl:if>
                        </tr>
                        <xsl:if test="/content/parameter.cludove/journal_type = '6'">
                            <tr style="display:none">
                                <xsl:attribute name="class">journal_execute_container</xsl:attribute>
                                <xsl:attribute name="id"><xsl:value-of select="code"/>_journal_execute_container</xsl:attribute>
                                <td colspan="3">
                                    <div>
                                        <xsl:attribute name="id"><xsl:value-of select="code"/>_journal_execute</xsl:attribute>
                                    </div>
                                </td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
