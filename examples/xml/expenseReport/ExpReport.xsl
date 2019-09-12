<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" >
    <xsl:output version="1.0" encoding="UTF-8" indent="no" omit-xml-declaration="no" media-type="text/html" />
    <xsl:template match="/">
        <html>
            <head>
                <title />
            </head>
            <body>
                <xsl:for-each select="expense-report">
                    <table border="0" table-layout="fixed" width="100%">
                        <tbody>
                            <tr>
                                <td>
                                    <table border="0" table-layout="fixed" width="100%">
                                        <tbody>
                                            <tr>
                                                <td>
                                                    <table border="0" border-collapse="collapse" cellpadding="0" cellspacing="0" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-bottom-color:#0588BA; border-bottom-style:solid; border-bottom-width:medium; " colspan="5">
                                                                    <img border="0">
                                                                        <xsl:attribute name="src"><xsl:text disable-output-escaping="yes">http://www.nanonull.com/nanonull.gif</xsl:text></xsl:attribute>
                                                                    </img>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td align="left" rowspan="2" valign="top" width="40%">
                                                                    <span style="font-size:20pt; font-weight:bold; margin-top:3pt; ">Business Expense Report</span>
                                                                </td>
                                                                <td bgcolor="#D2FFFF" width="28%">
                                                                    <span style="font-family:Tahoma; font-size:10pt; font-weight:bold; "></span>
                                                                    <xsl:for-each select="@currency">
                                                                        <input style="font-family:Tahoma; font-size:10pt; " type="radio">
                                                                            <xsl:choose>
                                                                                <xsl:when test="string(.)='USD'">
                                                                                    <xsl:attribute name="checked">1</xsl:attribute>
                                                                                </xsl:when>
                                                                            </xsl:choose>
                                                                        </input>
                                                                        <span style="font-family:Tahoma; font-size:10pt; ">Dollars</span>
                                                                    </xsl:for-each>
                                                                    <span style="font-family:Tahoma; font-size:10pt; ">&#160;</span>
                                                                    <xsl:for-each select="@currency">
                                                                        <input style="font-family:Tahoma; font-size:10pt; " type="radio">
                                                                            <xsl:choose>
                                                                                <xsl:when test="string(.)='Euro'">
                                                                                    <xsl:attribute name="checked">1</xsl:attribute>
                                                                                </xsl:when>
                                                                            </xsl:choose>
                                                                        </input>
                                                                        <span style="font-family:Tahoma; font-size:10pt; ">Euros</span>
                                                                    </xsl:for-each>
                                                                    <span style="font-family:Tahoma; font-size:10pt; ">&#160;</span>
                                                                    <xsl:for-each select="@currency">
                                                                        <input style="font-family:Tahoma; font-size:10pt; " type="radio">
                                                                            <xsl:choose>
                                                                                <xsl:when test="string(.)='JPY'">
                                                                                    <xsl:attribute name="checked">1</xsl:attribute>
                                                                                </xsl:when>
                                                                            </xsl:choose>
                                                                        </input>
                                                                        <span style="font-family:Tahoma; font-size:10pt; ">Yen</span>
                                                                    </xsl:for-each>
                                                                </td>
                                                                <td bgcolor="#D2FFFF" width="12%">
                                                                    <span style="font-family:Tahoma; font-size:10pt; font-weight:bold; ">Total:&#160; </span>
                                                                    <xsl:for-each select="@total-sum">
                                                                        <span style="font-family:Tahoma; font-size:10pt; ">
                                                                            <xsl:value-of select="format-number(number(string(.)), '###,##0.00')" />
                                                                        </span>
                                                                    </xsl:for-each>
                                                                    <xsl:choose>
                                                                        <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                            <span style="font-size:10pt; ">$</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                            <span style="font-size:x-small; ">€</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                            <span style="font-size:x-small; ">¥</span>
                                                                        </xsl:when>
                                                                    </xsl:choose>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td bgcolor="#D2FFFF" colspan="2">
                                                                    <xsl:for-each select="@detailed">
                                                                        <input style="font-size:10pt; " type="checkbox">
                                                                            <xsl:choose>
                                                                                <xsl:when test="string(.)='true'">
                                                                                    <xsl:attribute name="checked">1</xsl:attribute>
                                                                                </xsl:when>
                                                                                <xsl:when test="string(.)='1'">
                                                                                    <xsl:attribute name="checked">1</xsl:attribute>
                                                                                </xsl:when>
                                                                            </xsl:choose>
                                                                        </input>
                                                                    </xsl:for-each>
                                                                    <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Detailed report</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" border-collapse="collapse" cellpadding="0" cellspacing="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-bottom-color:black; border-bottom-style:solid; border-bottom-width:1pt; " bgcolor="#D2FFFF">
                                                                    <span style="font-family:Verdana; font-size:14pt; ">Employee Information</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <xsl:for-each select="Person">
                                                        <table border="0" border-collapse="collapse" cellpadding="0" cellspacing="0" width="100%">
                                                            <tbody>
                                                                <tr>
                                                                    <td />
                                                                    <td>
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " bgcolor="#F3F3F3">
                                                                                        <xsl:for-each select="First">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                    <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " bgcolor="#F3F3F3">
                                                                                        <xsl:for-each select="Last">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td width="50%">
                                                                                        <xsl:choose>
                                                                                            <xsl:when test="string-length( First ) &gt; 0">
                                                                                                <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">First Name</span>
                                                                                            </xsl:when>
                                                                                            <xsl:otherwise>
                                                                                                <span style="color:#FF0000; font-family:Arial; font-size:10pt; font-weight:bold; ">First Name is required</span>
                                                                                            </xsl:otherwise>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td width="50%">
                                                                                        <xsl:choose>
                                                                                            <xsl:when test="string-length( Last ) &gt; 0">
                                                                                                <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Last Name</span>
                                                                                            </xsl:when>
                                                                                            <xsl:otherwise>
                                                                                                <span style="color:#FF0000; font-family:Arial; font-size:10pt; font-weight:bold; ">Last Name is required</span>
                                                                                            </xsl:otherwise>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td>
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " bgcolor="#F3F3F3">
                                                                                        <xsl:for-each select="Title">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Title</span>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td />
                                                                </tr>
                                                                <tr>
                                                                    <td width="2%" />
                                                                    <td width="48%">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " bgcolor="#F3F3F3">
                                                                                        <xsl:for-each select="Email">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test="string-length( Email ) &gt; 0">
                                                                                                <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">E-Mail</span>
                                                                                            </xsl:when>
                                                                                            <xsl:otherwise>
                                                                                                <span style="color:#FF0000; font-family:Arial; font-size:10pt; font-weight:bold; ">E-Mail is required</span>
                                                                                            </xsl:otherwise>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td width="48%">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " bgcolor="#F3F3F3">
                                                                                        <xsl:for-each select="Phone">
                                                                                            <xsl:apply-templates />
                                                                                        </xsl:for-each>
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>
                                                                                        <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Phone</span>
                                                                                    </td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                    <td width="2%" />
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </xsl:for-each>
                                                    <br />
                                                    <table border="0" border-collapse="collapse" cellpadding="0" cellspacing="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-bottom-color:black; border-bottom-style:solid; border-bottom-width:1pt; " bgcolor="#D2FFFF" height="24">
                                                                    <span style="font-family:Verdana; font-size:14pt; ">Expense List</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <xsl:choose>
                                                        <xsl:when test="contains(string(@detailed), &quot;true&quot;)">
                                                            <table border="0" width="100%">
                                                                <thead>
                                                                    <tr bgcolor="#C0C0C0">
                                                                        <td width="10%">
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Type</span>
                                                                        </td>
                                                                        <td width="10%">
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Expense To</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Date</span>
                                                                            <span style="font-family:Arial; font-size:9pt; font-weight:bold; "> (</span>
                                                                            <span style="font-family:Arial; font-size:9pt; font-style:italic; font-weight:bold; ">mm/dd/yyyy</span>
                                                                            <span style="font-family:Arial; font-size:9pt; font-weight:bold; ">)</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Expense</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Details</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Description</span>
                                                                        </td>
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <xsl:for-each select="expense-item">
                                                                        <tr bgcolor="#E0E0E0">
                                                                            <td width="15%">
                                                                                <xsl:for-each select="@type">
                                                                                    <select size="0">
                                                                                        <option value="Meal">
                                                                                            <xsl:if test="string(.)='Meal'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Meal</option>
                                                                                        <option value="Lodging">
                                                                                            <xsl:if test="string(.)='Lodging'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Lodging</option>
                                                                                        <option value="Travel">
                                                                                            <xsl:if test="string(.)='Travel'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Travel</option>
                                                                                        <option value="Parking">
                                                                                            <xsl:if test="string(.)='Parking'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Parking</option>
                                                                                        <option value="Entertainment">
                                                                                            <xsl:if test="string(.)='Entertainment'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Entertainment</option>
                                                                                        <option value="Misc">
                                                                                            <xsl:if test="string(.)='Misc'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Misc</option>
                                                                                    </select>
                                                                                </xsl:for-each>
                                                                            </td>
                                                                            <td width="15%">
                                                                                <xsl:for-each select="@expto">
                                                                                    <select size="0">
                                                                                        <option value="Development">
                                                                                            <xsl:if test="string(.)='Development'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Development</option>
                                                                                        <option value="Marketing">
                                                                                            <xsl:if test="string(.)='Marketing'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Marketing</option>
                                                                                        <option value="Accounting">
                                                                                            <xsl:if test="string(.)='Accounting'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Accounting</option>
                                                                                        <option value="Sales">
                                                                                            <xsl:if test="string(.)='Sales'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Sales</option>
                                                                                        <option value="Operations">
                                                                                            <xsl:if test="string(.)='Operations'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Operations</option>
                                                                                        <option value="Support">
                                                                                            <xsl:if test="string(.)='Support'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Support</option>
                                                                                        <option value="IT">
                                                                                            <xsl:if test="string(.)='IT'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>IT</option>
                                                                                    </select>
                                                                                </xsl:for-each>
                                                                            </td>
                                                                            <td align="center" width="15%">
                                                                                <xsl:for-each select="Date">
                                                                                    <span style="white-space:nowrap; ">
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 6, 2)), '00')" />
                                                                                        <xsl:text>/</xsl:text>
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 9, 2)), '00')" />
                                                                                        <xsl:text>/</xsl:text>
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 1, 4)), '0000')" />
                                                                                    </span>&#160;</xsl:for-each>
                                                                            </td>
                                                                            <td align="right" width="12%">
                                                                                <xsl:for-each select="expense">
                                                                                    <xsl:value-of select="format-number(number(string(.)), '###,##0.00')" />
                                                                                </xsl:for-each>&#160;<xsl:choose>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                        <span style="font-weight:bold; ">$</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                        <span style="font-weight:bold; ">£</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                        <span style="font-weight:bold; ">€</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                        <span style="font-weight:bold; ">¥</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                        <span style="font-weight:bold; ">AU</span>
                                                                                        <span style="font-weight:bold; ">$</span>
                                                                                    </xsl:when>
                                                                                </xsl:choose>
                                                                            </td>
                                                                            <td width="18%">
                                                                                <xsl:choose>
                                                                                    <xsl:when test=" @type  = &quot;Meal&quot;">
                                                                                        <xsl:for-each select="Meal">
                                                                                            <xsl:for-each select="@mealtype">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Meal Type: </span>
                                                                                                <select style="font-family:Arial; font-size:11pt; " size="0">
                                                                                                    <option value="dinner">
                                                                                                        <xsl:if test="string(.)='dinner'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>dinner</option>
                                                                                                    <option value="breakfast">
                                                                                                        <xsl:if test="string(.)='breakfast'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>breakfast</option>
                                                                                                    <option value="lunch">
                                                                                                        <xsl:if test="string(.)='lunch'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>lunch</option>
                                                                                                    <option value="other">
                                                                                                        <xsl:if test="string(.)='other'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>other</option>
                                                                                                </select>
                                                                                                <br />
                                                                                            </xsl:for-each>
                                                                                            <xsl:for-each select="Location">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Location: </span>
                                                                                                <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                    <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                </input>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" @type  = &quot;Lodging&quot;">
                                                                                        <xsl:for-each select="Lodging">
                                                                                            <xsl:for-each select="Name">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Lodging Name: </span>
                                                                                                <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                    <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                </input>
                                                                                                <br />
                                                                                            </xsl:for-each>
                                                                                            <xsl:for-each select="Location">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Location: </span>
                                                                                                <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                    <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                </input>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" @type  = &quot;Travel&quot;">
                                                                                        <xsl:for-each select="Travel">
                                                                                            <xsl:for-each select="@means">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Means: </span>
                                                                                                <select style="font-family:Arial; font-size:11pt; " size="0">
                                                                                                    <option value="Taxi">
                                                                                                        <xsl:if test="string(.)='Taxi'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Taxi</option>
                                                                                                    <option value="CharterAir">
                                                                                                        <xsl:if test="string(.)='CharterAir'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>CharterAir</option>
                                                                                                    <option value="Airline">
                                                                                                        <xsl:if test="string(.)='Airline'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Airline</option>
                                                                                                    <option value="Limo">
                                                                                                        <xsl:if test="string(.)='Limo'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Limo</option>
                                                                                                    <option value="CharterSea">
                                                                                                        <xsl:if test="string(.)='CharterSea'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>CharterSea</option>
                                                                                                    <option value="Rail">
                                                                                                        <xsl:if test="string(.)='Rail'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Rail</option>
                                                                                                    <option value="CharterLand">
                                                                                                        <xsl:if test="string(.)='CharterLand'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>CharterLand</option>
                                                                                                    <option value="Bus">
                                                                                                        <xsl:if test="string(.)='Bus'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Bus</option>
                                                                                                </select>
                                                                                                <br />
                                                                                            </xsl:for-each>
                                                                                            <xsl:for-each select="Destination">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Destination: </span>
                                                                                                <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                    <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                </input>
                                                                                                <br />
                                                                                            </xsl:for-each>
                                                                                            <xsl:choose>
                                                                                                <xsl:when test=" @means = &quot;Taxi&quot;">
                                                                                                    <xsl:for-each select="Mileage">
                                                                                                        <span style="font-family:Arial; font-size:11pt; ">Mileage: </span>
                                                                                                        <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                            <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                        </input>
                                                                                                    </xsl:for-each>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" @means  = &quot;Limo&quot;">
                                                                                                    <xsl:for-each select="Mileage">
                                                                                                        <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                            <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                        </input>
                                                                                                    </xsl:for-each>
                                                                                                </xsl:when>
                                                                                            </xsl:choose>
                                                                                        </xsl:for-each>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" @type  = &quot;Parking&quot;">
                                                                                        <xsl:for-each select="Parking">
                                                                                            <xsl:for-each select="Location">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Location: </span>
                                                                                                <input style="font-family:Arial; font-size:11pt; " value="">
                                                                                                    <xsl:attribute name="value"><xsl:value-of select="." /></xsl:attribute>
                                                                                                </input>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" @type = &quot;Entertainment&quot;">
                                                                                        <table border="0">
                                                                                            <thead>
                                                                                                <tr>
                                                                                                    <td style="border-bottom-color:black; border-bottom-style:solid; border-bottom-width:thin; " align="center">
                                                                                                        <span style="font-family:Arial; font-size:11pt; ">Client-name</span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </thead>
                                                                                            <tbody>
                                                                                                <xsl:for-each select="Entertainment">
                                                                                                    <tr>
                                                                                                        <td bgcolor="#F3F3F3">
                                                                                                            <xsl:for-each select="Client-name">
                                                                                                                <span style="font-family:Arial; font-size:11pt; ">
                                                                                                                    <xsl:apply-templates />
                                                                                                                </span>
                                                                                                            </xsl:for-each>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </xsl:for-each>
                                                                                            </tbody>
                                                                                        </table>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &quot;Misc&quot;">
                                                                                        <xsl:for-each select="Misc">
                                                                                            <xsl:for-each select="@misctype">
                                                                                                <span style="font-family:Arial; font-size:11pt; ">Misc. Type: </span>
                                                                                                <select style="font-family:Arial; font-size:11pt; " size="0">
                                                                                                    <option value="TeamBuilding">
                                                                                                        <xsl:if test="string(.)='TeamBuilding'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>TeamBuilding</option>
                                                                                                    <option value="Tips">
                                                                                                        <xsl:if test="string(.)='Tips'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Tips</option>
                                                                                                    <option value="Fines">
                                                                                                        <xsl:if test="string(.)='Fines'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Fines</option>
                                                                                                    <option value="Rental">
                                                                                                        <xsl:if test="string(.)='Rental'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Rental</option>
                                                                                                    <option value="EverythingElse">
                                                                                                        <xsl:if test="string(.)='EverythingElse'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>EverythingElse</option>
                                                                                                    <option value="Tolls">
                                                                                                        <xsl:if test="string(.)='Tolls'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Tolls</option>
                                                                                                    <option value="Telephone">
                                                                                                        <xsl:if test="string(.)='Telephone'">
                                                                                                            <xsl:attribute name="selected">1</xsl:attribute>
                                                                                                        </xsl:if>Telephone</option>
                                                                                                </select>
                                                                                            </xsl:for-each>
                                                                                        </xsl:for-each>
                                                                                    </xsl:when>
                                                                                </xsl:choose>
                                                                            </td>
                                                                            <td width="25%">
                                                                                <xsl:for-each select="description">
                                                                                    <div>
                                                                                        <span style="font-family:Arial; font-size:11pt; ">
                                                                                            <xsl:apply-templates />
                                                                                        </span>
                                                                                    </div>
                                                                                </xsl:for-each>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family:Arial Narrow; font-size:10PT; " bgcolor="#BBBBBB" colspan="6"> General Guidelines:<xsl:choose>
                                                                                    <xsl:when test="@type = &apos;Meal&apos;">
                                                                                        <br />
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10PT; ">Meals should not be expensed to Development, IT, or Support</li>
                                                                                            <li style="font-family:Arial Narrow; font-size:10PT; ">Meals expensed to Accounting require a Detailed report</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type  = &apos;Lodging&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-size:10PT; ">Lodging should be expensed to Marketing and Sales only</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Travel&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-size:10PT; ">Travel should be expensed to Marketing and Sales only</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Parking&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-size:10PT; ">Parking should be expensed to the department of the vehicle&apos;s owner</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Entertainment&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-size:10PT; ">Entertainment should not be expensed to Development </li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Misc&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-size:10PT; ">All Miscellaneous expenses require a detailed report</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise />
                                                                                </xsl:choose>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:for-each>
                                                                </tbody>
                                                            </table>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <table border="0" width="100%">
                                                                <thead>
                                                                    <tr bgcolor="#C0C0C0">
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Type</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Expense To</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Date</span>
                                                                            <span style="font-family:Arial; font-size:9pt; font-weight:bold; "> (</span>
                                                                            <span style="font-family:Arial; font-size:9pt; font-style:italic; font-weight:bold; ">mm/dd/yyyy)</span>
                                                                        </td>
                                                                        <td>
                                                                            <span style="font-family:Arial; font-size:10pt; font-weight:bold; ">Expense</span>
                                                                        </td>
                                                                        <td />
                                                                    </tr>
                                                                </thead>
                                                                <tbody>
                                                                    <xsl:for-each select="expense-item">
                                                                        <tr bgcolor="#E0E0E0">
                                                                            <td width="15%">
                                                                                <xsl:for-each select="@type">
                                                                                    <select size="0">
                                                                                        <option value="Meal">
                                                                                            <xsl:if test="string(.)='Meal'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Meal</option>
                                                                                        <option value="Lodging">
                                                                                            <xsl:if test="string(.)='Lodging'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Lodging</option>
                                                                                        <option value="Travel">
                                                                                            <xsl:if test="string(.)='Travel'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Travel</option>
                                                                                        <option value="Parking">
                                                                                            <xsl:if test="string(.)='Parking'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Parking</option>
                                                                                        <option value="Entertainment">
                                                                                            <xsl:if test="string(.)='Entertainment'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Entertainment</option>
                                                                                        <option value="Misc">
                                                                                            <xsl:if test="string(.)='Misc'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Misc</option>
                                                                                    </select>
                                                                                </xsl:for-each>
                                                                            </td>
                                                                            <td width="15%">
                                                                                <xsl:for-each select="@expto">
                                                                                    <select size="0">
                                                                                        <option value="Development">
                                                                                            <xsl:if test="string(.)='Development'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Development</option>
                                                                                        <option value="Marketing">
                                                                                            <xsl:if test="string(.)='Marketing'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Marketing</option>
                                                                                        <option value="Accounting">
                                                                                            <xsl:if test="string(.)='Accounting'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Accounting</option>
                                                                                        <option value="Sales">
                                                                                            <xsl:if test="string(.)='Sales'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Sales</option>
                                                                                        <option value="Operations">
                                                                                            <xsl:if test="string(.)='Operations'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Operations</option>
                                                                                        <option value="Support">
                                                                                            <xsl:if test="string(.)='Support'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>Support</option>
                                                                                        <option value="IT">
                                                                                            <xsl:if test="string(.)='IT'">
                                                                                                <xsl:attribute name="selected">1</xsl:attribute>
                                                                                            </xsl:if>IT</option>
                                                                                    </select>
                                                                                </xsl:for-each>
                                                                            </td>
                                                                            <td align="center" width="15%">
                                                                                <xsl:for-each select="Date">
                                                                                    <span style="white-space:nowrap; ">
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 6, 2)), '00')" />
                                                                                        <xsl:text>/</xsl:text>
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 9, 2)), '00')" />
                                                                                        <xsl:text>/</xsl:text>
                                                                                        <xsl:value-of select="format-number(number(substring(string(.), 1, 4)), '0000')" />
                                                                                    </span>&#160;</xsl:for-each>
                                                                            </td>
                                                                            <td align="right" width="12%">
                                                                                <xsl:for-each select="expense">
                                                                                    <xsl:value-of select="format-number(number(string(.)), '###,##0.00')" />
                                                                                </xsl:for-each>&#160;<xsl:choose>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                        <span style="font-weight:bold; ">$</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                        <span style="font-weight:bold; ">£</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                        <span style="font-weight:bold; ">€</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                        <span style="font-weight:bold; ">¥</span>
                                                                                    </xsl:when>
                                                                                    <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                        <span style="font-weight:bold; ">AU</span>
                                                                                        <span style="font-weight:bold; ">$</span>
                                                                                    </xsl:when>
                                                                                </xsl:choose>
                                                                            </td>
                                                                            <td style="font-family:Arial Narrow; font-size:x-small; white-space:nowrap; " align="left" width="43%">
                                                                                <xsl:if test="@type = &apos;Misc&apos;">
                                                                                    <ul style="margin-bottom:0; margin-top:0; ">
                                                                                        <li style="font-family:Arial Narrow; font-size:x-small; ">
                                                                                            <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">All Miscellaneous must be documented by a detailed report</span>
                                                                                        </li>
                                                                                    </ul>
                                                                                </xsl:if>
                                                                                <xsl:if test="@type  = &apos;Meal&apos;  and  expense &gt; 500">
                                                                                    <ul style="margin-bottom:0; margin-top:0; ">
                                                                                        <li style="font-family:Arial Narrow; font-size:x-small; ">
                                                                                            <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">All Meals expensed greater than 500 </span>
                                                                                            <xsl:choose>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">$</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">£</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">€</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">¥</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                    <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                    <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                                </xsl:when>
                                                                                            </xsl:choose>&#160;<span style="color:red; font-family:Arial Narrow; font-size:x-small; ">requires a detailed report</span>
                                                                                        </li>
                                                                                    </ul>
                                                                                </xsl:if>
                                                                                <xsl:if test="@type = &apos;Meal&apos; and  @expto = &apos;Development&apos;">
                                                                                    <ul style="margin-bottom:0; margin-top:0; ">
                                                                                        <li style="font-family:Arial Narrow; font-size:x-small; ">
                                                                                            <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">Meals expensed to developers requires a detailed report</span>
                                                                                        </li>
                                                                                    </ul>
                                                                                </xsl:if>
                                                                                <xsl:if test="expense &gt; 999">
                                                                                    <ul style="margin-bottom:0; margin-top:0; ">
                                                                                        <li style="font-family:Arial Narrow; font-size:x-small; ">
                                                                                            <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">One expense can not exceed one thousand </span>
                                                                                            <xsl:choose>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">$</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">£</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">€</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                    <span style="color:red; font-family:Arial Narrow; font-size:x-small; font-weight:bold; ">¥</span>
                                                                                                </xsl:when>
                                                                                                <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                    <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                    <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                                </xsl:when>
                                                                                            </xsl:choose>
                                                                                        </li>
                                                                                    </ul>
                                                                                </xsl:if>
                                                                                <xsl:if test="@expto = &apos;Accounting&apos;">
                                                                                    <ul style="margin-bottom:0; margin-top:0; ">
                                                                                        <li style="font-family:Arial Narrow; font-size:x-small; ">
                                                                                            <span style="color:red; font-family:Arial Narrow; font-size:x-small; ">All accounting expenses must have a detailed report</span>
                                                                                        </li>
                                                                                    </ul>
                                                                                </xsl:if>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="font-family:Arial Narrow; font-size:10pt; " bgcolor="#BBBBBB" colspan="5"> General Guidelines:<xsl:choose>
                                                                                    <xsl:when test="@type = &apos;Meal&apos;">
                                                                                        <br />
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Meals should not be expensed to Development, IT, or Support</li>
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Meals expensed to Accounting require a Detailed report</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type  = &apos;Lodging&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Lodging should be expensed to Marketing and Sales only</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Travel&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Travel should be expensed to Marketing and Sales only</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Parking&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Parking should be expensed to the department of the vehicle&apos;s owner</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Entertainment&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">Entertainment should not be expensed to Development </li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:when test="@type = &apos;Misc&apos;">
                                                                                        <ul style="margin-bottom:0; margin-top:0; ">
                                                                                            <li style="font-family:Arial Narrow; font-size:10pt; ">All Miscellaneous expenses require a detailed report</li>
                                                                                        </ul>
                                                                                    </xsl:when>
                                                                                    <xsl:otherwise />
                                                                                </xsl:choose>
                                                                            </td>
                                                                        </tr>
                                                                    </xsl:for-each>
                                                                </tbody>
                                                            </table>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                    <table border="0" border-collapse="collapse" cellpadding="0" cellspacing="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-bottom-color:black; border-bottom-style:solid; border-bottom-width:1pt; " bgcolor="#D2FFFF">
                                                                    <span style="font-family:Verdana; font-size:14pt; ">Expense Summary</span>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-color:black; border-style:solid; border-width:1pt; " width="100%">
                                                                    <xsl:if test="expense-item/@type = &apos;Parking&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Parking Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Parking&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@type = &apos;Meal&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Meal Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Meal&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@type = &apos;Travel&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Travel Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Travel&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@type = &apos;Lodging&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Lodging Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Lodging&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@type = &apos;Entertainment&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Entertainment Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Entertainment&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@type = &apos;Misc&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Miscellaneous Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@type=&apos;Misc&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td style="border-color:black; border-style:solid; border-width:1pt; white-space:nowrap; ">
                                                                    <xsl:if test="expense-item/@expto = &apos;Marketing&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Marketing Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Marketing&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;Development&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Development Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Development&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;Accounting&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Accounting Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Accounting&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;Sales&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Sales Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Sales&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;Operations&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Operations Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Operations&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;Support&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Support Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;Support&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td style="white-space:nowrap; " width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                    <xsl:if test="expense-item/@expto = &apos;IT&apos;">
                                                                        <table border="0" width="100%">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " width="47%">
                                                                                        <span style="font-family:Verdana; ">Total Information Technology Expenses</span>
                                                                                    </td>
                                                                                    <td style="border-bottom-color:silver; border-bottom-style:solid; border-bottom-width:1pt; white-space:nowrap; " align="right" width="52%">
                                                                                        <span style="font-family:Verdana; ">
                                                                                            <xsl:value-of select="format-number(number(string(sum(expense-item[@expto=&apos;IT&apos;]/expense))), '###,##0.00')" />
                                                                                        </span>
                                                                                        <xsl:choose>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                                            </xsl:when>
                                                                                            <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                                                <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                                                <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                                            </xsl:when>
                                                                                        </xsl:choose>
                                                                                    </td>
                                                                                    <td width="1%" />
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </xsl:if>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <table border="0" table-layout="fixed" width="100%">
                                                        <tbody>
                                                            <tr>
                                                                <td width="50%">
                                                                    <span style="font-family:Verdana; font-size:medium; ">TOTAL EXPENSES</span>
                                                                </td>
                                                                <td align="right" width="50%">
                                                                    <span style="font-family:Verdana; font-size:medium; ">
                                                                        <xsl:value-of select="format-number(number(string(sum( expense-item/expense  ))), '###,##0.00')" />
                                                                    </span>
                                                                    <xsl:choose>
                                                                        <xsl:when test=" /expense-report/@currency  = &quot;USD&quot;">
                                                                            <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency  = &quot;UKP&quot;">
                                                                            <span style="font-family:Verdana; font-weight:bold; ">£</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency  = &quot;Euro&quot;">
                                                                            <span style="font-family:Verdana; font-weight:bold; ">€</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency = &quot;JPY&quot;">
                                                                            <span style="font-family:Verdana; font-weight:bold; ">¥</span>
                                                                        </xsl:when>
                                                                        <xsl:when test=" /expense-report/@currency = &quot;AUD&quot;">
                                                                            <span style="font-family:Verdana; font-size:x-small; font-weight:bold; ">AU</span>
                                                                            <span style="font-family:Verdana; font-weight:bold; ">$</span>
                                                                        </xsl:when>
                                                                    </xsl:choose>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <xsl:choose>
                                                        <xsl:when test="sum(/expense-report/expense-item/expense)&gt;100">
                                                            <table border="0" table-layout="fixed" width="100%">
                                                                <tbody>
                                                                    <tr>
                                                                        <td align="left" colspan="2" width="85%">
                                                                            <span style="font-size:10pt; ">This expense report has exceeded </span>
                                                                            <span style="font-size:10pt; font-weight:bold; ">100</span>
                                                                            <span style="font-size:10pt; ">&#160;</span>
                                                                            <xsl:for-each select="@currency">
                                                                                <span style="font-size:x-small; ">
                                                                                    <span style="font-size:10pt; ">
                                                                                        <xsl:value-of select="." />
                                                                                    </span>
                                                                                </span>
                                                                            </xsl:for-each>
                                                                            <span style="font-size:10pt; "> which under corporate policy requires approval of your direct superior.&#160; All forms must be presented in triplicate and be submitted to the human resources department server in its current XML form.</span>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " height="101" valign="bottom" width="15%">
                                                                            <table border="0" width="100%">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td />
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Date</td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                        <td style="border-color:#D3D3D3; border-style:solid; border-width:1pt; " height="101" valign="bottom" width="85%">
                                                                            <table border="0" width="100%">
                                                                                <tbody>
                                                                                    <tr>
                                                                                        <td />
                                                                                    </tr>
                                                                                    <tr>
                                                                                        <td>Signature</td>
                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </xsl:when>
                                                        <xsl:otherwise />
                                                    </xsl:choose>
                                                    <br />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="italic">
        <span style="font-style:italic; ">
            <xsl:apply-templates />
        </span>
    </xsl:template>
    <xsl:template match="strong">
        <span style="font-weight:bold; ">
            <xsl:apply-templates />
        </span>
    </xsl:template>
</xsl:stylesheet>
