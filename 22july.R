rollno= 1:3
sname = c('s1','s2','s3')
(sname= c(paste('s', 1:3, sep='')))
df = data.frame(rollno, sname)
df
#str, dim, class, summary
str(df)
# filter
df$rollno
df$sname
df[.]



# -------------- sirs program

(rollno = paste('s',1:30, sep='-'))
#sname = c('s1','s2','s3')
(sname = paste0('Student', 1:30, '- ', 'xyz'))
(gender= sample(c('M','F'), size=30, replace= T, prob =c(.4, .4)))
(age=floor(runif(30, 21, 50)))
(course = sample(c('BTech', 'MTech', 'PHD'), size = 30, replace=T, prob = c(.5,.3,.2)))

table(course)
pie(table(course))
barplot(table(course))
(marks = round(rnorm(30, 60, 5)))
boxplot(marks)
hist(marks, freq = F)
lines(density(marks))
(married= sample(c(TRUE, FALSE), replace = T, size = 30, prob=c(.1,.9)))
table(married)

df = data.frame(rollno, sname, age, course, gender, marks)
df
table(gender)


# export to csv

write.csv(df, './data/pumba.csv')
?write.csv

sales = sales1









#dplyr
names(sales)
library(dplyr)

name (sales)
sales %>% group_by(custname) %>% summerize(Revenue = sum(revenue)) %>% arrange(desc(Revenue)) %>% head(n=3)

#Tripmph Insulation gave highest revenue


# Frequency -------
names(sales)
t1= table(sales$custname)
class(t1)



