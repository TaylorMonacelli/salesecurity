<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="p[@type = 'Footnote Text']">
    <xsl:copy>
      <xsl:attribute name="id">
        <xsl:value-of select="'number-'" />
        <xsl:number count="p[@type = 'Footnote Text']" level="any" />
      </xsl:attribute>
      <xsl:apply-templates select="node()|@*" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>
