## <a href="http://www.insa-toulouse.fr/" ><img src="http://www.math.univ-toulouse.fr/~besse/Wikistat/Images/Logo_INSAvilletoulouse-RVB.png" style="float:left; max-width: 80px; display: inline" alt="INSA"/> |  [*Mathématiques Appliquées*](http://www.math.insa-toulouse.fr/fr/index.html), [`Science des Données`](http://www.math.insa-toulouse.fr/fr/enseignement.html)

# Science des Données & Statistique

### [Lire plus...](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-lm-Intro-Stat_SD.pdf)

Schématiquement, la **Science des Données** est définie autour d'une *agrégation de compétences* en Informatique (langage comme [R](href="https://cran.r-project.org/) et [Python](https://www.python.org/) , gestion des données, calcul parallèle...), Statistique (exploration, estimation test, modélisation, prévision) Apprentissage Machine (prévision), Mathématiques (probabilités, optimisation, analyse fonctionnelle, graphes...). 

Son **apprentissage** est acquis par l'intermédiaire de scénarios d'analyse de données réelles, ou *tutoriel*, présentés sous forme de *calepins* ([*jupyter notebooks*](http://jupyter.org/)) en [R](href="https://cran.r-project.org/) ou [Python](https://www.python.org/). Voir à ce sujet le [livre de référence](https://www.inferentialthinking.com/) du cours [*Fondations of Data Science*](http://data8.org/) de l'UC Berkley.

Cette **pratique** est **indispensable** mais masque les *aspects théoriques* (mathématiques, statistiques): une *formule* est remplacée par un commande ou fonction en Python ou R, une *démonstration* par l'exécution d'exemples dans un calepin.

Pour offrir de la *profondeur*, plus de compréhension, à cette (auto)-formation, les calepins renvoient (liens hypertextes) systématiquement à des **vignettes "théoriques"**  du site [wikistat.fr](http://wikistat.fr/) exposant (cours) les méthodes et algorithmes concernés.

Il ne s'agit pas simplement de pouvoir exécuter une méthode, un algorithme, il est important d'en **comprendre les propriétés**, conditions d'utilisation et limites.

# Saison 2 [*Exploration Statistique*](\http://wikistat.fr)

### [Introduction plus détaillée](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-m-Intro-ExploMultidim.pdf)

## Objectifs

Cette saison est consacrée à l'apprentisage des *méthodes exploratoires multidimensionnelles*: analyse en composantes principales, factorielle discriminante, des correspondances, postionnement multidimensionnel, factorisaiton non négative, classification non-supervisée (*clustering*) par *k-means*, CAH, DBSCAN, mélanges gaussiens.

## Prérequis
Avoir acquis les compétences afférentes ou revenir sur des épisodes précédents:

- [Outils Statistiques de base](https://github.com/wikistat/StatElem)

## <FONT COLOR="Red"> Déroulement de l'UF *Exploration et logiciels Statistiques* </font>

Cette saison est découpée en une séquence de six épisodes constitués de cours et travaux dirigés ou pratiques (par binome) avec un ordinateur.

Les cours présentent les différentes méthodes développées dnas les vignettes de [`wikistat.fr`](http://wikistat.fr/index-wikistat.html)

Les séances de travaux dirigés mettent en application les différentes méthodes d'exploration et de classification supervisée sur des données de plus en plus réalistes.

Les séances de travaux pratiques sont consacrées à l'apprentissage des langages: R et python ainsi qu'à une introduction au logiciel SAS. 

Penser à **utiliser au mieux le temps de chaque séance** en
 
- intégrant les différentes étapes la réalisation du projet sur l'analyse des données de [courriels](https://github.com/wikistat/Exploration/blob/master/Spam/) qui constituent un *fil rouge* tout au long de cette saison 2,
- consultant les autres cas d'usage (sujets d'examen) disponibles.

***N.B.*** Le cas d'usage de gestion de la relation client: [`GRC Visa Premier`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa) permet d'illustrer presque toutes les méthodes (ACP, AFCM, classification) sur des données réelles. Il existe des tutoriels en [SAS](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-scenar-explo-visa.pdf), [R](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) et [Pyhton](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb), réalisant les traitements équivalents. **S'inspérer de celui en python** pour la réalisation du projet.

**Evaluation**: Examen sur table analogue aux cas d'usage ci-dessous et rendu du projet sous la forme d'un calepin.

## Pour aller plus loin

- [Apprentissage Machine / Statistique](https://github.com/wikistat/Apprentissage)
- [Technologies des grosses data](https://github.com/wikistat/Ateliers-Big-Data) (Spark, XGBoost, Keras...)

## Épisodes
Les épisodes alternent apprentissage des méthodes et initiations aux langages (R, Pyhton). Une introduction à SAS est présente compte tenu de sa toujours forte uilisation dans de grandes entreprises.


### Épisode 1 Introduction
- [Introduction](http://wikistat.fr/pdf/st-m-Intro-ExploMultidim.pdf) à l'exploration multidimensionnelle
- [Description unidimensionnelle](http://wikistat.fr/pdf/st-l-des-uni.pdf)
- [Description bidimensionnelle](http://wikistat.fr/pdf/st-l-des-bi.pdf)
- **TP Log1** initiation à SAS
   - [Prise en main de SAS](https://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-tutor1-sas-init.pdf)
   - [SAS de base](http://wikistat.fr/pdf/st-tutor2-sas-gestion.pdf)
- **TP Log2** Pratique de R
   - Consulter le [document ](https://github.com/wikistat/Intro-R) (`README`) pour installer le noyau `IRkernel` afin de pouvoir utiliser R dans Jupyter.
   - Exécuter les 4 calepins du dépôt d'[Initiation à R](https://github.com/wikistat/Intro-R)

### Épisode 2 Analyse en Composantes Principales
- [Analyse en Composantes Principales](http://wikistat.fr/pdf/st-m-explo-acp.pdf)
- **TP Explo1** 
   - Cal1: [de la SVD à l'ACP, exemples](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal1-R-SVDtoACP.ipynb)
   - Données GRC de banque: [*data muning*](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb)
- **TP Log3** 
    - [SAS/Graph](http://wikistat.fr/pdf/st-tutor3-sas-graph.pdf) 
    - [Macros SAS](http://wikistat.fr/pdf/st-tutor4-sas-macros.pdf)
- **TP Explo2 ACP** 
    - ACPs en SAS: [données cubiques](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-scenar-explo2-acp-temp-cube.pdf)
    - Données GRC de banques: [ACP](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb)


### Épisode 3 Analyse Factorielle Discriminante
- [Analyse Factorielle Disciminante](http://wikistat.fr/pdf/st-m-explo-afd.pdf)
- **TP Log 4**
   - [Introduction à Python](https://github.com/wikistat/Intro-Python) Calepin 1
- **TP Explo 3**
   - Cal2 [de l'ACP à l'AFD, exemples](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal2-R-ACPtoAFD.ipynb)
   - AFD en SAS: [données socioéconomiques](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-scenar-explo3-afd-depart.pdf)
- **TP Log 5**
   - [Introduction à Python](https://github.com/wikistat/Intro-Python) Calepin 2

### Épisode 4 Analyse des Correspondances simple et Multiple
- [Analyse Factorielle simple](http://wikistat.fr/pdf/st-m-explo-afc.pdf) des Correspondances
- [Analyse Factorielle multiple](http://wikistat.fr/pdf/st-m-explo-afcm.pdf) des Correspondances
- **TP Explo 4**
    - Cal3 [de la SVD à l'AFC, exemple](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal3-R-SVDtoAFC.ipynb)
- **TP Explo 5**: 
    - Cal4 [de l'AFC à l'AFCM, exemples](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal4-R-AFCtoAFCM.ipynb)
    - AFCM avec SAS: [variables avec interaction](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-scenar-explo5-afcm.pdf)
    - Données GRC de banques: [AFCM](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb)

### Épisode 5 Classification non supervisée et Positionnement Multidimensionnel
- [Classification non supervisée](http://wikistat.fr/pdf/st-m-explo-classif.pdf) (*k-means*, CAH, DBSCAN)
- [Positionnement Multidimensionnel](http://wikistat.fr/pdf/st-m-explo-mds.pdf) (*MDS*) 
- **TP Explo 6**: 
    - Cal5 [Classification non supervisée](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal5-R-Classif.ipynb) et représentations
    - Données GRC de banques: [Classification](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb)
- **TP Log  6**
    - [Introduction à Python](https://github.com/wikistat/Intro-Python) Calepin 4

### Épisode 6 Factorisation de Matrice et Projet
- [Factorisation non négative de matrice](http://wikistat.fr/pdf/st-m-explo-nmf.pdf)
- **TP Log 7**
     - [Introduction à Python](https://github.com/wikistat/Intro-Python) Calepins 3 et 5
- **TP Explo 7** NMF
     - Cal6 [NMF et recommandation](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal6-R-NMF.ipynb)
     - Projet: courriel
- **TP Explo 8**
    - **Projet** à rendre avant **Jeudi 18/01/2018 18h**. Reproduire en Python le calepin R d'[exploration des pourriels](https://github.com/wikistat/Exploration/blob/master/Spam/). S'inspirer du [cas d'usage `GRC Visa Premier`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa) dont un calepin est réalisé en python. Rendre le calepin en Python avec une synthèse subtantielle de la démarche et des principaux résultats obtenus.


## Cas d'usage (sujets d'examen)
Chaque dossier concerne un jeu de données et contient un calepin (*notebooks*) au format .ipynb à télécharger et ouvrir dans *Jupyter*. Ceux-ci suivent le déroulement (questions) d'un examen passé.

- [`GRC-carte_Visa`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa). Exemple de Gestion de la Relation Client (GRC). Exploration multidimensionnelle: ACP, AFCM, segmentation de clientèle: classification non supervisée par CAH et réallocation dynamique; représentation, interprétation des classes. 
- [`Patrim-Insee`](https://github.com/wikistat/Exploration/tree/master/Patrim-Insee). Analyse des données d'une enquête INSEE sur le patrimoine des français. Exploration multidimensionnelle: AFCM, segmentation: classification non supervisée par CAH; représentation, interprétation des classes.
- [`DiagCoro`](https://github.com/wikistat/Exploration/blob/master/Diag-coro/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 270 patients ayant consulté pour douleur thoracique et présentant ou pas une insuffisance coronarienne.
- [`AdultCensus`](https://github.com/wikistat/Exploration/blob/master/Adult-Census/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 32561 citoyens américains.
- [`Encours-Boursiers`](https://github.com/wikistat/Exploration/blob/master/Encours-Boursiers/) Exploration en R (ACP, CAH, *k* plus proches voisins) d'un ensemble de 252 encours boursiers observés à Paris de 2000 à 2009.
- [`Cachets-Hittites`](https://github.com/wikistat/Exploration/blob/master/Cachets-Hittites/) Exploration avec R d'un corpus de 118 cachets hittites décrits par 12 variables plus la présence de hiéroglyphes. Peut-on prévoir la datation?
- [`Pourriels`](https://github.com/wikistat/Exploration/blob/master/Spam/) exploration et caractérisation d'un corpus de courriels afin d'identifier les pourriels.

