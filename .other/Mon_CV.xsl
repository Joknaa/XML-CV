<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                exclude-result-prefixes="xs"
                version="2.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
                <link rel="stylesheet" href="cv.css"></link>
                <script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
            </head>
            <body>
                <div class="cv">
                    <div class="left">
                        <div class="info">
                            <div class="name">
                                <h1 style="color: #136147;">
                                    <xsl:value-of select="cv/entete/prenom"/>
                                    <xsl:value-of select="cv/entete/nom"/>
                                </h1>
                                <p style="color: #136147;">Ingénieur en Informatique
                                    <br></br>
                                    ENSA Tétouan
                                </p>
                            </div>
                        </div>
                        <div class="contact">
                            <p class="co">
                                <h3 style="color: #fff;">
                                    <i class="far fa-address-book"></i>
                                    Informations Personnelles
                                </h3>
                            </p>
                            <p class="naissance">
                                <strong>Date de Naissance :</strong>
                                <xsl:value-of select="cv/entete/dateDeNaisssance"/>
                            </p>
                            <p class="nationnalite">
                                <strong>Nationalité :</strong>
                                <xsl:value-of select="cv/entete/nationalite"/>
                            </p>
                            <p class="tele">
                                <strong>Téléphone :</strong>
                                <xsl:value-of select="cv/entete/telephone"/>
                            </p>
                            <p class="mail">
                                <strong>Email :</strong>
                                <xsl:value-of select="cv/entete/mail"/>
                            </p>
                        </div>
                        <div class="Langues">
                            <p class="lan">
                                <h3 style="color: #fff;">
                                    <i class="fas fa-atlas"></i>
                                    Langues
                                </h3>
                            </p>
                            <p class="la">
                                <xsl:for-each select="cv/langues/langue">
                                    <p class="l">
                                        <xsl:value-of select="."/>
                                        <br></br>
                                    </p>
                                </xsl:for-each>
                            </p>
                        </div>
                    </div>
                    <div class="right">
                        <div class="education">
                            <p class="educ">
                                <h3 style="color: #fff;">
                                    <i class="fas fa-graduation-cap"></i>
                                    Education
                                </h3>
                            </p>
                            <xsl:for-each select="cv/Formations/diplome">
                                <p class="ed">
                                    <xsl:value-of select="."/>
                                    <br></br>
                                </p>
                            </xsl:for-each>
                        </div>
                        <div class="stages">
                            <p class="stage">
                                <h3 style="color: #fff;">
                                    <i class="fas fa-briefcase"></i>
                                    Expérience Professionnelle
                                </h3>
                            </p>
                            <p class="st">
                                <xsl:for-each select="cv/stages/stage">
                                    <p class="s">
                                        <xsl:value-of select="date"/>
                                        <xsl:value-of select="titre"/>
                                        <br></br>
                                        <xsl:value-of select="description"/>
                                    </p>
                                </xsl:for-each>
                            </p>
                        </div>
                        <div class="competence">
                            <p class="com">
                                <h3 style="color: #fff;">
                                    <i class="fas fa-pen-fancy"></i>
                                    Compétences
                                </h3>
                            </p>
                            <p class="co">
                                <xsl:for-each select="cv/competences/competence">
                                    <p class="c">
                                        <xsl:value-of select="."/>
                                        <br></br>
                                    </p>
                                </xsl:for-each>
                            </p>
                        </div>
                        <div class="Loisirs">
                            <p class="loi">
                                <h3 style="color: #fff;">
                                    <i class="far fa-compass"></i>
                                    Loisirs
                                </h3>
                            </p>
                            <p class="lo">
                                <xsl:for-each select="cv/loisirs/loisir">
                                    <p class="l">
                                        <xsl:value-of select="."/>
                                        <br></br>
                                    </p>
                                </xsl:for-each>
                            </p>
                        </div>
                    </div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>