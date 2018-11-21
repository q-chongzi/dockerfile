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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>
