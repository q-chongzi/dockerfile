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
                        <span class="span_check span_check_verify" id="check_all_verify" />
                    </th>
                    <th>处理类</th>
                    <th>验证规则</th>
                    <th class="th7">名字</th>
                    <th class="th7">标识</th>
                    <th class="th7">操作</th>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.verify_regulation/record.crest">
                    <xsl:sort order="ascending" select="regulation_name"/>
                    <xsl:sort order="ascending" select="class"/>
                    <tr>
                        <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                        <!--<xsl:attribute name="onclick">verifyCleanoutdisplay('<xsl:value-of select="code" />');</xsl:attribute>-->
                        <td>
                            <input type="radio" name="verify_select">
                                <xsl:attribute name="onclick">showVerifySetting('<xsl:value-of select="code" />')</xsl:attribute>
                                <!--<xsl:if test="position() = 1">-->
                                <!--<xsl:attribute name="checked">true</xsl:attribute>-->
                                <!--</xsl:if>-->
                            </input>
                        </td>
                        <td>
                            <input type="hidden" class="verify_check">
                                <xsl:attribute name="value">
                                    <xsl:value-of select="code" />
                                    <xsl:text>,</xsl:text>
                                    <xsl:value-of select="connection_code" />
                                </xsl:attribute>
                            </input>
                            <span class="span_check span_check_verify span_check_select_verify verify_check_select" />
                        </td>
                        <td  style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                            <xsl:attribute name="onclick">verifyCleanoutdisplay('<xsl:value-of select="code" />');</xsl:attribute>
                            <xsl:attribute name="title"><xsl:value-of select="class" /></xsl:attribute>
                            <xsl:value-of select="class" />
                        </td>
                        <td  style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                            <xsl:attribute name="onclick">verifyCleanoutdisplay('<xsl:value-of select="code" />');</xsl:attribute>
                            <xsl:attribute name="title"><xsl:value-of select="regulation" /></xsl:attribute>
                            <xsl:value-of select="regulation" />
                        </td>
                        <td  style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                            <xsl:attribute name="onclick">verifyCleanoutdisplay('<xsl:value-of select="code" />');</xsl:attribute>
                            <xsl:attribute name="title"><xsl:value-of select="regulation_name" /></xsl:attribute>
                            <xsl:value-of select="regulation_name" />
                        </td>
                        <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                            <xsl:attribute name="onclick">verifyCleanoutdisplay('<xsl:value-of select="code" />');</xsl:attribute>
                            <xsl:value-of select="identifier" />
                        </td>
                        <td>
                            <div class="div_btn">
                                <a class="a_dele" href="javascript:void(0)" title="停用">
                                    <img src="infoinge/base/zh-cn/img/dele.png">
                                        <xsl:choose>
                                            <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'verify.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                            <xsl:otherwise>
                                                <xsl:attribute name="style">display:none</xsl:attribute>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                        <xsl:attribute name="onclick">if (confirm("确认停用 验证规则 <xsl:value-of select="class" />/<xsl:value-of select="regulation_name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'verify_record_code', 'is_active', 'connection_code'), new Array('infoinge', 'verify.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}	</xsl:attribute>
                                    </img>
                                </a>
                                <a href="javascript:void(0)" class="a_edit" onclick="editData(this)">
                                    <xsl:attribute name="onclick">showVerifySetting('<xsl:value-of select="code" />')</xsl:attribute>
                                    <img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改"/>
                                </a>
                            </div>
                        </td>
                    </tr>
                    <tr style="display:none">
                        <xsl:attribute name="id"><xsl:value-of select="code" /></xsl:attribute>
                        <td colspan="7" style="width:800px;height:80px;">
                            <div>
                                <xsl:attribute name="id"><xsl:value-of select="code" />_cleanout_search</xsl:attribute>
                            </div>
                            <div class="cleanout_setting_display" style="display:none;border: 3px solid #95D3D3;height:200px;border-bottom:5px solid #95D3D3">
                                <xsl:attribute name="id"><xsl:value-of select="code" />_cleanout_setting</xsl:attribute>
                            </div>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
