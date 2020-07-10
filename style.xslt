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
				<title><xsl:copy-of select=".//заголовок//text()" /></title>
				<meta name="description" content="{.//текст/node()}" />
			</head>
			<body>
				<h1><xsl:copy-of select=".//заголовок/node()" /></h1>
				<p><xsl:copy-of select=".//текст/node()" /></p>
				<xsl:text>Для того чтобы увидеть исходный XML нужно вызвать контекстное меню и выбрать пункт "Исходный код страницы". Либо в адресной строке можно добавить 'view-source:' в начале.</xsl:text>
			</body>
		</html>
	</xsl:template>
	
</xsl:stylesheet>