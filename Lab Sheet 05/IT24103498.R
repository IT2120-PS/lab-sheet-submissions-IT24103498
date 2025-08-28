setwd("C:\\Users\\it24103498\\Desktop\\IT24103498")
getwd()

#Question 01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE,sep=",")
fix(Delivery_Times)
attach(Delivery_Times)

#Question 02
names(Delivery_Times)<-c("D_Time")
histogram<-hist(D_Time,
                main="Histogram of Delivery Times",
                breaks = seq(20,70,length=10),
                right = TRUE)


#Question 03
# The distribution is unimodal, with a peak around 35-40 minutes. 
#It appears slightly positively skewed, as the mean (43.75) is slightly 
# greater than the median (42.5), and there is a longer tail on the right side.


#Question 04
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids

Classes <- c()

for(i in 1:length(breaks)-1){
  Classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}

cum.freq <- cumsum(freq)

new <- c()

for(i in 1:length(breaks)){
  if(i==1){
    new[i] = 0
  } else {
    new[i] = cum.freq[i-1]
  }
}

plot(breaks, new, type = 'l',
     main = "Cumulative Frequency Polygon for deliver times", 
     xlab = "Shareholders", 
     ylab = "Cumulative Frequency",
     ylim = c(0,max(cum.freq)))

