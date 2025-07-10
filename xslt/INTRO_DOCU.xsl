<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" xmlns:owl="http://www.w3.org/2002/07/owl#" xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#" xmlns:dc="http://purl.org/dc/elements/1.1/"
	xmlns:skos="http://www.w3.org/2004/02/skos/core#" xmlns:cc="http://creativecommons.org/ns#" exclude-result-prefixes="xsl rdf owl rdfs dc skos cc" version="2.0">
	
	<!-- This XSLT serves the 'one rdf explains all' (ORDEAL) approach to ontology documentation and is specified for INTRO.
	To add to the fields provided by the ontolgy's owl file, certain substrings are transformed to include image files or add section titles. -->

	<!-- Output HTML -->
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>


	<!-- Template to normalize and insert images, while preserving line breaks -->
	<xsl:template name="normalize-and-replace">
		<xsl:param name="text" select="."/>
		
		<!-- Tabs entfernen, Zeilenumbrüche erhalten -->
		<xsl:variable name="cleaned" select="replace($text, '&#9;', '')"/>
		
		<!-- Regex: Figure-Zahl, URL und Caption extrahieren -->
		<xsl:analyze-string select="$cleaned"
			regex="See Figure (\d+) \(([^)]+)\):\s*([^\.]+)\.">
			
			<!-- Treffer: Bild einfügen -->
			<xsl:matching-substring>
				<figure>
					<img src="{regex-group(2)}"/>
					<figcaption>
						<xsl:text>Figure </xsl:text>
						<xsl:value-of select="regex-group(1)"/>
						<xsl:text>: </xsl:text>
						<xsl:value-of select="regex-group(3)"/>
						<xsl:text>.</xsl:text>
					</figcaption>
				</figure>
			</xsl:matching-substring>
			
			<!-- Rest verarbeiten -->
			<xsl:non-matching-substring>
				<!-- Zweite Analyse: Section-Zeilen fett, aber Prefix nicht anzeigen -->
				<xsl:analyze-string select="." regex="Section\s[^:]+:\s*([^\n]*)">
					<xsl:matching-substring>
						<strong>
							<xsl:value-of select="regex-group(1)"/>
						</strong>
					</xsl:matching-substring>
					
					<xsl:non-matching-substring>
						<!-- Zeilenumbrüche beibehalten -->
						<xsl:call-template name="replace-linebreaks-with-br">
							<xsl:with-param name="text" select="."/>
						</xsl:call-template>
					</xsl:non-matching-substring>
				</xsl:analyze-string>
			</xsl:non-matching-substring>
			
			
		</xsl:analyze-string>
	</xsl:template>
	
	<!-- Template to replace line breaks with <br/> -->
	<xsl:template name="replace-linebreaks-with-br">
		<xsl:param name="text" select="."/>
		
		<xsl:for-each select="tokenize($text, '&#10;')">
			<xsl:value-of select="normalize-space(.)"/>
			<xsl:if test="position() != last()">
				<xsl:text disable-output-escaping="yes">&lt;br/&gt;</xsl:text>
			</xsl:if>
		</xsl:for-each>
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
					max-width: 1400px;
					margin: auto;
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
					
					img {
					max-width: 100%;
					height: auto;
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
					.general, .toc, .primaryToc, .declaration {
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
					
					.tocItem {
					padding: 0.5em 0;
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
				<!-- <script>
					window.addEventListener('load', function() {
					
					const headers = document.querySelectorAll('h1');
					
					headers.forEach(header => {
					const text = header.textContent;
					
					const firstThree = text.slice(0, 3);
					const rest = text.slice(3);
					
					header.innerHTML = `<span class="blink">${firstThree}</span>${rest}`;
					});
					});
				</script>-->
			</head>
			<body>
				<!-- h1 for dc:title -->
				<xsl:for-each select="/rdf:RDF/owl:Ontology[1]">
					<h1>
						<xsl:value-of select="./dc:title[1]"/>
					</h1>
					<div class="general">

						<xsl:for-each select="./dc:modified">
							
							<strong>Last modified: </strong>
							<xsl:value-of select="./text()"/>
						</xsl:for-each>

						<!-- div for rdfs:comment with type attribute -->
						<br/>
						<br/>
						<div class="comment"><strong>About: </strong>
						<xsl:for-each select="./rdfs:comment">
							
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							<br/>
							
						</xsl:for-each></div>
						
						<!--  -->
						<xsl:if test="//dc:relation[contains(./text(), 'github')]">
							<xsl:for-each select="//dc:relation[contains(./text(), 'github')]">
								<br/>
								<strong>INTRO on Github: </strong>
								<xsl:element name="a">
									<xsl:attribute name="href">
										<xsl:value-of select="./text()"/>
									</xsl:attribute>
									<xsl:value-of select="./text()"/>
								</xsl:element>
								
							</xsl:for-each>
							<br/>
						</xsl:if>
						<!--  -->
						<br/>
						<strong>Creator: </strong>
						
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./dc:creator[@rdf:resource]/@rdf:resource"/>
							</xsl:attribute>
							<xsl:value-of select="./dc:creator[@rdf:datatype = 'http://www.w3.org/2001/XMLSchema#string']/text()"/>
						</xsl:element>
						<br/>
						<xsl:if test="//dc:contributor">
							<strong>Contributor: </strong>
							
							<xsl:element name="a">
								<xsl:attribute name="href">
									<xsl:value-of select="./dc:contributor[@rdf:resource]/@rdf:resource"/>
								</xsl:attribute>
								<xsl:value-of select="./dc:contributor[@rdf:datatype = 'http://www.w3.org/2001/XMLSchema#string']/text()"/>
							</xsl:element>
						</xsl:if>

						<br/>
						<br/>
						<strong>Version Info: </strong>
						<xsl:value-of select="./owl:versionInfo/text()"/>

						<br/>
						<br/>
						<strong>Licence: </strong>
						<xsl:element name="a">
							<xsl:attribute name="href">
								<xsl:value-of select="./cc:licence[1]/@rdf:resource"/>
							</xsl:attribute>
							<xsl:value-of select="./cc:licence[1]/@rdf:resource"/>
						</xsl:element>
						<br/>
						<xsl:value-of select="./dc:rights/text()"/>
					</div>
					
					<h3>Table of Contents</h3>
					<div class="primaryToc">
						<div class="tocItem"><a href="#description">INTRO – Description</a></div>
						<div class="tocItem"><a href="#classes">Classes</a></div>
						<div class="tocItem"><a href="#objectProperties">Object Properties</a></div>
						<div class="tocItem"><a href="#dataProperties">Data Properties</a></div>
						<div class="tocItem"><a href="#versionHistory">Version History</a></div>
					</div>
					
					
					<!-- Description: -->
					<h2 id="description">INTRO – Description</h2>
					<div class="general">

											
						<xsl:for-each select="./dc:description">
							<div class="comment">
								<xsl:call-template name="normalize-and-replace">
									<xsl:with-param name="text" select="."/>
								</xsl:call-template>
							</div>
						</xsl:for-each>
					</div>
				</xsl:for-each>
				<small>
					<a href="#top">(Back to Top)</a>
				</small>



				<!-- h2 for "Classes" -->
				<h2 id="classes">Classes</h2>
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
				<small>
					<a href="#top">(Back to Top)</a>
				</small>

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
				<h2 id="objectProperties">Object Properties</h2>
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
				<small>
					<a href="#top">(Back to Top)</a>
				</small>

				<!-- Loop through owl:ObjectProperty -->
				<xsl:for-each select="/rdf:RDF/owl:ObjectProperty[contains(@rdf:about, 'intro/beta')]">
					<!-- Variable für div-IDs -->
					<xsl:variable name="div_id" select="./substring-after(@rdf:about, '#')"/>

					<!-- Loop through rdfs:label to create h3 -->
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
						
						<!-- Loop through rdfs:subPropertyOf -->
						
						<xsl:for-each select="rdfs:subPropertyOf">
							<div>
								<strong>Subproperty of: </strong>
								
								<xsl:choose>
									<xsl:when test=".[contains(@rdf:resource, 'lso/intro')]"><xsl:element name="a">
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
						
						<!-- Find subproperties -->
						
						<!-- Test for subproperties -->
						<xsl:if test="//owl:ObjectProperty[contains(rdfs:subPropertyOf/@rdf:resource, $div_id)]">
							<div>
								<strong>Has Subproperty / Subproperties: </strong>
								<xsl:for-each select="//owl:ObjectProperty[contains(rdfs:subPropertyOf/@rdf:resource, $div_id)]">
									
									<xsl:choose>
										<xsl:when test="contains(@rdf:about, 'lso/intro')">
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
				<h2 id="dataProperties">Data Properties</h2>
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
				<small>
					<a href="#top">(Back to Top)</a>
				</small>
				
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
				
				<!-- Version History -->
				<h2 id="versionHistory">Version History</h2>
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
				<small>
					<a href="#top">(Back to Top)</a>
				</small>
				
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
