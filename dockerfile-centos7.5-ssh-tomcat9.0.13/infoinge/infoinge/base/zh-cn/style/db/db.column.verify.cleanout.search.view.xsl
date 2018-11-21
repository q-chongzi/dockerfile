<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
            <table>
                <xsl:attribute name="field_verify_code"><xsl:value-of select="cludove.crest.spruce.field_cleanout/record.crest/field_verify_code" /></xsl:attribute>
                <tr>
                    <th style="background-color:#B9BFCB;color:#ffffff;">
                        <button style="margin-left:-80px;margin-right: 50px;background-color:#ff8331;color:#ffffff;border:transparent;border-radius: 5px;width: 40px;height: 25px;cursor: pointer">
                            <xsl:attribute name="onclick">
                                $('#<xsl:value-of select="parameter.cludove/field_verify_code"/>_cleanout_setting').show();
                                onFieldCleanoutRegulationSetting('<xsl:value-of select="parameter.cludove/field_verify_code" />',this,'');
                            </xsl:attribute>
                            设置
                        </button>
                        清洗规则
                    </th>
                    <th style="background-color:#B9BFCB;color:#ffffff">处理顺序</th>
                    <th style="background-color:#B9BFCB;color:#ffffff">名字</th>
                    <th style="background-color:#B9BFCB;color:#ffffff">标识</th>
                    <th style="background-color:#B9BFCB;color:#ffffff;position: relative">操作
                        <b style="cursor: pointer;color: #ff8331;position: absolute;right: 20px">
                            <xsl:attribute name="onclick">
                                $('#'+'<xsl:value-of select="parameter.cludove/field_verify_code" />').hide();
                            </xsl:attribute>
                            X
                        </b>
                    </th>
                </tr>
                <xsl:choose>
                    <xsl:when test="count(/content/cludove.crest.spruce.field_cleanout/record.crest) > 0">
                        <xsl:for-each select="/content/cludove.crest.spruce.field_cleanout/record.crest">
                            <xsl:sort data-type="number" select="position"/>
                            <xsl:variable name="cleanout_code">
                                <xsl:value-of select="cleanout_code"/>
                            </xsl:variable>
                            <tr>
                                <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                                <xsl:attribute name="verify_code"><xsl:value-of select="verify_code" /></xsl:attribute>
                                <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                                    <xsl:value-of select="/content/cludove.crest.spruce.cleanout_regulation/record.crest[code = $cleanout_code]/class"/>
                                </td>
                                <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                                    <xsl:choose>
                                        <xsl:when test="position = ''">
                                            <xsl:text>0</xsl:text>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="position" />
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                                <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                                    <xsl:value-of select="/content/cludove.crest.spruce.cleanout_regulation/record.crest[code = $cleanout_code]/regulation_name"/>
                                </td>
                                <td style="overflow: hidden;text-overflow:ellipsis;"  onmouseover="this.style='word-break:break-all'"  onmouseout="this.style='overflow: hidden;text-overflow:ellipsis; '">
                                    <xsl:value-of select="/content/cludove.crest.spruce.cleanout_regulation/record.crest[code = $cleanout_code]/identifier"/>
                                </td>
                                <td>
                                    <a class="a_dele" href="javascript:void(0)" title="停用">
                                        <img src="infoinge/base/zh-cn/img/dele.png" style="height:22px; width:20px">
                                            <xsl:choose>
                                                <xsl:when test="(count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'db.column.verify.cleanout.remove.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager')" />
                                                <xsl:otherwise>
                                                    <xsl:attribute name="style">display:none</xsl:attribute>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                            <xsl:attribute name="onclick">if (confirm("确认停用 清洗规则 <xsl:value-of select="cleanout_code" />/<xsl:value-of select="regulation_name" />  吗？")) {$.request(httpHeader, '', new Array('buddle.cludove', 'catalog.cludove', 'code', 'is_active', 'connection_code'), new Array('infoinge', 'db.column.verify.cleanout.remove.process', '<xsl:value-of select="code" />', 'false', '<xsl:value-of select="connection_code" />'), new Array(), new Array(), 'text',null, null, 'onRecordRemoveCallBack', 'normalErrorCallback');}	</xsl:attribute>
                                        </img>
                                    </a>
                                    <a style="margin-left:20px;" href="javascript:void(0)" class="a_edit">
                                        <xsl:attribute name="onclick">$('#<xsl:value-of select="/content/parameter.cludove/field_verify_code"/>_cleanout_setting').show();onFieldCleanoutRegulationSetting('<xsl:value-of select="/content/parameter.cludove/field_verify_code" />', this,'<xsl:value-of select="code"/>');
                                        </xsl:attribute>
                                        <img src="infoinge/base/zh-cn/img/edit.png" title="查看|修改" style="height:20px; width:19px"/>
                                    </a>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </xsl:when>
                    <xsl:otherwise>
                        <tr>
                            <td colspan="5"><xsl:text disable-output-escaping="yes">没有清洗规则</xsl:text></td>
                        </tr>
                    </xsl:otherwise>
                </xsl:choose>
            </table>
    </xsl:template>
</xsl:stylesheet>
