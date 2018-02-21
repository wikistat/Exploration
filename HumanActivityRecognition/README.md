###<a href="http://www.insa-toulouse.fr/" ><img src="http://www.math.univ-toulouse.fr/~besse/Wikistat/Images/Logo_INSAvilletoulouse-RVB.png" style="float:left; max-width: 80px; display: inline" alt="INSA"/> |  [*Mathématiques Appliquées*](http://www.math.insa-toulouse.fr/fr/index.html), [`Science des Données`](http://www.math.insa-toulouse.fr/fr/enseignement.html)

# Tutoriels de Science des Données en [Python](https://www.python.org/) et [R](href="https://cran.r-project.org/)
# [Exploration Statistique](\http://wikistat.fr)

## *Human activity recognition (HAR)*
- [`Explo-Python-HAR`](https://github.com/wikistat/Exploration/blob/master/HumanActivityrecognition/Explo-Python-Har-brutes.ipynb) Visualisation et ACP de signaux issus d'un smartphone  (accéléromètre et gyroscope). Le but à terme est de pouvoir identifier l'activité du porteur. Analyse des signaux buts.
- [`Explo-Python-HAR`](https://github.com/wikistat/Exploration/blob/master/HumanActivityrecognition/Explo-Python-Har-metier.ipynb) Visualisation et ACP de signaux issus d'un smartphone  (accéléromètre et gyroscope). Ce sont des transformations (*features*) des signaux qui sont explorés puis modélisés: min max, variance, corrélations, entropie, Fourier... Analyse en composantes principales, analyse factorielle discriminante puis une première modélisation par régression logistique.

Les données initiales sont composées de 10300 enregistrements de 9 signaux provenant de l'accéléromètre d'un smartphone. Des séquences de 2s sont enregistrées et échantillonnées pendant 6 activités différentes.

La modélisation avancée de ces données est étudiée dans des calepins des autres saisons.


