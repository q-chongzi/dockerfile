<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="html"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_design_setting">
            <div class="item">
                <div class="title">
                    <xsl:choose>
                        <xsl:when test="count(cludove.crest.spruce.exchange_design/record.crest) > 0">
                            <span class="set_design_name">交换设计</span>
                            <span class="span_edit span_design_edit" title="新增交换设计">
                                <xsl:choose>
                                    <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'exchange.design.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                                    <xsl:otherwise>
                                        <xsl:attribute name="style">display:none</xsl:attribute>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <xsl:attribute name="onclick">$(".set_design_name").html("交换设计-新增"); $(".span_design_edit").hide(); $('#code_design').val(''); $('#connection_code_design').val(''); $('#design_name').focus();</xsl:attribute>
                            </span>
                        </xsl:when>
                        <xsl:otherwise>
                            <span class="set_design_name">交换设计-新增</span>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
                <div class="div_txt">
                    <div class="list">
                        <span class="span_tit">交换名称：</span>
                        <div class="text">
                            <div class="div_input">
                                <input maxlength="128" type="text" id="design_name" class="validate[required,maxSize[128]]">
                                    <xsl:attribute name="value">
                                        <xsl:value-of select="cludove.crest.spruce.exchange_design/record.crest/name"/>
                                    </xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <span class="span_tit">功能描述：</span>
                        <div class="text">
                            <div class="div_textarea">
                                <textarea id="design_description"  class="validate[maxSize[256]]">
                                    <xsl:value-of select="cludove.crest.spruce.exchange_design/record.crest/description"/>
                                </textarea>
                            </div>
                        </div>
                    </div>
                    <div class="list">
                        <xsl:choose>
                            <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'infoinge' and catalog_id = 'exchange.design.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                            <xsl:otherwise>
                                <xsl:attribute name="style">display:none</xsl:attribute>
                            </xsl:otherwise>
                        </xsl:choose>
                        <span class="span_tit"/>
                        <div class="text">
                            <div class="div_btn">
                                <a href="javascript:void(0)" onclick="processDesignSetting()">提交</a>
                                <a href="javascript:void(0)" onclick="resetData(this)">重置</a>
                                <input type="reset" style="display:none" id="reset_data"/>

                                <!--隐藏按钮-->
                                <input type="hidden" name="code" id="code_design">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.exchange_design/record.crest/code"/></xsl:attribute>
                                </input>
                                <input type="hidden" name="connection_code" id="connection_code_design">
                                    <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.exchange_design/record.crest/connection_code"/></xsl:attribute>
                                </input>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
