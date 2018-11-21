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
                    <span class="set_organization_name">组织机构-新增</span>
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
                        <span class="span_tit">全称：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_full_name" class="validate[maxSize[64]]"/>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">缩写：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_abbreviation" class="validate[maxSize[16]]"/>
                            </div>
                        </div>
                    </div>

                    <div class="list">
                        <span class="span_tit">加入时间：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_join_time" class="laydate-icon" onclick="onLaydate2()">
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">类型：</span>
                        <div class="text">
                            <div class="div_input">
                                <input type="text" id="organization_type" class="validate[maxSize[16]]"/>
                            </div>
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
