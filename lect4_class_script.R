##t-test on human phys data
#Lecture 4

getwd()
setwd()

##Read in data
data<-read.table("human_phys.txt", header=TRUE)

#look at your variables
head()

#plot some histograms
hist()


#Test for normality
#Shapiro-wilk test, p < 0.05 we reject the null hypothesis of normality.
shapiro.test()


#Test for equal variances
var.test()


##let's look at the documentation for the t.test function
?t.test


# independent 2-group t-test
#Heart rate before vs. after
t.test()

#Breath rate before vs after
t.test()

#box plots
#Heart rate before and after
boxplot(data$HR_before, data$HR_after, names=c("Before","After"))

#Breath rate before and after
boxplot()

#barcharts
#what happens if we just run
barplot(data$HR_before, data$HR_after)

#what is this a plot of?

#want to plot the mean 
means<-c(mean(data$HR_before),mean(data$HR_after))
names<-c("Before", "After")

barplot(means, names.arg=names)

#let's add error bars

library(plotrix)
library(car)

std.error<-c(std.error(data$HR_before),std.error(data$HR_after))

barCenters <- barplot(means, ylim=c(0,50), names.arg=names)
segments(barCenters, means-std.error, barCenters, means+st.error)


