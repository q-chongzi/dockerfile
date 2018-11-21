<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="main_tab">
            <table>
                <tr>
                    <th class="th1">
                    </th>
                    <th class="th1">
                        <span class="span_check span_check_design" id="check_all_design"></span>
                    </th>
                    <th>交换名称</th>
                    <th>交换描述</th>
                    <th class="th7">操作</th>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.exchange_design/record.crest">
                    <xsl:sort order="ascending" select="name"/>
                    <tr>
                        <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                        <td>
                            <input type="radio" name="design_select">
                                <xsl:attribute name="onclick">showDesignSetting('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', 1)</xsl:attribute>
                                <xsl:attribute name="ondblclick">showDesignSetting('<xsl:value-of select="code" />', '<xsl:value-of select="identifier" />', 0)</xsl:attribute>
                                <!--<xsl:if test="position() = 1">-->
                                <!--<xsl:attribute name="checked">true</xsl:attribute>-->
                                <!--</xsl:if>-->
                            </input>
                        </td>
                        <td>
                            <input type="hidden" class="design_check">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="code" />
                                    <xsl:text>,</xsl:text>
                                    <xsl:value-of select="connection_code" />
                                </xsl:attribute>
                            </input>
                            <span class="span_check span_check_design span_check_select_design design_check_select"></span>
                        </td>
                        <td>
                            <xsl:value-of select="name" />
                        </td>
                        <td>
                            <xsl:value-of select="description" />
                        </td>
                        <td>
                            <div class="div_btn">
                                <a class="a_dele" href="javascript:void(0)" title="停用">
                                    <img src="infoinge/base/zh-cn/img/dele.png">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'exchange.design.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                            <xsl:otherwise>
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:attribute name="onclick">if (confirm("确认停用 功能目录<xsl:value-of select="name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'design_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'exchange.design.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}</xsl:attribute>
                                    </img>
                                </a>
                                <a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
                                    <xsl:attribute name="onclick">showDesignSetting('<xsl:value-of select="code" />')</xsl:attribute>
                                    <img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
                                </a>
                            </div>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
