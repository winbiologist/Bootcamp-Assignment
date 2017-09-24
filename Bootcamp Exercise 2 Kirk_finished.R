rm(list=ls())
###########################################################################################
#Question1
get_heights <- function(x){
height <- rnorm(x,mean = 69, sd = 10)
height
}
###########################################################################################
#Question2 AND 3
get_heights <- function(x){
  height <- rnorm(x,mean = 69, sd = 10)
  height <- mean(height)
  height
}
###########################################################################################
#Question4

h <- rep(0,1000)
for(x in 1:1000){
  h[x] <- get_heights(100)
}
print(h)

mean_heights_100 <- h
###########################################################################################
#Question5

h <- rep(0,1000)
for(x in 1:1000){
  h[x] <- get_heights(1000)
}
print(h)

mean_heights_1000 <- h
###########################################################################################
#Question6
#dev.off() ** in case error , you may have to close the previous graph first

bins<-seq(65,73,by=0.5)
hist(mean_heights_100, breaks=bins)$breaks
#max(mean_heights_100)
counts100<-hist(mean_heights_100,breaks=bins)$counts
counts1000<-hist(mean_heights_1000,breaks=bins)$counts
par(mfrow=c(1,1), mar=c(4, 4, 3, 2)) #sets plotting area and margins

barplot(rbind(counts100,counts1000),names.arg= seq(65,72.5,by=0.5), col=c(2,4), beside=TRUE,xlab="Average height (inches)",ylab="Count")
legend(6,360,pch = c(16, 16), c("n = 100" ,"n = 1000"),col=c(2,4))

