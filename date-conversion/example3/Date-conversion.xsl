<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:so="stackoverflow.test">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:output omit-xml-declaration="yes" indent="yes"/>
    
    <xsl:function name="so:format_month">
        <xsl:param name="date_string"/>
        <xsl:variable name="months" select="(
            'JAN','FEB','MAR',
            'APR','MAY','JUN',
            'JUL','AUG','SEP',
            'OCT','NOV','DEC')"/>
        <xsl:variable name="date_tokens" select="tokenize($date_string,' ')"/>
        <xsl:value-of select="($date_tokens[2],
            index-of($months,$date_tokens[1]),
           $date_tokens[3])" separator="-"/>
    </xsl:function>
    
    <xsl:template match="/*">
        <xsl:copy>
            <xsl:value-of select="so:format_month(.)"/>
        </xsl:copy>
    </xsl:template>
    
</xsl:stylesheet>

<!--index-of($months,$date_tokens[1]), -->