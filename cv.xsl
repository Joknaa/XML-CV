<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">
   <xsl:template match="/">
      <html lang="en">
         <head>
            <link rel="stylesheet" href="cv.css"/>
            <title>
               <xsl:value-of select="cv/entete/prenom"/>
               <xsl:value-of select="cv/entete/nom"/>
            </title>
         </head>
         <body>
            <center>
               <div class="CV">
                  <div class="LeftColumn">
                     <center>
                        <div id="Div_MyImage">
                           <img src="Images/ME.jpg" alt="My photo"/>
                        </div>
                        <div id="Div_Content_Left">
                           <div>
                              <xsl:call-template name="showInfo"/>
                           </div>
                           <div>
                              <h2>Competences</h2>
                              <xsl:call-template name="showSkills"/>
                           </div>
                           <div>
                              <h2>Langues</h2>
                              <xsl:call-template name="showLanguages"/>
                           </div>
                           <div>
                              <h2>Loisirs</h2>
                              <xsl:call-template name="showHobbits"/>
                           </div>


                           <div>

                           </div>
                        </div>
                     </center>
                  </div>
                  <div class="RightColumn">
                     <center>
                        <div id="Div_Me">
                           <h1>
                              <xsl:value-of select="cv/entete/prenom"/>
                              <br/>
                              <xsl:value-of select="cv/entete/nom"/>
                           </h1>
                           <h3>
                              <xsl:value-of select="cv/entete/profile"/>
                           </h3>
                        </div>
                        <div id="Div_Content">
                           <div>
                              <h2>Formation</h2>
                              <xsl:call-template name="showEducation"/>
                           </div>
                           <div>
                              <h2>Stages et EXP??RIENCES</h2>
                              <xsl:call-template name="showInternship"/>
                           </div>
                           <div>
                              <h2>PROJETS</h2>
                              <xsl:call-template name="showProjects"/>
                           </div>
                           <div>
                              <h2>Certificates</h2>
                              <xsl:call-template name="showCertificates"/>
                           </div>
                           <div class="page-break"/>
                        </div>
                     </center>
                  </div>
               </div>
            </center>
         </body>
      </html>
   </xsl:template>

   <xsl:template name="showEducation">
      <xsl:for-each select="cv/Formations/diplome">
         <div class="Div_Entry">
            <label class="Label_TimeScale">
               <xsl:value-of select="annee"/>
            </label>
            <div class="Div_EntryContent">
               <p class="Div_EducationEntryContentDescription">
                  <strong>
                     <xsl:copy-of select="intitule"/>
                  </strong>
               </p>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showInternship">
      <xsl:for-each select="cv/stages/stage">
         <div class="Div_Entry">
            <label class="Label_TimeScale">
               <xsl:value-of select="date"/>
            </label>
            <div class="Div_EntryContent">
               <h3 class="H3_EntrySubject">
                  <strong>
                     <xsl:value-of select="titre"/>
                  </strong>
               </h3>
               <p class="Div_EntryContentDescription">
                  <xsl:value-of select="description"/>
               </p>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showProjects">
      <xsl:for-each select="cv/projets/projet">
         <div class="Div_Entry">
            <label class="Label_TimeScale">
               <xsl:value-of select="date_projet"/>
            </label>
            <div class="Div_EntryContent">
               <h3 class="H3_EntrySubject">
                  <strong>
                     <xsl:variable name="lien_projet">
                        <xsl:value-of select="lien_projet"/>
                     </xsl:variable>
                     <a href="{$lien_projet}">
                        <xsl:value-of select="titre_projet"/>
                     </a>
                  </strong>
               </h3>
               <p class="Div_EntryContentDescription">
                  <xsl:value-of select="description_projet"/>
               </p>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showCertificates">
      <xsl:for-each select="cv/certificates/certificate">
         <div class="Div_Entry">
            <label class="Label_TimeScale">
               <xsl:value-of select="date_certificate"/>
            </label>
            <div class="Div_EntryContent">
               <p class="Div_EducationEntryContentDescription">
                  <strong>
                     <xsl:copy-of select="titre_certificate"/>
                  </strong>
               </p>
               <br/>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showSkills">
      <xsl:for-each select="cv/competences/competence">
         <div class="Div_Left_Entry">
            <div class="Div_EntryContent">
               <h3 class="H3_EntrySubject_Left">
                  <strong>
                     <xsl:value-of select="titre_competence"/>
                  </strong>
               </h3>
               <p class="Div_EntryContentDescription_Left">
                  <xsl:value-of select="description_competence"/>
               </p>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showLanguages">
      <xsl:for-each select="cv/langues/langue">
         <div class="Div_Left_Entry">
            <div class="Div_EntryContent">
               <h3 class="H3_EntrySubject_Language">
                  <strong>
                     <xsl:value-of select="intitule_langue"/>
                  </strong>
               </h3>
            </div>
            <div class="Div_EntryContentDescription_Language">
               <p>
                  <xsl:value-of select="niveau"/>
               </p>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showHobbits">
      <xsl:for-each select="cv/loisirs/loisir">
         <div class="Div_Left_Entry">
            <div class="Div_EntryContent">
               <div class="Div_EntryContentDescription_Hobbits">
                  <p>
                     <strong>
                        <xsl:value-of select="."/>
                     </strong>
                  </p>
               </div>
            </div>
         </div>
      </xsl:for-each>
   </xsl:template>

   <xsl:template name="showInfo">
      <div class="Div_Left_Entry">
         <div id="Div_Bio">
            <p>
               <xsl:copy-of select="cv/entete/bio"/>
            </p>
         </div>

         <div class="Div_Info">
            <strong>
               <label class="H3_EntrySubject_Left">Date De Naisssance:</label>
            </strong>
            <label class="Div_EntryContentDescription_Left">
               <xsl:value-of select="cv/entete/dateDeNaisssance"/>
            </label>
            <br/>
            <strong>
               <label class="H3_EntrySubject_Left">Nationalite:</label>
            </strong>
            <label class="Div_EntryContentDescription_Left">
               <xsl:value-of select="cv/entete/nationalite"/>
            </label>
            <br/>
            <strong>
               <label class="H3_EntrySubject_Left">Telephone:</label>
            </strong>
            <label class="Div_EntryContentDescription_Left">
               <xsl:value-of select="cv/entete/telephone"/>
            </label>
            <br/>
            <strong>
               <label class="H3_EntrySubject_Left">Email:</label>
            </strong>
            <label class="Div_EntryContentDescription_Left">
               <xsl:value-of select="cv/entete/mail"/>
            </label>
            <br/>
            <strong>
               <label class="H3_EntrySubject_Left">Linked-In:</label>
            </strong>
            <a class="Div_EntryContentDescription_Left" href="https://www.linkedin.com/in/mohammadlaadidaoui/">
               <xsl:value-of select="cv/entete/linkedin"/>
            </a>
            <br/>
            <strong>
               <label class="H3_EntrySubject_Left">Github:</label>
            </strong>
            <a class="Div_EntryContentDescription_Left" href="https://github.com/Joknaa">
               <xsl:value-of select="cv/entete/github"/>
            </a>
            <br/>
            <br/>


         </div>
      </div>
   </xsl:template>
</xsl:stylesheet>