<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Output HTML format -->
    <xsl:output method="html" indent="yes"/>

    <!-- Template for the whole document -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Library Books</title>
                <style>
                     table,
                     th,
                     td {
                          border: 1px solid black;
                          border-collapse: collapse;
                        }
                </style>
            </head>
            <body>
                <h1>Book List</h1>

                <!-- Display all books' titles and authors in a table -->
                <h2>All Titles and Authors:</h2>
                <table border="1">
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                    </tr>
                    <!-- Loop through each book -->
                    <xsl:for-each select="library/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                        </tr>
                    </xsl:for-each>
                </table>

                <!-- Display books with category "CSE" -->
                <h2>Books in CSE Category:</h2>
                <ul>
                    <!-- Loop through each book with category="CSE" -->
                    <xsl:for-each select="library/book[title/@category='CSE']">
                        <li><xsl:value-of select="title"/></li>
                    </xsl:for-each>
                </ul>
                
                <!-- Display books with price greater than 200 -->
                <h2>Books with Price Greater Than 200:</h2>
                <ul>
                    <!-- Loop through each book where the price is greater than 200 -->
                    <xsl:for-each select="library/book[price > 200]">
                        <li><xsl:value-of select="title"/> - <xsl:value-of select="price"/></li>
                    </xsl:for-each>
                </ul>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
