#Textbook Example 2.4.1 on Kurtosis
print("Kurtosis Example")

ExampleK<-c(90, 72, 90,
  64, 95, 89,
  74, 88, 100,
  77, 57, 35,
  100, 64, 95,
  65, 80, 84,
  90, 100, 76)

hist(ExampleK)

#First we compute the mean and standard deviation
print("Mean")
print(mean(ExampleK))
print("Standard Deviation")
s<-sd(ExampleK)
print(s)
#we now need the deviations "x_i-xbar" values 
deviations<-ExampleK-mean(ExampleK)
#We also need the sample size
n<-length(ExampleK)
##
#Next we compute the kurtosis and the standard error for kurtosis. 
##

#YOU NEED TO FIX THE LINE BELOW
# The summed to the 4th part:
sum_deviation_k <- sum((deviations/s)^4)
# Part before sum:
part_before_sum <- (n*(n+1)) / ((n-1)*(n-2)*(n-3))
# part after sum:
part_after_sum = (3*(n-1)^2) / ((n-2)*(n-3))
K<- (part_before_sum * sum_deviation_k) - part_after_sum
print("Kurtosis")
print(K)

#Standard Error of Kurtosis.
#FIX THIS ONE TOO.
SEk <-sqrt(24*(n*(n-1)^2)/((n-2)*(n-3)*(n+5)*(n+3)))
print("Standard Error of the Kurtosis")
print(SEk)

#Now find the z-score
zk<-(K/SEk)
print("z-score")
print(zk)


#Now we check if the z-score is between -1.96 and 1.96. 
#If it is we are good and this is not strong evidence that we are NOT normal.
#We could still have other evidence of not being normal. After all, absence of proof is not innocence.
