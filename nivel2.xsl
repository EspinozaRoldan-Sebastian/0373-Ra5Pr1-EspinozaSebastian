<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <!-- Ejercicio 1: Muestra el título del primer libro -->
        <h2>Títol del primer llibre:</h2>
        <p>
          <xsl:value-of select="biblioteca/llibre[1]/titol"/>
        </p>

        <!-- Ejercicio 2: Muestra el título y el autor del primer libro -->
        <h2>Títol i autor del primer llibre:</h2>
        <p>
          <xsl:value-of select="biblioteca/llibre[1]/titol"/>
          —
          <xsl:value-of select="biblioteca/llibre[1]/autor"/>
        </p>

        <!-- Ejercicio 3: Muestra el código de la revista -->
        <h2>Codi de la revista:</h2>
        <p>
          <xsl:value-of select="biblioteca/revista/@codi"/>
        </p>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>