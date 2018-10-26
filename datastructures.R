x=1:10
x
x1<- 1:20
x1
(x1=1:30)
(x2=c(1,2,13,4,5))

class(x2)
x3=letters
x3
class(x3)
LETTERS[1:26]
LETTERS[seq(1,26,2)]

x3b=c('a', "Dhiraj" , "4")
x3b
class(x3b) 
( x6=seq(0,100,by=3))
x6
length(x6)  
x6[20]
x6 = seq(0 , 100 , by =2 )
x6[-1]
x6
rev(x6) #reverse the order of data
x6= sample(1:20)
x6
sort(x6)
set.seed(123)
x=1:10
x[x<4 | x>6 ]
x[x<4 | x>6 ] =100 
x
x[x==100]
length(x[x==100])
x=101:124
m3 = matrix(x,ncol=6)
attributes(m3)
dim(m3)
m3[1,2:3]
paste("c","d",sep = '-')
colSums(m3)
t(m3)  #transpose

sweep(m3, MARGIN= 1 , STATS = c(2,3,4,5) , FUN="+") #row wise
sweep(m3,MARGIN = 2,STATS = c(2,3,4,5), FUN="+") #col wise

colSums(m3)
addmargins(m3,margin =1 , sum) 
addmargins(m3,1,sum)
addmargins(m3,1,sd)
addmargins(m3,c(1,2),list(list(mean,sum,max),list(var,sd)))
