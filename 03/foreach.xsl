<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Employee Salary Categories</title>
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
                        margin-bottom: 10px;
                    }
                    h3 {
                        color: #444;
                        margin-top: 20px;
                    }
                    table {
                        width: 60%;
                        margin: 10px auto;
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
                        font-size: 16px;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    td {
                        font-size: 14px;
                    }
                    .high {
                        color: red;
                        font-weight: bold;
                    }
                    .medium {
                        color: orange;
                        font-weight: bold;
                    }
                    .low {
                        color: green;
                        font-weight: bold;
                    }
                </style>
            </head>
            <body>
                <h2>Employee List with Salary Categories</h2>

                <!-- High Salary Employees -->
                <h3 class="high">High Salary (≥100000)</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Nickname</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="class/employee">
                        <xsl:if test="salary &gt;= 100000">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="firstname"/></td>
                                <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="nickname"/></td>
                                <td class="high"><xsl:value-of select="salary"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <!-- Medium Salary Employees -->
                <h3 class="medium">Medium Salary (50000 - 99999)</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Nickname</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="class/employee">
                        <xsl:if test="salary &gt;= 50000 and salary &lt; 100000">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="firstname"/></td>
                                <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="nickname"/></td>
                                <td class="medium"><xsl:value-of select="salary"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

                <!-- Low Salary Employees -->
                <h3 class="low">Low Salary (&lt;50000)</h3>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Nickname</th>
                        <th>Salary</th>
                    </tr>
                    <xsl:for-each select="class/employee">
                        <xsl:if test="salary &lt; 50000">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="firstname"/></td>
                                <td><xsl:value-of select="lastname"/></td>
                                <td><xsl:value-of select="nickname"/></td>
                                <td class="low"><xsl:value-of select="salary"/></td>
                            </tr>
                        </xsl:if>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
