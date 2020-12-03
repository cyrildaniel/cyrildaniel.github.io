<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/resume">
    <html>
      <head>
        <title>Resume of Cyril Kunjumon Daniel</title>
        <style>
          .basic_info_attribute{
            font-weight: bold;
            width: 150px;
            height: 28px;
          }

          th{
            height: 50px;
          }

          .academic-qualifications td{
            height: 30px;
            text-align: center;
          }

          .skill-type{
            font-style: italic;
          }
        </style>
      </head>
      <body>
        <h2>Resume</h2>
        <hr/>
        <br/>
        <div class="basic-info">
          <table border="0">
            <tr>
              <td class="basic_info_attribute">Name:</td><td><xsl:value-of select="basic_info/name"/></td>
            </tr>
            <tr>
              <td class="basic_info_attribute">Gender:</td><td><xsl:value-of select="basic_info/gender"/></td>
            </tr>
            <tr>
              <td class="basic_info_attribute">Date of Birth:</td><td><xsl:value-of select="basic_info/dob"/></td>
            </tr>
            <tr>
              <td class="basic_info_attribute">Age:</td><td><xsl:value-of select="basic_info/age"/></td>
            </tr>
            <tr>
              <td class="basic_info_attribute">Email:</td><td><xsl:value-of select="basic_info/email"/></td>
            </tr>
            <tr>
              <td class="basic_info_attribute">Contact Number:</td><td><xsl:value-of select="basic_info/number"/></td>
            </tr>
          </table>
        </div>
        <br/>
        <div class="academic-qualifications">
          <h3>Academic Qualifications:</h3>
          <table border="1">
            <tr>
              <th width="275px">Qualification Name</th><th width="200px">Institution</th><th width="350px">Board</th><th width="75px">Year</th><th width="80px">Result</th>
            </tr>
            <xsl:for-each select="education/qualification">
              <tr>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="institute"/></td>
                <td><xsl:value-of select="board"/></td>
                <td><xsl:value-of select="year"/></td>
                <td><xsl:value-of select="result"/></td>
              </tr>
            </xsl:for-each>
          </table>
        </div>
        <br/>
        <div class="academic-acievements">
          <h3>Academic Achievements:</h3>
          <ul>
            <xsl:for-each select="academic_acievements/achievement">
              <li><xsl:value-of select="description"/></li>
            </xsl:for-each>
          </ul>
        </div>
        <br/>
        <div class="skill-set">
          <h3>Skill Set</h3>
          <span class="skill-type">Basic Skills - </span><span class="skill-value"><xsl:value-of select="skill_set/basic_skill"/></span>
          <br/><br/>
          <span class="skill-type">Proficient Skills - </span><span class="skill-value"><xsl:value-of select="skill_set/proficient_skill"/></span>
          <br/><br/>
          <span class="skill-type">Specialised Skills - </span><span class="skill-value"><xsl:value-of select="skill_set/specialised_skill"/></span>
          <br/><br/>
        </div>
        <br/>
        <div class="soft-skill">
          <h3>Soft Skills:</h3>
          <ul>
            <xsl:for-each select="soft_skill/skill">
              <li><xsl:value-of select="description"/></li>
            </xsl:for-each>
          </ul>
        </div>
        <br/>
        <div class="past-experience">
          <h3>Past Experience:</h3>
          <ul>
            <xsl:for-each select="past_experience/experience">
              <li><xsl:value-of select="description"/></li>
            </xsl:for-each>
          </ul>
        </div>
        <br/>
        <div class="personal-interest">
          <h3>Personal Interests:</h3>
          <span class="interest"><xsl:value-of select="personal_interest"/></span>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
