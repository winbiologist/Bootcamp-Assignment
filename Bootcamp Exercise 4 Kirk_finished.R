setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-2.txt',header=TRUE)
#convert to matrix
snps=as.matrix(snpsDataFrame)

#chi-square
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}
##########################################################################
#question 1.a Save p-value
chisqs=apply(snps,1,compute_chisquare)
pvals=pchisq(chisqs,1,lower.tail=FALSE)

##########################################################################
#question 1.b Proportion of P-value

P_0.05 <- pvals < 0.05
PP_0.05 <- sum(P_0.05 ==1)/length(pvals)
mean(pvals<0.05)

#sort of the value less tham 0.05
#xxxxxxxxx <- pvals[pvals<0.05]
#xxxxxxxxx


P_0.01 <- pvals < 0.01
PP_0.01 <- sum(P_0.01 ==1)/length

P_0.001 <- pvals < 0.001
PP_0.001 <- sum(P_0.001 ==1)/length(pvals)

##########################################################################
#question 1.c 
num_pvals <- length(pvals)
num_pvals
##########################################################################
#question 1.d

exp_pvals<- (1:num_pvals)/(num_pvals)

##########################################################################
#question 1.e

sort_pvals <- sort(pvals,  decreasing = FALSE )
sort_pvals

##########################################################################
#question 1.f

log_sort_pvals <- -log10(sort_pvals)
log_exp_pvals <- -log10(exp_pvals)

##########################################################################
#question 1.g/h

plot(log_exp_pvals, log_sort_pvals, xlab = "???log10(expected P-value)", ylab = "???log10(observed P-value)", pch= 16, lty=5, lwd= 5 )
#plot(pvals)


fit <- lm(log_exp_pvals~log_sort_pvals)
summary(fit)
abline(fit, lty=2, lwd= 4, col= "red" ) 

##########################################################################

##Exercise2

#### a
dev.off()
rm(list=ls())
setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
zz <- read.table('pheno.sim.2014-2.txt',header=TRUE)

#### b/c

glc <- zz[,2]
qt <- quantile(glc)
#check
sum(glc <4.768)/length(glc)
### if you want to sum value >> sum(glc[glc<4.7])
Less_0.25 <- qt[2]
Greater_0.25 <- qt[4]

########## d

dd <- density(glc)
plot(dd, main = "Density plot of the distribution of phenotypes")

abline(v=quantile(glc,0.25),lty=2,lwd=3,col=2)
abline(v=quantile(glc,0.75),lty=2,lwd=3,col="blue")