<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:include href="xml-to-string/xml-to-string.xsl"/>
	
	<xsl:template match="node()|@*">
		<xsl:copy>
			<xsl:apply-templates select="node()|@*" />
		</xsl:copy>
	</xsl:template>
	
	<xsl:template match="/">
		<html>
			<head>
				<title>XSLT: <xsl:copy-of select=".//заголовок//text()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:apply-templates select="/" mode="вывод" /> вывод)&#10;&#10;</title>
				<meta name="description" content="XSLT: {.//текст/node()}" />
				<style><xsl:text>
					code{
						display: block;
						white-space: pre;
						margin: 1em;
					}</xsl:text>
				</style>
			</head>
			<body>
				<xsl:apply-templates select="/" mode="index" />
				<h1><xsl:copy-of select=".//заголовок/node()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:apply-templates select="/" mode="вывод" /> вывод)&#10;&#10;</h1>
				<p><xsl:apply-templates select=".//текст/node()" />&#10;&#10;</p>
				<xsl:text>Для того чтобы увидеть исходный XML нужно вызвать контекстное меню и выбрать пункт "Исходный код страницы". Либо в адресной строке можно добавить 'view-source:' в начале.&#10;&#10;</xsl:text>
				
				<h2>&#10;&#10;Исходный код XML&#10;&#10;</h2>
				<code class="xml">
					<xsl:call-template name="xml-to-string"/>
				</code>
				<h2>&#10;&#10;Исходный код XSLT&#10;&#10;</h2>
				<xsl:apply-templates select="/" mode="list-xsl"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="/" mode="list-xsl">
		<xsl:for-each select="document('')">
			<xsl:call-template name="print-xsl"/>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="print-xsl">
		<code class="xml">
			<xsl:call-template name="xml-to-string"/>
		</code>
	</xsl:template>
	
	<xsl:template match="/" mode="index">
		<a href="index.html">Список тестовых страниц</a>
	</xsl:template>
	
</xsl:stylesheet>