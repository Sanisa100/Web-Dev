<?xml version="1.0" ?>
<xsl:stylesheet
version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="xml" indent="yes" encoding="UTF-8"/>
<xsl:template match="/result">
<html>
<head>
<title>XSLT example</title>
    <style>
      #resultTable{
        border-collapse: separate;
        border-style: solid;
        border-width: 1px;
        border-color: black;
        border-spacing: 5px;
      }

      #resultTable td{
        border-style: dashed;
        border-width: 1px;
        border-color: gray;
        padding: 10px;
      }
      .column1{
        text-align: right;
        color: black;
        font-size: 15px;
      }

      .column2{
        text-align: left;
        color: maroon;
        font-size: 25px;
      }
    
    
    </style>

</head>
<body>

    <h1>Exam result</h1>
      <table id="resultTable">
        <tr>
          <td class="column1">  
            Reference number 
          </td>
          <td class="column2"> 
            <xsl:value-of select="@ref"></xsl:value-of>
          </td> 
        </tr>
        <tr>
          <td class="column1">
            Exam number 
          </td>
          <td class="column2">   
            <xsl:value-of select="examId"></xsl:value-of>
          </td> 
        </tr>
        <tr>
          <td class="column1"> 
            Contestant number 
          </td>
          <td class="column2">   
            <xsl:value-of select="contestantId"></xsl:value-of>
          </td> 
        </tr>
        <tr>
          <td class="column1"> 
            Digital signature 
        </td>
          <td class="column2">     
            <xsl:value-of select="digitalSignature" ></xsl:value-of>
         </td> 
        </tr>
        <tr>
          <td class="column1"> 
            Score
        </td>
          <td class="column2">   
            <xsl:value-of select="score"></xsl:value-of>
          </td> 
        </tr>
        <tr>
          <td class="column1"> 
            Band 
          </td>
          <td class="column2"> 
            <xsl:value-of select="band"></xsl:value-of>
          </td> 
        </tr>      
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>