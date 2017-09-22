setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
rm(list = ls())
#WatcharaPong Hongjamrassilp (WiN)
#Pre-Bootcamp EEB201


#9.6.0.0.1 Exercise
#Download the hurricanes.csv file from the tutorial website: http://kingaa.github.io/R_Tutorial/hurricanes.csv. Examine the resulting data frame by printing it and using the str command. Note the class type of each variable.

data.url <- "http://kingaa.github.io/R_Tutorial/hurricanes.csv"
dat <- read.csv(data.url,comment.char='#')
dat
str(dat)

#Year=integer
#name=factor
#MasFem = numeric
#MinPressure_before  to Elapsed.Yrs  = integer
#ZMasFem  to ZNDAM = numeric
