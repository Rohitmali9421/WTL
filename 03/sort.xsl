<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Details</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 20px;
                        padding: 20px;
                        text-align: center;
                    }
                    h2 {
                        color: #333;
                    }
                    table {
                        width: 60%;
                        margin: 20px auto;
                        border-collapse: collapse;
                        background-color: #fff;
                        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
                    }
                    th, td {
                        padding: 10px;
                        text-align: left;
                        border: 1px solid #ddd;
                    }
                    th {
                        background-color: #9acd32;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #ddd;
                    }
                </style>
            </head>
            <body>
                <h2>Employee List (Sorted by Salary - Descending)</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Nickname</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="class/employee">
                        <!-- Sorting Employees by Salary (Descending) -->
                        <xsl:sort select="salary" data-type="number" order="descending"/>
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="firstname"/></td>
                            <td><xsl:value-of select="lastname"/></td>
                            <td><xsl:value-of select="nickname"/></td>
                            <td><xsl:value-of select="salary"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
