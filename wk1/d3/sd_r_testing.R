Dataset1 <- c(1,0,2,1,2,1,2,0,4)
xbar <- mean(Dataset1)
Devs <- Dataset1 - xbar
Devs_sq <- Devs^2
Devs_sq_sum <- sum(Devs_sq)
n <- length(Dataset1)
var_Dataset1 <- Devs_sq_sum/(n-1)
sd_Dataset1 <- sqrt(var_Dataset1)

# option_c: sqrt(sum((Dataset1-mean(Dataset1))^2)/(length(Dataset1)-1))

sd(Dataset1)