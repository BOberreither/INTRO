# INTRO
INTRO - an <b>In</b>tertextual <b>R</b>elationships <b>O</b>ntology for literary studies
(work in progress)

## What is INTRO?
INTRO is an ontology for the field of literary studies for representing intertextual relations.
The term ‘intertextual relations is to be understood in the broadest sense. The domain of the ontology includes everything from the identification and characterization of concrete acts of literary (or scholarly) citations or allusions (etc.) to the identification of features that allow to include a text into a larger context (e.g. an epoch, a discourse, an oeuvre ...). INTRO also provides classes and properties necessary to link these findings to their theoretical background or to findings in other research literature, thus covering a large number of scholarly acts.

Here is a <a href="http://www.visualdataweb.de/webvowl/#iri=https://raw.githubusercontent.com/BOberreither/INTRO/master/INTRO_current.owl">link to a visualization</a> created with WebVOWL.

## What is it good for?
The ontology is intended to provide the means for 
- creating an RDF-layer that could accompany every ‘traditional’ paper in literary studies, modelling the findings of this paper in a machine-readable way.
- theoretically: formulating findings in the field of literary studies directly in RDF.

## Examples
Here are some examples of how INTRO's classes and properties work together to model common scholarly activities, most of which are - in one way or the other - essentially concerned with intertextual relationships. (Two examples are given, more examples follow.)

### Modelling an interpretive Act with INTRO
This diagram illustrates how INTRO depicts any basic interpretive act: A scholar identifies a certain feature in a text, say: a leitmotif (a semantic feature; features provided by INTRO include formal, rhetoric and semantic features). This act, the 'interpretament', is through different stages linked to the concrete text-passage as well as to the abstract notion of the literary 'work' in question. The diagram also shows how the interpretament is itself a feature actuailzed in a text (in this case: a research paper).

![alt text](https://github.com/BOberreither/INTRO/blob/master/INTRO_%20Modelling%20the%20Interpretament.jpg)

### Modelling an intertextual reference with INTRO
This diagram shows how an intertextual reference can be modelled with INTRO.
- In the bottom section you see the two texts linked by the reference, one referring to the other (here: concrete passages, could be wider: a reference to/from a work, a reference to a larger entity like a 'discourse' etc.).
- In the mid section you see 'the reference', which of course only exists as an abstract idea, an assumption (made by, for instance, a scholar), as well as (optional) the feature that provides the grounds for the reference (could be a formal feature linking the two texts in question, could be a certain motif etc.).
- In the upper section you see how the interpretive act of identifying a reference is modelled and linked to the text (the research paper) the interpretive act can be found in as well as to the specification of the type of the intertextual relationship identified. These types themselves, although abstract notions, have a (and are here linked to their) textual basis - the numerous definitions given in literary theory.

![alt text](https://github.com/BOberreither/INTRO/blob/master/INTRO_%20Modelling%20a%20Reference.jpg)


## What's next?
The ontology is a work in progress. Pending work includes:
- further alignment with relevant ontologies (CiTO for the classification of scholarly citation acts, FRBRoo for bibliographical data; CIDOC, DoCO etc.); 
- testing, refining and expanding the ontology in the course of one or more case studies
- alignment with TEI-Standards
- reinforcing self-referentiality: By now, the ontology manages to depict scholarly citation acts if they are found in a statement on a pre-existing paper, meaning: the scholarly statement itself has to be text-based. By introducing a new class (‘scholarly reference’ in addition to “reference”) and extending the use of some properties (e.g. “has referring entity”) to statements made in RDF, the ontology will provide users with a valuable option.
- differentiation between the core concepts of the ontology and the extensions that are non-essential and in fact depend on the respective application (i.e. between the ontology any data set can use among other ontologies and an ontology that is ‘saturated’ towards self-sufficiency). In this process, some of the imports will probably be removed.

Feedback is welcome! - Bernhard.Oberreither@univie.ac.at


