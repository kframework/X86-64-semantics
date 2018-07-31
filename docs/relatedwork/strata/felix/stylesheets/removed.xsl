<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:include href="meta.xsl"/>
<xsl:include href="common.xsl"/>

<xsl:template match="/x86:history">
	<xsl:variable name="title">This instruction was removed from the official Intel documentation</xsl:variable>
	<xsl:variable name="editions" select="x86:edition"/>
	<html>
		<head>
			<link rel="stylesheet" type="text/css" href="style.css"/>
			<title><xsl:value-of select="$title"/></title>
		</head>
		<body>
			<h1><xsl:value-of select="$title"/></h1>
			<p>
				These instructions were present in some past version of the <xsl:copy-of select="$intelvol123"/>, but
				they no longer are.
			</p>
			<p><a href="./index.html">Back to the index</a></p>
			<table>
				<tr>
					<th>Mnemonic</th>
					<th>Removed in or before</th>
				</tr>
				<xsl:for-each select="x86:removed/x86:mnemonic">
					<xsl:sort select="@name"/>
					<tr>
						<td><xsl:value-of select="@name"/></td>
						<td>
							<a>
								<xsl:variable name="order-number" select="../@in"/>
								<xsl:variable name="edition" select="$editions[@order-number=$order-number]"/>
								<xsl:attribute name="href"><xsl:value-of select="$edition/@href"/></xsl:attribute>
								<xsl:value-of select="$edition/@date"/> (order number <xsl:value-of select="$edition/@order-number"/>)
							</a>
						</td>
					</tr>
				</xsl:for-each>
			</table>
			<footer>
				<xsl:copy-of select="$disclaimer"/>
			</footer>
		</body>
	</html>
</xsl:template>

</xsl:stylesheet>
