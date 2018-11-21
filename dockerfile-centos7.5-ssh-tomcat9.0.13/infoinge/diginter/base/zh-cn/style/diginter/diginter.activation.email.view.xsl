<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <div class="retrieve-con">
            <div style="position: relative" class="retrieve-con-tit">
                <p style="float:right;cursor:pointer" onclick="$('#diginter_activation').hide()">&#215;</p>
                <p class="activation-title">产品激活</p>
            </div>
            <div style="margin-top:-20px;padding: 40px 180px 0" id="activation_con" class="retrieve-con-txt activation">
                <h1>请输入激活信息</h1>
                <form action="" method="post" id="activation_email_validate">
                    <label for="email">邮箱地址：</label>
                    <input type="text" maxlength="32" id="manage_email" placeholder="邮箱" class="user validate[required,maxSize[32],custom[email]]"/>
                    <br/><xsl:if test="count(parameter.cludove/modality)>0">
                    <br/>
                </xsl:if>
                    <div class="already_activation hidden">
                        <label for="unit">单位名称：</label>
                        <input type="text" maxlength="64" id="unit_name" placeholder="单位名称" class="user validate[required,maxSize[64]]"/>
                        <br/><xsl:if test="count(parameter.cludove/modality)>0">
                            <br/>
                        </xsl:if>
                        <label for="phone">联系电话：</label>
                        <input type="text" maxlength="16" id="contact_phone" placeholder="联系电话" class="user validate[required,maxSize[16],custom[phone]]"/>
                        <br/><xsl:if test="count(parameter.cludove/modality)>0">
                        <br/>
                    </xsl:if>
                        <label for="member">联 系 人 ：</label>
                        <input type="text" maxlength="16" id="contact_member" placeholder="联系人" class="user validate[required]"/>
                        <br/><xsl:if test="count(parameter.cludove/modality)>0">
                        <br/>
                    </xsl:if>
                        <label for="address">联系地址：</label>
                        <input type="text" maxlength="128" id="contact_address" placeholder="联系地址" class="user validate[required,maxSize[128]]"/>
                    </div>
                    <div id="submit_button_zone" style="margin-top:20px;">
                        <input type="button" class="sub" value="提交" id="activation_email" style="height:45px;margin-left:69px;" />
                    </div>
                </form>
            </div>
            <div id="manage_email_return">

            </div>
            <input id="serial_number" type="hidden"/>
            <input id="account_type" type="hidden"/>
            <input id="is_activation" type="hidden"/>
            <input id="business_http" type="hidden">
                <xsl:attribute name="value">
                    <xsl:value-of select="cludove.crest.spruce.resource_connection/record.crest/template"/>
                </xsl:attribute>
            </input>
        </div>
    </xsl:template>
</xsl:stylesheet>
