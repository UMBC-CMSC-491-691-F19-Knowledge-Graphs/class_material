<?xml version="1.0" ?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body>
  <hr/>
  <xsl:for-each select="films/film">
    <b><xsl:value-of select="@title" /></b> (<xsl:value-of select="@year" />)
    <ul>
      <xsl:for-each select="actor">
        <li><xsl:value-of select="text()"/></li>
      </xsl:for-each>
    </ul>
    <hr/>
  </xsl:for-each>
</body>
</html>
