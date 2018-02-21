######################################################################################
# Programmes d'AFD sous R : 
#            "AFD" pour les sorties numeriques
#            "plotAFD" pour les sorties graphiques
######################################################################################

AFD<-function(X,y,type="FR"){
#
#----------------------------------------------------------------------------------
# En entree : - X = matrice de donnees contenant les variables explicatives		
#             - y = vecteur la variable explicative contenant le nom de chacun des groupes
#
# En sortie : - U = matrice des facteurs discriminants 
#             - S = matrices des variables discriminantes 
#             - mat.corr = matrices des correlations entre les variables
#                                  initiales et les variables discriminantes
#             - nk = vecteur des effectifs de chaque groupe
#             - K = le nombre de groupes
#----------------------------------------------------------------------------------
#

n<-nrow(X)
p <- ncol(X)
K<-length(levels(factor(y)))
nk<-as.vector(table(y))
names(nk) <- levels(y)
pk<-nk/n

Xk <-list()
Xk <- split(X,y)

V<-var(X)*(n-1)/n
#V<-var(X)
R<-cor(X)

g<-matrix(apply(X,2,mean),ncol=1)
rownames(g) <- colnames(X)

Vk<-list()
Rk<-list()
gk<-list()
for (k in 1:K){
	gk[[k]]<-matrix(apply(Xk[[k]],2,mean),ncol=1)
	rownames(gk[[k]]) <- colnames(X)
	Vk[[k]]<-var(Xk[[k]])*(nk[k]-1)/nk[k]
	Rk[[k]]<-cor(Xk[[k]])
	#Vk[[k]]<-var(Xk[[k]])
}

names(Vk) <- levels(y)
names(Rk) <- levels(y)
names(gk) <- levels(y)

Xcent<-X-matrix(rep(1,n),ncol=1)%*%t(g)
W<-matrix(0,nrow=p,ncol=p)
B<-matrix(0,nrow=p,ncol=p)
for (k in 1:K){
	W<-W+pk[k]*Vk[[k]]
	B<-B+pk[k]*(gk[[k]]-g)%*%t(gk[[k]]-g)
}

# Calcul des facteurs discriminant :
#=================================
if (type=="FR")
{
res<-eigen(solve(V)%*%B)

eig <- Re(res$values[1:(K-1)])


UU<-Re(res$vectors[,1:(K-1)])
normes <- sqrt(diag(t(UU)%*%V%*%UU))

if (K>2) {
U <- sweep(UU,2,normes,"/")
} else {
U <- UU/normes
}

if (K>2) {
	rownames(U) <- colnames(X)
	colnames(U)<-paste("u",1:ncol(U),sep="")
} else
{
	names(U) <- colnames(X)

}

# Calcul des variables discriminantes :
#======================================
S<-as.matrix(Xcent)%*%U
if (K>2) {
	colnames(S) <-paste("s",1:ncol(S),sep="")
	rownames(S)<-rownames(X)
} else names(S)<-rownames(X)

}

if (type=="GB")
{

res<-eigen(solve(W)%*%B)

eig <- Re(res$values[1:(K-1)])

W <- W*n/(n-K) #estimation pour retrouver les resultats de LDA!
UU<-Re(res$vectors[,1:(K-1)])
normes <- sqrt(diag(t(UU)%*%W%*%UU))

if (K>2) {
U <- sweep(UU,2,normes,"/")
} else {
U <- UU/normes
}

if (K>2) {
	rownames(U) <- colnames(X)
	colnames(U)<-paste("u",1:ncol(U),sep="")
} else
{
	names(U) <- colnames(X)

}

# Calcul des variables discriminantes :
#======================================
S<-as.matrix(Xcent)%*%U
if (K>2) {
	colnames(S) <-paste("s",1:ncol(S),sep="")
	rownames(S)<-rownames(X)
} else names(S)<-rownames(X)


}

# Calcul des correlations (variables init, variables discr)
#==========================================================
mat.corr<-matrix(0,nrow=p,ncol=K-1)
for (i in 1:p){
	for (k in 1:(K-1)){
		mat.corr[i,k]<-cor(Xcent[,i],S[,k])
	}
}


colnames(mat.corr)<- paste("s",1:ncol(mat.corr),sep="")
rownames(mat.corr) <-colnames(X)


list(eig=eig,U=U,S=S,mat.corr=mat.corr,nk=nk,K=K,y=y,X=X,Xk=Xk,W=W,B=B,g=data.frame(g=g),gk=data.frame(gk),V=V,R=R,Vk=Vk,Rk=Rk)
}


######################################################################################


plotAFD<-function(res,dim=c(1,2), posleg="topleft")
  {
#
#----------------------------------------------------------------------------------
# En entree : - res = sorties de la fonction "AFD" ci-dessus
#             - dim = vecteur avec les numeros des axes discriminants qui seront represente 
#       
#----------------------------------------------------------------------------------
#	
# Projection des individus
#==========================
nbaxes <- length(res$eig)
if ((length(dim) > 1) && (nbaxes >1)) {
min.x<-min(res$S[,dim[1]])
max.x<-max(res$S[,dim[1]])
min.y<-min(res$S[,dim[2]])
max.y<-max(res$S[,dim[2]])
dim1 <- dim[1]
dim2 <- dim[2]
quali <- as.factor(res$y)
plot(res$S[,dim],xlab=paste("Dim",dim1),ylab=paste("Dim",dim2), xlim=c(min.x,max.x),ylim=c(min.y,max.y),pch=" ",main="Individus")
abline(h = 0, lty = 2,)
abline(v = 0, lty = 2)
legend(posleg,legend = levels(quali), text.col = c(1:length(levels(quali))),cex=0.8)
text(res$S[,dim],labels=rownames(res$S),col=as.numeric(quali))

# Cercle des correlations
#=========================

#dev.new()

mat.corr <- res$mat.corr
xlim <- c(-1, 1)*1.3
ylim <- c(-1, 1)*1.3
plot(0, 0, type="n",xlab=paste("Dim",dim1),ylab=paste("Dim",dim2), xlim = xlim, ylim = ylim, main="Variables")
x.cercle <- seq(-1, 1, by = 0.01)
y.cercle <- sqrt(1 - x.cercle^2)
lines(x.cercle, y = y.cercle)
lines(x.cercle, y = -y.cercle)
abline(v = 0, lty = 2)
abline(h = 0, lty = 2)
for (j in 1:nrow(mat.corr)) {
		arrows(0, 0, mat.corr[j,dim1], mat.corr[j,dim2], length = 0.1, angle = 15, code = 2)
		if (abs(mat.corr[j,dim1]) > abs(mat.corr[j,dim2])) {
                      	if (mat.corr[j,dim1] >= 0) pos <- 4
 				else pos <- 2
             } else {
                      	if (mat.corr[j,dim2] >= 0) pos <- 3
                      	else pos <- 1
                    }
              text(mat.corr[j,dim1],mat.corr[j,dim2],labels = rownames(mat.corr)[j], pos = pos)
}
} else {
	if (nbaxes==1) {
		quali <- as.factor(res$y)
		plot(res$S,rep(0,length(res$S)),xlab="Axe 1",ylab="",col=as.numeric(quali))
		legend(posleg,legend = levels(quali), text.col = c(1:length(levels(quali))),cex=0.8)
	} else {
		quali <- as.factor(res$y)
		plot(res$S[,dim],rep(0,length(res$S[,dim])),xlab=paste("Axe",dim),ylab="",col=as.numeric(quali))
		legend(posleg,legend = levels(quali), text.col = c(1:length(levels(quali))),cex=0.8)

	}
}	
}




