<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:template match="content">
        <div class="title" style="text-align: right;padding-right: 200px">
            <span class="span4">讯枢版本<xsl:value-of
                    select="cludove.crest.spruce.vocabulary/record.crest[keyword='INFOINGE_VERSION']/content"/>
            </span>
        </div>
        <div class="mainer">
            <div class="wrap">
                <div class="main1 ht2 flt row ul_nav">
                    <!--<div class="item">-->
                    <!--<div class="main_tit">-->
                    <!--<div class="tit_list flt">-->
                    <!--<ul>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--<li><a href="javascript:void(0)"><span>111</span></a></li>-->
                    <!--</ul>-->
                    <!--</div>-->
                    <!--</div>-->
                    <!--</div>-->
                </div>
                <xsl:choose>
                    <xsl:when test="count(parameter.cludove/catalog_id) > 0">
                        <div class="div_tit">
                            <p style="font-size:20px">
                                <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/name"/>
                                <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                <xsl:value-of select="cludove.crest.spruce.buddle/record.crest/identifier"/>
                            </p>
                        </div>
                        <div style="margin-left:30px">
                            <div class="div_tit">
                                <h2>
                                    <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/type"/>
                                    <xsl:text> </xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/name"/>
                                    <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                    <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/identifier"/>
                                </h2>
                                <div class="div_txt">
                                    <h4>功能描述:</h4>
                                    <p id="catalog_description">
                                        <xsl:value-of select="cludove.crest.spruce.catalog/record.crest/description"/>
                                    </p>
                                </div>
                                <hr/>
                            </div>
                            <div class="div_tit">
                                <h4>功能返回:</h4>
                                <p id="catalog_return_content" style="overflow:hidden; word-break:break-all;">
                                    <xsl:value-of select="cludove.crest.spruce.catalog_return/record.crest/content"/>
                                </p>
                                <hr/>
                            </div>
                            <div class="div_tit">
                                <h4>功能参数:</h4>
                                <xsl:for-each select="/content/cludove.crest.spruce.catalog_parameter/record.crest">
                                    <ul class="ul_list">
                                        <li>
                                            <xsl:value-of select="parameter_name"/>
                                        </li>
                                        <li>
                                            <b>参数长度:</b>
                                            <span>
                                                <xsl:value-of select="parameter_length"/>
                                            </span>
                                        </li>
                                        <li>
                                            <b>是否必须:</b>
                                            <span>
                                                <xsl:choose>
                                                    <xsl:when test="is_must = 'true'">
                                                        <xsl:text>是</xsl:text>
                                                    </xsl:when>
                                                    <xsl:when test="is_must = 'false'">
                                                        <xsl:text>否</xsl:text>
                                                    </xsl:when>
                                                    <xsl:otherwise/>
                                                </xsl:choose>
                                            </span>
                                        </li>
                                        <li>
                                            <b>内容描述:</b>
                                            <div class="catalog_parameter_requirement">
                                                <xsl:value-of select="requirement"/>
                                            </div>
                                        </li>
                                    </ul>
                                </xsl:for-each>
                            </div>
                            <div class="div_tit">
                                <h4>效果评论:</h4>
                                <div class="text">
                                    <p class="p_btn">
                                        <a href="javascript:void(0)" onclick="showComment()">追加评论</a>
                                    </p>
                                    <div id="comment_content" style="display:none">
                                        <div class="div_textarea">
                                            <textarea class="validate[maxSize[1024]]" maxlength="1024"
                                                      id="catalog_comment_content">
                                            </textarea>
                                        </div>
                                        <div class="div_txt">
                                            <div class="div_btn">
                                                <a href="javascript:void(0)">
                                                    <xsl:attribute name="onclick">onCatalogComment('<xsl:value-of
                                                            select="/content/cludove.crest.spruce.catalog/record.crest/buddle_id"/>',
                                                        '<xsl:value-of
                                                                select="/content/cludove.crest.spruce.catalog/record.crest/identifier"/>')
                                                    </xsl:attribute>
                                                    <xsl:text>提交</xsl:text>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                    <div style="clear:both;width:100px;height:10px"></div>
                                    <ul class="ul_list" id="show_catalog_comment_content">
                                        <xsl:for-each
                                                select="/content/cludove.crest.spruce.catalog_comment/record.crest">
                                            <li>
                                                <p>
                                                    <xsl:value-of select="content"/>
                                                </p>
                                                <div style="float:right;color:#6c6c6c;">
                                                    <xsl:value-of select="substring(comment_time,1,19)"/>
                                                </div>
                                            </li>
                                        </xsl:for-each>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when
                                    test="count(parameter.cludove/catalog_id) = 0 and count(parameter.cludove/buddle_id) = 0">
                                <h2 style="padding:20px;clear:both">讯枢版本<xsl:value-of
                                        select="cludove.crest.spruce.vocabulary/record.crest[keyword='INFOINGE_VERSION']/content"/>
                                </h2>
                                <p style="padding:10px 30px">此版本为我公司测试版本，仅供测试</p>
                                <div class="main_tab">
                                    <table>
                                        <tr>
                                            <th class="th7">应用标识</th>
                                            <th class="th7">应用名字</th>
                                            <th>应用描述</th>
                                        </tr>
                                        <xsl:for-each select="/content/cludove.crest.spruce.buddle/record.crest">
                                            <xsl:sort order="ascending" select="identifier"/>
                                            <!--<xsl:if test="identifier != 'infoinge'">-->
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="identifier"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="name"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="description"/>
                                                </td>
                                            </tr>
                                            <!--</xsl:if>-->
                                        </xsl:for-each>
                                    </table>
                                </div>
                            </xsl:when>
                            <xsl:otherwise>
                                <h2 style="padding:20px;clear:both">讯枢版本<xsl:value-of
                                        select="cludove.crest.spruce.vocabulary/record.crest[keyword='INFOINGE_VERSION']/content"/>
                                </h2>
                                <div class="main2">
                                    <div class="item">
                                        <div class="div_txt">
                                            <div class="list">
                                                <div class="div_input">
                                                    <input type="text" value="" id="search_keyword"
                                                           placeholder="请输入目录标识或目录名字" onkeydown="keySearch()"/>
                                                </div>
                                                <div class="div_btn">
                                                    <a href="javascript:void(0)" onclick="onCatalogSearch()">查询</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="height:20px;width:100%;clear:both"></div>
                                    </div>
                                </div>
                                <div class="main_tab" id="api_catalog_list">
                                    <table style="margin:20px 0 0 20px;">
                                        <tr>
                                            <th>目录标识</th>
                                            <th>目录名字</th>
                                            <th>判断权限</th>
                                            <th>入口目录</th>
                                        </tr>
                                        <xsl:for-each select="/content/cludove.crest.spruce.catalog/record.crest">
                                            <xsl:sort order="ascending" select="identifier"/>
                                            <tr>
                                                <td>
                                                    <xsl:value-of select="identifier"/>
                                                </td>
                                                <td>
                                                    <xsl:value-of select="name"/>
                                                </td>
                                                <td>
                                                    <xsl:choose>
                                                        <xsl:when test="is_permit = 'true'">
                                                            <xsl:text disable-output-escaping="yes">是</xsl:text>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text disable-output-escaping="yes">否</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                                <td>
                                                    <xsl:choose>
                                                        <xsl:when test="is_home = 'true'">
                                                            <xsl:text disable-output-escaping="yes">是</xsl:text>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:text disable-output-escaping="yes">否</xsl:text>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </td>
                                            </tr>
                                        </xsl:for-each>
                                    </table>
                                </div>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
