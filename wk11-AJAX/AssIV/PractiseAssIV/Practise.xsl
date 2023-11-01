<?xml version="1.0" ?>
<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://www.w3.org/1999/xhtml">

  <xsl:output method="xml" indent="yes" encoding="UTF-8"/>

  <xsl:template match="/record">
    <html>
      <head> 
        <title>XSLT record</title> 
      </head>
      <body>
      <h1>
        <xsl:text>Login Report </xsl:text>
        <xsl:value-of select="date"/>
      </h1>

      <b><xsl:text>Device name: </xsl:text></b>
      <xsl:value-of select="deviceName"/><br/><br/>
      
        <xsl:for-each select="user"/>
          <b><xsl:text>Username: </xsl:text></b>
          <xsl:value-of select="userName"/><br/>
          <b><xsl:text>Name: </xsl:text></b>
          <xsl:value-of select="name"/><br/>
          <b><xsl:text>Group: </xsl:text></b>
          <xsl:value-of select="group"/><br/>
         
          <b><xsl:text>Login: </xsl:text></b><br/><br/>  

          <ul>
            <xsl:for-each select="login"/>
              <li>
            <xsl:value-of select="timing"/>
            <xsl:text>: </xsl:text>
            <xsl:value-of select="result"/><br/>
              </li>
            </xsl:for-each>
          </ul>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template> 

</xsl:stylesheet>