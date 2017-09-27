setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology/GITHUB_TRY1")

course.url <- "http://kingaa.github.io/R_Tutorial/"

download.file(paste0(course.url,"Intro1.R"),destfile="Intro1.R",mode="w")

############################3
#Intro1.R data#

#source("Intro1.R")
# source function open the file and run everything

light <- c(20,20,20,20,21,24,44,60,90,94,101)

rmax <- c(1.73,1.65,2.02,1.89,2.61,1.36,2.37,2.08,2.69,2.32,3.67)

plot(light, rmax)

fit <- lm(rmax~light)

summary(fit)

abline(fit)
#######################################

download.file(paste0(course.url,"Intro2.R"),destfile="Intro2.R",mode="w")
download.file(paste0(course.url,"ChlorellaGrowth.csv"),destfile="ChlorellaGrowth.csv",mode="w")

X <- read.csv("ChlorellaGrowth.csv",comment.char='#')
###comment.char...to ignore lines that begin with a #

Light <- X[,1]
rmax <- X[,2]
#######################################
#11.0.0.0.1 Exercise
#Make a copy of Intro2.R under a new name, and modify the copy so that it does linear regression of algal growth rate on the natural log of light intensity, LogLight=log(Light), and plots the data appropriately. You should end up with a graph that resembles the following.

X <- read.csv('ChlorellaGrowth.csv',comment.char='#')

# using '#' as a comment character allows us the CSV file to be self-documenting

LogLight=log(Light)

par(cex=1.5,cex.main=0.9)

plot(rmax~LogLight,data=X,xlab="Log Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16) 

# xlab and ylab are x and y axis labels, pch is "plotting character"

# cex is 'character expansion' - cex=1.5 increases symbol & label sizes by 50%

# cex.main sets the character expansion for the main title of the plot 



title(main="Data from Fussmann et al. (2000) system")

fit <- lm(rmax~LogLight)

summary(fit); abline(fit) 


# Next we get the regression equation to 'display itself' on the graph

c1 <- round(fit$coef[1],digits=3) 	# intercept	

c2 <- round(fit$coef[2],digits=3) 	# slope

text(50,3,paste("rmax=",c1,"+",c2,"LogLight")) 


# You can use ?round, ?text and ?paste to read about these commands

# for working with plots  

#############################################################3

#11.0.0.0.2 Exercise
#11.0.0.0.3 Exercise
rm(list=ls())
dev.off()
X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
Light <- X[,1]
rmax <- X[,2]

par(cex=1.5,cex.main=0.9)
plot(rmax~Light,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))

##############################################################
#11.0.0.0.4 Exercise

rm(list=ls())
dev.off()
X <- read.csv('ChlorellaGrowth.csv',comment.char='#')
Light <- X[,1]
rmax <- X[,2]
LogLight <- log(Light)
par(mfcol=c(2,1),cex=1.5,cex.main=0.9)
dev.off()
plot(rmax~Light,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))

par(mfcol=c(1,2))
plot(rmax~Light,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))
plot(rmax~LogLight,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))

par(mfcol=c(2,1)
plot(rmax~Light,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))
plot(rmax~LogLight,data=X,xlab=" Light intensity (uE/m2/s)",ylab="maximum growth rate (1/d)",pch=16,xlim=c(0,120),ylim=c(1,4))
    
###############################################################

#11.0.0.0.5 Exercise
x<- c(3:8)
y<- (5*c(3:8))+3
plot(x, y)
fit <- lm(y ~ x)
abline(fit)   

par(mfcol=c(2,2))
plot(x, y,pch=16)
fit <- lm(y ~ x)
abline(fit, lty= 5,lwd=2, col = "red")  
plot(x, y,pch=9)
fit <- lm(y ~ x)
abline(fit, lty= 4,lwd=2, col = "Green")  
plot(x, y,pch=20)
fit <- lm(y ~ x)
abline(fit, lty= 3,lwd=2, col = "Blue")  
plot(x, y,pch=4)
fit <- lm(y ~ x)
abline(fit, lty= 2,lwd=2, col = "Yellow")   

###############################################################

#11.0.0.0.6 Exercise

dev.print(pdf,"ex11.6.pdf")
#confuse ???
