<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <p class="design-rad">
            <span class="span_tit">转换方式：</span>
            <input class="input_radio" style="margin-left:10px" value="text" type="radio" onclick="$('#select_method').val('text');$('#class_container').hide();$('#text_container').show();" id="select_method_true" name="select_method">
                <xsl:choose>
                    <xsl:when test="cludove.crest.spruce.quote/record.crest/text_converter = ''"/>
                    <xsl:otherwise>
                        <xsl:attribute name="checked">checked</xsl:attribute>
                    </xsl:otherwise>
                </xsl:choose>
            </input>
            <label for="select_method_true"> 转换文本 </label>
            <input class="input_radio" style="margin-left:10px" id="select_method_false" onclick="$('#select_method').val('class');$('#class_container').show();$('#text_container').hide();" value="class" type="radio" name="select_method">
                <xsl:choose>
                    <xsl:when test="cludove.crest.spruce.quote/record.crest/text_converter = ''">
                        <xsl:attribute name="checked">checked</xsl:attribute>
                    </xsl:when>
                    <xsl:otherwise/>
                </xsl:choose>
            </input>
            <label for="select_method_false"> 处理类 </label>
            <input type="hidden" id="select_method">
                <xsl:attribute name="value">
                    <xsl:choose>
                        <xsl:when test="cludove.crest.spruce.quote/record.crest/text_converter = ''">
                            <xsl:text>class</xsl:text>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:text>text</xsl:text>
                        </xsl:otherwise>
                    </xsl:choose>
                </xsl:attribute>
            </input>
        </p>
        <div  id="class_container">
            <xsl:choose>
                <xsl:when test="cludove.crest.spruce.quote/record.crest/class != ''"/>
                <xsl:otherwise>
                    <xsl:attribute name="style">display:none</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <p class="texta">
                <span style="margin-left:12px">表达式：</span>
                <textarea id="metadata_expression" class="validate[maxSize[512],custom[onchinaese]]" placeholder="表达式可以对数据进行四则运算，输入了表达式后，数据加工类会无效">
                    <xsl:value-of select="cludove.crest.spruce.quote/record.crest/expression"/>
                </textarea>
            </p>
            <p>
                <span>数据加工类：</span>
                <xsl:variable name="class" >
                    <xsl:value-of select="cludove.crest.spruce.quote/record.crest/class"/>
                </xsl:variable>
                <select id="metadata_class" style="padding-right: 18px;width:350px">
                    <option value="">请选择数据加工类</option>
                    <xsl:for-each select="cludove.crest.spruce.processor/record.crest">
                        <option>
                            <xsl:attribute name="value">
                                <xsl:value-of select="class"/>
                            </xsl:attribute>
                            <xsl:if test="class = $class">
                                <xsl:attribute name="selected">selected</xsl:attribute>
                            </xsl:if>
                            <xsl:value-of select="name"/>
                        </option>
                    </xsl:for-each>
                </select>
            </p>
        </div>
        <div style="display:none" id="text_container">
            <xsl:choose>
                <xsl:when test="cludove.crest.spruce.quote/record.crest/class = ''"/>
                <xsl:otherwise>
                    <xsl:attribute name="style">display:none</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <p class="texta">
                <span>转换文本：</span>
                <textarea id="metadata_text_converter" class="validate[maxSize[512]]">
                    <xsl:value-of select="cludove.crest.spruce.quote/record.crest/text_converter"/>
                </textarea>
            </p>
            <p>
                <span>文本处理方式：</span>
                <select id="metadata_text_handle"  style="padding-right: 18px;width:350px">
                    <!--<xsl:attribute name="onchange">onDataMetadataChange()</xsl:attribute>-->
                    <option value="">请选择文本处理方式</option>
                    <option value="insert">
                        <xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'insert'">
                            <xsl:attribute name="selected">selected</xsl:attribute>
                        </xsl:if>
                        <xsl:text>前面插入</xsl:text>
                    </option>
                    <option value="append">
                        <xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'append'">
                            <xsl:attribute name="selected">selected</xsl:attribute>
                        </xsl:if>
                        <xsl:text>后面追加</xsl:text>
                    </option>
                    <option value="replace">
                        <xsl:if test="cludove.crest.spruce.quote/record.crest/text_handle = 'replace'">
                            <xsl:attribute name="selected">selected</xsl:attribute>
                        </xsl:if>
                        <xsl:text>全部替换</xsl:text>
                    </option>
                </select>
            </p>
        </div>
        <div class="configure-fr-side-bottom">
            <xsl:choose>
                <xsl:when test="count(/content/cludove.crest.spruce.permission_control/record.crest[buddle_id = 'diginter' and catalog_id = 'response.design.metadata.setting.process']) > 0 or /content/parameter.cludove/account.cludove = 'admin' or /content/parameter.cludove/accountType.cludove = 'manager'"/>
                <xsl:otherwise>
                    <xsl:attribute name="style">display:none</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <input type="button" value="提交" class="sub">
                <xsl:attribute name="onclick">onResponseDesignDataMetadataSetting()</xsl:attribute>
            </input>
            <input type="button" value="清除" class="res" onclick="clearResponseDesignDataMetadataSetting()"/>
            <input type="button" value="取消" class="but" onclick="$('#metadata_name').val('');$('#metadata_name').trigger('change')"/>
        </div>
    </xsl:template>
</xsl:stylesheet>
