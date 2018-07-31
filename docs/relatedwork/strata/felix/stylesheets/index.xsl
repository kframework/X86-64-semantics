<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:include href="meta.xsl"/>
<xsl:include href="common.xsl"/>

<xsl:key name="instruction-dupes" match="x86:mnemonic" use="@name"/>
<xsl:key name="sections" match="x86:group" use="@section"/>

<xsl:template match="/x86:index">
	<xsl:variable name="title">x86 and amd64 instruction reference</xsl:variable>
	<html>
		<head>
			<link rel="stylesheet" type="text/css" href="style.css"/>
			<title><xsl:value-of select="$title"/></title>
		</head>
		<body>
			<h1><xsl:value-of select="$title"/></h1>
			<p>Derived from the <xsl:value-of select="$publication-date"/> version of the <xsl:copy-of select="$intelvol123"/>. Last updated <xsl:value-of select="$generation-date"/>.</p>
			<p>
				<strong>THIS REFERENCE IS NOT PERFECT.</strong> It's been mechanically separated into distinct files by a
				dumb script. It may be enough to replace the official documentation on your weekend reverse engineering
				project, but for anything where money is at stake, go get the official and freely available documentation.
			</p>
			<xsl:for-each select="x86:group[generate-id() = generate-id(key('sections', @section))]">
				<xsl:sort select="@section"/>
				<h2><xsl:value-of select="@section"/> Instructions</h2>
				<table>
					<tr>
						<th>Mnemonic</th>
						<th>Summary</th>
					</tr>
					<xsl:for-each select="key('sections', @section)/x86:mnemonic[generate-id() = generate-id(key('instruction-dupes', @name)[1])]">
						<xsl:sort select="@name"/>
						<xsl:for-each select="key('instruction-dupes', @name)">
							<tr>
								<td>
									<a>
										<xsl:attribute name="href">./<xsl:value-of select="../@href"/>.html</xsl:attribute>
										<xsl:value-of select="@name"/>
									</a>
									<xsl:if test="position() > 1">
										<xsl:value-of select="concat(' (', position() - 1, ')')"/>
									</xsl:if>
								</td>
								<td><xsl:value-of select="../@summary"/></td>
							</tr>
						</xsl:for-each>
					</xsl:for-each>
				</table>
			</xsl:for-each>
			<footer>
				<xsl:copy-of select="$disclaimer"/>
			</footer>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>
