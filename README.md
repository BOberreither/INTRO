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

## Two Examples
Here are two examples of how classes and properties of INTRO work together to model common acts of scholarly practice.

### Modelling a Reference

 

### Modelling an Interpretive Act

## What's next?
The ontology is a work in progress. Pending work includes:
- further alignment with relevant ontologies (CiTO for the classification of scholarly citation acts, FRBRoo for bibliographical data; CIDOC, DoCO etc.); 
- testing, refining and expanding the ontology in the course of one or more case studies
- alignment with TEI-Standards
- reinforcing self-referentiality: By now, the ontology manages to depict scholarly citation acts if they are found in a statement on a pre-existing paper, meaning: the scholarly statement itself has to be text-based. By introducing a new class (‘scholarly reference’ in addition to “reference”) and extending the use of some properties (e.g. “has referring entity”) to statements made in RDF, the ontology will provide users with a valuable option.
- differentiation between the core concepts of the ontology and the extensions that are non-essential and in fact depend on the respective application (i.e. between the ontology any data set can use among other ontologies and an ontology that is ‘saturated’ towards self-sufficiency). In this process, some of the imports will probably be removed.

Feedback is welcome! - Bernhard.Oberreither@univie.ac.at


