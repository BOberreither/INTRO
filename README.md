# INTRO - the Intertextual, Interpictorial, and Intermedial Relations Ontology

Ontology IRI: https://w3id.org/lso/intro/currentbeta#

Latest Version IRI: https://w3id.org/lso/intro/beta202506#

## NEWS

**NEW VERSION ONLINE - INTRO extended to include INTERMEDIALITY**

**PROUD TO BE AWESOME:** INTRO is on the CLARIAH list of <a href="https://github.com/CLARIAH/awesome-humanities-ontologies">Awesome Ontologies for Digital Humanities</a>!

**PROJECTS FEATURING INTRO:** Projects already using or currently implementing INTRO:
- <a href="https://semantickraus.acdh.oeaw.ac.at">SemanticKraus - Connecting Kraus Scholarship to the Semantic Web</a>
- <a href="https://www.romanticperiodpoetry.org/">Romantic Period Poetry Archive</a>
- <a href="https://www.researchgate.net/publication/378862360_Paradigmen_einer_digitalen_Rezeptionswissenschaft_Produktiv-literarische_Rezeptionsphanomene_als_Linked_Data_am_Beispiel_der_deutschsprachigen_literarischen_Sappho-Rezeption">German-language literary reception of Sappho</a>


**PUBLICATIONS/TALKS ON INTRO:**
- When Worlds Collide: A Literary Linked Open Data Model Critiqueathon. Workshop by Ingo Boerner et al., DH2025, 15 July 2025 (9.00-12.30), NOVA FCSH/Universidade NOVA de Lisboa
- Oberreither, B. (2024), Text and Image Are the Same, or Close Enough at Least. Reflections on
Expanding an Ontology for Intertextual Relations Towards Intermediality. Presentation. Linked Open Data and
Literary Studies, Nov. 19–Nov. 20, 2024, Berlin [see <a href="https://www.temporal-communities.de/research/digital-communities/resources/lod-resources/Bernhard_Oberreither_Text_and_Image.pdf">here</a> for slides].
- Oberreither, B. (2023), ‚A Linked Data Vocabulary for Intertextuality in Literary Studies, with
Some Considerations Regarding Digital Editions‘, in H. Klug und R. Bleier (Hg.), Digitale Edition
in Österreich. Schriftenreihe des DIE, Bd. 16. Norderstedt: Books on Demand, S. 69–87. URN:
urn:nbn:de:hbz:38-704496, URL: https://kups.ub.uni-koeln.de/70449/.
- Oberreither, B. (2020), ‚Zwei Überlegungen zur Konzeption einer Linked-Data-Ontologie für die
Literaturwissenschaften‘, in M. Ernst u. a. (Hg.), digital humanities austria 2018. empowering
researchers (DHA 2018). Proceedings, S. 134–139. DOI: https://doi.org/10.1553/dha-proceedings2018.
- Oberreither, B. (2019), INTRO – The Intertextual Relations Ontology. Workshop, organized by KONDE (Kompetenznetzwerk
Digitale Edition), Jan. 15, 2019, Graz.
- Oberreither, B. (2018), Linked Data and Knowledge Modelling in Literary Studies. An Ontology for the Representation
of Knowledge on Intertextuality in Literature. Presentation. EADH 2018 (European Association
for Digital Humanities Conference), Dec. 6–Dec. 9, 2018, Galway.


## CONTENTS

   <a href="#whatisintro">What is INTRO?</a>

   <a href="#scope">Scope</a>

   <a href="#modelingprinciples">Modeling Principles</a>

   <a href="#granularity">Granularity</a>

   <a href="#alignments">Ontology Alignment</a>

   <a href="#socomplicated"/>(By the way: Does it have to be so complicated?)</a>

   <a href="#whatsnext">What's next?</a>

   <a href="#further">INTRO - Further Information</a>

   <a href="#usecases">Typical Usecases (new content!)</a>


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

INTRO is designed as extension of [CIDOC CRM](https://cidoc-crm.org/html/cidoc_crm_v7.1.3.html) and [LRMoo](https://www.cidoc-crm.org/extensions/lrmoo/html/LRMoo_v1.0.html) (previously known as FRBRoo), it is also aligned with the [Web Annotation Ontology](https://www.w3.org/ns/oa).

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

## <a name="usecases"/>TYPICAL USE CASES

### A text refers to an image.
<details>
   <summary>Click for image</summary>
   
   ![alt text](https://raw.githubusercontent.com/BOberreither/INTRO/refs/heads/master/img/DLB_Text-Image.svg)

</details>

<details>
   <summary>Click for code snippet</summary>  

```
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .      
@prefix dlb: <http://dlb.org/data/> .
@prefix intro: <https://w3id.org/lso/intro/beta202408#> .
@prefix lrm: <http://iflastandards.info/ns/lrm/lrmoo/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

dlb:rel0001 a intro:INT33_IntermedialRelation ;
    intro:R12_hasReferredToEntity dlb:art106 ;
    intro:R13_hasReferringEntity dlb:text945 ;
    intro:R19_hasType dlb:covertAllusion .

dlb:art106 a lrm:F2_Expression ;
    rdfs:label "Giovanni Battista Piranesi, \"Carceri d'Invenzione\" (Etchings)" ;
    lrm:R17i_was_created_by dlb:art106_creation .

dlb:art106_creation a lrm:F28_Expression_Creation ;
    rdfs:label "Creation of \"Carceri d'Invenzione\" (Etchings)" ;
    crm:P14_carried_out_by dlb:pers58 .

dlb:covertAllusion a intro:INT12_CommonInterrelationTypes ;
    rdfs:label "Covert Allusion" .

dlb:pers255 a crm:E21_Person ;
    rdfs:label "Schmidt, Arno" .

dlb:pers58 a crm:E21_Person ;
    rdfs:label "Piranesi, Giovanni Battista" .

dlb:text945 a lrm:F2_Expression ;
    rdfs:label "Arno Schmidt, \"Der junge Herr Siebold\"" ;
    lrm:R17i_was_created_by dlb:text945_creation .

dlb:text945_creation a lrm:F28_Expression_Creation ;
    crm:P14_carried_out_by dlb:pers255 .
```

</details>


### A text passage refers to an image.
<details>
   <summary>Click for image</summary>

   ![alt text](https://raw.githubusercontent.com/BOberreither/INTRO/refs/heads/master/img/DLB_TextPassage-Image.svg)
   
</details>

<details>
   <summary>Click for code snippet</summary>

   ```
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix dlb: <http://dlb.org/data/> .
@prefix intro: <https://w3id.org/lso/intro/beta202408#> .
@prefix lrm: <http://iflastandards.info/ns/lrm/lrmoo/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

dlb:rel0001 a intro:INT33_IntermedialRelation ;
    intro:R12_hasReferredToEntity dlb:art106 ;
    intro:R13_hasReferringEntity dlb:passage1480 ;
    intro:R19_hasType dlb:covertAllusion .

dlb:text945_creation a lrm:F28_Expression_Creation ;
    lrm:R17i_was_created_by dlb:text945 ;
    crm:P14_carried_out_by dlb:pers255 .

dlb:art106 a lrm:F2_Expression ;
    rdfs:label "Giovanni Battista Piranesi, \"Carceri d'Invenzione\" (Etchings)" ;
    lrm:R17i_was_created_by dlb:art106_creation .

dlb:art106_creation a lrm:F28_Expression_Creation ;
    rdfs:label "Creation of \"Carceri d'Invenzione\" (Etchings)" ;
    crm:P14_carried_out_by dlb:pers58 .

dlb:covertAllusion a intro:INT12_CommonInterrelationTypes ;
    rdfs:label "Covert Allusion" .

dlb:passage1480 a intro:INT21_TextPassage ;
    rdfs:label "Text Passage from \"Der junge Herr Siebold\"" ;
    intro:R30i_isTextPassageOf dlb:text945 ;
    intro:R41_hasLocation "S. 319" ;
    intro:R44_hasWording """Schwere Träume zogen über dem sich unruhig Hin- und Herwerfenden auf. [...]
Dann wurde es allmählich klarer, und Friedrich fand sich in einer unendlichen Halle, deren strenges Gewölbe sich in dämmriger Höhe verlor; auf dem steinernen Boden standen ihm unbekannte Maschinen von unerhörten Ausmaßen, die alle Kraft der Welt in sich aufgespeichert zu tragen schienen, ungeheure Hebel reckten sich, schwere Schwungräder starrten, armdicke Seile wanden sich um fremdartige Walzen. Er stand regungslos in dem rätselhaften Schimmer und sah, erst durch ein leises Geräusch zu seiner Rechten aufmerksam gemacht, einen riesigen Strebepfeiler, um den sich ein Stück Treppe wand, die seltsamerweise unvermittelt abbrach, und einen Mann, der mit leisem Keuchen emporstieg. Plötzlich erkannte er seinen Freund Leubelfing in ihm, und wollte ihm eben freudig zurufen, als er den Ausdruck unsäglicher Verzweiflung in dessen Gesicht erkannte. Unwillkürlich richtete er den Blick nach oben, und sah das neue, gleich kurze Stück einer Treppe, auf dem er wiederum eine Gestalt entdeckte, die sich mit verängsteten Augen nach ihm umsah, und wieder war es sein Freund. Er blickte noch höher, und sah eine dritte Reihe von Stufen, auf welcher der Unselige noch weiter emporklomm und jetzt schon am Rande des Abgrundes stand. Wieder höher und wieder höher, bis sich die höhnischen Stiegen und der ächzende Leubelfing im strengen Dämmer der unermeßlichen Wölbungen verloren.""" .

dlb:pers255 a crm:E21_Person ;
    rdfs:label "Schmidt, Arno" .

dlb:pers58 a crm:E21_Person ;
    rdfs:label "Piranesi, Giovanni Battista" .

dlb:text945 a lrm:F2_Expression ;
    rdfs:label "Arno Schmidt, \"Der junge Herr Siebold\"" .

```



</details>


### A semantic feature actualized on a text passage refers to an image.
<details>
   <summary>Click for image</summary>

![alt text](https://raw.githubusercontent.com/BOberreither/INTRO/refs/heads/master/img/DLB_Textfeature-Image.svg)
   
</details>

<details>
   <summary>Click for code snippet</summary>

```
@prefix crm: <http://www.cidoc-crm.org/cidoc-crm/> .
@prefix dlb: <http://dlb.org/data/> .
@prefix intro: <https://w3id.org/lso/intro/beta202408#> .
@prefix lrm: <http://iflastandards.info/ns/lrm/lrmoo/> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

dlb:architecture a intro:INT9_SemanticFeature ;
    rdfs:label "Semantic Feature: Architecture" .

dlb:passage1480 a intro:INT21_TextPassage ;
    rdfs:label "Text Passage from \"Der junge Herr Siebold\"" ;
    intro:R18_showsActualization dlb:passage1480_act ;
    intro:R30i_isTextPassageOf dlb:text945 ;
    intro:R41_hasLocation "S. 319" ;
    intro:R44_hasWording """Schwere Träume zogen über dem sich unruhig Hin- und Herwerfenden auf. [...]
Dann wurde es allmählich klarer, und Friedrich fand sich in einer unendlichen Halle, deren strenges Gewölbe sich in dämmriger Höhe verlor; auf dem steinernen Boden standen ihm unbekannte Maschinen von unerhörten Ausmaßen, die alle Kraft der Welt in sich aufgespeichert zu tragen schienen, ungeheure Hebel reckten sich, schwere Schwungräder starrten, armdicke Seile wanden sich um fremdartige Walzen. Er stand regungslos in dem rätselhaften Schimmer und sah, erst durch ein leises Geräusch zu seiner Rechten aufmerksam gemacht, einen riesigen Strebepfeiler, um den sich ein Stück Treppe wand, die seltsamerweise unvermittelt abbrach, und einen Mann, der mit leisem Keuchen emporstieg. Plötzlich erkannte er seinen Freund Leubelfing in ihm, und wollte ihm eben freudig zurufen, als er den Ausdruck unsäglicher Verzweiflung in dessen Gesicht erkannte. Unwillkürlich richtete er den Blick nach oben, und sah das neue, gleich kurze Stück einer Treppe, auf dem er wiederum eine Gestalt entdeckte, die sich mit verängsteten Augen nach ihm umsah, und wieder war es sein Freund. Er blickte noch höher, und sah eine dritte Reihe von Stufen, auf welcher der Unselige noch weiter emporklomm und jetzt schon am Rande des Abgrundes stand. Wieder höher und wieder höher, bis sich die höhnischen Stiegen und der ächzende Leubelfing im strengen Dämmer der unermeßlichen Wölbungen verloren.""" .

dlb:rel0001 a intro:INT33_IntermedialRelation ;
    intro:R12_hasReferredToEntity dlb:art106 ;
    intro:R13_hasReferringEntity dlb:passage1480_act ;
    intro:R19_hasType dlb:covertAllusion .

dlb:art106 a lrm:F2_Expression ;
    rdfs:label "Giovanni Battista Piranesi, \"Carceri d'Invenzione\" (Etchings)" ;
    lrm:R17i_was_created_by dlb:art106_creation .

dlb:art106_creation a lrm:F28_Expression_Creation ;
    rdfs:label "Creation of \"Carceri d'Invenzione\" (Etchings)" ;
    crm:P14_carried_out_by dlb:pers58 .

dlb:covertAllusion a intro:INT12_CommonInterrelationTypes ;
    rdfs:label "Covert Allusion" .

dlb:pers255 a crm:E21_Person ;
    rdfs:label "Schmidt, Arno" .

dlb:pers58 a crm:E21_Person ;
    rdfs:label "Piranesi, Giovanni Battista" .

dlb:text945 a lrm:F2_Expression ;
    rdfs:label "Arno Schmidt, \"Der junge Herr Siebold\"" ;
    lrm:R17i_was_created_by dlb:text945_creation .

dlb:text945_creation a lrm:F28_Expression_Creation ;
    crm:P14_carried_out_by dlb:pers255 .

dlb:passage1480_act a intro:INT2_ActualizationOfFeature .

```

   
</details>


### Text A refers to text B.
Modeling: An `INT31 Intertextual Relation` `R13 has referring entity` Text A and `R12 has referred to entity` Text B, both texts being - for instance - F2 Expressions.

### Text A refers to Text B  by showing a certain text feature, e.g.: a fictional character that occurred in text B.
Modeling: An `INT2 Actualization of Feature` is `r18 found on` a text A - e.g. a F2 Expression -, and `r17 actualizes` an `INT9 Semantic Feature` (e.g. ‚villain‘, ‚Faust‘, …).<br>
Also, an `INT2 Actualization of Feature` is `r18 found on` another text, text B - e.g. a F2 Expression -, and `r17 actualizes` the same `INT9 Semantic Feature`.<br>
An acutalization of `INT Interpretation` `R21 identifies` an `INT31 Intertextual Relation` which `R13 has referring entity` `INT2 Actualization of Feature` (on text A) and `R12 has referred to entity` `INT2 Actualization of Feature` (on Text B).

### A feature of a passage in text A can be explained with the help of some standard reference book (text B) - for instance: a rhetorical figure with the help of Lausberg's standard work on the topic.
Modeling (one option): 
An `INT2 Actualization of Feature` of an `INT Interpretation` in text A `identifies` an `INT2 Actualization of Feature` `r18 found on` an `INT21 Text Passage` - which `R30 is text passage of` text B, an F2 Expression -, and `r17 actualizes` an `INT8 Rhetorical Feature` (e.g. a ‚hyperbole‘). <br>
Another `INT2 Actualization of Feature` is `r18 found on` an `INT21 Text Passage` which `R30 is text passage of` text B (e.g. Lausberg's standard work), an F24 Publication Expression -, and `r17 actualizes` an `INT9 Semantic Feature`, a definition. This `INT2 Actualization of Feature` `r4 defines` the `INT8 Rhetorical Feature` ‚hyperbole‘ and `r23 provides support for` the `INT Interpretation`.

### (more following ...)

