<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>book.xsl</title>
                <style>
                    table,th,td{
                        border:2px solid black;
                        text-align:center;
                        border-collapse:collapse;
                        padding:2px;
                        background-color:#ccffcc;
                    }
                </style>
            </head>
            <body>
                <center><h2>BOOKS</h2>
                <table>
                    <tr>
                        <th>BOOK ID</th>
                        <th>TITLE</th>
                        <th>AUTHOR</th>
                        <th>YEAR OF PUBLICATION</th>
                        <th>PRICE</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <td >
                                <xsl:value-of select="@id"/>
                            </td>
                            <td style="text-align:left;">
                                <xsl:value-of select="title"/>
                            </td>
                            <td style="text-align:left;">
                                <xsl:value-of select="author"/>
                            </td>
                            <td>
                                <xsl:value-of select="year_of_publication"/>
                            </td>
                            <td>
                                <xsl:value-of select="price"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                </center>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
