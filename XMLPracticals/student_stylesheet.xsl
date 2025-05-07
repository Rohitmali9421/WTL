<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Student Application</title>
        <style>
        tr:nth-child(even) {
                      background-color: #D6EEEE;
                       }
        table,th,td{
          border:2px solid black;
          border-collapse:collapse;
        }

        </style>
      </head>
      
      <body>
        <h1>Student Information</h1>
        <table style="width:50%">
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Age</th>
            <th>Grade</th>
            <th>Status</th>
          </tr>
          <xsl:for-each select="students/student">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="age"/></td>
              <td><xsl:value-of select="grade"/></td>
              <td>
                <xsl:choose>
                  <xsl:when test="grade = 'A'">Excellent</xsl:when>
                  <xsl:when test="grade = 'B'">Good</xsl:when>
                  <xsl:when test="grade = 'C'">Needs Improvement</xsl:when>
                  <xsl:otherwise>Unknown</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
