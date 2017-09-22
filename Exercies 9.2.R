setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
rm(list = ls())
#WatcharaPong Hongjamrassilp (WiN)
#Pre-Bootcamp EEB201

#9.2.1.0.1 Exercise
#Use a command of the form X <- matrix(v,nrow=2,ncol=4) where v is a data vector, to create the following matrix X:

v = 1:2
x <- matrix(v,nrow=2,ncol=4)
x

#9.2.1.0.2 Exercise
#Use rnorm and matrix to create a 5×7
#matrix of Gaussian random numbers with mean 1 and standard deviation 2.

y <- rnorm(35, mean=1, sd=2)
d <- matrix(y, nrow=5, ncol=7)
d

#9.2.2.0.1 Exercise
#Verify that rbind(C,D) works, cbind(C,C) works, but cbind(C,D) doesn't. Why not?
C <- cbind(1:3,4:6,5:7)
C
D <- rbind(1:3,4:6)
D
rbind(C,D)
cbind(C,C)
cbind(C,D)
# does not work because number of row does not match

