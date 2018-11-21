<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <metadata>
            <xsl:for-each select="cludove.crest.spruce.data_metadata/record.crest">
                <record.crest>
                    <name>
                        <xsl:value-of select="name"/>
                    </name>
                    <remark>
                        <xsl:value-of select="remark"/>
                    </remark>
                    <type>
                        <xsl:value-of select="type"/>
                    </type>
                    <display>
                        <xsl:value-of select="data-id"/>
                    </display>
                    <length>
                        <xsl:value-of select="length"/>
                    </length>
                    <primary_name>
                        <xsl:value-of select="primary_name"/>
                    </primary_name>
                    <display>
                        <xsl:value-of select="display"/>
                    </display>
                </record.crest>
            </xsl:for-each>
        </metadata>
    </xsl:template>
</xsl:stylesheet>
