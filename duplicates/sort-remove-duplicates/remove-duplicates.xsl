<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>       
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
     </xsl:template>      
     <xsl:template match="/*">
         <xsl:copy>
            <xsl:apply-templates select="@*"/>
            <xsl:for-each-group select="*" group-by="@*">
                <xsl:sort select="@*"/>
                <xsl:apply-templates select="current-group()[1]"/>
            </xsl:for-each-group>
        </xsl:copy>
    </xsl:template>       
</xsl:stylesheet>
