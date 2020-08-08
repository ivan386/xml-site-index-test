<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	<xsl:include href="style-include.xslt"/>
	
	<xsl:template match="/" mode="list-xsl">
		<xsl:for-each select="document('style-include.xslt') | document('')">
			<xsl:call-template name="print-xsl"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/" mode="index">
		<a href="index.html">Список тестовых страниц</a>
	</xsl:template>
	
	<xsl:template match="/" mode="вывод">
		<xsl:text>XML</xsl:text>
	</xsl:template>
	
</xsl:stylesheet>