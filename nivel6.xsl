<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Ejercicio 1: Plantilla para llibre que genera un <li> con el título -->
  <xsl:template match="llibre">
    <li>
      <xsl:value-of select="titol"/>
    </li>
  </xsl:template>

  <!-- Ejercicio 3: Plantilla específica para revista -->
  <xsl:template match="revista">
    <li>
      <xsl:value-of select="titol"/> — <xsl:value-of select="mes"/> <xsl:value-of select="any"/>
    </li>
  </xsl:template>

  <!-- Ejercicio 2, 4 y 5: Plantilla principal -->
  <xsl:template match="/">
    <html>
      <body>

        <!-- Ejercicio 5: Título general -->
        <h1>Biblioteca</h1>

        <!-- Ejercicio 2 y 4: Sección de libros -->
        <h2>Llibres:</h2>
        <ul>
          <!-- Ejercicio 2: Aplica plantillas a todos los libros -->
          <xsl:apply-templates select="biblioteca/llibre"/>
        </ul>

        <!-- Ejercicio 4 y 5: Sección de revistas -->
        <h2>Revistes:</h2>
        <ul>
          <!-- Ejercicio 3: Aplica plantilla específica para revista -->
          <xsl:apply-templates select="biblioteca/revista"/>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>