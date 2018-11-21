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
                        <span class="span_check span_check_catalog" id="check_all_organization"></span>
                    </th>
                    <th>简称</th>
                    <th>标识</th>
                    <th>全称</th>
                    <th>负责人</th>
                    <th>级别</th>
                    <th class="th7">操作</th>
                </tr>
                <tr>
                    <td>
                        <input type="radio">
                            <!--<xsl:attribute name="onclick">showDataExpressionSetting('<xsl:value-of select="code" />')</xsl:attribute>-->
                            <!--<xsl:if test="position() = 1">-->
                            <!--<xsl:attribute name="checked">true</xsl:attribute>-->
                            <!--</xsl:if>-->
                        </input>
                    </td>
                    <td>
                        <input type="hidden" class="data_expression_check">
                            <!--<xsl:attribute name="value">-->
                            <!--<xsl:value-of select="code" />-->
                            <!--<xsl:text>,</xsl:text>-->
                            <!--<xsl:value-of select="connection_code" />-->
                            <!--</xsl:attribute>-->
                        </input>
                        <span class="span_check span_check_data_expression span_check_select_data_expression data_expression_check_select"></span>
                    </td>
                    <td>
                        <span>业务经理</span>
                    </td>
                    <td>
                        <span>业务部门经理</span>
                    </td>
                    <td>
                        <span>部门</span>
                    </td>
                    <td>
                        <span>是</span>
                    </td>
                    <td>
                        <span>0</span>
                    </td>
                </tr>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>
