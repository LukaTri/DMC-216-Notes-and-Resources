# Use this function to find Kurtosis information:
kurtosis_func <- function(data_set) {
  s<-sd(data_set)
  data_mean<-mean(data_set)
  deviations<-data_set-mean(data_set)
  n<-length(data_set)
  
  sum_deviation_k<-sum((deviations/s)^4)s
  part_before_sum<-(n*(n+1)) / ((n-1)*(n-2)*(n-3))
  part_after_sum<-(3*(n-1)^2) / ((n-2)*(n-3))
  K<-(part_before_sum * sum_deviation_k) - part_after_sum

  print("Kurtosis")
  print(K)
  
  #Standard Error of Kurtosis.
  #FIX THIS ONE TOO.
  SEk<-sqrt(24*(n*(n-1)^2)/((n-2)*(n-3)*(n+5)*(n+3)))
  print("Standard Error of the Kurtosis")
  print(SEk)
  
  #Now find the z-score
  zk<-(K/SEk)
  print("z-score")
  print(zk)
}

# Use this function to find Skew information:
skewa_func <- function(data_set) {
  s<-sd(data_set)
  data_mean<-mean(data_set)
  deviations<-data_set-mean(data_set)
  n<-length(data_set)
  
  #Compute skew value
  Skew = (n/((n-1)*(n-2)))*sum(((deviations)/s)^3)
  print("Skew")
  print(Skew)
  
  #Compute standard error of skew
  Sesk = sqrt(((6*n)*(n-1))/((n-2)*(n+1)*(n+3)))
  print("Standard Error of Skew")
  print(Sesk)
  
  #Compute z-score of skew
  Zsk = (Skew - 0)/Sesk
  print("z-score of Skew")
  print(Zsk)
}

# Use this function to find Sign Test:

# Use this function to find Binomial Test:

# Use this function to find Wilcoxon Test:
# Data Required:

# Use this function to find KS-Test:

# Combinatorics (N Choose K:)

# PDFs and CDFs:

# Normal Distribution:

# Uniform Distribution:

