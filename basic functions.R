#Vector -----
v1 = c(1,2,3,4,5)
class(v1)
?class
v2=c("A","B","C","D","E")
V2
v2
CLASS(v2)
class(v2)
v3 = c(TRUE, FALSE, T, F)
class(v3)
v2[3]
v3[4]
v4 = c(1,2, 'A')
v4
class(v4)
v5 = c(T,2,F)
v5

v1[v1==4] = 7
v1


?rnorm
v7 = rnorm(100, mean=60, sd=15)
v7
hist(v7)
hist(v7, breaks=15)
hist(v7, breaks=15, col=1:14)
hist(v7, freq=F, col='yellow')
lines(density(v7), col='red', lty=12, lwd=8)
title(main=' Pune University', sub='MBA')

hist(v7, freq = F, col='yellow', main = 'Pune Univ', sub='MBA' , xlab = 'Marks', ylabs='Density of Counts', xlim = c(0,100), ylim = c(0,0.03))
lines(density(v7), col='red', lty=12, lwd=8)

# Matrix ----
length(100:127)
m1 = matrix(100:127)
?matrix

length(100:167)
m1= matrix(100:127)
m1
(m1 =matrix(100:127, ncol=6, byrow = T))

(m2 =matrix(c(100:127), ncol=4, byrow = T))

m2[1,]
m2[ ,2]
m2[1:2, ]
m2
m2[,c(1,4)] # 2 & 6th row, 1st & 4th col
m2[2:6, 1:4]
m2
colSums(m2)
colMeans(m2)


# Array -----------
length(100:123)
4*3*2
a1 = array(100:123)
?array
a1
(a1 = array(100:123, dim=c(4,3,2)))

(loc = paste('loc', 1:4, sep='-'))
dimnames = c(c())

# Data Frame ----------
(rollno = 1:30)
(sname = paste('student', 1:30 , sep=''))
(gender = sample(c('M','F'), size=30, replace=T, prob=c(.7,.3)))
(marks = floor(runif(30,50,100)))
df1 = data.frame(rollno, sname, gender, marks)
head(df1,n=3)
head(df1,3)
?head

tail(df1)
str(df1)
class(df1)
summary(df1)
df1$marks
df1[,c(2,4)]


df1[1:10,]
df1[ marks >50 & gender=='F', ]
df1[ marks >50 & gender=='F',c(1,2)]
df1[ marks >50 & gender=='F', c('rollno', 'sname')]
df1[ marks >50 & gender=='F', ]
names(df1) # names of columns
dim(df1) #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=mean)
aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(df1$marks, by=list(df1$gender), FUN=min)
df2=aggregate(marks ~ gender, data=df1, FUN=mean)

pie(x=df2$marks) 
barplot(df2$marks, col = 1:2)

?aggregate    

(marks2 = ceiling(rnorm(30,40,5)))
df1=data.frame(rollno,sname,gender,marks,marks2)
head(df1, n=3)
df2=aggregate(cbind(marks,marks2) ~ gender, data=df1, FUN=max)
df2
(course= sample(c('BBA','MBA')))


# install dplyr package
# List ------ 

# Factor ------

(grades = sample(c('A','B','C','D'), size = 30, replace = T, prob = c(.3,.2,.4,.1)))
table(grades)
class(grades)
gradeF = factor(grades,  ordered=T)
gradeF
grades

gradeF2 = factor(grades,  ordered=T, levels=c('D','C','B','A'))
gradeF2
