
cachetsModif <- read.table("Cachets.dat")
cachetsModif <- as.data.frame(lapply(cachetsModif, as.factor))

summary(cachetsModif[,17:176])
summary(cachetsModif[,3:13])
# table des symboles et hiéroglyphes pour cachets datés avec date
hierSymb=cachetsModif[cachetsModif[,7]!="DatInc",c(7,17:176)]
summary(hierSymb)
dim(hierSymb)


summary(cachetsModif[,3:13])

# supprime les inconnus

cachDat=cachetsModif[cachetsModif[,7]!="DatInc",3:13]

summary(cachDat)
cachDat

table(cachDat$nbHier)

cachDat[as.integer(cachDat$nbHier)>=7,"nbHier"]=7
cachDat[as.integer(cachDat$nbHier)<=2,"nbHier"]=2
cachDat[cachDat$orgaH=="Centre","orgaH"]="Atyp"
cachDat[cachDat$Deco=="Figur","Deco"]="Ornem"
cachDat$delCentre=factor(cachDat$delCentre,levels=c(levels(cachDat$delCentre),"Frise"))
cachDat[cachDat$delCentre=="FrisTor","delCentre"]="Frise"
cachDat[cachDat$delCentre=="FrisRec","delCentre"]="Frise"
cachDat[as.integer(cachDat$nbSym)>=3,"nbSym"]=3
cachDat=droplevels(cachDat)
summary(cachDat)


library(FactoMineR)
# afcm datation en supplémentaire
afcm=MCA(cachDat,quali.sup =5,  graph= F)
# modalités
plot(afcm,invisible ="ind", habillage="quali",title="")
# individus
plot(afcm, choix="ind", invisible = "var", habillage="quali",
     col.ind=as.factor(cachDat$Datation),title="")


# rsltats numériques
summary(afcm)
# classif cah
res.hcpc <- HCPC(afcm, graph=F)
plot(res.hcpc,choice="bar",title="")
# dendrogramme
plot(res.hcpc,choice="tree",title="")

dim(cachDat)


#croisement  avec la datation

table(res.hcpc$data.clust$clust, cachDat[,5])

# cah des modalités
dist.mod=dist(afcm$var$coord, method="euclidean")
hclusmod=hclust(dist.mod,method="ward.D")
plot(hclusmod)
plot(hclusmod$height[40:30])
hclasmod = cutree(hclusmod,k=5)
clas.mod=kmeans(afcm$var$coord, 5)
kclasmod=clas.mod$cluster
# comparaison des classes entre CAH et k-means
table(hclasmod,kclasmod)

plot(afcm,invisible=c("ind"),col.var=as.integer(clas.mod$cluster))

# pas très utile pour expliquer les dates

#interpretation des classes
color=as.factor(cachDat$Datation)
# sur plan(1,2)
plot(afcm, choix="ind",invisible ="var",habillage="quali", col.ind=color)


library(rpart)
tree=rpart(Datation~.,data=cachDat)
library(partykit)
plot(as.party(tree))

tree=rpart(Datation~.,data=data.frame("Datation"=cachDat[,5],afcm$ind$coord))
plot(as.party(tree))

tree=rpart(Datation~.,data=data.frame(cachDat,afcm$ind$coord))
plot(as.party(tree))


# cah des modalités
dist.mod=dist(afcm$var$coord, method="euclidean")
hclusmod=hclust(dist.mod,method="ward.D")

# cah des modalités
dist.mod=dist(afcm$ind$coord, method="euclidean")
wclusmod=hclust(dist.mod,method="ward.D")

library(NMF)



aheatmap(tab.disjonctif(cachDat[,-5]),Rowv=wclusmod,Colv=hclusmod,
                 hclust="single",annRow=cachDat[,5])


aheatmap(tab.disjonctif(cachDat[,-5]),annRow=cachDat[,5])
## Classification non supervisee des symboles
## trouver la sélection des symboles fréquents
## faire la nmf
######################

selec=as.vector(lapply(lapply(hierSymb,as.integer),sum)>65)
dim(hierSymb)
summary(hierSymb[,selec])
HierSymbSel=hierSymb[,selec]

apply(HierSymbSel,2,sum)

summary(HierSymbSel)
dim(HierSymbSel)
HierSymbSel=droplevels(HierSymbSel)


afcm.symb=MCA(HierSymbSel,quali.sup =1, graph= F)
plot(afcm.symb, choix="ind", habillage="quali", invisible="ind",title="")
plot(afcm.symb, choix="ind", habillage="quali", invisible="var",title="",
         col.ind=as.factor(cachDat$Datation))

treeS=rpart(Datation~.,data=HierSymbSel)
plot(as.party(treeS))


res.symb <- HCPC(afcm.symb, method="single", graph=F, nb.clust=3)
table(res.symb$data.clust$clust,HierSymbSel[,1])


# La mÃ©thode de factorisaito en produits de matrices non nÃ©gatives 
# conduit principalement Ã  graphes de bi-clustering
# voila les commandes appliquÃ©es sur les symboles de donnÃ©es hitittes 
############################
### factorisation matrice creuse
dataSymb=HierSymbSel
apply(dataSymb[,-1],1,sum)

dim(dataSymb)
creux=matrix(as.integer(as.matrix(dataSymb[,-1])),nrow=60,ncol=27)
creux=creux[apply(creux,1,sum)!=0,]
dimnames(creux)[[2]]=dimnames(dataSymb[,-1])[[2]]
dimnames(creux)[[1]]=as.character(1:59)
# par habitude des donnÃ©es gÃ©nomiques, les "variables" ou "features" ou "gÃ¨nes"
# sont rangÃ©es en lignes tandis que les "samples" ou individus sont en ligne
# c'est donc t(creux) qui est Ã©tudiÃ©e
library(NMF)
# choix de la méthode pour différents rangs brunet plante
# r = 2
res.multi.method=nmf(creux, 5,nrun=10,
                     list("lee","snmf/l","snmf/r"),
                     seed = 111, .options ="t")
compare(res.multi.method)
consensusmap(res.multi.method,hclustfun="w")

estim.r=nmf(creux,2:7,method="lee",
            nrun=10,seed=111)
plot(estim.r)
consensusmap(estim.r)
# rang 5 ?
nmf5=nmf(creux,5,method="lee",nrun=50,seed=111)
nmf2=nmf(creux,2,method="lee",nrun=50,seed=111)


# les matrices de facteurs
w=basis(nmf2)
h=coef(nmf2)
ident=factor(dataSymb[-36,1])
basismap(nmf2,annRow=ident,hclustfun="ward")
coefmap(nmf2,hclustfun="ward")       
       
dist.mod=dist(t(h), method="euclidean")
hclusmod.h=hclust(dist.mod,method="ward")
plot(hclusmod.h)
plot(hclusmod.h$height[26:20])     

mdspam= cmdscale(dist.mod, k=2)
dN=dimnames(h)[[2]]
plot(mdspam, type="n", xlab="", ylab="",main="")
text(mdspam,dN)
abline(v=0,h=0)





dist.mod=dist(scale(w), method="euclidean")
hclusmod.w=hclust(dist.mod,method="ward.D")
plot(hclusmod.w)

mdspam= cmdscale(dist.mod, k=2)
dN=dimnames(w)[[2]]
plot(mdspam, type="n", xlab="", ylab="",main="")
text(mdspam,dN,col=as.integer(ident))
abline(v=0,h=0)

biplot(prcomp(scale(w)))


plot(as.party(rpart(ident~.,data=data.frame(ident,w))))

# intégration des deux classifications

aheatmap(creux,Rowv=hclusmod.w,Colv=hclusmod.h,annRow=ident)

###############

aheatmap(creux,annRow = ident)



