<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Datos por edificio</title>
			</head>
			<body>
				<xsl:for-each select="//hardware">
					<xsl:if test="disco/@tecnologia = 'SCSI'">
						<li>
							<xsl:value-of select="//disco"/>
						</li>
					</xsl:if>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>