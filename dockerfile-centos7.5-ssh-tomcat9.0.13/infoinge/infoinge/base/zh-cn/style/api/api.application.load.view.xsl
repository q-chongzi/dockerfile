<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd" encoding="GB2312" method="xml"/>
    <xsl:template match="content">
         <div class="div_nav">
             <div class="list">
                 <ul class="left_txt">
                     <xsl:for-each select="cludove.crest.spruce.buddle/record.crest">
                         <xsl:sort order="ascending" select="identifier"/>
                         <!--<xsl:if test="identifier != 'infoinge'">-->
                         <li>
                             <xsl:attribute name="class"><xsl:value-of select="code"/></xsl:attribute>
                             <a  target="apiCatalog">
                                 <xsl:attribute name="href">
                                     <xsl:text disable-output-escaping="yes">?buddle.cludove=infoinge&amp;catalog.cludove=api.catalog.show.view&amp;buddle_id=</xsl:text>
                                     <xsl:value-of select="identifier"/>
                                 </xsl:attribute>
                                 <span>
                                     <xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_buddle_navigater</xsl:text></xsl:attribute>
                                     <xsl:value-of select="name"/>
                                     <xsl:text disable-output-escaping="yes"> - </xsl:text>
                                     <xsl:value-of select="identifier"/>
                                 </span>
                         </a>
                             <ul>
                                 <xsl:attribute name="id"><xsl:value-of select="code"/><xsl:text disable-output-escaping="yes">_catalog_container</xsl:text></xsl:attribute>
                             </ul>
                         </li>
                         <!--</xsl:if>-->
                     </xsl:for-each>
                 </ul>
             </div>
         </div>
    </xsl:template>
</xsl:stylesheet>
