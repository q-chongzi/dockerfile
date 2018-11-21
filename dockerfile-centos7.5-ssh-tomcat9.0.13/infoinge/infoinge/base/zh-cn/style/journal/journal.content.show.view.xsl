<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xhtml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
                <div class="div_input">
                    <textarea cols="100%" rows="100%" id="journal_content" style="width:100%; word-break:break-all;">
                        <xsl:value-of select="journal.cludove"/>
                    </textarea>
                </div>
    </xsl:template>
</xsl:stylesheet>
