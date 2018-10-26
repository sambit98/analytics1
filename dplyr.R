#analysis of mtcars using dplyr
#filename : dplyr-mtcars.r

library(dplyr)
?mtcars
#structure of data set
str(mtcars)
dim(mtcars)
names(mtcars) #column names
rownames(mtcars) #row names
colnames(mtcars) #column names
summary(mtcars)  #summary of data set 

#summary activities on mtcars

t1 = table(mtcars$am) 
pie(t1)
pie(t1,labels = c('Auto', 'Manual') )
t2= table(mtcars$gear)
t2
pie(t2)
pie(t2,labels=c('no =3', 'no = 4', 'no = 5'))
barplot(t2)
#barplot(t2,labels = c('ny','cc'))

barplot(t2,col=c('green', 'blue' , 'yellow') , xlab ='gear' 
        , ylab ='no of cars',ylim=c(0,20))
title(main='Distribution of gearsof cars',sub = 'No of Gears')

#using dplyr % > % is chaining function
mtcars %>% select(mpg) %>% slice(1:5) 
#select for column , slice for rows  it shows the first 5 rows of mpg
mtcars %>% select(mpg,gear) %>% slice(c(1:5,10)) 
#shows first 5 and the 10th row of mpg and gear
mtcars %>% arrange(mpg) #ascending order of milage
mtcars %>% arrange(am,desc(mpg)) %>% select(am,mpg)
#ascending order of mpg and descending order of mpg
mtcars %>% mutate(rn =rownames(mtcars)) %>% select(rn, mpg)
#display rownames with mpg
mtcars %>% slice(c(1,5,7)) #shows 1,5 & 7th row
sample(1:11,size=3)
mtcars %>% sample_n(3)        
mtcars %>% sample_frac(.2)


mtcars %>% mutate(newmpg = mpg *1.1)
mutate(mtcars,newmpg=mpg*1.1)
#mutate() adds an extra column


#type of Tx , mean(mpg)
mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg))

mtcars %>% group_by(am) %>% summarise(MeanMPG = mean(mpg)
                                      ,MaxHP=max(hp) 
                                      , MinWT=min(wt) )          
      

#grouping by am i.e transmission and then summarising by different 
 #parameters like mean mpg , maxHP, minWT

mtcars %>% group_by(cyl, gear) %>%summarise(MeanMPG = mean(mpg))
 #grouping by cyl and gear repectively and summarising by meanMPG


