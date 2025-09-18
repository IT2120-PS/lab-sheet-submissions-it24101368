setwd("C:\\Users\\ASUS\\OneDrive\\Desktop\\IT24101401_Lab07_PS")
getwd()

###1)
#Uniform distribution, a=0 , b=40
#P(10<=X<=25)
punif(25,min=0,max=40) - punif(10, min=0, max=40)

###2)
#Exponential distribution   , lambda=1/3
#P(X≤2)
pexp(2, rate = 1/3, lower.tail = TRUE)

###3)
#Normal distribution, mean=100, SD=15
#i)
#P(X>130)=1−P(X≤130)
1 - pnorm(130, mean = 100, sd = 15)

#ii)
qnorm(0.95, mean = 100, sd = 15)
