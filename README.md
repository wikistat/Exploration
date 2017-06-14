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

## Organisation

Excécuter les calepins de la saison en se référant aux vignettes "théoriques" lorsque c'est nécessaire. 

## Pour aller plus loin

- [Apprentissage Machine / Statistique](https://github.com/wikistat/Apprentissage)
- [Technologies des grosses data](https://github.com/wikistat/Ateliers-Big-Data) (Spark, XGBoost, Keras...)

## Épisodes (en travaux)
Chaque épisode associe apprentissage des méthodes et initiations aux langages (R, Pyhton). Une introduction à SAS est présente compte tenu de sa toujours forte uilisation dans de grandes entreprises.

### Épisode 1 
- [Initiation à R](https://github.com/wikistat/Intro-R)
- [Analyse en Composantes Principales](http://wikistat.fr/pdf/st-m-explo-acp.pdf)
- [Initiation à SAS](https://www.math.univ-toulouse.fr/~besse/Wikistat/pdf/st-tutor1-sas-init.pdf)

### Épisode 2 
- [Initiation à Python](https://github.com/wikistat/Intro-Python) Tutoriels 1 et 2
- [Analyse Factorielle Disciminante]()

### Épisode 3 
- [Initiation à Python](https://github.com/wikistat/Intro-Python) Tutoriel 3
- [Analyse Factorielle simple](http://wikistat.fr/pdf/st-m-explo-afc.pdf) des Correspondances
- [Analyse Factorielle multiple](http://wikistat.fr/pdf/st-m-explo-afcm.pdf) des Correspondances

### Épisode 4
- [Initiation à Python](https://github.com/wikistat/Intro-Python) Tutoriel 4
- [Classification non supervisée](http://wikistat.fr/pdf/st-m-explo-classif.pdf) (*k-means*, CAH, DBSCAN)
- [Positionnement Multidimensionnel](http://wikistat.fr/pdf/st-m-explo-mds.pdf) (*MDS*) 

### Épisode 5
- [Factorisation non négative de matrices](http://wikistat.fr/pdf/st-m-explo-nmf.pdf)

## Cas d'usage
Chaque dossier concerne un jeu de données et contient un calepin (*notebooks*) au format .ipynb à télécharger et ouvrir dans *Jupyter*.

- [`GRC-carte_Visa`](https://github.com/wikistat/Exploration/tree/master/GRC-carte_Visa). Exemple de Gestion de la Relation Client (GRC). Exploration multidimensionnelle: ACP, AFCM, segmentation de clientèle: classification non supervisée par CAH et réallocation dynamique; représentation, interprétation des classes. 
- [`Patrim-Insee`](https://github.com/wikistat/Exploration/tree/master/Patrim-Insee). Analyse des données d'une enquête INSEE sur le patrimoine des français. Exploration multidimensionnelle: AFCM, segmentation: classification non supervisée par CAH; représentation, interprétation des classes.
- [`DiagCoro`](https://github.com/wikistat/Exploration/blob/master/Diag-coro/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 270 patients ayant consulté pour douleur thoracique et présentant ou pas une insuffisance coronarienne.
- [`AdultCensus`](https://github.com/wikistat/Exploration/blob/master/Adult-Census/) Exploration en R. ACP, AFCM, CAH, *k* plus proches voisins. Interprétration et représentation des classes de 32561 citoyens américains.
- [`Encours-Boursiers`](https://github.com/wikistat/Exploration/blob/master/Encours-Bours)iers/) Exploration en R (ACP, CAH, *k* plus proches voisins) d'un ensemble de 252 encours boursiers observés à Paris de 2000 à 2009.
- - [`Cachets-Hittites`](https://github.com/wikistat/Exploration/blob/master/Cachets-Hittites/) Exploration avec R d'un corpus de 118 cachets hittites déctrits par 12 variables plus la présence de hiéroglyphes. Peut-on prévoir la datation?
