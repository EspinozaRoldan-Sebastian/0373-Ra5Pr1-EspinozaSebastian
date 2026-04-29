<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Ejercicio 1: Transforma XML: llibre->obra, titol->nom, autor->escriptor -->
  <xsl:template match="/">
    <biblioteca>
      <xsl:for-each select="biblioteca/llibre">
        <obra>
          <nom><xsl:value-of select="titol"/></nom>
          <escriptor><xsl:value-of select="autor"/></escriptor>
          <genere><xsl:value-of select="genere"/></genere>
          <any><xsl:value-of select="any"/></any>
          <preu><xsl:value-of select="preu"/></preu>
        </obra>
      </xsl:for-each>
    </biblioteca>
  </xsl:template>

</xsl:stylesheet>