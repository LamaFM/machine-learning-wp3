##1. Import dataset
SNA = read.csv("Social_Network_Ads.csv", header = TRUE, sep = ",")
##2. Describe dataset
str(SNA)
summary(SNA)
##3. Split the dataset
library(caTools)
#We use a seed so that every time the script is used, we get the same results
set.seed(seed = 123)
#The data set is split randomly with a 75% training, 25% testing ratio
split = sample.split(SNA$Purchased, SplitRatio = 0.75)
training_set = subset(SNA, split == TRUE)
testing_set = subset(SNA, split == FALSE)
