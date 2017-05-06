cachetsModif <- read.table("Cachets.dat")
cachetsModif <- as.data.frame(lapply(cachetsModif, as.factor))
##classification non supervisee

library(FactoMineR)

## PREMIERE AFCM SANS SYMBOLES (CAH : 3 CLASSES) 

afcm=MCA(cachetsModif[,c(2,3,4,5,6,7,8,9,10,11,12,13)], graph= F)
#representation que des variables
plot(afcm,invisible ="ind", habillage="quali")
# representation que des individus
plot(afcm, choix="ind", invisible = "var", habillage="quali")
# les 2 
plot(afcm, choix="ind",habillage="quali")

#plan factoriel (2,3)
plot(afcm,invisible ="ind", habillage="quali",axes=2:3)
#plan factoriel (3,4)
plot(afcm,invisible ="ind", habillage="quali",axes=3:4)

## Classif non supervisee AVEC les dates inconnues
HCPC(afcm)
#le nombre de classes = 3 (comme les 3 classes de la datation) 
res.hcpc <- HCPC(afcm, graph=F, nb.clust=6)
#la ligne suivante permet de croiser la variable classe avec chacune des variables
res.hcpc$desc.var$test.chi2
#et de connaitre les modalites les plus presentes dans chaque classe
res.hcpc$desc.var$category

#croisement des variables quelques exemples
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,1])
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,2])
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,3])
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,4])
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,5])
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,6])

#interpretation des classes
color=as.integer(res.hcpc$data.clust$clust)
# sur plan(1,2)
plot(afcm, choix="ind",invisible ="var",habillage="quali", col.ind=color)
# sur plan(2,3)
plot(afcm, choix="ind",invisible ="var",axes= 2:3, habillage="quali", col.ind=color)
# sur plan(3,4)
plot(afcm, choix="ind",invisible ="var",axes=3:4, habillage="quali", col.ind=color)
#il y a du rouge partout car dans cette classe il ya les inconnus et ils sont dispers?s dans toutes les classes

#on essaie de representer les classes avec nos cachets qu'on a date
# creation de la table avec tous les cachets dates
cachetsfin <- rbind(cachetsDate, cachets.pred)
color = as.integer(cachetsfin$Datation)
plot(afcm, choix="ind", habillage="quali", invisible="var", col.ind=color)
#comparaison des deux classifications : (on remarque qu'elles sont assez differentes)
table(color, res.hcpc$data.clust$clust)

## Classif non supervisee SANS les inconnus (tous les cachets sont dates)
afcm.date=MCA(cachetsfin, graph= F)
#representation que des variables
plot(afcm.date,invisible ="ind", habillage="quali")
#plan factoriel (2,3)
plot(afcm.date,invisible ="ind", habillage="quali",axes=2:3)
#plan factoriel (3,4)
plot(afcm.date,invisible ="ind", habillage="quali",axes=3:4)
# representation que des individus
plot(afcm.date, choix="ind", invisible = "var", habillage="quali")
HCPC(afcm)
res.hcpc <- HCPC(afcm.date, graph=F, nb.clust=3)
res.hcpc$desc.var$test.chi2
res.hcpc$desc.var$category

#croisement des variables quelques exemples
table(res.hcpc$data.clust$clust, res.hcpc$data.clust[,7])
#interpretation des classes
color=as.integer(res.hcpc$data.clust$clust)
# sur plan(1,2)
plot(afcm.date, choix="ind",invisible ="var",habillage="quali", col.ind=color)
# sur plan(2,3)
plot(afcm.date, choix="ind",invisible ="var",axes= 2:3, habillage="quali", col.ind=color)
# sur plan(3,4)
plot(afcm.date, choix="ind",invisible ="var",axes=3:4, habillage="quali", col.ind=color)

#coloration de cette afcm avec les dates
color = as.integer(cachetsfin$Datation)
plot(afcm.date, choix="ind", habillage="quali", invisible="var", col.ind=color)
table(res.hcpc$)

## Classification non supervisee des symboles

afcm.symb=MCA(cachetsSymbSelec[,14:39], graph= T)
plot(afcm.symb, choix="ind", habillage="quali", invisible="ind")
plot(afcm.symb, choix="ind", habillage="quali", invisible="var")
HCPC(afcm.symb)
res.symb <- HCPC(afcm.symb, method="single", graph=F, nb.clust=6)
#la ligne suivante permet de croiser la variable classe avec chacune des variables
res.symb$desc.var$test.chi2
#et de connaitre les modalit?s les plus pr?sentes dans chaque classe
res.symb$desc.var$category

#interpr?tation des classes
color=as.integer(res.symb$data.clust$clust)
par(mfcol=c(1,1))
# sur plan(1,2)
plot(afcm.symb, choix="ind",invisible ="var",habillage="quali", col.ind=color)
# sur plan(2,3)
plot(afcm.symb, choix="ind",invisible ="var",axes= 2:3, habillage="quali", col.ind=color)
# sur plan(3,4)
plot(afcm.symb, choix="ind",invisible ="var",axes=3:4, habillage="quali", col.ind=color)
##########################
cachetsModif <- read.table("donnees.txt")
cachetsModif <- as.data.frame(lapply(cachetsModif, as.factor))

# La méthode de factorisaito en produits de matrices non négatives 
# conduit principalement à graphes de bi-clustering
# voila les commandes appliquées sur les symboles de données hitittes 
############################
### factorisation matrice creuse
data.symb=cachetsModif[,17:176]
creux=matrix(as.integer(as.matrix(data.symb)),nrow=118,ncol=160)
dimnames(creux)[[2]]=dimnames(data.symb)[[2]]
dimnames(creux)[[1]]=as.character(1:118)
# par habitude des données génomiques, les "variables" ou "features" ou "gènes"
# sont rangées en lignes tandis que les "samples" ou individus sont en ligne
# c'est donc t(creux) qui est étudiée
library(NMF)
# choix du rang
estim.r=nmf(t(creux),1:4,nrun=10,seed=111)
# messages d'erreur ! mais des résultats
plot(estim.r) # problème au delà de r=4 !!
# la commande suivante ne marche pas ?
consensusmap(estim.r, annCol = creux, labCol = NA, labRow = NA)
# Que choisir : r=3 ou r=4 ?
# 50 exécutions pour prendre la meilleure
nmf.cachet=nmf(t(creux),3,nrun=50)

# comparer différentes méthodes 
res.multi.method=nmf(t(creux), 3,list("brunet","lee","ns"),seed = 111, .options ="t")
compare(res.multi.method)
# comment choisir la meilleure ?
       method   seed rng    metric rank sparseness.basis sparseness.coef silhouette.coef silhouette.basis residuals niter
brunet brunet random   1        KL    3        0.6072550       0.8387022       0.9107442        0.8916420 1705.1541   550
lee       lee random   1 euclidean    3        0.6886838       0.6738105       0.8217347        0.8126766  326.3325   460
nsNMF   nsNMF random   1        KL    3        0.6605538       0.8670054       0.9125095        0.9384022 1865.2819   700

# quel choix de méthode ??? minimise les résidus donc lee ou plus grande sparseness.basis donc brunet

# Comment interpréter ce graphe ?
plot(res.multi.method)
# il faudrait aussi choisir le mode d'initialisation
# seed="nndsvd" ne marche pas 
summary(nmf.cachet)
s=featureScore(nmf.cachet)
summary(s)
s=extractFeatures(nmf.cachet)
# même type de problème non identifié
str(s) # problème
# les matrices de facteurs
w=basis(nmf.cachet)
h=coef(nmf.cachet)
# comment s'interprète les graphiques ci-dessous ?
consensusmap(res,annCol=classe)
basismap(res)
coefmap(res,annCol=classe)

# méthode lee conduit à des résultats très différents 
res.lee=nmf(t(creux),3,"lee",nrun=50)
summary(res.lee)
s=featureScore(res.lee)
summary(s)
s=extractFeatures(res)
str(s) # problème

w.lee=basis(res.lee)
h.lee=coef(res.lee)

consensusmap(res.lee,annCol=classe)
basismap(res.lee)
coefmap(res.lee,annCol=classe)

