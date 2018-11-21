<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output encoding="GB2312" method="xml"/>
    <xsl:include href="common.xsl"/>
    <xsl:template match="content">
        <metadata>
            <xsl:for-each select="cludove.crest.spruce.catalog_parameter/record.crest">
                <record.crest>
                    <name>
                        <xsl:value-of select="parameter_name"/>
                    </name>
                    <remark>
                        <xsl:value-of select="requirement"/>
                    </remark>
                    <type>
                        <xsl:value-of select="parameter_type"/>
                    </type>
                    <display>
                        <xsl:value-of select="parameter_name"/>
                    </display>
                    <length>
                        <xsl:value-of select="parameter_length"/>
                    </length>
                </record.crest>
            </xsl:for-each>
        </metadata>
    </xsl:template>
</xsl:stylesheet>
