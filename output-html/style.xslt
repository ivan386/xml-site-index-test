<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:include href="../style.xslt"/>
	
	<xsl:template name="list-xsl">
		<xsl:for-each select="document('../style.xslt') | document('')">
			<xsl:call-template name="print-xsl"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="index">
		<a href="../index.html">Список тестовых страниц</a>
	</xsl:template>
	
	<xsl:template name="вывод">
		<xsl:text>HTML</xsl:text>
	</xsl:template>
	
</xsl:stylesheet>