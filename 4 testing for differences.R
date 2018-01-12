##Assignment 4:Testing for differences
##Your name

##################################################################
##CHI-SQUARE GOODNESS OF FIT
##################################################################
##We used excel to do the calculations required for a Chi-Square test
##Now we will do those same calculations in R 

#Read in data (this should be the observed counts of each M&M color)
data<-read.table("MM.txt", header=TRUE)
head(data)

#Using the sum() function, calculate the total number of M&Ms in the bag

#Calculate the expected number of each color

#Calculate the observed-expected numbers

#Calculate (observed-expected)^2

#Calculate (observed-expected)^2/expected

#Calculate chi-square statistic.

#Compare to your excel workbook. 

#Now, use an R function to run a chi-square test directly
#this requires a vector of the expected probabilities for each color
#Since we expect the colors to occur at the same probability, 
#it will be a vector with one number repeated 6 times


#What is null hypothesis of this test?

#Are you able to accept or reject the null hypothesis?

#Aparently, M&Ms are expected to be in equal proportions.
#Here is the expected percentage of each color according
#to the internet: blue 24%, brown 13%, green 16%, orange 20%
#red 13%, yellow 14%
#Perform another test with these expected values. Are our results
#different from these expected values?



##################################################################
##t-test
##################################################################
#Change in heart rate different between males and females

#Change in heart rate different depending on whether or not you play a sport?
