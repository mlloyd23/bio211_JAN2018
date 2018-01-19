#ANOVA 
#Lecture 5

#have a look at the data
head(ToothGrowth)
names(ToothGrowth$supp)
dim(ToothGrowth)
str(ToothGrowth)

#Treat dose as factor
ToothGrowth$dose<-as.factor(ToothGrowth$dose)

#Test for normality 
shapiro.test(ToothGrowth$len)
hist(ToothGrowth$len)

#Test for equal variances
VC<-subset(ToothGrowth, supp=="VC")
OJ<-subset(ToothGrowth, supp=="OJ")
head(OJ)

var.test(VC$len,OJ$len)
#The p-value of F-test is p = 0.2331433 which is 
#greater than the significance level 0.05
#there is no significant difference between the two variances.




#perform anova; test for effect of supplement
#note the order of variables
anova.supp.test= aov(len~supp, data=ToothGrowth)

#look at the results
summary(anova.test)

print(model.tables(anova.test,"means"),digits=3)       

boxplot(len~supp, data=ToothGrowth)

#perform anova: test for effect of dose?
anova.dose.test<-aov(len~dose, data=ToothGrowth)
summary(anova.dose.test)

#post-hoc tukey
tukey.test<-TukeyHSD(anova.dose.test)
tukey.test


#Two-way ANOVA
two.way<-aov(len~dose*supp,data=ToothGrowth)

#look at results
summary(two.way)
print(model.tables(two.way,"means"),digits=3)

# Two-way interaction plot
install.packages("ggpubr")
library("ggpubr")
ggboxplot(ToothGrowth, x = "dose", y = "len", color = "supp",
          palette = c("#00AFBB", "#E7B800"))
