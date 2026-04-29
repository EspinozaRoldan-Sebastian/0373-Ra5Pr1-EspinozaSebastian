<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <style>
          /* Ejercicio 3: clases CSS según el estado del libro */
          .disponible { background-color: lightgreen; }
          .prestat { background-color: lightcoral; }
        </style>
      </head>
      <body>

        <!-- Ejercicio 2: Texto plano con una línea por libro: Títol - Autor - Any -->
        <h2>Llista de llibres:</h2>
        <pre>
          <xsl:for-each select="biblioteca/llibre">
            <xsl:value-of select="titol"/> - <xsl:value-of select="autor"/> - <xsl:value-of select="any"/>
            <xsl:text>&#10;</xsl:text>
          </xsl:for-each>
        </pre>

        <!-- Ejercicio 3: Página HTML con clase CSS según el estado del libro -->
        <h2>Llibres amb estil segons estat:</h2>
        <ul>
          <xsl:for-each select="biblioteca/llibre">
            <li>
              <xsl:attribute name="class">
                <xsl:value-of select="@estat"/>
              </xsl:attribute>
              <xsl:value-of select="titol"/> — <xsl:value-of select="@estat"/>
            </li>
          </xsl:for-each>
        </ul>

        <!-- Ejercicio 4: Número total de libros al final de la página -->
        <h2>Total de llibres:</h2>
        <p>
          Nombre total de llibres: <xsl:value-of select="count(biblioteca/llibre)"/>
        </p>

        <!-- Ejercicio 5: Precio medio de los libros -->
        <h2>Preu mitjà:</h2>
        <p>
          Preu mitjà dels llibres:
          <xsl:value-of select="sum(biblioteca/llibre/preu) div count(biblioteca/llibre)"/>€
        </p>

      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>