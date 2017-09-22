setwd("C:/Users/WiN BiologisT/Desktop/EEB201 R for Ecology and Evolutionary Biology")
rm(list = ls())
#WatcharaPong Hongjamrassilp (WiN)
#Pre-Bootcamp EEB201

#9.1.0.0.1 Exercise
#What do the %% and %/% operators do?

5%%2
5%/%2

# %% is a modulus operation 
# %/% is an operation that show the integer division

#9.1.1.0.1 Exercise
#What happens when the length of the longer vector is not a multiple of that of the shorter?

x <- c(1,2,3)
y <- c(10,20,30,40,50,60,70)
x+y
# error, the operation does not accomplish

#9.1.2.0.1 Exercise
#Use seq to create the vector v=(1 5 9 13), and to create a vector going from 1 to 5 in increments of 0.2

v <- seq(1,13,4)
v
Q <- seq(1,5, 0.2)
Q

#9.1.2.0.2 Exercise
#What happens when "to" is less than "from" in "seq?" What result does 3:1 give? This is one of the first “gotchas” R newbies run into.

X <- seq(5,1)
X
# it show a reverse direction of sequence
3:1
# show 3 2 1 

#9.1.3.0.1 Exercise
#If you enter v <- z[seq(1,5,2)], what will happen? Make sure you understand why.
z <- c(1,3,5,7,9,11)
v <- z[seq(1,5,2)]
v
#v show the postition 1 3 5 from z beacuse the seq function that choose number 1 to 5 strting from 1 increase by 2 until 5.

#9.1.3.0.2 Exercise
#Write a one-line command to extract a vector consisting of the second, first, and third elements of z in that order.
T <- z[c(2,1,3)]
T

#9.1.3.0.3 Exercise
#What happens when I set the value of an element that doesn’t exist? For example, try
z[9] <- 11
z[9]

#it will add the value to that position even that vector does not have that position

#9.1.3.0.4 Exercise
#Write code that computes values of y=(x-1)/(x+1)
#for x=1,2,???,10, and plots y versus x with the points plotted and connected by a line.
x <- 1:10
y=(x-1)/(x+1)
plot(x,y,"b")

#9.1.3.0.6 Exercise *****
#The sum of the geometric series 1+r+r2+r3+...+rn
#approaches the limit 1/(1-r) for r<1 as n???8. Take r=0.5 and n=10, and write a one-line command that creates the vector G=(r0,r1,r2,...,rn). Compare the sum (using sum()) of this vector to the limiting value 1/(1-r). Repeat for n=50

r = 0.5
n = 10
G <- seq(r^0,r^n)
G
sum(G)

#9.1.5.0.1 Exercise
#What would happen if instead of setting lowLight you replaced Light by saying Light <- Light[Light<50]? Why would that be the wrong thing to do in the above example?

#no data


#9.1.5.0.2 Exercise
#runif(n) is a function that generates a vector of n random, uniformly distributed numbers between 0 and 1. Create a vector of 20 numbers, then find the subset of those numbers that is less than the mean. More on runif and related functions soon.

X<- runif(20, min=0, max=20)
X
Y <- X[X<mean(X)]
Y

#9.1.5.0.3 Exercise
#Find the positions of the elements that are less than the mean of the vector you just created (e.g. if your vector were (0.1 0.9 0.7 0.3) the answer would be (1 4)).

which(Y < mean(Y))

#9.1.5.0.4 Exercise
#Specify two ways to take only the elements in the odd positions (first, third, …) of a vector of arbitrary length.

#first
x <- 1:50
x
y <- c(x[seq(x) %% 2 == 1])
y
#second (wrong)
x <- 1:50
x
y <- c(x[seq(x) %% 2 != 0])
y
