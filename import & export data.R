
list.files('./data2')
data=scan("./data2/hhe.txt",what="character")
?scan
head(data)

#CSV Read from CSV
#First Create as csv file from  iris data set
head(iris)
?iris
write.csv(iris , "./data/iris.csv" ,row.names = F )  
# created a csv dataset from iris data frame and stored it in file "data" which was previously created by "./data/iris.csv"
#go to folder data and see iris.csv
read1=read.csv(file)




#CSV file from web

read_web1 = 
read.csv('http://www.stats.ox.ac.uk/pub/datasets/csb/ch11b.dat')
read_web1
#import from google sheet 
library(gsheet)
url_gsheet = "https://docs.google.com/spreadsheets/d/1QogGSuEab5SZyZIw1Q8h-0yrBNs1Z_eEBJG7oRESW5k/edit#gid=107865534"
url_gsheet
#import from excel
library(xlsx)
