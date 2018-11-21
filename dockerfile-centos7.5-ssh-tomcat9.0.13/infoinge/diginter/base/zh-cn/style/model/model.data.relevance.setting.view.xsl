<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GBK" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <form class="form-horizontal" role="form" id="validate_data_relevance_setting" style="margin-top:10px">
            <div>
                <!--r_关联字段-->
                <p>
                    <xsl:attribute name="id">data_r_association_field</xsl:attribute>
                </p>
                <!--s_本表字段-->
                <p>
                    <xsl:attribute name="id">data_s_association_field</xsl:attribute>
                </p>
                <div class="configure-fr-side-bottom">

                    <input class="sub" value="提交" type="button">
                        <xsl:attribute name="onclick">processModelDataResourceRelevance()</xsl:attribute>
                    </input>
                    <input class="res" value="清除" type="reset"/>
                    <input type="button" href="javascript:void(0)" class="but" value="返回" onclick="model.showModelDataSetting('','');"/>
                    <!--隐藏按钮-->
                    <input type="hidden" name="s_identifier" id="s_identifier">
                        <xsl:attribute name="value"><xsl:value-of select="parameter.cludove/s_identifier"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="s_resource_name" id="s_resource_name">
                        <xsl:attribute name="value"><xsl:value-of select="parameter.cludove/s_resource_name"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="r_identifier" id="r_identifier">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/connection_id"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="r_resource_name" id="r_resource_name">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/resource_name"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="buddle_id" id="buddle_id">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/buddle_id"/></xsl:attribute>
                    </input>
                    <input type="hidden" name="data_r_type" id="data_r_type">
                        <xsl:attribute name="value"><xsl:value-of select="cludove.crest.spruce.data/record.crest/type"/></xsl:attribute>
                    </input>
                </div>
            </div>
        </form>
    </xsl:template>
</xsl:stylesheet>
