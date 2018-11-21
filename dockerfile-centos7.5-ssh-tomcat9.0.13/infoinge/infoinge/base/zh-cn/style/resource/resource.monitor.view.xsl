<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml" />
    <xsl:include href="common.xsl" />
    <xsl:template match="content">
        <div class="title">
            <span>资源使用</span>
        </div>
        <div>
            <div id="resource_monitor_connect" style="width:350px;height:350px;"></div>
            <div id="resource_monitor_thread" style="width:350px;height:350px;"></div>
        </div>
    </xsl:template>
</xsl:stylesheet>
