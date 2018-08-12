<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    <xsl:template match="inputDate">
        <inputDate>  <xsl:value-of select="format-date(., '[D01]/[MN,*-3]/[Y0001]')" /> 
        </inputDate>
    </xsl:template>
</xsl:stylesheet>