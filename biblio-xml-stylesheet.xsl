<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<title>Bibliographie Green IT</title>
				<link href="style.css" rel="stylesheet" type="text/css"/>
			</head>
			<body>

        <div id="top"></div>

        <div class="header">
          <a href="#top">
            <!--<h1 class="gradient-text">
              Didak'TIC
            </h1>-->
						<img id="logo" src="img/logo.png" />

          </a>

          <div class="menu" ><nav>
            <ul><li><div class="item_menu"><a href="#articles">Articles</a></div></li>
            <li><a href="#videos">Vidéos</a></li>
            <li><a href="#publications">Publications</a></li>
            <li><a href="#podcasts">Podcasts</a></li></ul></nav>
          </div>
        </div>
        <div class="content">
  				<h1>Bibliographie Green IT</h1>

          <label for="my_checkbox_articles">
						<h2 id="articles">Les Articles</h2>
					</label>
					<input type="checkbox" id="my_checkbox_articles" checked="checked"/>

					<div class="hidden">
          	<xsl:for-each select="Bibliographie/articles_web/Article">
            <table>
              <tr>
                <th class="td_titre" colspan="2"><xsl:value-of select="Titre" /></th>
              </tr>

              <tr>
                <td class="td_img">
                  <img src="{Illustration/@src}"/>
                </td>
                <td class="donnees_source">
                  <div>
                    <b>Auteur: </b>
                    <xsl:value-of select="Auteur"/>
                  </div>
                  <div>
                    <b>Date de publication: </b>
                    <xsl:value-of select="parution/jour"/>
                    /
                    <xsl:value-of select="parution/mois"/>
                    /
                    <xsl:value-of select="parution/annee"/>
                  </div>
                  <div>
                    <b>Date de consultation: </b>
                    <xsl:value-of select="Date_consultation/jour"/>
                    /
                    <xsl:value-of select="Date_consultation/mois"/>
                    /
                    <xsl:value-of select="Date_consultation/annee"/>
                  </div>
                  <div>
                    <b>Lien URL: </b>
                    <a href="{url}" target="_blank"><xsl:value-of select="url" /></a>
                  </div>
                </td>
              </tr>
              <tr>
                <td class="td_resume" colspan="2">
                  <xsl:choose>
                    <xsl:when test="string(resume)">
                      <div>
                        <b> Résumé: </b>
                        <xsl:value-of select="resume"/>
                      </div>
                    </xsl:when>
                    <xsl:otherwise>
                      <div><i>Résumé non disponible.</i></div>
                    </xsl:otherwise>
                  </xsl:choose>
                  <xsl:if test="string(mots-cles)">
                    <div>
                    <b>Mots-clés: </b>
                      <xsl:for-each select="mots-cles/tag" >
                        <xsl:value-of select="."/>
                        <xsl:choose>
                          <xsl:when test="position() != last()">
                            ,
                          </xsl:when>
                        </xsl:choose>
                      </xsl:for-each>
                    </div>
                  </xsl:if>
                </td>
              </tr>
              <tr>
                <td class="td_source" colspan="2">
                  <div>
                    <b>Pour citer cette source: </b>
                    <xsl:value-of select="Auteur/nom"/>
                    <xsl:if test="string(Auteur/prenom)">
                      ,
                      <xsl:value-of select="Auteur/prenom"/>
                    </xsl:if>
                    (
                    <xsl:value-of select="parution/annee"/>
                    ).
                    <i><xsl:value-of select="Titre"/></i>
                     [En ligne]. Consulté le
                    <xsl:value-of select="Date_consultation/jour"/>/<xsl:value-of select="Date_consultation/mois"/>/<xsl:value-of select="Date_consultation/annee"/>.
                    <xsl:value-of select="url" />
                  </div>
                </td>
              </tr>
            </table>
          </xsl:for-each>
					</div>

					<label for="my_checkbox_videos">
							<h2 id="videos"> Les Vidéos </h2>
					</label>
					<input type="checkbox" id="my_checkbox_videos" checked="checked"/>

					<div class="hidden">
						<xsl:for-each select="Bibliographie/videos/Video">
	  					<table>
	              <tr>
	                <th class="td_titre" colspan="2"><xsl:value-of select="Titre" /></th>
	              </tr>
	  						<tr>
	  							<td class="td_img">
	  								<img src="{Illustration/@src}"/>
	  							</td>
	  							<td class="donnees_source">
	  								<div>
	  									<b>Auteur: </b>
	  									<xsl:value-of select="Auteur" />
	  								</div>
	  								<div>
	  									<b>Plateforme d'hébergement: </b>
	  									<xsl:value-of select="Plateforme_hebergement" />
	  								</div>
	  								<div>
	  									<b>Date de publication: </b>
	  									<xsl:value-of select="parution/jour"/>
	  									/
	  									<xsl:value-of select="parution/mois"/>
	  									/
	  									<xsl:value-of select="parution/annee"/>
	  								</div>
	  								<div>
	  									<b>Date de consultation: </b>
	  									<xsl:value-of select="Date_consultation/jour"/>
	  									/
	  									<xsl:value-of select="Date_consultation/mois"/>
	  									/
	  									<xsl:value-of select="Date_consultation/annee"/>
	  								</div>
	  								<div>
	  									<b>Durée: </b>
	  									<xsl:value-of select="Duree"/>
	  								</div>
	  								<div>
	  									<b>Nombre de vues: </b>
	  									<xsl:value-of select="Nombre_de_vues"/>
	  								</div>
	  								<div>
	  									<b>Lien URL: </b>
	  									<a href="{url}" target="_blank"><xsl:value-of select="url" /></a>
	  								</div>
	  							</td>
	  						</tr>
	  						<tr>
	  							<td class="td_resume" colspan="2">
										<xsl:choose>
											<xsl:when test="string(resume)">
												<div>
													<b> Résumé: </b>
													<xsl:value-of select="resume"/>
												</div>
											</xsl:when>
											<xsl:otherwise>
												<div><i>Résumé non disponible.</i></div>
											</xsl:otherwise>
										</xsl:choose>
										<xsl:if test="string(mots-cles)">
	                    <div>
	                    <b>Mots-clés: </b>
	                      <xsl:for-each select="mots-cles/tag" >
	                        <xsl:value-of select="."/>
	                        <xsl:choose>
	                          <xsl:when test="position() != last()">
	                            ,
	                          </xsl:when>
	                        </xsl:choose>
	                      </xsl:for-each>
	                    </div>
	                  </xsl:if>
	  							</td>
	  						</tr>
	  						<tr>
	  							<td class="td_source" colspan="2">
										<div>
											<b>Pour citer cette source: </b>
											<xsl:value-of select="Auteur/nom"/>
											<xsl:if test="string(Auteur/prenom)">
												,
												<xsl:value-of select="Auteur/prenom"/>
											</xsl:if>
											(
											<xsl:value-of select="parution/annee"/>
											).
											<i><xsl:value-of select="Titre"/></i>
											 [En ligne]. Consulté le
											<xsl:value-of select="Date_consultation/jour"/>/<xsl:value-of select="Date_consultation/mois"/>/<xsl:value-of select="Date_consultation/annee"/>.
											<xsl:value-of select="url" />
										</div>
	  							</td>
	  						</tr>
	  					</table>
	  				</xsl:for-each>
					</div>

					<label for="my_checkbox_publications">
	  				<h2 id="publications"> Les Publications </h2>
					</label>
					<input type="checkbox" id="my_checkbox_publications" checked="checked"/>

					<div class="hidden">
						<xsl:for-each select="Bibliographie/publications/publication">
							<table>
								<tr>
									<th class="td_titre" colspan="2">
										<xsl:value-of select="Titre"/>
									</th>
								</tr>
								<tr>
									<td class="td_img">
										<img src="{Illustration/@src}" />
									</td>
									<td class="donnees_source">
										<div>
											<b>Auteur(s): </b>
											<ul>
												<xsl:for-each select="Auteurs/auteur">
													<li>
														<xsl:value-of select="nom" />
														,
														<xsl:value-of select="prenom" />
														<xsl:if test="string(fonction)">
															-
															<xsl:value-of select="fonction"/>
														</xsl:if>
													</li>
												</xsl:for-each>
											</ul>
										</div>
										<xsl:if test="string(concepteurs/concepteur)">
											<div>
												<b>Concepteur(s): </b>
												<ul>
													<xsl:for-each select="concepteurs/concepteur">
														<li>
															<xsl:value-of select="nom"/>
															,
															<xsl:value-of select="prenom"/>
															 -
															<xsl:value-of select="fonction"/>
														</li>
													</xsl:for-each>
												</ul>
											</div>
										</xsl:if>
										<xsl:if test="string(graphisme)">
											<div>
												<b>Graphisme: </b>
												<ul>
													<xsl:for-each select="graphisme">
														<li>
															<xsl:value-of select="nom"/>
															,
															<xsl:value-of select="prenom"/>
															 -
															<xsl:value-of select="fonction"/>
														</li>
													</xsl:for-each>
												</ul>
											</div>
										</xsl:if>
										<xsl:if test="string(Revue_critique)">
											<div>
												<b>Revue critique: </b>
												<ul>
													<xsl:for-each select="Revue_critique/critique">
														<li>
															<xsl:value-of select="nom"/>
															,
															<xsl:value-of select="prenom"/>
															 -
															<xsl:value-of select="fonction"/>
														</li>
													</xsl:for-each>
												</ul>
											</div>
										</xsl:if>
										<xsl:if test="string(Contributeurs)">
											<div>
												<b>Contributeur(s): </b>
												<ul>
													<xsl:for-each select="Contributeurs/contributeur">
														<li>
															<xsl:value-of select="nom"/>
															,
															<xsl:value-of select="prenom"/>
															 -
															<xsl:value-of select="fonction"/>
														</li>
													</xsl:for-each>
												</ul>
											</div>
										</xsl:if>

										<xsl:if test="string(Contact)">
											<div>
												<b>Contact: </b>
												<xsl:value-of select="Contact"/>
											</div>
										</xsl:if>
										<xsl:if test="string(editeur)">
											<div>
												<b>Editeur: </b>
												<xsl:value-of select="editeur"/>
											</div>
										</xsl:if>

										<xsl:if test="string(type_document)">
											<div>
												<b>Type de document: </b>
												<xsl:value-of select="type_document"/>
											</div>
										</xsl:if>

										<xsl:if test="string(pages)">
											<div>
												<b>Nombre de pages: </b>
												<xsl:value-of select="pages"/>
											</div>
										</xsl:if>

										<xsl:if test="string(revue)">
											<div>
												<b>Revue : </b>
												<xsl:value-of select="revue/nom"/>
												<xsl:if test="string(revue/numero)">
													 - Numéro
													<xsl:value-of select="numero"/>
												</xsl:if>
											</div>
										</xsl:if>

										<xsl:if test="string(revue/DOI)">
											<div>
												<b>DOI: </b>
												<xsl:value-of select="revue/DOI"/>
											</div>
										</xsl:if>

										<div>
											<b>Date de publication: </b>
											<xsl:if test="string(parution/jour)">
												<xsl:value-of select="parution/jour"/>
												/
											</xsl:if>
											<xsl:if test="string(parution/mois)">
												<xsl:value-of select="parution/mois"/>
												/
											</xsl:if>
											<xsl:value-of select="parution/annee"/>
										</div>
										<div>
											<b>Date de consultation: </b>
											<xsl:value-of select="Date_consultation/jour"/>
											/
											<xsl:value-of select="Date_consultation/mois"/>
											/
											<xsl:value-of select="Date_consultation/annee"/>
										</div>
										<div>
											<b>Lien URL: </b>
											<a href="{url}" target="_blank"><xsl:value-of select="url" /></a>
										</div>
									</td>
								</tr>
								<tr>
									<td class="td_resume" colspan="2">
										<xsl:choose>
											<xsl:when test="string(resume)">
												<b> Résumé: </b>
												<xsl:value-of select="resume"/>
											</xsl:when>
											<xsl:otherwise>
												<i>Résumé non disponible.</i>
											</xsl:otherwise>
										</xsl:choose>

										<xsl:if test="string(Plan)">
											<div>
												<b>Plan: </b>
												<xsl:for-each select="Plan/chapitre">
													<ul>
														<li><xsl:value-of select="."/></li>
													</ul>
												</xsl:for-each>
											</div>
										</xsl:if>
									</td>
								</tr>
								<tr>
									<td class="td_source" colspan="2">
										<div>
											<b>Pour citer cette source: </b>
											<xsl:for-each select="Auteurs/auteur">
												<xsl:value-of select="nom"/>
												,
												<xsl:if test="string(prenom)">
													<xsl:value-of select="prenom"/>
													<xsl:choose>
														<xsl:when test="position() != last()">
															 ;
														</xsl:when>
													</xsl:choose>
												</xsl:if>
											</xsl:for-each>
											 (
											<xsl:value-of select="parution/annee"/>
											).
											<i><xsl:value-of select="Titre"/>. </i>
											<xsl:if test="string(revue)">
												<xsl:value-of select="revue/nom"/>
												 [En ligne].
												<xsl:if test="string(revue/numero)">
													 Numéro
													<xsl:value-of select="revue/numero"/>
													,
												</xsl:if>
											</xsl:if>
											<xsl:if test="string(revue/DOI)">
												DOI:
												<xsl:value-of select="revue/DOI"/>
											</xsl:if>
											Consulté le
											<xsl:value-of select="Date_consultation/jour"/>
											/
											<xsl:value-of select="Date_consultation/mois"/>
											/
											<xsl:value-of select="Date_consultation/annee"/>
											.
											<xsl:value-of select="url" />
										</div>
									</td>
								</tr>
							</table>
						</xsl:for-each>
					</div>

					<label for="my_checkbox_podcasts">
						<h2 id="podcasts"> Les Podcasts </h2>
					</label>
					<input type="checkbox" id="my_checkbox_podcasts" checked="checked"/>
					<div class="hidden">
						<xsl:for-each select="Bibliographie/podcasts/podcast">
	  					<table>
								<tr>
									<th class="td_titre" colspan="2">
										<xsl:value-of select="Titre"/>
									</th>
								</tr>
	  						<tr>
	  							<td class="td_img">
	  								<img src="{Illustration/@src}" />
	  							</td>
	  							<td class="donnees_source">
	  								<div>
	  									<b>Auteur(s): </b>
	  									<xsl:for-each select="Auteurs/auteur">
	  										<xsl:value-of select="nom" />
	  										,
	  										<xsl:value-of select="prenom" />
	  										 -
	  										<xsl:value-of select="fonction" />
	  										.
	  									</xsl:for-each>
	  								</div>
	  								<div>
	  									<b> Emission: </b>
	  									<xsl:value-of select="Emission"/>
	  								</div>
	  								<div>
	  									<b>Durée: </b>
	  									<xsl:value-of select="Duree"/>
	  								</div>
	  								<div>
	  									<b>Date de publication: </b>
	  									<xsl:value-of select="parution/jour"/>
	  									/
	  									<xsl:value-of select="parution/mois"/>
	  									/
	  									<xsl:value-of select="parution/annee"/>
	  								</div>
	  								<div>
	  									<b>Date de consultation: </b>
	  									<xsl:value-of select="Date_consultation/jour"/>
	  									/
	  									<xsl:value-of select="Date_consultation/mois"/>
	  									/
	  									<xsl:value-of select="Date_consultation/annee"/>
	  								</div>
	  								<div>
	  									<b>Lien URL: </b>
	  									<a href="{url}" target="_blank"><xsl:value-of select="url" /></a>
	  								</div>
	  							</td>
	  						</tr>
	  						<tr>
	  							<td class="td_resume" colspan="2">
	  								<div>
	  									<b>Résumé: </b>
	  									<xsl:value-of select="resume"/>
	  								</div>
							<div> Lien vers le Podcast :
								<iframe src="{lien_podcast/iframe/@src}" /></div>
	  							</td>
	  						</tr>
	  						<tr>
	  							<td class="td_source" colspan="2">
	  								<div>
	  									<b>Pour citer cette source: </b>
	  									<xsl:value-of select="Auteurs/auteur/nom"/>
	  									<xsl:if test="string(Auteurs/auteur/prenom)">
	  										,
	  										<xsl:value-of select="Auteurs/auteur/prenom"/>
	  									</xsl:if>
	  									 (
	  									<xsl:value-of select="parution/annee"/>
	  									).
	  									<i><xsl:value-of select="Titre"/></i>
	  									 [En ligne].Consulté le
	  									<xsl:value-of select="Date_consultation/jour"/>
	  									/
	  									<xsl:value-of select="Date_consultation/mois"/>
	  									/
	  									<xsl:value-of select="Date_consultation/annee"/>
	  									.
	  									<xsl:value-of select="url" />
	  								</div>
	  							</td>
	  						</tr>
	  					</table>
	  				</xsl:for-each>
					</div>
					<div id="scroll_to_top">
					    <a href="#top"><img src="img/icon-back-top.jpg" alt="Retourner en haut" /></a>
					</div>


          <footer>
    				<p>MAHFOUD Chacha</p>
    				<p>MASTER 2 Management et Valorisation de l'Information Numérique - 2020/2021</p>
    				<p>Technologies XML et Ontologies</p>
    			</footer>

        </div>
      </body>
		</html>
	</xsl:template>
</xsl:stylesheet>
