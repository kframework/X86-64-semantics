<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:output method="html" indent="no" doctype-system="about:legacy-compat"/>

<xsl:variable name="intelvol123">
	<a><xsl:attribute name="href"><xsl:value-of select="$manual-url"/></xsl:attribute>Intel® 64 and IA-32 Architectures Software Developer’s Manual</a>
</xsl:variable>

<xsl:variable name="disclaimer">
	<p>
		This UNOFFICIAL, mechanically-separated, non-verified reference is provided for convenience, but it may be
		inc<span style="opacity: 0.2">omp</span>lete or b<sub>r</sub>oke<sub>n</sub> in various obvious or non-obvious
		ways. Refer to <xsl:copy-of select="$intelvol123"/> for anything serious.
	</p>
</xsl:variable>

<xsl:variable name="id-upper">! "	#$%&amp;'()*+,-./0123456789:;&lt;=&gt;?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\]^_`{|}~</xsl:variable>
<xsl:variable name="id-lower">!-"---------+----0123456789---=---abcdefghijklmnopqrstuvwxyz----_----~</xsl:variable>

<xsl:template match="processing-instruction('xml-stylesheet')"/>

</xsl:stylesheet>
