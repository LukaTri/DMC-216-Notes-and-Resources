#This is our first script. It computes the standard deviation of the list on line 2.
Dataset1<-c(1,0,2,1,2,1,2,0,4)
xbar<-mean(Dataset1)
Devs<-Dataset1-xbar
Devs_sq<-Devs^2
Devs_sq_sum<-sum(Devs_sq)
n<-length(Dataset1)
var_Dataset1<-Devs_sq_sum/(n-1)
sd_Dataset1<-sqrt(var_Dataset1)
print(sd_Dataset1)#should be 1.236033