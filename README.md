# INTRO
INTRO - an <b>In</b>ter<b>t</b>extual <b>R</b>elationships <b>O</b>ntology for literary studies
(work in progress)

Ontology IRI: https://w3id.org/lso/intro/currentbeta#

## WHAT IS INTRO?
INTRO is an ontology for the field of literary studies for representing knowledge on intertextual relations.

Here is a <a href="http://www.visualdataweb.de/webvowl/#iri=https://raw.githubusercontent.com/BOberreither/INTRO/master/INTRO_CurrentBeta.owl">link to a visualization</a> created with WebVOWL.

## SCOPE 
INTRO is an ontology designed to represent knowledge on intertextuality in literary studies by modelling the discussion or identification of intertextuality and other features in texts, as conducted e.g. in a research paper. It can be, but is not necessarily based on such a pre-existing research outcome: While INTRO can provide an existing research paper with a second, RDF-based layer to duplicate the contents of the paper in a machine readable way, it can also be used to formulate research outcome directly in Linked Data.

The term ‘intertextuality' is to be understood in the broadest sense, including concrete intertextual relationships like citation, allusion, plagiarism etc. as well as intertextuality in a very general sense, like the relation between a text and a text corpus (e.g. a genre, an epoch, an oeuvre). It also includes the relation between e.g. a research paper and its research objects and secondary literature.

Intertextual relations can be represented as relations between texts on any ontological level: from the abstract notion of work to the text as a recognizable textual structure or the text as an identifiable publication (all these being imported FRBRoo-classes) to text passages or text corpora (‚architextual entities‘ like epochs, genres, oeuvres etc.).

## MODELING PRINCIPLES
Given the specific status of knowledge in literary studies, the ontology does not allow to formulate statements asserting that  texts just ‚have‘ features. Instead, identifying text features is always modeled as an ‚actualization’ of an abstract notion in a reading of said text; knowledge about texts (as about cultural artifacts in general) is the outcome of an interpretative act, an ‚interpretament’, which identifies intertextual relationships, text features (which intertextual relationships can be based on) and characteristics (features linking texts to larger text corpora).

Since there are many theoretical frameworks for literary studies, the ontology focusses on their common denominators: In the field of literary studies, this common denominator is the text as research object. The common denominator in the field of intertextuality studies is the text-text-relation. So the central concept on which the ontology is founded on is textualism. Thus the topic of discourse is - at first - reduced to texts, text features and text relations, cutting out everything else from authorship, to reception, events, intentions, motivation, culture, systems, institutions etc. Textualismus in its restrictions is the perfect meta modell for the integration of theoretical frameworks of all kinds, which can be implemented as e.g. 'types' of intertextual relationships (like 'influence', 'paratextuality', 'paradigmatic relation', etc.).

## GRANULARITY
INTRO is capable of modeling knowledge in different degrees of granularity: It allows to give rough overviews of relations between texts or text corpora, but can also account for text features as identified in distinct text passages and their relations to features identified in other texts/text passages. In the case of modeling pre-existing research outcomes (e.g.: an existing research paper), it allows to give abstract-like overviews, accounting for its objects and sources, as well as representations of the content of such publications down to the level of a single paragraph.

## What's next?
The ontology is a work in progress. Pending work includes:
- further alignment with relevant ontologies; 
- testing, refining and expanding the ontology in the course of one or more case studies

<center>*******************************************</center>

# INTRO Further information

## CENTRAL CLASSES
(extracted with <a href="http://www.essepuntato.it/lode">lode</a>)

### INT01 Text Passage
IRI: https://w3id.org/lso/intro/currentbeta#INT1_TextPassage
An addition to FRBRoo due to the focus of this ontology. FRBRoo's 'Expression Fragment' is by definition a fragment of an expression, which is the immaterial realisation of a work - and for this reason cannot be object of a citation or a detailed bibliographical record (an expression has no page numbers). The FRBRoo 'Publication Expression' is itself an immaterial (ideal) version of a text. However it adds concreteness to the 'Expression', it has a publisher, a publishing date, page numbers, an ISBN and so on. The Publication Expression is a text on the ontological level usually cited in literary studies. The INT1 Text Passage is an identifiable part (a paragraph, a couple of lines, and so forth) of the 'Publication Expression' - a 'Publication Expression Fragment', so to speak. For Example: - the words 'Abandon all hope ye who enter here' from page 3 of the publication identified by the ISBN 978-0307278630.
<i>has super-classes</i>
f2 expression
<i>is in domain of</i>
r10 is text passage of, r11 has fragment, r11 is fragment of, r44 has wording
<i>is in range of</i>
r10 has text passage, r11 has fragment, r11 is fragment of

### INT02 Actualization of Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT2_ActualizationOfFeature
The fact that a certain text shows - in its own specific way - a certain feature (which itself is an abstract concept and takes form in many texts), e.g. a motif, an atmosphere, a theme, a figure of speech. Examples: - the specific actualization of the motif of patricide in Sophokles' 'Ã–dipus Rex'. - the specific actualization of the Faust-subject in Goethe's 'Faust'. - the specific actualization of the iambic pentameter in Rilke's 'Archaischer Torso Apollos".
<i>has super-classes</i>
e28 conceptual object
<i>is in domain of</i>
r17 actualizes feature, r18 actualization found on, r2 constitutes, r3 is constellated by, r4 defines
<i>is in range of</i>
r17 feature actualized in, r18 shows actualization, r2 consists in, r3 constellates, r4 is defined in

### INT03 Intertextual Relationship
IRI: https://w3id.org/lso/intro/currentbeta#INT3_IntertextualRelationship
This class is meant for the abstract notion of an intertextual relationship as it is identified by a reader (and is not to be confused with the rhetorical entity 'quotation'). Every INT3 Intertextual Relationship has at least 2 related entities, which are texts (on any ontological level) or INT2 Actualizations of Features. An INT3 Intertextual Relationship is possibly identified in an interpretative.
<i>has super-classes</i>
e28 conceptual object
<i>is in domain of</i>
r12 has referred to entity, r13 has referring entity, r19 has type, r22 reference is based on similarity, r24 has related entity
<i>is in range of</i>
r12 is referred to entity, r13 is referring entity, r19 is type of, r22 provides similarity for reference, r24 is related entity

### INT04 Receptional Entity
IRI: https://w3id.org/lso/intro/currentbeta#INT4_ReceptionalEntity
This class comprises features that 'are in' or 'can be found in' or 'can be read out of' a text, apart from the wording itself. INT2 Actualizations of these features are the results of a mental process that is applied to a text and that made out distinct abstract concepts which are themselves seperate from the text and take a specific, yet identifiable form in the text. This class therefore has an extremely wide scope, its subclasses are open to additions and are to be populated from relevant reference works (e.g. the subclass 'Rhetorical Entity' could contain concepts based on Lausberg's 'Handbook of Literary Rhetoric', many lemmata from the 'Princeton Handbook of Poetic Terms' could populate the subclass "Formal Entity" and so on). It is highly likely (and welcome) that the instances of subclasses or sub-subclasses of the class 'receptional Entity' are instances or sub-subclasses of more than one subclass (e.g. that a rhetorical entity is at the same time a semantic entity as in the case of an 'argument' or 'narrator').
<i>has super-classes</i>
e28 conceptual object
<i>has sub-classes</i>
INT08 Rhetorical Feature, INT09 Semantic Feature, INT10 Formal Feature
<i>is in domain of</i>
r17 feature actualized in, r22 provides similarity for reference
<i>is in range of</i>
r17 actualizes feature, r22 reference is based on similarity

### INT05 Characteristic
IRI: https://w3id.org/lso/intro/currentbeta#INT5_Characteristic
The concept that the INT2 Actualization of a certain feature can indicate to a text's affiliation or likeness to an architextual entity. A Characteristic is identified in an interpretative and is thus itself based on text. Examples: - how the actualization of the theme 'fashion' in many german novels from 1995 to 2001 supports their affiliation to the movement (or school, or epoch) 'German Pop Literature'. - how the actualization of the underdog detective in Wolf Haas' 'Silentium' supports the novel's affiliation to the genre 'hardboiled crime fiction'.
<i>has super-classes</i>
e28 conceptual object
<i>is in domain of</i>
r1 supports affiliation to, r14 supports likeness, r15 supports non affiliation, r16 supports unlikeness
<i>is in range of</i>
r1 affiliation supported by, r14 likeness supported by, r15 non affiliation supported by, r16 unlikeness supported by

### INT06 Architextual Entity
IRI: https://w3id.org/lso/intro/currentbeta#INT6_ArchitextualEntity
An INT6 Architextual Entity consists in a number of texts which in some way give reason to see them as connected, related, sharing a common feature. Examples for INT6 Architextual Entities can be disourses (texts sharing a discousive element, a topic etc.), genres (texts sharing genre conventions), a discipline (texts deriving from the same disciplinary background), an oeuvre (texts written by the same person), national literatures (texts whose authors share a nationality) etc.
<i>has super-classes</i>
e28 conceptual object
<i>has sub-classes</i>
INT Discipline, INT Discourse, INT Epoch, INT Genre (Trias), INT Genre (sub Trias), INT Geographically Defined Architext, INT Movement, INT Oeuvre, INT School, INT Temporally Defined Architext, INT Variety of Text
<i>is in domain of</i>
r1 affiliation supported by, r14 likeness supported by, r15 non affiliation supported by, r16 unlikeness supported by, r5 has appurtenant element, r6 has representative element, r7 has initial element
<i>is in range of</i>
r1 supports affiliation to, r14 supports likeness, r15 supports non affiliation, r16 supports unlikeness, r5 is appurtenant element, r6 is representative element, r7 is initial element

### INT07 Interpretament
IRI: https://w3id.org/lso/intro/currentbeta#INT7_Interpretament
The abstract content of a interpretative act. An interpretament identifies references, actualizations of features or characteristics that assign texts to a transtextual entity. Interpretaments themselves can originate in texts and thus be actualizations of the semantic feature 'Interpretation'. Examples: - the statement that Umberto Eco's 'The Name of the Rose' features a detective character. - the statement that Umberto Eco's 'The Name of the Rose' contains references to Arthur Conan Doyle's 'Sherlock Holmes'. - the statement that Umberto Exo's 'The Name of the Rose' is set in the 14th century. - the conclusion that Umberto Eco's 'The Name of the Rose' belongs to the genre 'postmodern crime novel'.
<i>has super-classes</i>
e89 propositional object
<i>is in domain of</i>
r20 discusses, r21 identifies, r9 has preceding interpretament, r9 has subsequent interpretament
<i>is in range of</i>
r20 is discussed in, r21 is identified by, r9 has preceding interpretament, r9 has subsequent interpretament

### INT08 Rhetorical Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT8_RhetoricalFeature
This class comprises every aspect of a text that can be described in terms of rhetorics - ranging from the occurrence of rhetorical tropes (figures of speech) to parts of a e.g. research paper like 'introduction' or 'quotation' (pragmatic entities) to aspects of the narrative act such as 'voice' or 'narrating time' (narratological entities).
<i>has super-classes</i>
INT04 Receptional Entity
<i>has sub-classes</i>
INT Figure of Speech, INT Narratological Entity, INT Pragmatic Feature

### INT09 Semantic Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT9_SemanticFeature
This class comprises every semantic aspect of a text: from the common notions of 'plot' or 'character' up to the specific classification of forms such as 'situational motif'. (Subclasses are still object to further refinement and addition; to indicate their provisional status they are not numbered.)
<i>has super-classes</i>
INT04 Receptional Entity
<i>has sub-classes</i>
INT Atmosphere, INT Character, INT Constellation, INT Definition, INT Description, INT Figurative Meaning, INT Interpretation, INT Mood, INT Motif, INT Opinion, INT Place, INT Plot, INT Subject, INT Subtext, INT Theme, INT Theory, INT Timespan, INT Topic, INT Topos

### INT10 Formal Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT10_FormalFeature
This class comprises subclasses for every formal aspect of a text: Subclasses will provide the general terms (e.g. 'stanza'), instances are meant to be specific types (e.g. 'Sapphic stanza'). Subclasses are derived from existing ontologies (in this case: the DoCO Document Components Ontology). (Subclasses are still object to further refinement and addition; to indicate their provisional status they are not numbered.)
<i>has super-classes</i>
INT04 Receptional Entity
<i>has sub-classes</i>
INT Act (Drama), INT Scene (Drama), INT Tableau (Drama), abstract, abstract, bibliographic reference, bibliography, block, caption, container, discourse element, field, headed container, header, inline, pattern, reference, table

### INT11 Type of Intertextual Relationship
IRI: https://w3id.org/lso/intro/currentbeta#INT11_TypeOfIntertextualRelationship
This class comprises (as subclasses) the many classifications of intertextual relationships that can be found, for example, in research literature, but also in greek rhetoric, in genre theory and so on.
<i>has super-classes</i>
e55 type
<i>has sub-classes</i>
INT12 Common Concepts of Intertextuality, INT13 Intertextuality in Genre Theory, INT14 Intertextuality in Rhetoric, INT15 Intertextuality in Intertextuality Theories
<i>is in domain of</i>
r19 is type of
<i>is in range of</i>
r19 has type

### INT12 Common Concepts of Intertextuality
IRI: https://w3id.org/lso/intro/currentbeta#INT12_CommonConceptsOfIntertextuality
This class comprises common concepts of intertextual relationships such as 'citation', 'plagiarism', 'allusion' and so on; no further definition is necessary.
<i>has super-classes</i>
INT11 Type of Intertextual Relationship
<i>has sub-classes</i>
INT Punned CiTO Properties

### INT13 Intertextuality in Genre Theory
IRI: https://w3id.org/lso/intro/currentbeta#INT13_IntertextualityInGenreTheory
This class comprises intertextual relationships that can be found in genre theory.
<i>has super-classes</i>
INT11 Type of Intertextual Relationship

### INT14 Intertextuality in Rhetoric
IRI: https://w3id.org/lso/intro/currentbeta#INT14_IntertextuailtyInRhetoric
This class comprises intertextual relationships that can be found in rhetoric.
<i>has super-classes</i>

### INT11 Type of Intertextual Relationship
INT15 Intertextuality in Intertextuality Theories
IRI: https://w3id.org/lso/intro/currentbeta#INT15_IntertextualityInIntTheories
This class comprises intertextual relationships that can be found in research literature dedicated to intertextuality theory.
<i>has super-classes</i>
INT11 Type of Intertextual Relationship

### INT16 Publication Expression Section
IRI: https://w3id.org/lso/intro/currentbeta#INT16_PublicationExpressionSection
This class comprises self contained expressions as they are represented in F24 Publication Expressions. INT11 Publication Expression Sections are in themselves complete, have a year and place of publication, page numbers etc. and are thus identifiable (and citable) as distinct expressions in a volume containing more than one of those. They are not identical to/subclasses of F24 Publication Expressions, since they only make a part of it; they are not identical to F22 Self Contained Expressions, since they have distinct bibliographical metadata.
<i>has super-classes</i>
f22 self contained expression
<i>is in domain of</i>
r25 is section of
<i>is in range of</i>
r25 has section

