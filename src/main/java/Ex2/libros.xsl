<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>﻿
    
    <xsl:template match="/">
        <html>
            <head>
                <title>libreria1.xsl</title>
            </head>
            <body>S
                <h1>Llibreria seleccionada</h1>
                <table style="background-color:lightgrey">
                    <tr style="background-color:white">
                        <th>Títol</th>
                        <th>Autor</th>
                        <th>Pàgines</th>
                        <th>preu</th>
                    </tr>
                    <xsl:for-each select="llibreria/llibre[preu &lt;10.50]">
                        <tr>
                            <td><xsl:value-of select="titol"/></td>
                            <td><xsl:value-of select="autor"/></td>
                            <td><xsl:value-of select="pagines"/></td>
                            <td><xsl:value-of select="preu"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    
</xsl:stylesheet>