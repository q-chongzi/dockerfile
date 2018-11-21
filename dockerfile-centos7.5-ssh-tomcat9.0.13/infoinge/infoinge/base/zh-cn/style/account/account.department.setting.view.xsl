<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_account_setting">
            <div class="item">
                <div class="title">
                    <!--<xsl:choose>-->
                    <!--<xsl:when test="count(cludove.spruce.lock.cd_logon_account/record.crest) > 0">-->
                    <!--<span class="set_account_name">登录帐号</span>-->
                    <!--<span class="span_edit span_account_edit" title="新增登录帐号">-->
                    <!--<xsl:choose>-->
                    <!--<xsl:when test="count(/content/cludove.spruce.lock.cd_permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.setting.proces']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>-->
                    <!--<xsl:otherwise>-->
                    <!--<xsl:attribute name="style">display:none</xsl:attribute>-->
                    <!--</xsl:otherwise>-->
                    <!--</xsl:choose>-->
                    <!--<xsl:attribute name="onclick">$(".set_account_name").html("登录帐号-新增");$("#account_account_name").removeProp("readonly");  $(".span_account_edit").hide(); $('#code_account').val(''); $('#connection_code_account').val(''); $('#account_account_name').focus();</xsl:attribute>-->
                    <!--</span>-->
                    <!--</xsl:when>-->
                    <!--<xsl:otherwise>-->
                    <!--<span class="set_account_name">登录帐号-新增</span>-->
                    <!--</xsl:otherwise>-->
                    <!--</xsl:choose>-->
                    <span class="set_organization_name">机构部门-新增</span>
                </div>
                <div class="div_txt">
                    <div class="list">
                        <span class="span_tit">简称：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_shortened_form"  class="validate[required,maxSize[32]]">
                                </input>
                            </div>
                        </div>
                    </div>

                    <div class="list">
                        <span class="span_tit">标识：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_abbreviation" class="validate[maxSize[64]]"/>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">全称：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_full_name" class="validate[maxSize[64]]"/>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">判断权限：</span>
                        <div class="text">
                            <input class="input_radio" value="true" type="radio" checked="checked">
                            </input>
                            <xsl:text disable-output-escaping="yes"> 是 </xsl:text>
                            <input class="input_radio" value="false" type="radio">
                            </input>
                            <xsl:text disable-output-escaping="yes"> 否 </xsl:text>
                            <!--<input id="catalog_is_permit" type="hidden">-->
                            <!--</input>-->
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">级别：</span>
                        <div class="organization_director_level_spinner">
                            <input type="text" id="organization_director_level" class="validate[integer,maxSize[3]]">
                                <xsl:attribute name="value">
                                    <xsl:choose>
                                        <xsl:when test="cludove.crest.spruce.data/record.crest/row_number != ''">
                                            <xsl:value-of select="cludove.crest.spruce.data/record.crest/row_number"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:text>0</xsl:text>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                            </input>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'account.setting.proces']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" >提交</a>
                                <a href="javascript:void(0)">重置</a>
                                <input type="reset" style="display:none" id="reset_data"/>

                                <!--隐藏按钮-->
                                <!--<input type="hidden" name="code" id="code_account">-->
                                <!--<xsl:attribute name="value"><xsl:value-of select="cludove.spruce.lock.cd_logon_account/record.crest/code"/></xsl:attribute>-->
                                <!--</input>-->
                                <!--<input type="hidden" name="connection_code" id="connection_code_account">-->
                                <!--<xsl:attribute name="value"><xsl:value-of select="cludove.spruce.lock.cd_logon_account/record.crest/connection_code"/></xsl:attribute>-->
                                <!--</input>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
