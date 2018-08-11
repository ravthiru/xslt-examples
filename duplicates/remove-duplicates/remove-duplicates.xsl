<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>

 <xsl:template match="/">
     <xsl:for-each-group select="/*/*/Field"
          group-by="concat(@name, '+', @displayName)">
        <xsl:copy-of select="current-group()[1]"/>
   </xsl:for-each-group>
 </xsl:template>
</xsl:stylesheet>
