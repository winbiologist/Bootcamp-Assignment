##################################
#12.1.0.0.1 Gotcha:

phi <- 1
for (k in 1:100) {
  phi <- 1+1/phi
  print(c(k,phi))
}

a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

plot(T,N)
##################################
#12.1.0.0.2 Exercise

a <- 1.1
b <- 0.001
# T = 1
T <- seq_len(1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

plot(T,N)

# when T = 1, only one point was plot 
# When T lenght = 0 , no plot #error need finite xlim
N <- numeric(length(T))
n <- 2
T = numeric(0)
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

plot(T,N)


##################################
#12.2.0.0.1 Exercise

phi <- 20
k <- 1
while (k <= 100) {
  phi <- 1+1/phi
  print(c(k,phi))
  k <- k+1
}

#############

phi <- 20
conv <- FALSE
# add counter to count the number of loop
Num <- 1
while (!conv) {
  phi.new <- 1+1/phi
  Num <- Num+1
  conv <- phi==phi.new
  phi <- phi.new
  print(c(Num,phi))
}

# 41 times

######################################
#12.2.0.0.2 Exercise

#use while loop instead of for loop

# for loop

a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2

for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}


#while loop

a <- 1.1
b <- 0.001
T <- 1
N <- numeric(length(T))
n <- 2
while (T <= 200) {
  n <- a*n/(1+b*n)
  N[T] <- n 
  T = T+1
  }

