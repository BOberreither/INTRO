# INTRO - the Intertextual, Interpictorial, and Intermedial Relations Ontology

Ontology IRI: https://w3id.org/lso/intro/currentbeta#

Latest Version IRI: https://w3id.org/lso/intro/beta202408#

## NEWS

**NEW VERSION ONLINE - INTRO extended to include INTERMEDIALITY**

**PROUD TO BE AWESOME:** INTRO is on the CLARIAH list of <a href="https://github.com/CLARIAH/awesome-humanities-ontologies">Awesome Ontologies for Digital Humanities</a>!

**PROJECTS FEATURING INTRO:** Projects already using or currently implementing INTRO:
- <a href="https://semantickraus.acdh.oeaw.ac.at">SemanticKraus - Connecting Kraus Scholarship to the Semantic Web</a>
- <a href="https://www.romanticperiodpoetry.org/">Romantic Period Poetry Archive</a>
- <a href="https://www.researchgate.net/publication/378862360_Paradigmen_einer_digitalen_Rezeptionswissenschaft_Produktiv-literarische_Rezeptionsphanomene_als_Linked_Data_am_Beispiel_der_deutschsprachigen_literarischen_Sappho-Rezeption">German-language literary reception of Sappho</a>


## CONTENTS

   <a href="#whatisintro">What is INTRO?</a>

   <a href="#scope">Scope</a>

   <a href="#modelingprinciples">Modeling Principles</a>

   <a href="#granularity">Granularity</a>

   <a href="#alignments">Ontology Alignment</a>

   <a href="#socomplicated"/>(By the way: Does it have to be so complicated?)</a>

   <a href="#whatsnext">What's next?</a>

   <a href="#further">INTRO - Further Information</a>

   <a href="#usecases">Typical Usecases (tbd)</a>


<center>+++++++++++++++++++++</center>


## <a name="whatisintro"/>WHAT IS INTRO?

INTRO is an ontology for the field of literary and art studies for representing knowledge on intertextual, interpictorial, and intermedial relations.

## <a name="scope"/>SCOPE 

INTRO is an ontology designed to represent knowledge on intertextuality, interpictoriality, and intermediality by modelling the discussion or identification of these relations and correspondig features in texts and images, as is usually conducted e.g. in a research paper. Modelings with INTRO can be, but don't have to be based on such a pre-existing research outcome: While INTRO can provide an existing research paper with a second, RDF-based layer to duplicate the contents of the paper in a machine readable way, it can also be used to formulate research outcome directly in Linked Data. INTRO's domain also includes the relation between e.g. a research paper and its research objects and secondary literature.

The terms ‘intertextuality', 'interpictoriality' and 'intermediality' are to be understood in the broadest sense, including concrete relationships like citation, allusion, plagiarism, etc. as well as very general ones, like the relation between a text and a text corpus (e.g. the affiliation to a genre). Relations can be represented as relations between texts/images on any ontological level: from the abstract notion of work to the text as a recognizable textual structure or the text as an identifiable publication (as conceptualized e.g. in LRMoo) to text passages or text corpora (‚architextual entities‘ like epochs, genres, oeuvres etc.). INTRO also provides the means to model features of texts/images if one wants to present these features as constituting the relation in question.

## <a name="modelingprinciples"/>MODELING PRINCIPLES

Given the specific status of knowledge in literary studies, the ontology does not allow to formulate statements asserting that  texts/images just ‚have‘ these features. Instead, identifying features is always modeled as an ‚actualization’ of an abstract notion in a reading of said text/image; knowledge about texts/images (as about cultural artifacts in general) can be modeled as the outcome of an interpretative act identifying relations and features.

Since there are many theoretical frameworks for literary studies, the ontology focusses on their common denominators: In the field of literary and art studies, this common denominator is the text/image as research object. The common denominator in the field of intertextuality resp. intermediality studies is the text-text- resp. text-image-relation. A strict textualism (which in this regard includes images as instances of 'text') in its restrictions is the perfect meta modell for the integration of theoretical frameworks of all kinds: The topic of discourse is - at first - reduced to texts/images, their features and relations, these relations being modelled without the notion of authorship, reception, intention, motivation, culture, institutions etc. Instead, the differentiations resulting from these factors can be implemented as 'types' of intertextual/interpictorial/intermedial relationships (like 'influence', 'paratextuality', 'paradigmatic relation', etc.).

## <a name="granularity"/>GRANULARITY

INTRO is capable of modeling knowledge in different degrees of granularity: It allows to give rough overviews of relations between texts/images or resp. corpora, but can also account for features as identified in distinct text passages/image areas and their relations to features identified in other works. In the case of modeling pre-existing research outcomes (e.g.: an existing research paper), it allows to represent abstract-like overviews, accounting for its objects and sources in a minimalistic fashion, as well as representations of the content with high granularity and complexity.

## <a name="alignments"/>ONTOLOGY ALIGNMENT

INTRO is designed as extension of [CIDOC CRM](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html) and [LRMoo](https://www.cidoc-crm.org/extensions/lrmoo/html/LRMoo_v1.0.html) (previously known as FRBRoo), it is also aligned with the [Web Anotation Ontology](https://www.w3.org/ns/oa).

## <a name="socomplicated"/>By the way: Does it have to be so complicated?

**Answer 1: YES.** INTRO is built to represent (a fraction of) our day-to-day work, which consists in intellectual operations with a degree of complexity we have grown accustomed to - up to a point where we are unaware of the large number of different acts we perform each time. Modelling them with an ontology inevitably calls to mind all these steps implicit in our work, and only by doing so an ontology can represent our research outcome adequately. So yes, some complexity is unavoidable.<br><br>
**Answer 2: NO.** INTRO is an ontology like all the others: As long as you don't violate class and property definitions, take what you need - and leave the rest. Take one *INT3 Interrelation*, link it with *r24 has related entity* to some text (modeled with LRMoo, FRBRoo, bibframe, dublin core ...), and you're good to go. Maybe add one *INT11 Type of Interrelation* via *r19 has type*.

## <a name="whatsnext"/>What's next?

Pending work includes:
- Give the reasoners something to do. Sooner or later, INTRO will be expanded to include axioms (like property chain axioms) allowing for some mild inferencing (like: A relation between two textual features implies a relation between the respective texts.). 
- Testing, refining and expanding the ontology in the course of one or more case studies.

(Feedback is welcome: Bernhard.Oberreither@oeaw.ac.at)

<center>*******************************************</center>

## <a name="further"/>INTRO Further Information
For more information, see the documentation under http://w3id.org/lso/intro/beta202408.

## <a name="usecases"/>TYPICAL USE CASES (under revision)

### Text A refers to text B.
Modeling: An INT7 Interpretament R21 identifies an INT3 Intertextual Relationship which R13 has referring entity Text A and R12 has referred to entity Text B, both texts being - for instance - F24 Publication Expressions.

### Text A refers to Text B  by showing a certain text feature, e.g.: a fictional character that occurred in text B.
Modeling: An INT2 Actualization of Feature is r18 found on a text A - e.g. a F24 Publication Expression -, and r17 actualizes an INT9 Semantic Feature (e.g. ‚villain‘, ‚Faust‘, …).<br>
Also, an INT2 Actualization of Feature is r18 found on another text, text B - e.g. a F24 Publication Expression -, and r17 actualizes the same INT9 Semantic Feature.<br>
An INT7 Interpretament R21 identifies an INT3 Intertextual Relationship which R13 has referring entity INT2 Actualization of Feature (on text A) and R12 has referred to entity INT2 Actualization of Feature (on Text B).

### A feature of a passage in text A can be explained with the help of some standard reference book (text B) - for instance: a rhetorical figure with the help of Lausberg's standard work on the topic.
Modeling (one option): 
An INT7 Interpretament identifies an INT2 Actualization of Feature. This INT2 Actualization of Feature is r18 found on an INT1 Text Passage - which R10 is text passage of text A, an F24 Publication Expression -, and r17 actualizes an INT8 Rhetorical Feature (e.g. a ‚hyperbole‘). <br>
Another INT2 Actualization of Feature is r18 found on an INT1 Text Passage - which R10 is text passage of text B (e.g. Lausberg's standard work), an F24 Publication Expression -, and r17 actualizes an INT9 Semantic Feature, a definition. This INT2 Actualization of Feature r4 defines the INT8 Rhetorical Feature ‚hyperbole‘ and r23 provides support for the INT7 Interpretament.

### (more following ...)

