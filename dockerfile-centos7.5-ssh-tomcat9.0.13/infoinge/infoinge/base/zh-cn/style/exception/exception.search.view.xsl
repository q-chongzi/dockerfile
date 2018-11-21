<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="main_tab">
        <div class="main_tab" job-status="execution">
            <h1 style="text-align: center;line-height:40px">出现异常的数据</h1>
        </div>
            <table>
                <tr>
                    <th class="th7">连接标识</th>
                    <th class="th7">资源名称</th>
                    <th class="th7">主键名称</th>
                    <th class="th7">主键值</th>
                    <th class="th7">异常字段</th>
                    <th class="th7">异常内容</th>
                    <th class="th7">验证名字</th>
                </tr>
                <xsl:for-each select="/content/cludove.crest.spruce.v_data_exception/record.crest">
                    <xsl:sort order="ascending" select="regulation_name"/>
                    <xsl:sort order="ascending" select="class"/>
                    <tr>
                        <xsl:attribute name="class"><xsl:value-of select="code" /></xsl:attribute>
                        <td style="overflow:hidden; text-overflow:ellipsis;">
                            <xsl:attribute name="title"><xsl:value-of select="connection_id" /></xsl:attribute>
                            <xsl:value-of select="connection_id" />
                        </td>
                        <td>
                            <xsl:value-of select="resource_name" />
                        </td>
                        <td>
                            <xsl:value-of select="primary_field" />
                        </td>
                        <td style="overflow:hidden; text-overflow:ellipsis;">
                            <xsl:attribute name="title"><xsl:value-of select="primary_value" /></xsl:attribute>
                            <xsl:value-of select="primary_value" />
                        </td>
                        <td style="overflow:hidden; text-overflow:ellipsis;">
                            <xsl:attribute name="title"><xsl:value-of select="exception_field" /></xsl:attribute>
                            <xsl:value-of select="exception_field" />
                        </td>
                        <td style="overflow:hidden; text-overflow:ellipsis;">
                            <xsl:attribute name="title"><xsl:value-of select="exception_content" /></xsl:attribute>
                            <xsl:value-of select="exception_content" />
                        </td>
                        <td>
                            <xsl:value-of select="regulation_name" />
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
            <input type="hidden" id="data_exception_number">
                <xsl:attribute name="value"><xsl:value-of select="count(/content/cludove.crest.spruce.v_data_exception/record.crest)"/></xsl:attribute>
            </input>
        </div>
    </xsl:template>
</xsl:stylesheet>
