<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="../style.xslt"/>
	
	<xsl:template match="/">
		<xsl:choose>
			<xsl:when test="прокси">
				<xsl:apply-templates select="document(прокси/@для)" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:apply-templates select="." mode="print" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	
	<xsl:template match="/" mode="index">
		<a href="../../index.html">Список тестовых страниц</a>
	</xsl:template>

</xsl:stylesheet>