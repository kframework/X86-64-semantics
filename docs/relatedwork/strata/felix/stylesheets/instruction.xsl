<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:include href="meta.xsl"/>
<xsl:include href="common.xsl"/>

<xsl:variable name="figures" select="document('../xml-meta/figures.xml')/x86:figures"/>

<xsl:template match="/x86:instruction">
	<xsl:variable name="summary" select="@summary"/>
	<xsl:variable name="title">
		<xsl:for-each select="x86:mnemonic">
			<xsl:value-of select="@name"/>
			<xsl:if test="position() != last()">/</xsl:if>
		</xsl:for-each>
		— <xsl:value-of select="$summary"/>
	</xsl:variable>

	<html>
		<head>
			<link rel="stylesheet" type="text/css" href="style.css"/>
			<title><xsl:value-of select="$title"/></title>
		</head>
		<body>
			<header>
				<nav>
					<ul>
						<li><a href="./index.html">Index</a></li>
						<li><xsl:value-of select="$publication-date"/></li>
					</ul>
				</nav>
			</header>

			<h1><xsl:value-of select="$title"/></h1>
			<xsl:apply-templates/>

			<footer>
				<xsl:copy-of select="$disclaimer"/>
			</footer>
		</body>
	</html>
</xsl:template>

<!-- header stuff (add anchors, add "exceptions" class) -->
<xsl:template match="node()[local-name()='h1' or local-name()='h2' or local-name()='h3' or local-name()='h4' or local-name()='h5' or local-name()='h6']">
	<xsl:variable name="anchor">
		<xsl:value-of select="translate(text(), $id-upper, $id-lower)"/>
	</xsl:variable>
	<xsl:copy>
		<xsl:if test="substring(text(), string-length(text()) - string-length('Exceptions') + 1) = 'Exceptions'">
			<xsl:attribute name="class">exceptions</xsl:attribute>
		</xsl:if>
		<xsl:attribute name="id">
			<xsl:value-of select="$anchor"/>
		</xsl:attribute>
		<xsl:apply-templates select="@*|node()"/>
		<a class="anchor">
			<xsl:attribute name="href">#<xsl:value-of select="$anchor"/></xsl:attribute>
			¶
		</a>
	</xsl:copy>
</xsl:template>

<xsl:template name="figure-link">
	<xsl:param name="namespace"/>
	<xsl:param name="figure-id"/>
	<xsl:param name="figure-href"/>
	<xsl:choose>
		<xsl:when test="$figure-href != ''">
			<a>
				<xsl:attribute name="href">./<xsl:value-of select="$figure-href"/>.html#<xsl:value-of select="$namespace"/>-<xsl:value-of select="$figure-id"/></xsl:attribute>
				<xsl:value-of select="."/>
			</a>
		</xsl:when>
		<xsl:otherwise>
			<span class="not-imported"><xsl:value-of select="."/></span>
		</xsl:otherwise>
	</xsl:choose>
</xsl:template>

<xsl:template match="x86:figref">
	<xsl:variable name="figure-id"><xsl:value-of select="substring-after(., ' ')"/></xsl:variable>
	<xsl:call-template name="figure-link">
		<xsl:with-param name="namespace">fig</xsl:with-param>
		<xsl:with-param name="figure-id"><xsl:value-of select="$figure-id"/></xsl:with-param>
		<xsl:with-param name="figure-href"><xsl:value-of select="$figures/x86:figure[@id=$figure-id]"/></xsl:with-param>
	</xsl:call-template>
</xsl:template>

<xsl:template match="x86:tblref">
	<xsl:variable name="figure-id"><xsl:value-of select="substring-after(., ' ')"/></xsl:variable>
	<xsl:call-template name="figure-link">
		<xsl:with-param name="namespace">tbl</xsl:with-param>
		<xsl:with-param name="figure-id"><xsl:value-of select="$figure-id"/></xsl:with-param>
		<xsl:with-param name="figure-href"><xsl:value-of select="$figures/x86:table[@id=$figure-id]"/></xsl:with-param>
	</xsl:call-template>
</xsl:template>

<!-- eliminate stray x86 tags -->
<xsl:template match="x86:*"/>

<!-- remove namespace from svg figures -->
<xsl:template match="svg:svg">
	<svg>
		<xsl:apply-templates select="@*|node()"/>
	</svg>
</xsl:template>

<!-- copy everything else -->
<xsl:template match="@*|node()">
	<xsl:copy>
		<xsl:apply-templates select="@*|node()"/>
	</xsl:copy>
</xsl:template>

</xsl:stylesheet>
