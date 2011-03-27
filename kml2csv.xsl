<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
	<html><head></head><body>
		<xsl:apply-templates />
	</body></html>
	</xsl:template>
	
	<xsl:template match="Folder">
		<xsl:for-each select="Placemark">
			"<xsl:value-of select="name" />",
			<xsl:value-of select="Point/coordinates" />,
			<xsl:for-each select="ExtendedData/Data">
				"<xsl:value-of select="value" />",
			</xsl:for-each>
		<br />
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>