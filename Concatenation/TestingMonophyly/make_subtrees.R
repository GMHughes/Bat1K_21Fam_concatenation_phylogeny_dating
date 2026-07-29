tab<-read.csv("Treelist.csv")
library("ape")
i<-1
while(i<nrow(tab)+1){
	tree<-read.tree(file=tab[i,])
	subs<-subtrees(tree)
	z<-1
	tfl<-"Subtrees"
	rfoutput=paste(tfl,tab[i,], sep="_")
	while(z<=length(subs)){
	      write.tree(subs[[z]],file=rfoutput, append=TRUE)
	       z<-z+1
	}
	i<-i+1
}