<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output indent="yes"/>

<xsl:template match="mappings">
  <reductions>
    <xsl:for-each-group select="mapping" group-by="value">
      <reduction>
        <group><xsl:value-of select="current-grouping-key()"/></group>
        <xsl:for-each-group select="current-group()/key" group-by=".">
          <xsl:copy-of select="."/>
        </xsl:for-each-group>
      </reduction>
    </xsl:for-each-group>
  </reductions>
</xsl:template>

</xsl:stylesheet>
