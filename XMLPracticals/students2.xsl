<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!-- Output HTML format -->
    <xsl:output method="html" indent="yes"/>

    <!-- Template for the whole document -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Student Records</title>
                <style>
                    .high-marks {
                        color: blue;
                    }
                    .low-marks {
                        color: red;
                    }
                    table,
                     th,
                     td {
                          border: 1px solid black;
                          border-collapse: collapse;
                        }
                </style>
            </head>
            <body>
                <h1>Student Records</h1>

                <!-- Display sorted student records -->
                <table style="width:30%">
                    <tr style="height:20%">
                        <th>Name</th>
                        <th>Marks</th>
                    </tr>

                    <!-- Sort students by name in ascending order -->
                    <xsl:for-each select="students/student">
                        <xsl:sort select="name" order="ascending"/>
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td>
                                <!-- Apply color condition for marks -->
                                <xsl:choose>
                                    <xsl:when test="marks > 60">
                                        <span class="high-marks"><xsl:value-of select="marks"/></span>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <span class="low-marks"><xsl:value-of select="marks"/></span>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
