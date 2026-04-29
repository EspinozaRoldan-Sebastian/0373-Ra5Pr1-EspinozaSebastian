<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <!-- Ejercicio 1: Lista HTML con el título de todos los libros -->
        <h2>Títols dels llibres:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 2: Lista HTML con título - autor de cada libro -->
        <h2>Títol i autor:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
              —
              <xsl:value-of select="autor"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 3: Tabla HTML con Título, Autor y Año -->
        <!-- Ejercicio 4: Cuarta columna con el precio -->
        <h2>Taula de llibres:</h2>
        <table border="1">
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <!-- Ejercicio 4: columna Preu -->
            <th>Preu</th>
          </tr>
          <xsl:for-each select="biblioteca/llibre">
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <!-- Ejercicio 4: columna Preu -->
              <td><xsl:value-of select="preu"/></td>
            </tr>
          </xsl:for-each>
        </table>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>