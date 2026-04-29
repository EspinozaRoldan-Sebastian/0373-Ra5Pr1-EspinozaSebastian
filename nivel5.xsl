<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <!-- Ejercicio 1: Ordena los libros por año de publicación -->
        <h2>Llibres ordenats per any:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <xsl:sort select="any" data-type="number" order="ascending"/>
            <li>
              <xsl:value-of select="titol"/> — <xsl:value-of select="any"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 2: Ordena los libros por título alfabéticamente -->
        <h2>Llibres ordenats per títol:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <xsl:sort select="titol" data-type="text" order="ascending"/>
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 3: Ordena los libros por precio de más caro a más barato -->
        <h2>Llibres ordenats per preu (de més car a més barat):</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <xsl:sort select="preu" data-type="number" order="descending"/>
            <li>
              <xsl:value-of select="titol"/> — <xsl:value-of select="preu"/>€
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 4: Tabla HTML con los libros ordenados por año -->
        <h2>Taula de llibres ordenats per any:</h2>
        <table border="1">
          <tr>
            <th>Títol</th>
            <th>Autor</th>
            <th>Any</th>
            <th>Preu</th>
          </tr>
          <xsl:for-each select="biblioteca/llibre">
            <xsl:sort select="any" data-type="number" order="ascending"/>
            <tr>
              <td><xsl:value-of select="titol"/></td>
              <td><xsl:value-of select="autor"/></td>
              <td><xsl:value-of select="any"/></td>
              <td><xsl:value-of select="preu"/></td>
            </tr>
          </xsl:for-each>
        </table>

        <!-- Ejercicio 5: Muestra solo los libros disponibles ordenados por título -->
        <h2>Llibres disponibles ordenats per títol:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[@estat='disponible']">
            <xsl:sort select="titol" data-type="text" order="ascending"/>
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>