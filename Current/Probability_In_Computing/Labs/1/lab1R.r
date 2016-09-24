# Keyan Vakil

# Problem 7
grades <- read.csv('/tmp/grades.csv')
View(grades)
# Among the first 10 students in each class,
# Class 1 has 1 student with a 4.0
# Class 2 has 1 student with a 4.0
# Class 3 has 1 student with a 4.0
# 
# Problem 8
summary(grades)
# The summary function shows an easier way to get a sense of the
# distribution of grades for each class
# Min. is the minimum grade (0th percentile grade)
# 1st Qu. is the 25th percentile grade
# Median is the 50th percentile grade
# Mean is the average grade 
# 3rd Qu. is the 75th percentile grade
# Max is the maximum grade (100th percentile grade)
# 
# Problem 9
sd(grades[,'class1'])
sd(grades[,'class2'])
sd(grades[,'class3'])
#
# Problem 10
boxplot(grades)
# The horizontal line above the lower vertical dotted line represents the 1st Qu. (the 25th highest value of all values)
# The bold horizontal line in the middle represents the Median (the middle value of all values)
# The horizontal line below the upper vertical dotted line represents the 3rd Qu. (the 75th highest value of all values)
#
# Problem 11
l1 <- length(grades[,'class1'])
l1
l2 <- length(grades[,'class2'])
l2
l3 <- length(grades[,'class3'])
l3

t1 <- table(grades[,'class1'])/l1
t1
t2 <- table(grades[,'class2'])/l2
t2
t3 <- table(grades[,'class3'])/l3
t3

plot(t1)
plot(t2)
plot(t3)
#
