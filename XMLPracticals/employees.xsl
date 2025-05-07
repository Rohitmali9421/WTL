<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <!-- Match the root element (employees) and apply templates to its children -->
    <xsl:template match="/employees">
        <html>
            <head>
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
                <h2>Employee Information</h2>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Position</th>
                        <th>Salary</th>
                        <th>Department</th>
                    </tr>
                    
                    <!-- Loop through each employee and display their details -->
                    <xsl:for-each select="employee">
                        <tr>
                            <td><xsl:value-of select="id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="position"/></td>
                            <td><xsl:value-of select="salary"/></td>
                            <td><xsl:value-of select="department"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
                
                <h3>Employees with a salary greater than 70000:</h3>
                <ul>
                    <!-- Use XPath to filter employees with salary > 70000 -->
                    <xsl:for-each select="employee[salary &gt; 70000]">
                        <li><xsl:value-of select="name"/> - <xsl:value-of select="salary"/></li>
                    </xsl:for-each>
                </ul>

                <h3>Employees with position 'Developer':</h3>
                <ul>
                    <!-- Use XPath to filter employees with position 'Developer' -->
                    <xsl:for-each select="employee[position='Developer']">
                        <li><xsl:value-of select="name"/> - <xsl:value-of select="position"/> - <xsl:value-of select="salary"/></li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
