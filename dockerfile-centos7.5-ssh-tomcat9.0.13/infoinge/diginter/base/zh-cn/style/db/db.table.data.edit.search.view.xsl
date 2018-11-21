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
            <xsl:variable name="total">
                <xsl:value-of select="pagination.cludove/totalPage.cludove"/>
            </xsl:variable>
            <p>
                <xsl:value-of select="$total"/>
            </p>
            <p>
                <xsl:value-of select="pagination.cludove/recordNumber.cludove"/>
            </p>
            <div class="configure-fr-side" style="position:static;width:100%">
                <p>
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
                    <input type="text" id="search_td" maxlength="64" placeholder="输入查询条件" class="input-1">
                        <xsl:attribute name="value">
                            <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
                        </xsl:attribute>
                    </input>
                    <input type="button" onclick="datas.ManagementFieldSearch()" style="width: 100px;height: 30px;border-radius: 15px;color: #fff;outline: none;border: none;cursor: pointer;margin: 0px 10px 0;background-color: #ff9900;"  value="查询"/>
                </p>
            </div>
            <div class="configure-fr" id="db_table_data_field_search" style="width:100%;height:600px;margin:auto;text-align: center;overflow-y:auto">
                <table id="data_edit_label" style="width:100%;margin:auto;line-height:2em; text-align:center; color:#666;">
                    <tr class="">
                        <xsl:for-each select="title/field">
                            <th>
                                <xsl:value-of select="tag"/>
                            </th>
                        </xsl:for-each>
                    </tr>
                    <xsl:for-each select="record.crest">
                        <tr>
                            <xsl:for-each select="node()">
                                <td>
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
