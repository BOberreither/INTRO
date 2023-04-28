# INTRO 
## New Version 202304 online!
INTRO - an <b>In</b>ter<b>t</b>extual <b>R</b>elationships <b>O</b>ntology for literary studies


Ontology IRI: https://w3id.org/lso/intro/currentbeta#

Latest Version IRI: https://w3id.org/lso/intro/beta202304#

<center>+++++++++++++++++++++</center>

## CONTENTS

   <a href="#whatisintro">What is INTRO?</a>

   <a href="#scope">Scope</a>

   <a href="#modelingprinciples">Modeling Principles</a>

   <a href="#granularity">Granularity</a>

   <a href="#socomplicated"/>(By the way: Does it have to be so complicated?)</a>

   <a href="#whatsnext">What's next?</a>

   <a href="#further">INTRO - Further Information</a>

   <a href="#centralclasses">Central Classes</a>

   <a href="#usecases">Typical Usecases</a>


<center>+++++++++++++++++++++</center>


## <a name="whatisintro"/>WHAT IS INTRO?
INTRO is an ontology for the field of literary studies for representing knowledge on intertextual relations.

## <a name="scope"/>SCOPE 
INTRO is an ontology designed to represent knowledge on intertextuality in literary studies by modelling the discussion or identification of intertextuality and other features in texts, as conducted e.g. in a research paper. It can be, but is not necessarily based on such a pre-existing research outcome: While INTRO can provide an existing research paper with a second, RDF-based layer to duplicate the contents of the paper in a machine readable way, it can also be used to formulate research outcome directly in Linked Data.

The term ‘intertextuality' is to be understood in the broadest sense, including concrete intertextual relationships like citation, allusion, plagiarism etc. as well as intertextuality in a very general sense, like the relation between a text and a text corpus (e.g. a genre, an epoch, an oeuvre). It also includes the relation between e.g. a research paper and its research objects and secondary literature.

Intertextual relations can be represented as relations between texts on any ontological level: from the abstract notion of work to the text as a recognizable textual structure or the text as an identifiable publication (all these being imported FRBRoo-classes) to text passages or text corpora (‚architextual entities‘ like epochs, genres, oeuvres etc.).

## <a name="modelingprinciples"/>MODELING PRINCIPLES
Given the specific status of knowledge in literary studies, the ontology does not allow to formulate statements asserting that  texts just ‚have‘ features. Instead, identifying text features is always modeled as an ‚actualization’ of an abstract notion in a reading of said text; knowledge about texts (as about cultural artifacts in general) is the outcome of an interpretative act, an ‚interpretament’, which identifies intertextual relationships and text features (which intertextual relationships can be based on).

Since there are many theoretical frameworks for literary studies, the ontology focusses on their common denominators: In the field of literary studies, this common denominator is the text as research object. The common denominator in the field of intertextuality studies is the text-text-relation. So the central concept on which the ontology is founded on is textualism. Thus the topic of discourse is - at first - reduced to texts, text features and text relations, cutting out everything else from authorship, to reception, events, intentions, motivation, culture, systems, institutions etc. Textualismus in its restrictions is the perfect meta modell for the integration of theoretical frameworks of all kinds, which can be implemented as e.g. 'types' of intertextual relationships (like 'influence', 'paratextuality', 'paradigmatic relation', etc.).

## <a name="granularity"/>GRANULARITY
INTRO is capable of modeling knowledge in different degrees of granularity: It allows to give rough overviews of relations between texts or text corpora, but can also account for text features as identified in distinct text passages and their relations to features identified in other texts/text passages. In the case of modeling pre-existing research outcomes (e.g.: an existing research paper), it allows to give abstract-like overviews, accounting for its objects and sources, as well as representations of the content of such publications down to the level of a single paragraph.

## <a name="socomplicated"/>By the way: Does it have to be so complicated?
**Answer 1: YES.** INTRO is built to represent (a fraction of) our day-to-day work, which sooner or later consists in intellectual operations we have grown accustomed to - up to a point where we are unaware of the large number of different acts we perform each time. Modelling them with an ontology inevitably calls to mind all these steps implicit in our work, and only by doing so an ontology can represent our research outcome adequately. So yes, some complexity is unavoidable.<br><br>
**Answer 2: NO.** INTRO is an ontology like all the others: As long as you don't violate class and property definitions, take what you need - and leave the rest. Take one *INT03 Intertextual Relationship*, link it with *r24 has related entity* to some text (modeled with FRBRoo, bibframe, dublin core ...), and you're good to go. Maybe add one *INT11 Type of Intertextual Relationship*.

## <a name="whatsnext"/>What's next?
The ontology is a work in progress. Pending work includes:
- further alignment with relevant ontologies; 
- testing, refining and expanding the ontology in the course of one or more case studies

(Feedback is welcome: Bernhard.Oberreither@oeaw.ac.at)

<center>*******************************************</center>

# <a name="further"/>INTRO Further Information

## <a name="centralclasses"/>CENTRAL CLASSES
<small>(extracted with <a href="http://www.essepuntato.it/lode">lode</a>)</small>

### INT1 Text Passage
IRI: https://w3id.org/lso/intro/currentbeta#INT1_TextPassage
<br>An addition to FRBRoo due to the focus of this ontology. FRBRoo's 'Expression Fragment' is by definition a fragment of an expression, which is the immaterial realisation of a work - and for this reason cannot be object of a citation or a detailed bibliographical record (an expression has no page numbers). The FRBRoo 'Publication Expression' is itself an immaterial (ideal) version of a text. However it adds concreteness to the 'Expression', it has a publisher, a publishing date, page numbers, an ISBN and so on. The Publication Expression is a text on the ontological level usually cited in literary studies. The INT1 Text Passage is an identifiable part (a paragraph, a couple of lines, and so forth) of the 'Publication Expression' - a 'Publication Expression Fragment', so to speak. For Example: - the words 'Abandon all hope ye who enter here' from page 3 of the publication identified by the ISBN 978-0307278630.
<br><br><i>has super-classes</i><br>
f2 expression
<br><i>is in domain of</i><br>
r10 is text passage of, r11 has fragment, r11 is fragment of, r44 has wording
<br><i>is in range of</i><br>
r10 has text passage, r11 has fragment, r11 is fragment of

### INT2 Actualization of Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT2_ActualizationOfFeature
<br>The fact that a certain text shows - in its own specific way - a certain feature (which itself is an abstract concept and takes form in many texts), e.g. a motif, an atmosphere, a theme, a figure of speech. Examples: - the specific actualization of the motif of patricide in Sophokles' 'Ã–dipus Rex'. - the specific actualization of the Faust-subject in Goethe's 'Faust'. - the specific actualization of the iambic pentameter in Rilke's 'Archaischer Torso Apollos".
<br><br><i>has super-classes</i><br>
e28 conceptual object
<br><i>is in domain of</i><br>
r17 actualizes feature, r18 actualization found on, r2 constitutes, r3 is constellated by, r4 defines
<br><i>is in range of</i><br>
r17 feature actualized in, r18 shows actualization, r2 consists in, r3 constellates, r4 is defined in

### INT3 Intertextual Relationship
IRI: https://w3id.org/lso/intro/currentbeta#INT3_IntertextualRelationship
<br>This class is meant for the abstract notion of an intertextual relationship as it is identified by a reader (and is not to be confused with the rhetorical entity 'quotation'). Every INT3 Intertextual Relationship has at least 2 related entities, which are texts (on any ontological level) or INT2 Actualizations of Features. An INT3 Intertextual Relationship is possibly identified in an interpretative.
<br><br><i>has super-classes</i><br>
e28 conceptual object
<br><i>is in domain of</i><br>
r12 has referred to entity, r13 has referring entity, r19 has type, r22 reference is based on similarity, r24 has related entity
<br><i>is in range of</i><br>
r12 is referred to entity, r13 is referring entity, r19 is type of, r22 provides similarity for reference, r24 is related entity

### INT4 Receptional Entity
IRI: https://w3id.org/lso/intro/currentbeta#INT4_ReceptionalEntity
<br>This class comprises features that 'are in' or 'can be found in' or 'can be read out of' a text, apart from the wording itself. INT2 Actualizations of these features are the results of a mental process that is applied to a text and that made out distinct abstract concepts which are themselves seperate from the text and take a specific, yet identifiable form in the text. This class therefore has an extremely wide scope, its subclasses are open to additions and are to be populated from relevant reference works (e.g. the subclass 'Rhetorical Entity' could contain concepts based on Lausberg's 'Handbook of Literary Rhetoric', many lemmata from the 'Princeton Handbook of Poetic Terms' could populate the subclass "Formal Entity" and so on). It is highly likely (and welcome) that the instances of subclasses or sub-subclasses of the class 'receptional Entity' are instances or sub-subclasses of more than one subclass (e.g. that a rhetorical entity is at the same time a semantic entity as in the case of an 'argument' or 'narrator').
<br><br><i>has super-classes</i><br>
e28 conceptual object
<br><i>has sub-classes</i><br>
INT08 Rhetorical Feature, INT09 Semantic Feature, INT10 Formal Feature
<br><i>is in domain of</i><br>
r17 feature actualized in, r22 provides similarity for reference
<br><i>is in range of</i><br>
r17 actualizes feature, r22 reference is based on similarity

### INT6 Architextual Entity
IRI: https://w3id.org/lso/intro/currentbeta#INT6_ArchitextualEntity
<br>An INT6 Architextual Entity consists in a number of texts which in some way give reason to see them as connected, related, sharing a common feature. Examples for INT6 Architextual Entities can be disourses (texts sharing a discousive element, a topic etc.), genres (texts sharing genre conventions), a discipline (texts deriving from the same disciplinary background), an oeuvre (texts written by the same person), national literatures (texts whose authors share a nationality) etc.
<br><br><i>has super-classes</i><br>
e28 conceptual object
<br><i>has sub-classes</i><br>
INT Discipline, INT Discourse, INT Epoch, INT Genre (Trias), INT Genre (sub Trias), INT Geographically Defined Architext, INT Movement, INT Oeuvre, INT School, INT Temporally Defined Architext, INT Variety of Text
<br><i>is in domain of</i><br>
r1 affiliation supported by, r14 likeness supported by, r15 non affiliation supported by, r16 unlikeness supported by, r5 has appurtenant element, r6 has representative element, r7 has initial element
<br><i>is in range of</i><br>
r1 supports affiliation to, r14 supports likeness, r15 supports non affiliation, r16 supports unlikeness, r5 is appurtenant element, r6 is representative element, r7 is initial element

### INT7 Interpretament
IRI: https://w3id.org/lso/intro/currentbeta#INT7_Interpretament
<br>The abstract content of a interpretative act. An interpretament identifies references or actualizations of features that assign texts to a transtextual entity. Interpretaments themselves can originate in texts and thus be actualizations of the semantic feature 'Interpretation'. Examples: - the statement that Umberto Eco's 'The Name of the Rose' features a detective character. - the statement that Umberto Eco's 'The Name of the Rose' contains references to Arthur Conan Doyle's 'Sherlock Holmes'. - the statement that Umberto Exo's 'The Name of the Rose' is set in the 14th century. - the conclusion that Umberto Eco's 'The Name of the Rose' belongs to the genre 'postmodern crime novel'.
<br><br><i>has super-classes</i><br>
e89 propositional object
<br><i>is in domain of</i><br>
r20 discusses, r21 identifies, r9 has preceding interpretament, r9 has subsequent interpretament
<br><i>is in range of</i><br>
r20 is discussed in, r21 is identified by, r9 has preceding interpretament, r9 has subsequent interpretament

### INT8 Rhetorical Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT8_RhetoricalFeature
<br>This class comprises every aspect of a text that can be described in terms of rhetorics - ranging from the occurrence of rhetorical tropes (figures of speech) to parts of a e.g. research paper like 'introduction' or 'quotation' (pragmatic entities) to aspects of the narrative act such as 'voice' or 'narrating time' (narratological entities).
<br><br><i>has super-classes</i><br>
INT04 Receptional Entity
<br><i>has sub-classes</i><br>
INT Figure of Speech, INT Narratological Entity, INT Pragmatic Feature

### INT9 Semantic Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT9_SemanticFeature
<br>This class comprises every semantic aspect of a text: from the common notions of 'plot' or 'character' up to the specific classification of forms such as 'situational motif'. (Subclasses are still object to further refinement and addition; to indicate their provisional status they are not numbered.)
<br><br><i>has super-classes</i><br>
INT04 Receptional Entity
<br><i>has sub-classes</i><br>
INT Atmosphere, INT Character, INT Constellation, INT Definition, INT Description, INT Figurative Meaning, INT Interpretation, INT Mood, INT Motif, INT Opinion, INT Place, INT Plot, INT Subject, INT Subtext, INT Theme, INT Theory, INT Timespan, INT Topic, INT Topos

### INT10 Formal Feature
IRI: https://w3id.org/lso/intro/currentbeta#INT10_FormalFeature
<br>This class comprises subclasses for every formal aspect of a text: Subclasses will provide the general terms (e.g. 'stanza'), instances are meant to be specific types (e.g. 'Sapphic stanza'). Subclasses are derived from existing ontologies (in this case: the DoCO Document Components Ontology). (Subclasses are still object to further refinement and addition; to indicate their provisional status they are not numbered.)
<br><br><i>has super-classes</i><br>
INT04 Receptional Entity
<br><i>has sub-classes</i><br>
INT Act (Drama), INT Scene (Drama), INT Tableau (Drama), abstract, abstract, bibliographic reference, bibliography, block, caption, container, discourse element, field, headed container, header, inline, pattern, reference, table

### INT11 Type of Intertextual Relationship
IRI: https://w3id.org/lso/intro/currentbeta#INT11_TypeOfIntertextualRelationship
<br>This class comprises (as subclasses) the many classifications of intertextual relationships that can be found, for example, in research literature, but also in greek rhetoric, in genre theory and so on.
<br><br><i>has super-classes</i><br>
e55 type
<br><i>has sub-classes</i><br>
INT12 Common Concepts of Intertextuality, INT13 Intertextuality in Genre Theory, INT14 Intertextuality in Rhetoric, INT15 Intertextuality in Intertextuality Theories
<br><i>is in domain of</i><br>
r19 is type of
<br><i>is in range of</i><br>
r19 has type

### INT12 Common Concepts of Intertextuality
IRI: https://w3id.org/lso/intro/currentbeta#INT12_CommonConceptsOfIntertextuality
<br>This class comprises common concepts of intertextual relationships such as 'citation', 'plagiarism', 'allusion' and so on; no further definition is necessary.
<br><br><i>has super-classes</i><br>
INT11 Type of Intertextual Relationship
<br><i>has sub-classes</i><br>
INT Punned CiTO Properties

### INT13 Intertextuality in Genre Theory
IRI: https://w3id.org/lso/intro/currentbeta#INT13_IntertextualityInGenreTheory
<br>This class comprises intertextual relationships that can be found in genre theory.
<br><br><i>has super-classes</i><br>
INT11 Type of Intertextual Relationship

### INT14 Intertextuality in Rhetoric
IRI: https://w3id.org/lso/intro/currentbeta#INT14_IntertextuailtyInRhetoric
<br>This class comprises intertextual relationships that can be found in rhetoric.
<br><br><i>has super-classes</i><br>
INT11 Type of Intertextual Relationship

### INT15 Intertextuality in Intertextuality Theories
IRI: https://w3id.org/lso/intro/currentbeta#INT15_IntertextualityInIntTheories
<br>This class comprises intertextual relationships that can be found in research literature dedicated to intertextuality theory.
<br><br><i>has super-classes</i><br>
INT11 Type of Intertextual Relationship

### INT16 Segment
IRI: https://w3id.org/lso/intro/currentbeta#INT16_Segment
<br>This class comprises self contained expressions as they are represented in F24 Publication Expressions, but as INT16 Publication Expression Sections they are in themselves complete, have a year and place of publication, page numbers etc. and are thus identifiable (and citable) as distinct expressions in a volume containing more than one of those. They are not identical to/subclasses of F24 Publication Expressions, since they only make a part of it; they are not identical to F22 Self Contained Expressions, since they have distinct bibliographical metadata.
<br><br><i>has super-classes</i><br>
f22 self contained expression
<br><i>is in domain of</i><br>
r25 is section of
<br><i>is in range of</i><br>
r25 has section


## <a name="usecases"/>TYPICAL USE CASES (under revision)

### Text A refers to text B.
Modeling: An INT07 Interpretament R21 identifies an INT03 Intertextual Relationship which R13 has referring entity Text A and R12 has referred to entity Text B, both texts being - for instance - F24 Publication Expressions.

### Text A refers to Text B  by showing a certain text feature, e.g.: a fictional character that occurred in text B.
Modeling: An INT02 Actualization of Feature is r18 found on a text A - e.g. a F24 Publication Expression -, and r17 actualizes an INT09 Semantic Feature (e.g. ‚villain‘, ‚Faust‘, …).<br>
Also, an INT02 Actualization of Feature is r18 found on another text, text B - e.g. a F24 Publication Expression -, and r17 actualizes the same INT09 Semantic Feature.<br>
An INT07 Interpretament R21 identifies an INT03 Intertextual Relationship which R13 has referring entity INT02 Actualization of Feature (on text A) and R12 has referred to entity INT02 Actualization of Feature (on Text B).

### A feature of a passage in text A can be explained with the help of some standard reference book (text B) - for instance: a rhetorical figure with the help of Lausberg's standard work on the topic.
Modeling (one option): 
An INT07 Interpretament identifies an INT02 Actualization of Feature. This INT02 Actualization of Feature is r18 found on an INT01 Text Passage - which R10 is text passage of text A, an F24 Publication Expression -, and r17 actualizes an INT08 Rhetorical Feature (e.g. a ‚hyperbole‘). <br>
Another INT02 Actualization of Feature is r18 found on an INT01 Text Passage - which R10 is text passage of text B (e.g. Lausberg's standard work), an F24 Publication Expression -, and r17 actualizes an INT09 Semantic Feature, a definition. This INT02 Actualization of Feature r4 defines the INT08 Rhetorical Feature ‚hyperbole‘ and r23 provides support for the INT07 Interpretament.

### (more following ...)

