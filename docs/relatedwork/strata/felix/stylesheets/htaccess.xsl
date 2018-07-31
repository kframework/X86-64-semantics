<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
<xsl:variable name="protocol">http</xsl:variable>
<xsl:variable name="domain">www.felixcloutier.com</xsl:variable>
<xsl:variable name="base-path">x86</xsl:variable>
<xsl:variable name="base-url"><xsl:value-of select="$protocol"/>://<xsl:value-of select="$domain"/>/<xsl:value-of select="$base-path"/>/</xsl:variable>

<xsl:template match="/x86:history">
&lt;IfModule mod_deflate.c&gt;
	AddOutputFilterByType DEFLATE text/plain text/html text/xml text/css
&lt;/IfModule&gt;

ErrorDocument 404 /<xsl:value-of select="$base-path"/>/404.html
Options -Multiviews

<xsl:for-each select="x86:renamed-url">
Redirect permanent "/<xsl:value-of select="$base-path"/>/<xsl:value-of select="@from"/>.html" "<xsl:value-of select="$base-url"/><xsl:value-of select="@to"/>.html"
Redirect permanent "/<xsl:value-of select="$base-path"/>/<xsl:value-of select="@from"/>.xml" "<xsl:value-of select="$base-url"/><xsl:value-of select="@to"/>.html"
</xsl:for-each>

<xsl:for-each select="x86:removed">
<xsl:variable name="file-name">
	<xsl:for-each select="x86:mnemonic">
		<xsl:value-of select="@name"/>
		<xsl:if test="position() != last()">:</xsl:if>
	</xsl:for-each>
</xsl:variable>
Redirect permanent "/<xsl:value-of select="$base-path"/>/<xsl:value-of select="$file-name"/>.html" "<xsl:value-of select="$base-url"/>history.html"
Redirect permanent "/<xsl:value-of select="$base-path"/>/<xsl:value-of select="$file-name"/>.xml" "<xsl:value-of select="$base-url"/>history.html"
</xsl:for-each>

Redirect permanent "/<xsl:value-of select="$base-path"/>/removed.xml" "<xsl:value-of select="$base-url"/>history.html"
RedirectMatch permanent "/<xsl:value-of select="$base-path"/>/([^.]+).xml" "<xsl:value-of select="$base-url"/>$1.html"

</xsl:template>

</xsl:stylesheet>
