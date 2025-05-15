<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Datos por edificio</title>
			</head>
			<body>
				<xsl:for-each select="//libro">
					<xsl:if test="autores/autor/@nacimiento > 1900">
						<li>
							<xsl:value-of select="titulo"/>
						</li>
					</xsl:if>
					
					
				</xsl:for-each>
				<xsl:for-each select="//autor">
					
					<xsl:if test="@nacimiento > 1700">
						<li>
							<xsl:value-of select="text()"/>
						</li>
					</xsl:if>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>