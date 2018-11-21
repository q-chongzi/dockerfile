<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <!--<xsl:variable name="smallcase" select="'abcdefghijklmnopqrstuvwxyz'"/>-->
        <!--<xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'"/>-->
        <xsl:variable name="location_id">
            <xsl:value-of select="parameter.cludove/connection_id"/>
            <xsl:text>.</xsl:text>
            <xsl:value-of select="parameter.cludove/resource_name"/>
        </xsl:variable>
        <!--<xsl:variable name="location_id">-->
            <!--<xsl:value-of select="translate(parameter.cludove/connection_id,$uppercase,$smallcase)"/>-->
            <!--<xsl:text>.</xsl:text>-->
            <!--<xsl:value-of select="translate(parameter.cludove/resource_name,$uppercase,$smallcase)"/>-->
            <!--<xsl:text>/record.crest</xsl:text>-->
        <!--</xsl:variable>-->
        <xsl:for-each select="*">
            <xsl:apply-templates select=".">
                <xsl:with-param name="location_id">
                    <xsl:value-of select="$location_id"/>
                </xsl:with-param>
            </xsl:apply-templates>
        </xsl:for-each>
    </xsl:template>
    <xsl:template match="*">
        <xsl:param name="location_id"/>
        <xsl:if test="@id=$location_id">
            <div class="row">
                <div class="item">
                    <div class="div_txt">
                        <div class="list" style="position: relative;">
                            <!--<span class="span_tit" style="color:#000;font-size:1.8em">查询：</span>-->
                            <div class="item1">
                                <div class="div_select" style="width:200px;float:left">
                                    <select id="search_th">
                                        <option value="">请选择字段</option>
                                        <xsl:for-each select="title/field">
                                            <option>
                                                <xsl:attribute name="value">
                                                    <xsl:value-of select="tag"/>
                                                </xsl:attribute>
                                                <xsl:value-of select="tag"/>
                                            </option>
                                        </xsl:for-each>
                                    </select>
                                </div>
                                <div class="div_input2" style="width:200px;float:left;margin-left:20px" >
                                    <input type="text" id="search_td" maxlength="64" placeholder="输入查询条件" class="validate[required,maxSize[64]]">
                                        <xsl:attribute name="value">
                                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
                                        </xsl:attribute>
                                    </input>
                                </div>
                            </div>
                            <div class="item1">
                                <div class="text" style="position: absolute;width:60%;top:0;left:30%">
                                    <div class="div_btn" style="margin-left:2.5%">
                                        <a style="width:10%" onclick="datas.ManagementFieldSearch()" href="javascript:void(0)">查询</a>
                                    </div>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" id="db_table_data_field_search" style="width:100%;margin:auto;text-align: center;">
                <form class="" role="form" id="" style="margin:auto;">
                    <div class="item">

                        <div class="div_txt">

                            <div class="list">
                                <div class="" style="height:550px">
                                    <table id="data_edit_label" style="width:100%;margin:auto;line-height:2em; text-align:center; color:#666;">
                                        <tr>
                                            <xsl:for-each select="title/field">
                                                <th class="thth">
                                                    <xsl:value-of select="tag"/>
                                                </th>
                                            </xsl:for-each>
                                        </tr>
                                        <xsl:for-each select="record.crest">
                                            <tr class="trtr">
                                                <xsl:for-each select="node()">
                                                    <td style="cursor:pointer;border-right: 1px solid #EDEDED;height:33px;line-height:33px;overflow: hidden;text-overflow:ellipsis;">
                                                        <xsl:attribute name="title"><xsl:value-of select="." /></xsl:attribute>
                                                        <xsl:attribute name="position">
                                                            <xsl:value-of select="position()"/>
                                                        </xsl:attribute>
                                                        <xsl:value-of select="."/>
                                                    </td>
                                                </xsl:for-each>
                                            </tr>
                                        </xsl:for-each>
                                    </table>
                                    <xsl:call-template name="pagination_show">
                                        <xsl:with-param name="list_table_paginate_id">
                                            <xsl:text disable-output-escaping="yes">data_edit_label_list_table_paginate</xsl:text>
                                        </xsl:with-param>
                                        <xsl:with-param name="list_table_first_id">
                                            <xsl:text disable-output-escaping="yes">data_edit_label_list_table_first</xsl:text>
                                        </xsl:with-param>
                                        <xsl:with-param name="page_number">
                                            <xsl:value-of select="pagination.cludove/pageNumber.cludove"/>
                                        </xsl:with-param>
                                        <xsl:with-param name="record_number">
                                            <xsl:value-of select="pagination.cludove/recordNumber.cludove"/>
                                        </xsl:with-param>
                                        <xsl:with-param name="total_page">
                                            <xsl:value-of select="pagination.cludove/totalPage.cludove"/>
                                        </xsl:with-param>
                                        <xsl:with-param name="execute_statement">
                                            <xsl:text disable-output-escaping="yes"><![CDATA[datas.ManagementFieldSearch();]]></xsl:text>
                                        </xsl:with-param>
                                        <xsl:with-param name="page_number_id">
                                            <xsl:text>data_edit_label_page_number</xsl:text>
                                        </xsl:with-param>
                                        <xsl:with-param name="record_number_id">
                                            <xsl:text>data_edit_label_record_number</xsl:text>
                                        </xsl:with-param>
                                    </xsl:call-template>
                                </div>
                            </div>

                        </div>
                    </div>
                </form>
            </div>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
