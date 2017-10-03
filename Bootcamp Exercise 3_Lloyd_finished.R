
###### Question A
Ric_mod <- function(N=100,R=1,t=1,K=1){

  NN <- matrix(NA, nrow=1, ncol=t+1)
  NN[1] <- N
  
  for(tt in 1:t ){
  NN[tt+1] <- NN[tt]*(exp(R*(1-(NN[tt]/K))))
  }
  plot(1:(t+1), NN)
  lines(1:(t+1), NN)
  
return(NN)
}

###### Question B
#Population decrease to n=0
Ric_mod(5,-1,10,100) # r negative
#Population approaches stable equilibrium at n = K, without oscillations.
Ric_mod(1,0.1,1000,100) #  0<r<1
#Decaying oscillations around n = K
Ric_mod(40,3,100,10) #  r=3 N close to K
#Persistent, regular oscillations
Ric_mod(1,2 ,100,100) #  r=2
#Crazy, random-looking fluctuations (chaos).
Ric_mod(1,3 ,100,100) #  r=3

# R is a key driver


###### Question C
par(mfcol=c(2,3))
Ric_mod(5,-1,100,100)
Ric_mod(1,0.1,100,100)
Ric_mod(40,3,100,10)
Ric_mod(1,2 ,100,100)
Ric_mod(1,3 ,100,100)
Ric_mod(90,-0.05 ,100,100)

###### Question D
nVec <- Ric_mod(20,0.1,100,1000)
nmin <- min(which(nVec >= 500))
nmin

###### Question E
Rvalues <- seq(from= 0.1,to = 0.9, by= 0.1)
#Half_K_R <- seq(1,length(Rvalues))
Half_K_R <- matrix(NA, nrow=1, ncol=length(Rvalues))


for (R in 1:length(Half_K_R)){
  RicModNEW<-Ric_mod(20,Rvalues[R],100,1000)
  K = 1000
  Half_K_R[R]<-min(which(RicModNEW >= K/2))
}

plot(Rvalues,Half_K_R )

###### Question F

# (1) Define parameter values: R, K (using seq function)
# (2) Create Matrix for storing values (vary R and vary K)
# (3) Create for loop that vary in K which collects the values of K of each R  within another for loop that vary in R.
# (4) plot


###### Question G

Ric_mod <-function(N,R,K){
  for (t in 1:100){
    N[t+1] <- N[t]*(exp(R*(1-(N[t]/K))))
  }
  return(N)
}


Rvalues <- seq(from= 0.1,to = 0.9, by= 0.1)
Kvalues<-seq(from= 100,to= 1000, by = 100)

Maxtrix_values <-matrix(NA,length(Rvalues),length(Kvalues))
R_at_Half_K <- 1:length(Rvalues)

for (R in 1:length(R_at_Half_K)){
  
  for (K in 1:length(Kvalues)){
    
    RicModNEW<-Ric_mod(10,Rvalues[R], Kvalues[K])
    
    Maxtrix_values[R,K]<-min(which(RicModNEW >= Kvalues[K]/2))}
  }

#plot(Maxtrix_values[1,])
image(Maxtrix_values)
contour(Maxtrix_values)
