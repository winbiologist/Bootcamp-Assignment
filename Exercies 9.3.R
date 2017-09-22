setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
rm(list = ls())
#WatcharaPong Hongjamrassilp (WiN)
#Pre-Bootcamp EEB201

#9.3.0.0.1 Exercise
#What happens when we set the dimension attribute on a vector? For example:

x <- seq(1,27)
dim(x) <- c(3,9)
is.array(x)
is.matrix(x)

#vector turn to be both array and matrix