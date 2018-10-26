x2=3
ls()
data()
women
?women
?mtcars #tells about the data set
mtcars

attach(mtcars)
mpg
library()
rm(list=ls()) #removes all the current variable in the envioronment

?mean
x <- c(0:10, 50)
xm <- mean(x)
xm
c(xm, mean(x, trim = 0.10)) #trim removes the extreme data here 10%

help(mean) # help(mean) and ?mean both are same

1:100
seq(1,100, by = 2)
seq(1,10, length.out = 5)

methods(class='matrix')

rep

source('test1.R') #to combine files
print(mtcars)


