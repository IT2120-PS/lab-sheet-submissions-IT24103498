setwd("C:\\Users\\Hasanthi\\Desktop\\IT24103498")

#importing the data set
data<-read.table("Exercise - LaptopsWeights.txt",header =TRUE)
fix(data)
attach(data)

#Question 01
pop_mean <- mean(Weight.kg.)
pop_sd <- sd(Weight.kg.)

#Question 02
samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg.,6,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('s',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

#Question 03
samplemean<-mean(s.means)
samplesd<-sd(s.means)

#compare the population mean and mean of sample means.
pop_mean
samplemean

#compare the population standard deviation and standard deviation of sample means.
samplesd
pop_sd / sqrt(6)
