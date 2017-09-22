
#Exercise1 #DONE

for (x in 1:9)
{
cat("\n")
if (x == 9) 
cat("*")
}

#################################################################################
#Exercise2 #Done
for (x in 1:10) {
  x <= 10
  cat("*&")
}
#################################################################################
#Exercise3  #DONE
#1
#initial values is 10
#start values is 11
#end values is 15

#2
#initial values is 0
#start values is -4
#end values is -30

#3
#initial values is 12
#start values is -1
#end values is -4

#################################################################################

#Exercise4 #DONE

years <- c( 2015, 2016, 2018, 2020, 2021)
for(x in 1:length(years)){
  if(years[x] %% 2 == 0){
    cat(years[x], 'Hooray, congressional elections!', sep = '\t', fill = T)
  }
  if(years[x] %% 4 == 0){
    cat(years[x], 'Hooray, presidential elections!', sep = '\t', fill = T)
  }
}
#################################################################################

#Exercise5 #DONE #important #understand Rep

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded <- rep(NA, 8) #*** 
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

# if not use rep

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
interestRate <- 0.0125;
compounded <- 1:8
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

#################################################################################

#Exercise6

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) #this loop run after the i loop and it use the new value from the i loop not from the first bankaccounts {
  for (i in 1:length(bankAccounts)) {
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts[i] <- (bankAccounts[i]- house[i] 
    - food[i] - fun[i] + income[i])
    #step 2 get calculate interest and add to accounts from step 1
    bankAccounts[i] <- bankAccounts[i] + bankAccounts[i]*interestRate
    #you can actually use the line you have already written if you modify amounts in bankAccounts directly in step 1
  }


#################################################################################
#Exercise7

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this


for (j in 2015:2020) #this loop run after the i loop and it use the new value from the i loop not from the first bankaccounts 
  {
    #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts <- (bankAccounts- house
                        - food - fun + income)
    #step 2 get calculate interest and add to accounts from step 1
    if(j%%2 == 1){
    bankAccounts[1]+5
    bankAccounts[3]+5}
    bankAccounts <- bankAccounts + bankAccounts*interestRate
    #you can actually use the line you have already written if you modify amounts in bankAccounts directly in step 1
}

#################################################################################
#Exercise8
sum <- 0
x <- 0
while(x<=17)
  {
  sum <- sum + x
  x <- x+1
  }
sum

#################################################################################
#Exercise9


# example of function
#y<- function(x)
#{ x<-x + 1
#x}
#how to check the function (5)


y<- function(x)
{
if( x <= -1)
  print("small")
if(-1 < x & x < 1)
  print("medium")
  if( x >= 1)
  print("big")
  }