<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    
    <xsl:template match="inputDate">
        <!-- Define array of months -->
        <xsl:variable name="months" select="('Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec')" />
        <!-- Define regex to match input date format -->        
        <xsl:analyze-string regex="^(([A-Za-z]{{3}}) (\d\d) (\d\d\d\d))$" select=".">
            <!-- Align the regex groups according to the output format -->
            <xsl:matching-substring>
                <formattedDate>
                    <xsl:value-of select="regex-group(3)" />
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="format-number(index-of($months, regex-group(2)), '00')" />
                    <xsl:text>/</xsl:text>
                    <xsl:value-of select="regex-group(4)" />
                </formattedDate>
            </xsl:matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    
</xsl:stylesheet>