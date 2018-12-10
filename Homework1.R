library("MASS")

first = 15 * 9
last = 15 * 9 + 100

#A) Full info about the oldest lady.
myData = survey[first : last, ]
women = subset(myData, Sex == 'Female')
print(women[which.max(Age), ])
print('A:')
