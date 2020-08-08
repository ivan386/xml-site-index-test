<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text"/>
	<xsl:include href="../style-include.xslt"/>
	
	<xsl:template match="/" mode="list-xsl">
		<xsl:for-each select="document('../style-include.xslt') | document('')">
			<xsl:text>&#10;&#10;</xsl:text><xsl:call-template name="print-xsl"/><xsl:text>&#10;&#10;</xsl:text>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/" mode="index">
		<xsl:text>&#10;&#10;Список тестовых страниц: https://ivan386.github.io/xml-site-index-test/index.html&#10;&#10;</xsl:text>
	</xsl:template>
	
	<xsl:template match="/" mode="вывод">
		<xsl:text>text</xsl:text>
	</xsl:template>
	
	<xsl:template match="text()">
		<xsl:value-of select="concat('&#10;',.,'&#10;')" />
	</xsl:template>
	
</xsl:stylesheet>