<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html>
<head>
    <meta charset="UTF-8"/>
    <title>Motorcycles</title>
    <link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>
    <h1>Motorcycles</h1>
    <xsl:variable name="my_header">
        <tr>
            <th>Mark:</th>
            <th>Model:</th>
            <th>Made_in:</th>
            <th>Capacity:</th>
            <th>Horsepower:</th>
            <th>Weight:</th>
            <th>V_max:</th>
            <th>Photo:</th>
        </tr>
    </xsl:variable>

    <table>
        <xsl:copy-of select="$my_header"/>
        <xsl:for-each select="motorcycles/motorcycle">
            <xsl:choose>
                <xsl:when test="@type='chopper'">
                    <tr style="background-color:#37474F">
                        <td><xsl:value-of select="mark"/></td>
                        <td><xsl:value-of select="model"/></td>
                        <td><xsl:value-of select="made_in"/></td>
                        <td><xsl:value-of select="capacity"/></td>
                        <td><xsl:value-of select="horsepower"/></td>
                        <td><xsl:value-of select="weight"/></td>
                        <td><xsl:value-of select="vmax"/></td>
                        <td>
                            <img width="250px">
                                <xsl:attribute name="src">
                                 <xsl:value-of select="photo"/>
                             </xsl:attribute>
                            </img>
                        </td>
                    </tr>
                </xsl:when> 

                <xsl:when test="@type='enduro'">
                    <tr style="background-color:#546E7A">
                        <td><xsl:value-of select="mark"/></td>
                        <td><xsl:value-of select="model"/></td>
                        <td><xsl:value-of select="made_in"/></td>
                        <td><xsl:value-of select="capacity"/></td>
                        <td><xsl:value-of select="horsepower"/></td>
                        <td><xsl:value-of select="weight"/></td>
                        <td><xsl:value-of select="vmax"/></td>
                        <td>
                            <img width="250px">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo"/>
                                </xsl:attribute>
                            </img>
                        </td>
                    </tr>
                </xsl:when>

                <xsl:when test="@type='tourist'">
                    <tr style="background-color:#78909C">
                        <td><xsl:value-of select="mark"/></td>
                        <td><xsl:value-of select="model"/></td>
                        <td><xsl:value-of select="made_in"/></td>
                        <td><xsl:value-of select="capacity"/></td>
                        <td><xsl:value-of select="horsepower"/></td>
                        <td><xsl:value-of select="weight"/></td>
                        <td><xsl:value-of select="vmax"/></td>
                        <td>
                            <img width="250px">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo"/>
                                </xsl:attribute>
                            </img>
                        </td>
                    </tr>
                </xsl:when>

                <xsl:otherwise>
                    <tr style="background-color:pink">
                        <td><xsl:value-of select="mark"/></td>
                        <td><xsl:value-of select="model"/></td>
                        <td><xsl:value-of select="made_in"/></td>
                        <td><xsl:value-of select="capacity"/></td>
                        <td><xsl:value-of select="horsepower"/></td>
                        <td><xsl:value-of select="weight"/></td>
                        <td><xsl:value-of select="vmax"/></td>
                        <td>
                            <img width="250px">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="photo"/>
                                </xsl:attribute>
                            </img>
                        </td>
                    </tr>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </table>

<footer>created by damian hanusiak</footer>
</body>
</html>

</xsl:template>
</xsl:stylesheet>