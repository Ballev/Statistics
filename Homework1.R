library("MASS")

first = 15 * 9
last = 15 * 9 + 100

# A) Full info about the oldest lady.
myData = survey[first : last, ]
women = subset(myData, Sex == 'Female')
print('A: ')
print(women[which.max(Age), ])


# B) The Sex of the four tallest people.
ordered = order(myData$Height, decreasing = T)
print ('B: ')
print(myData[ordered[1:4], ]$Sex)


# C) Mean of man with Pulse more than 80.
print('C: ')
print(mean(myData$Age[myData$Pulse > 80 & myData$Sex == 'Male'], na.rm = T))


# D) How many of the people who exercise frequently are taller than 175.
print('D: ')
print(nrow(myData$Exer[myData$Height > 175] == 'Freq'))


# E) Descriptive statistics and boxplot for HEight, Exer.
print('E: ')
print(summary(Height[Exer[first : last] == 'Freq'], na.rm = T)> summary(Height[Exer[first : last] == 'Freq'], na.rm = T))
boxplot(split(myData$Height, myData$Exer), na.rm = T)


# F) Search for variables with linear relation between them. Display graphic.
print('F: ')
print(cor(myData$Age, myData$Wr.Hnd, method = "pearson", use = "complete.obs"))
plot(Height, Wr.Hnd)


# G) Display graphically Exer and Smoke with their relation.
print('G: ')
plot(myData$Exer, myData&Smoke) 
