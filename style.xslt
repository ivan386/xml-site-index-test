<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
  version="1.0"
  xmlns="http://www.w3.org/1999/xhtml"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml"/>
	<xsl:param name="test">
		<xsl:copy-of select="/" />
	</xsl:param>
	<xsl:template match="/">
		<html>
			<head>
				<title>XSLT: <xsl:copy-of select=".//заголовок//text()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:call-template name="вывод" /> вывод)</title>
				<meta name="description" content="XSLT: {.//текст/node()}" />
			</head>
			<body>
				<xsl:call-template name="index" />
				<h1><xsl:copy-of select=".//заголовок/node()" /> (<xsl:copy-of select=".//тип/node()" /> тип) (<xsl:call-template name="вывод" /> вывод)</h1>
				<p><xsl:copy-of select=".//текст/node()" /></p>
				<xsl:text>Для того чтобы увидеть исходный XML нужно вызвать контекстное меню и выбрать пункт "Исходный код страницы". Либо в адресной строке можно добавить 'view-source:' в начале.</xsl:text>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template name="index">
		<a href="index.html">Список тестовых страниц</a>
	</xsl:template>
	
	<xsl:template name="вывод">
		<xsl:text>xHTML</xsl:text>
	</xsl:template>
</xsl:stylesheet>