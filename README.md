## <a href="http://www.insa-toulouse.fr/" ><img src="http://www.math.univ-toulouse.fr/~besse/Wikistat/Images/Logo_INSAvilletoulouse-RVB.png" style="float:left; max-width: 80px; display: inline" alt="INSA"/> |  [*Mathématiques Appliquées*](http://www.math.insa-toulouse.fr/fr/index.html), [`Science des Données`](http://www.math.insa-toulouse.fr/fr/enseignement.html)

# Science des Données & Statistique

Un *buzz word*: *big data*, *data science*, *machine learning* en chasse un autre et les battages médiatiques se succèdent jusqu'au dernier en date: **intelligence artificielle** (IA). Appellation ancienne remise au premier plan par les succès d'AlphaGo, des véhicules autonomes et aussi, surtout, de la rencontre de la croissance exponentielle des masses de données avec les algorihtmes d'apprentissage statistique, dont le *deep learning*, pour les exploiter, les valoriser. 

### [Lire plus...](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-lm-Intro-Stat_SD.pdf)

Schématiquement, la **Science des Données** est définie autour d'une *agrégation de compétences* en Informatique (langage comme [R](href="https://cran.r-project.org/) et [Python](https://www.python.org/) , gestion des données, calcul parallèle...), Statistique (exploration, estimation test, modélisation, prévision) Apprentissage Machine (prévision), Mathématiques (probabilités, optimisation, analyse fonctionnelle, graphes...). 

Son **apprentissage** est acquis par l'intermédiaire de scénarios d'analyse de données réelles, ou *tutoriel*, présentés sous forme de *calepins* ([*jupyter notebooks*](http://jupyter.org/)) en [R](href="https://cran.r-project.org/) ou [Python](https://www.python.org/). Voir à ce sujet le [livre de référence](https://www.inferentialthinking.com/) du cours [*Fondations of Data Science*](http://data8.org/) de l'UC Berkley.

Cette **pratique** est **indispensable** mais masque les *aspects théoriques* (mathématiques, statistiques): une *formule* est remplacée par un commande ou fonction en Python ou R, une *démonstration* par l'exécution d'exemples dans un calepin.

Pour offrir de la *profondeur*, plus de compréhension, à cette (auto)-formation, les calepins renvoient (liens hypertextes) systématiquement à des **vignettes "théoriques"**  du site [wikistat.fr](http://wikistat.fr/) exposant (cours) les méthodes et algorithmes concernés.

Il ne s'agit pas simplement de pouvoir exécuter une méthode, un algorithme, il est important d'en **comprendre les propriétés**, conditions d'utilisation et limites.

# Saison 2 [*Exploration Statistique*](\http://wikistat.fr)

### [Introduction plus détaillée](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-m-Intro-ExploMultidim.pdf)

## Objectifs

Cette saison est consacrée à l'apprentissage des *méthodes exploratoires multidimensionnelles* indispensables à la préparation des données (*data munging*): analyse en composantes principales, factorielle discriminante, des correspondances, postionnement multidimensionnel, factorisaiton non négative, classification non-supervisée (*clustering*) par *k-means*, CAH, DBSCAN, mélanges gaussiens. 

## Prérequis
Avoir acquis les compétences afférentes ou revenir sur des épisodes précédents:

- [Outils Statistiques de base](https://github.com/wikistat/StatElem)

## <FONT COLOR="Red"> Déroulement de l'UF: *Logiciels et Méthodes d'Exploration Statistique* </font>

Cette saison est découpée en une séquence de six épisodes constitués de cours et travaux dirigés ou pratiques avec un ordinateur.

Les cours présentent les différentes méthodes développées dans les vignettes de [`wikistat.fr`](http://wikistat.fr/)

Les séances de travaux dirigés mettent en application les différentes méthodes d'exploration et de classification supervisée sur des données de plus en plus réalistes donc volumineuses et complexes.

Les séances de travaux pratiques sont consacrées à l'apprentissage des langages: R et Python. Pour de nombreuses raisons, le *logiciel SAS* a été laissé de côté mais de nombreux [tutoriels](http://wikistat.fr/pdf/st-tutor1-sas-init.pdf) en permettent l'auto-apprentissage. 

**Utiliser au mieux le temps de chaque séance**:
 
- Réaliser au fur et à mesure les différentes étapes du projet sur l'analyse des données de [courriels](https://github.com/wikistat/Exploration/tree/master/Spam), qui constitue un *fil rouge* tout au long de cette saison 2,
- consultant les autres cas d'usage (sujets d'examen) disponibles.

***N.B.*** Le cas d'usage de gestion de la relation client: [`GRC Visa Premier`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa) permet d'illustrer presque toutes les méthodes (ACP, AFCM, classification) sur des données réelles. Il existe des tutoriels en [SAS](http://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-scenar-explo-visa.pdf), [R](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) et [Pyhton](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb), réalisant les traitements équivalents. **S'inspérer de celui en python** pour la réalisation du projet.

**Evaluation**: contrôle sur table analogue aux cas d'usage ci-dessous et rendu du projet sous la forme d'un calepin introduite par une synthèse détaillée.

## Pour aller plus loin

- [Apprentissage automatique / Statistique](https://github.com/wikistat/Apprentissage)
- [Technologies des grosses data](https://github.com/wikistat/Ateliers-Big-Data) (Spark, XGBoost, Keras...)

## Épisodes
Les épisodes alternent apprentissage des méthodes et initiations aux langages (R, Python). L'[introduction à SAS](http://wikistat.fr/pdf/st-tutor1-sas-init.pdf) est accessible en auto-apprentissage.


### Épisode 1 Introduction
- [Introduction](https://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-lm-Intro-Stat_SD.pdf) De la Stat à l'IA, quels logiciels et langages
- [Description unidimensionnelle](http://wikistat.fr/pdf/st-l-des-uni.pdf)
- [Description bidimensionnelle](http://wikistat.fr/pdf/st-l-des-bi.pdf)
- **TP 1** 
   - Consulter le [document ](https://github.com/wikistat/Intro-R) (`README`) pour installer le noyau `IRkernel` afin de pouvoir utiliser R dans Jupyter.
   - [Pratique de R](https://github.com/wikistat/Intro-R): 4 calepins
- **TP 2** 
   - [Python Tuto1](https://github.com/wikistat/Intro-Python/blob/master/Cal1-introPython.ipynb)  Introduction

### Épisode 2 Analyse en Composantes Principales
- [Introduction](http://wikistat.fr/pdf/st-m-Intro-ExploMultidim.pdf) à l'exploration multidimensionnelle et aux logiciels, langages statistiques
- [Analyse en Composantes Principales](http://wikistat.fr/pdf/st-m-explo-acp.pdf) 
- **TP 3** 
   - [ACP en R ](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal1-R-SVDtoACP.ipynb): SVD, jouet, températures
   - Données GRC de banque: [*data muning*](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) en R
- **TP 4** 
   - [Python Tuto2](https://github.com/wikistat/Intro-Python/blob/master/Cal2-PythonPandas.ipynb): data munging avec `pandas`
   - GRC: [*data munging*](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb) en python.
- **TP 5** 
    - [ACP en Python ](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal1-Python-SVDtoACP.ipynb) initiation
    - GRC: [ACP](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) en R
- **TP 6** 
   - [Python Tuto3](https://github.com/wikistat/Intro-Python/blob/master/Cal3-PythonGraphes.ipynb) graphes
   - GRC: [ACP](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb) en python

### Épisode 3 Analyse Factorielle Discriminante
- [Analyse Factorielle Disciminante](http://wikistat.fr/pdf/st-m-explo-afd.pdf)   
- **TP 7**
   - [AFD en R](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal2-R-ACPtoAFD.ipynb): iris, départements
   - [AFD en Python](https://github.com/wikistat/Exploration/blob/master/HumanActivityRecognition/Explo-Python-HAR-metier.ipynb): *human activity recognition*
- **TP 8**
   - [Python Tuto 4](https://github.com/wikistat/Intro-Python/blob/master/Cal4-PythonProg.ipynb) programmation avancée
   
### Épisode 4 Analyse des Correspondances simple et Multiple
- [Analyse Factorielle simple](http://wikistat.fr/pdf/st-m-explo-afc.pdf) des Correspondances
- [Analyse Factorielle multiple](http://wikistat.fr/pdf/st-m-explo-afcm.pdf) des Correspondances
- **TP 9**
    - [AFC en R](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal3-R-SVDtoAFC.ipynb): SVD, vacances
    - [AFCM en R](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal4-R-AFCtoAFCM.ipynb): chiens, cancer
- **TP 10**: 
    - [AFCM en python](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal4-Python-AFCM.ipynb) titanic
    - GRC: [AFCM](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) en R
    - GRC: [AFCM](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb) en python

### Épisode 5 Classification non supervisée et Positionnement Multidimensionnel
- [Classification non supervisée](http://wikistat.fr/pdf/st-m-explo-classif.pdf) (*k-means*, CAH, DBSCAN)
- [Positionnement Multidimensionnel](http://wikistat.fr/pdf/st-m-explo-mds.pdf) (*MDS*) 
- **TP 11**
    - [Classification avec R](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal5-R-Classif.ipynb): villes, OCDE, chiens
    - GRC: [Classification](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-R-Visa.ipynb) avec R
- **TP 12** 
    - [Classification avec Python](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal5-R-Classif.ipynb) 
    - GRC: [Classification](https://github.com/wikistat/Exploration/blob/master/GRC-carte_Visa/Explo-Python-Visa.ipynb) avec python

### Épisode 6 Mélanges gaussiens et Factorisation de Matrice
- [Mélanges gaussiens](http://wikistat.fr/pdf/st-m-datSc4-EMmixt.pdf)
- [Factorisation non négative de matrice](http://wikistat.fr/pdf/st-m-explo-nmf.pdf)
- **TP 13**
	 - [Mélanges gaussiens](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal5-R-Classif.ipynb) avec python, cartographie de [Mars](https://github.com/wikistat/Exploration/blob/master/Mars/)
     - [NMF avec R](https://github.com/wikistat/Exploration/blob/master/TutosRudim/Cal6-R-NMF.ipynb) apéro

### Projet
- **TP Explo 14 & 15**
- Rendre avant le **27/05/2019 18h**. 
- Reproduire en Python le calepin R d' [exploration de courriels](https://github.com/wikistat/Exploration/blob/master/Adult-Census/Explo-R-Spam.ipynb). S'inspirer du [cas d'usage `GRC Visa Premier`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa) dont un calepin est réalisé en python. Rendre le calepin en Python avec une synthèse subtantielle de la démarche et des principaux résultats obtenus; répondre aux différentes questions.

## Cas d'usage (sujets d'examen)
Chaque dossier concerne un jeu de données et contient un calepin (*notebooks*) au format .ipynb à télécharger et ouvrir dans *Jupyter*. Ceux-ci suivent le déroulement (questions) d'un examen passé.

- [`GRC-carte_Visa`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa). Exemple de Gestion de la Relation Client (GRC). Exploration multidimensionnelle: ACP, AFCM, segmentation de clientèle: classification non supervisée par CAH et réallocation dynamique; représentation, interprétation des classes. 
- [`Patrim-Insee`](https://github.com/wikistat/Exploration/tree/master/Patrim-Insee). Analyse des données d'une enquête INSEE sur le patrimoine des français. Exploration multidimensionnelle: AFCM, segmentation: classification non supervisée par CAH; représentation, interprétation des classes.
- [`DiagCoro`](https://github.com/wikistat/Exploration/blob/master/Diag-coro/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 270 patients ayant consulté pour douleur thoracique et présentant ou pas une insuffisance coronarienne.
- [`AdultCensus`](https://github.com/wikistat/Exploration/blob/master/Adult-Census/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 32561 citoyens américains.
- [`Encours-Boursiers`](https://github.com/wikistat/Exploration/blob/master/Encours-Boursiers/) Exploration en R (ACP, CAH, *k* plus proches voisins) d'un ensemble de 252 encours boursiers observés à Paris de 2000 à 2009.
- [`Cachets-Hittites`](https://github.com/wikistat/Exploration/blob/master/Cachets-Hittites/) Exploration avec R d'un corpus de 118 cachets hittites décrits par 12 variables plus la présence de hiéroglyphes. Peut-on prévoir la datation?
- [`Pourriels`](https://github.com/wikistat/Exploration/blob/master/Spam/) exploration et caractérisation d'un corpus de courriels afin d'identifier les pourriels.
- [`Mars`](https://github.com/wikistat/Exploration/blob/master/Mars/) Segmentation d'un image de mars par classifications non supervisées. Représentation de la carte géologique de la surface de Mars.
