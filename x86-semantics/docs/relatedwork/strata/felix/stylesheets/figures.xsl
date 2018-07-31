<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
	version="1.0"
	xmlns:xhtml="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:svg="http://www.w3.org/2000/svg"
	xmlns:x86="http://www.felixcloutier.com/x86">

<xsl:output method="xml" indent="yes"/>

<xsl:template match="/x86:index">
	<x86:figures>
		<xsl:for-each select="x86:group">
			<xsl:variable name="file"><xsl:for-each select="x86:mnemonic"><xsl:value-of select="@name"/><xsl:if test="position() != last()">:</xsl:if></xsl:for-each></xsl:variable>
			<xsl:variable name="file-path">../xml/<xsl:value-of select="$file"/>.xml</xsl:variable>
			<xsl:for-each select="document($file-path)//xhtml:figure">
				<xsl:variable name="figure-name"><xsl:value-of select="substring-after(@id, 'fig-')"/></xsl:variable>
				<xsl:variable name="table-name"><xsl:value-of select="substring-after(@id, 'tbl-')"/></xsl:variable>
				<xsl:choose>
					<xsl:when test="$figure-name != ''">
						<x86:figure>
							<xsl:attribute name="id"><xsl:value-of select="$figure-name"/></xsl:attribute>
							<xsl:value-of select="$file"/>
						</x86:figure>
					</xsl:when>
					<xsl:when test="$table-name != ''">
						<x86:table>
							<xsl:attribute name="id"><xsl:value-of select="$table-name"/></xsl:attribute>
							<xsl:value-of select="$file"/>
						</x86:table>
					</xsl:when>
				</xsl:choose>
			</xsl:for-each>
		</xsl:for-each>
	</x86:figures>
</xsl:template>

</xsl:stylesheet>
