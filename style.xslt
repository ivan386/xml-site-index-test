<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	<xsl:include href="xml-to-string/xml-to-string.xsl"/>
	
	<xsl:param name="test">
		<xsl:copy-of select="/" />
	</xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<title>XSLT: <xsl:copy-of select=".//заголовок//text()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:call-template name="вывод" /> вывод)</title>
				<meta name="description" content="XSLT: {.//текст/node()}" />
				<style>
					code{
						display: block;
						white-space: pre;
						margin: 1em;
					}
				</style>
			</head>
			<body>
				<xsl:call-template name="index" />
				<h1><xsl:copy-of select=".//заголовок/node()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:call-template name="вывод" /> вывод)</h1>
				<p><xsl:copy-of select=".//текст/node()" /></p>
				<xsl:text>Для того чтобы увидеть исходный XML нужно вызвать контекстное меню и выбрать пункт "Исходный код страницы". Либо в адресной строке можно добавить 'view-source:' в начале.</xsl:text>
				
				<h2>Исходный код XML</h2>
				<code class="xml">
					<xsl:call-template name="xml-to-string"/>
				</code>
				<h2>Исходный код XSLT</h2>
				<xsl:call-template name="list-xsl"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="list-xsl">
		<xsl:for-each select="document('')">
			<xsl:call-template name="print-xsl"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="print-xsl">
		<code class="xml">
			<xsl:call-template name="xml-to-string"/>
		</code>
	</xsl:template>
	
	<xsl:template name="index">
		<a href="index.html">Список тестовых страниц</a>
	</xsl:template>
	
	<xsl:template name="вывод">
		<xsl:text>xHTML</xsl:text>
	</xsl:template>
</xsl:stylesheet>