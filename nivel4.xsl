<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>

        <!-- Ejercicio 1: Muestra solo los libros disponibles -->
        <h2>Llibres disponibles:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[@estat='disponible']">
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 2: Muestra solo los libros con precio superior a 12 -->
        <h2>Llibres amb preu superior a 12:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[preu>12]">
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 3: Añade "Llibre antic" cuando any < 1980 -->
        <h2>Llibres antics:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/>
              <xsl:if test="any &lt; 1980">
                — Llibre antic
              </xsl:if>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 4: Muestra "En préstec" o "Disponible" según el atributo estat -->
        <h2>Estat dels llibres:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:value-of select="titol"/> —
              <xsl:choose>
                <xsl:when test="@estat='prestat'">En préstec</xsl:when>
                <xsl:otherwise>Disponible</xsl:otherwise>
              </xsl:choose>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 5: Muestra solo los libros de género fantasia o distopia -->
        <h2>Llibres de fantasia o distopia:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre[genere='fantasia' or genere='distopia']">
            <li>
              <xsl:value-of select="titol"/>
            </li>
          </xsl:for-each>
        </ul>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>