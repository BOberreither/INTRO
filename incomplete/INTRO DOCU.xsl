<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:owl="http://www.w3.org/2002/07/owl#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:cc="http://creativecommons.org/ns#" exclude-result-prefixes="xsl rdf owl rdfs dc skos cc" version="2.0">

	<!-- Output HTML -->
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>


	<!-- Template to replace linebreaks with <br/> -->
	<xsl:template name="replace-linebreaks-with-br">
		<xsl:param name="text" select="."/>

		<!-- Verwende tokenize, um den Text an Zeilenumbrüchen zu trennen -->
		<xsl:for-each select="tokenize($text, '&#10;')">
			<xsl:value-of select="normalize-space(.)"/>
			<!-- Füge <br/>-Tag ein, außer bei der letzten Zeile -->
			<xsl:if test="position() != last()">
				<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>

	<!-- Template to normalize whitespaces and preserve line breaks as <br/> -->
	<xsl:template name="normalize-and-replace">
		<xsl:param name="text" select="."/>

		<!-- Ersetze Zeilenumbrüche durch <br/> und speichere das Ergebnis in einer Variable -->
		<xsl:variable name="textWithBrs">
			<xsl:call-template name="replace-linebreaks-with-br">
				<xsl:with-param name="text" select="$text"/>
			</xsl:call-template>
		</xsl:variable>

		<!-- Gib den Text mit <br/>-Tags direkt als HTML aus -->
		<xsl:value-of select="$textWithBrs" disable-output-escaping="yes"/>
	</xsl:template>

	<!-- Root template -->
	<xsl:template match="/">
		
		<html>
			<head>
				<title>INTRO Documentation</title>
				<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
				<style>
					/* Global Styles */
					body {
					font-family: Arial, Helvetica, sans-serif;
					background-color: #0D1821; /* Medium-light grey background */
					margin: 0;
					padding-left: 2em;
					padding-right: 2em;
					padding-bottom: 2em;
					}
					
					/* Heading Styles */
					h1 {
					font-family: 'Arial', sans-serif; 
					font-size: 5em; 
					padding-top: 0.5em;
					color: #96FFEF; 
					margin-left: 1%;
					text-shadow: 
					0 0 5px #96FFEF, 
					0 0 10px #96FFEF, 
					0 0 20px rgba(150, 255, 239, 0.8), 
					0 0 30px rgba(150, 255, 239, 0.65),
					0 0 40px rgba(150, 255, 239, 0.5); 
					/* 0 0 50px rgba(150, 255, 239, 0.5);  Fuzzy Schatten */
					}
					
					
					h2 {
					font-size: 3em;
					color: #96FFEF; /* Neonfarbe */
					margin-left: 1%;
					text-shadow: 
					0 0 3px #96FFEF, 
					0 0 6px rgba(150, 255, 239, 0.6); /* Leichter, dezenter Schatten */
					margin-top: 5%
					}
					
					h3 {
					font-size: 2em;
					color: #96FFEF; /* Neonfarbe */
					text-shadow: 
					0 0 3px #96FFEF, 
					0 0 6px rgba(150, 255, 239, 0.6); /* Leichter, dezenter Schatten */
					margin-top: 4%;
					margin-bottom: 2%;
					margin-left: 1%
					}
					
					h4 {
					font-size: 1.5em;
					color: #555;
					margin-top: 2%
					}
					
					small {
					font-size: 0.8em;
					padding: 3% 1%;
					}
					
					a {
					color: #D81E5B; /* Standard-Linkfarbe */
					text-shadow: 
					0 0 3px rgba(216, 30, 91, 0.6); /* Leichter, dezenter Schatten */
					text-decoration: none;
					}
					
					a:hover {
					color: #C2185B; /* Etwas dunkleres Pink beim Hover-Effekt */
					text-shadow:  
					0 0 3px rgba(194, 24, 91, 0.6); /* Leichter, dezenter Schatten */
					}
					
					a:active {
					color: #AD1457; /* Noch dunkleres Pink beim Klicken */
					text-shadow: 
					0 0 3px rgba(173, 20, 87, 0.6); /* Leichter, dezenter Schatten */
					}
					
					a:visited {
					color: #D81E5B; /* Standard-Linkfarbe */
					text-shadow: 
					0 0 3px rgba(216, 30, 91, 0.6); /* Leichter, dezenter Schatten */
					}
					
					/* Box Styles */
					.general, .toc, .declaration {
					background-color: #E4E4E4; /* Lighter than background */
					border: 1px solid #ccc;
					padding: 1em;
					margin: 0;
					border-radius: 3px;
					}
					
					/* .toc Styles */
					.toc {
					display: grid;
					grid-template-columns: 1fr; /* Eine Spalte bei kleineren Bildschirmen */
					gap: 1em;
					}
					
					@media (min-width: 600px) {
					.toc {
					display: grid;
					grid-template-columns: repeat(4, 1fr); /* 3 gleich breite Spalten bei größeren Bildschirmen */
					grid-auto-flow: row dense; /* Füllt zuerst vertikal, dann die nächste Spalte */
					}
					}
					
					@keyframes fastBlink {
					0%, 20%, 40%, 60% { opacity: 1; }
					10%, 30%, 50% { opacity: 0; }
					100% { opacity: 1; } /* Letzte Pause */
					}
					
					.blink {
					animation: fastBlink 1.5s infinite; /* Schnelles Blinken und längere Pause */
					}
					
				</style>
				<script>
					window.addEventListener('load', function() {
					
					const headers = document.querySelectorAll('h1');
					
					headers.forEach(header => {
					const text = header.textContent;
					
					const firstThree = text.slice(0, 3);
					const rest = text.slice(3);
					
					header.innerHTML = `<span class="blink">${firstThree}</span>${rest}`;
					});
					});
				</script>
			</head>
			<body>
				<!-- h1 for dc:title -->
				<xsl:for-each select="/rdf:RDF/owl:Ontology[1]">
					<h1>
						<xsl:value-of select="./dc:title[1]"/>
					</h1>
					<div class="general">

						<xsl:for-each select="./dc:modified">
							<br/>
							<strong>Last modified:</strong>
							<br/>
							<xsl:value-of select="./text()"/>
						</xsl:for-each>

						<!-- div for rdfs:comment with type attribute -->
						<br/>
						<br/>
						<strong>About:</strong>
						<br/>
						<xsl:for-each select="./rdfs:comment">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>

						<br/>
						<strong>Creator:</strong>
						<br/>
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./dc:creator[@rdf:resource]/@rdf:resource"/>
							</xsl:attribute>
							<xsl:value-of select="./dc:creator[@rdf:datatype = 'http://www.w3.org/2001/XMLSchema#string']/text()"/>
						</xsl:element>

						<br/>
						<br/>
						<strong>Version Info:</strong>
						<br/>
						<xsl:value-of select="./owl:versionInfo/text()"/>

						<br/>
						<br/>
						<strong>Licence:</strong>
						<br/>
						<xsl:value-of select="./cc:licence[1]/@rdf:resource"/>
						<br/>
						<xsl:value-of select="./dc:rights/text()"/>

						<!-- div for dc:description -->
						<br/>
						<br/>
						<strong>Description:</strong>
						<br/>
						<xsl:for-each select="./dc:description">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>
					</div>
				</xsl:for-each>

				<h2>Table of Contents</h2>
				<h3>Classes</h3>
				<!-- Classes TOC -->
				<div class="toc">
					<xsl:for-each select="/rdf:RDF/owl:Class[contains(@rdf:about, 'intro/beta')]">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
							</xsl:attribute>
							<xsl:value-of select="./rdfs:label[1]"/>
						</xsl:element>
					</xsl:for-each>
				</div>
				<h3>Object Properties</h3>
				<div class="toc">
					<xsl:for-each select="/rdf:RDF/owl:ObjectProperty[contains(@rdf:about, 'intro/beta')]">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
							</xsl:attribute>
							<xsl:value-of select="./rdfs:label[1]"/>
						</xsl:element>
					</xsl:for-each>
				</div>
				<h3>Data Properties</h3>
				<div class="toc">
					<xsl:for-each select="/rdf:RDF/owl:DatatypeProperty[contains(@rdf:about, 'intro/beta')]">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
							</xsl:attribute>
							<xsl:value-of select="./rdfs:label[1]"/>
						</xsl:element>
					</xsl:for-each>
				</div>
				<h3>Version History</h3>
				<div class="toc">
					<xsl:for-each select="/rdf:RDF/owl:NamedIndividual[rdf:type/@rdf:resource='http://iflastandards.info/ns/lrm/lrmoo/F2_Expression']">
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="concat('#', ./dc:date/text())"/>
							</xsl:attribute>
							<xsl:value-of select="rdfs:label"/>
						</xsl:element>
					</xsl:for-each>
				</div>


				<!-- h2 for "Classes" -->
				<h2>Classes</h2>
				
				

				<!-- Loop through owl:Class -->
				<xsl:for-each select="/rdf:RDF/owl:Class[contains(@rdf:about, 'intro/beta')]">
					
					<!-- variable - gesamte ID aus rdf:about -->
					<xsl:variable name="currentID" select="@rdf:about"/>
					<!-- Variable für div-IDs -->
					<xsl:variable name="div_id" select="./substring-after(@rdf:about, '#')"/>
					<!-- Loop through rdfs:label -->
					<xsl:for-each select="rdfs:label[1][@xml:lang = 'en']">
						<xsl:element name="h3">
							<xsl:attribute name="id">
								<xsl:value-of select="$div_id"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:for-each>
					<div class="declaration">
						
						<!-- show URI -->
						<div>
							<strong>URI: </strong>
							<xsl:value-of select="@rdf:about"/>
						</div>


						<!-- Loop through rdfs:comment -->
						<xsl:for-each select="./rdfs:comment">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>

						<!-- Loop through rdfs:subClassOf -->
						<xsl:for-each select="rdfs:subClassOf">
							<div>
								<strong>Subclass of: </strong>
								<xsl:choose>
									<xsl:when test="contains(@rdf:resource, 'intro')">
										<xsl:element name="a">
											<xsl:attribute name="href">
												<xsl:value-of select="./concat('#', substring-after(@rdf:resource, '#'))"/>
											</xsl:attribute>
											<xsl:variable name="currentTarget" select="@rdf:resource"/>
											<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
										</xsl:element>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="@rdf:resource"/>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>

						<!-- Loop through classes to find subclasses -->
						
						<xsl:if test="//owl:Class[rdfs:subClassOf/@rdf:resource = $currentID]">
							<div>
								<strong>Has subclass(es): </strong>
								<xsl:for-each select="//owl:Class[rdfs:subClassOf/@rdf:resource = $currentID]">

									<xsl:choose>
										<xsl:when test="contains(@rdf:about, 'intro')">
											<xsl:element name="a">
												<xsl:attribute name="href">
													<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
												</xsl:attribute>
												<xsl:value-of select="./rdfs:label/text()"/>
											</xsl:element>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="@rdf:about"/>
										</xsl:otherwise>
									</xsl:choose>
									<xsl:if test="position() != last()">
										<xsl:text disable-output-escaping="yes">, </xsl:text>
									</xsl:if>
								</xsl:for-each>
							</div>
						</xsl:if>
						
						<!-- Loop through all properties to find properties it's in the domain of -->
						
						<xsl:if test="//*[contains(./name(), 'Property')][(rdfs:domain/@rdf:resource = $currentID) or (rdfs:domain//rdf:Description/@rdf:about = $currentID)]">
							<div>
								<strong>In domain of: </strong>
								<xsl:for-each select="//*[contains(./name(), 'Property')][(rdfs:domain/@rdf:resource = $currentID) or (rdfs:domain//rdf:Description/@rdf:about = $currentID)]">
										<xsl:element name="a">
											<xsl:attribute name="href">
												<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
											</xsl:attribute>
											<xsl:value-of select="./rdfs:label/text()"/>
										</xsl:element>
										<xsl:if test="position() != last()">
											<xsl:text disable-output-escaping="yes">, </xsl:text>
										</xsl:if>
									</xsl:for-each>
							</div>
						</xsl:if>
						
						<!-- Loop through all properties to find properties it's in the range of -->
						
						<xsl:if test="//owl:ObjectProperty[(rdfs:range/@rdf:resource = $currentID) or (rdfs:range//rdf:Description/@rdf:about = $currentID)]">
							<div>
								<strong>In range of: </strong>
								<xsl:for-each select="//owl:ObjectProperty[(rdfs:range/@rdf:resource = $currentID) or (rdfs:range//rdf:Description/@rdf:about = $currentID)]">
									<xsl:element name="a">
										<xsl:attribute name="href">
											<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
										</xsl:attribute>
										<xsl:value-of select="./rdfs:label/text()"/>
									</xsl:element>
									<xsl:if test="position() != last()">
										<xsl:text disable-output-escaping="yes">, </xsl:text>
									</xsl:if>
								</xsl:for-each>
							</div>
						</xsl:if>

						<!-- Handle skos:broadMatch -->
						<xsl:for-each select="skos:broadMatch">
							<div>
								<strong>skos:broadMatch: </strong>
								<xsl:value-of select="@rdf:resource"/>
							</div>
						</xsl:for-each>
					</div>
					<small>
						<a href="#top">(Back to Top)</a>
					</small>
				</xsl:for-each>

				<!-- h2 for "Object Properties" -->
				<h2>Object Properties</h2>

				<!-- Loop through owl:ObjectProperty -->
				<xsl:for-each select="/rdf:RDF/owl:ObjectProperty[contains(@rdf:about, 'intro/beta')]">
					<!-- Variable für div-IDs -->
					<xsl:variable name="div_id" select="./substring-after(@rdf:about, '#')"/>

					<!-- Loop through rdfs:label -->
					<xsl:for-each select="rdfs:label[1][@xml:lang = 'en']">
						<xsl:element name="h3">
							<xsl:attribute name="id">
								<xsl:value-of select="$div_id"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:for-each>

					<div class="declaration">
						<!-- show URI -->
						<div>
							<strong>URI: </strong>
							<xsl:value-of select="@rdf:about"/>
						</div>
						
						<!-- Loop through rdfs:comment -->
						<xsl:for-each select="./rdfs:comment">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>

						<!-- Loop through owl:inverseOf -->
						<xsl:for-each select="owl:inverseOf">
							<div>
								<strong>Inverse Property: </strong>
								<xsl:element name="a">
									<xsl:attribute name="href">
										<xsl:value-of select="./concat('#', substring-after(@rdf:resource, '#'))"/>
									</xsl:attribute>
									<xsl:variable name="currentTarget" select="@rdf:resource"/>
									<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
								</xsl:element>
							</div>
						</xsl:for-each>

						<!-- Handle rdfs:domain -->
						<xsl:for-each select="rdfs:domain">
							<div>
								<strong>Domain: </strong>
								<xsl:choose>

									<xsl:when test="./@rdf:resource">
										<xsl:choose>
											<xsl:when test="contains(@rdf:resource, 'intro')">
												<xsl:element name="a">
													<xsl:attribute name="href">
														<xsl:value-of select="./concat('#', substring-after(@rdf:resource, '#'))"/>
													</xsl:attribute>
													<xsl:variable name="currentTarget" select="@rdf:resource"/>
													<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
												</xsl:element>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="@rdf:resource"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>

									<xsl:otherwise>
										<xsl:for-each select=".//rdf:Description">
											<xsl:if test="position() > 1">, </xsl:if>
											<xsl:choose>
												<xsl:when test="contains(@rdf:about, 'intro')">
													<xsl:element name="a">
														<xsl:attribute name="href">
															<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
														</xsl:attribute>
														<xsl:variable name="currentTarget" select="@rdf:about"/>
														<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
													</xsl:element>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="@rdf:about"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>

						<!-- Handle rdfs:range -->
						<xsl:for-each select="rdfs:range">
							<div>
								<strong>Range: </strong>
								<xsl:choose>

									<xsl:when test="./@rdf:resource">
										<xsl:choose>
											<xsl:when test="contains(@rdf:resource, 'intro')">
												<xsl:element name="a">
													<xsl:attribute name="href">
														<xsl:value-of select="./concat('#', substring-after(@rdf:resource, '#'))"/>
													</xsl:attribute>
													<xsl:variable name="currentTarget" select="@rdf:resource"/>
													<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
												</xsl:element>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="@rdf:resource"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>

									<xsl:otherwise>
										<xsl:for-each select=".//rdf:Description">
											<xsl:if test="position() > 1">, </xsl:if>
											<xsl:choose>
												<xsl:when test="contains(@rdf:about, 'intro')">
													<xsl:element name="a">
														<xsl:attribute name="href">
															<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
														</xsl:attribute>
														<xsl:variable name="currentTarget" select="@rdf:about"/>
														<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
													</xsl:element>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="@rdf:about"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>
						<!-- Handle rdf:type -->
						<xsl:for-each select="rdf:type">
							<div>
								<strong>Type: </strong>
								<xsl:choose>
									<xsl:when test="contains(@rdf:resource, '#')">
										<xsl:value-of select="substring-after(@rdf:resource, '#')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="@rdf:resource"/>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>

						<!-- Handle skos:broadMatch -->
						<xsl:for-each select="skos:broadMatch">
							<div>
								<strong>skos:broadMatch: </strong>
								<xsl:value-of select="@rdf:resource"/>
							</div>
						</xsl:for-each>
					</div>
					<small>
						<a href="#top">(Back to Top)</a>
					</small>
				</xsl:for-each>

				<!-- h2 for "Data Properties" -->
				<h2>Data Properties</h2>
				<xsl:for-each select="/rdf:RDF/owl:DatatypeProperty[contains(@rdf:about, 'intro/beta')]">
					<!-- Variable für div-IDs -->
					<xsl:variable name="div_id" select="./substring-after(@rdf:about, '#')"/>

					<!-- Loop through rdfs:label -->
					<xsl:for-each select="rdfs:label[1][@xml:lang = 'en']">
						<xsl:element name="h3">
							<xsl:attribute name="id">
								<xsl:value-of select="$div_id"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:for-each>

					<div class="declaration">
						
						<!-- show URI -->
						<div>
							<strong>URI: </strong>
							<xsl:value-of select="@rdf:about"/>
						</div>
						
						<!-- Loop through rdfs:comment -->
						<xsl:for-each select="./rdfs:comment">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>

						<!-- Loop through owl:inverseOf -->
						<xsl:for-each select="owl:inverseOf">
							<div>
								<strong>Inverse Property: </strong>
								<xsl:value-of select="substring-after(@rdf:resource, '#')"/>
							</div>
						</xsl:for-each>

						<!-- Handle rdfs:domain -->
						<xsl:for-each select="rdfs:domain">
							<div>
								<strong>Domain: </strong>
								<xsl:choose>
									
									<xsl:when test="./@rdf:resource">
										<xsl:choose>
											<xsl:when test="contains(@rdf:resource, 'intro')">
												<xsl:element name="a">
													<xsl:attribute name="href">
														<xsl:value-of select="./concat('#', substring-after(@rdf:resource, '#'))"/>
													</xsl:attribute>
													<xsl:variable name="currentTarget" select="@rdf:resource"/>
													<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
												</xsl:element>
											</xsl:when>
											<xsl:otherwise>
												<xsl:value-of select="@rdf:resource"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:when>
									
									<xsl:otherwise>
										<xsl:for-each select=".//rdf:Description">
											<xsl:if test="position() > 1">, </xsl:if>
											<xsl:choose>
												<xsl:when test="contains(@rdf:about, 'intro')">
													<xsl:element name="a">
														<xsl:attribute name="href">
															<xsl:value-of select="./concat('#', substring-after(@rdf:about, '#'))"/>
														</xsl:attribute>
														<xsl:variable name="currentTarget" select="@rdf:about"/>
														<xsl:value-of select="//*[@rdf:about = $currentTarget and rdfs:label]/rdfs:label/text()"/>
													</xsl:element>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="@rdf:about"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>

						<!-- Handle rdfs:range -->
						<xsl:for-each select="rdfs:range">
							<div>
								<strong>Range: </strong>
								<xsl:choose>
									<xsl:when test="@rdf:resource">
										<xsl:value-of select="substring-after(@rdf:resource, '#')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:for-each select=".//rdf:Description">
											<xsl:if test="position() > 1">, </xsl:if>
											<xsl:choose>
												<xsl:when test="contains(@rdf:about, '#')">
													<xsl:value-of select="substring-after(@rdf:about, '#')"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:value-of select="@rdf:about"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:for-each>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>
						<!-- Handle rdf:type -->
						<xsl:for-each select="rdf:type">
							<div>
								<strong>rdf:type: </strong>
								<xsl:choose>
									<xsl:when test="contains(@rdf:resource, '#')">
										<xsl:value-of select="substring-after(@rdf:resource, '#')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="@rdf:resource"/>
									</xsl:otherwise>
								</xsl:choose>
							</div>
						</xsl:for-each>

						<!-- Handle skos:broadMatch -->
						<xsl:for-each select="skos:broadMatch">
							<div>
								<strong>skos:broadMatch: </strong>
								<xsl:value-of select="@rdf:resource"/>
							</div>
						</xsl:for-each>
					</div>
					<small>
						<a href="#top">(Back to Top)</a>
					</small>
				</xsl:for-each>
				
				<h2>Version History</h2>
				<xsl:for-each select="/rdf:RDF/owl:NamedIndividual[rdf:type/@rdf:resource='http://iflastandards.info/ns/lrm/lrmoo/F2_Expression']">
					<!-- h3 with label -->
					<!-- variable - gesamte ID aus rdf:about -->
					<xsl:variable name="currentID" select="./dc:date/text()"/>
					<!-- Variable für div-IDs -->
					<xsl:variable name="div_id" select="./dc:date/text()"/>
					<!-- Loop through rdfs:label -->
					<xsl:for-each select="rdfs:label[1][@xml:lang = 'en']">
						<xsl:element name="h3">
							<xsl:attribute name="id">
								<xsl:value-of select="$div_id"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</xsl:element>
					</xsl:for-each>
					
					<div class="declaration">
						<!-- First div for Prior Version -->
						<div>
							<strong>Prior Version: </strong>
							<xsl:element name="a">
								<xsl:attribute name="href">
									<xsl:value-of select="owl:priorVersion/@rdf:resource"/>
								</xsl:attribute>
								<xsl:value-of select="owl:priorVersion/@rdf:resource"/>
							</xsl:element>
						</div>
						
						<!-- Second div for rdfs:comment -->
						<div>
							<xsl:call-template name="normalize-and-replace">
								<xsl:with-param name="text" select="rdfs:comment"/>
							</xsl:call-template>
						</div>
					</div>
					<small>
						<a href="#top">(Back to Top)</a>
					</small>
				</xsl:for-each>
				
			</body>
		</html>
	</xsl:template>

	<!-- Templates for rdfs:comment -->



</xsl:stylesheet>
