## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----Assignment----------------------------------------------------------
x=100/7 
x 

## ----UseVariable---------------------------------------------------------
12*x 

## ----BasicMath-----------------------------------------------------------
x=sqrt(169) 
y=log(500) 
x*y 

## ----EnterNumeric--------------------------------------------------------
y=c(1, 4, 9, 16, 25, 36, 49, 64, 81, 100) 
y 

## ----EnterSeq------------------------------------------------------------
x=1:10 
x 

## ----Suare10qIntegers----------------------------------------------------
y=(1:10)^2 
y 

## ----EnterText-----------------------------------------------------------
Names = c("Jonathan", "Elizabeth", "Peter", "Jenna", "Callum", "Annabelle", "Cordelia") 
Names 

## ----EnterLogical--------------------------------------------------------
Human = c(TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE) 

## ----UseLogical----------------------------------------------------------
Names[Human] 

## ----UseLogical2---------------------------------------------------------
Names[!Human] 

## ----UseSubscript--------------------------------------------------------
Names[1] 

## ----UseSubscript2-------------------------------------------------------
Names[2:3] 

## ----CheckData-----------------------------------------------------------
class(Names) 
str(Names) 

## ----UseSubscript3-------------------------------------------------------
Names[-1] 

## ----CreatePattern-------------------------------------------------------
Week = rep(1:4, each=5) 
Week 
Day = rep(c("Mon", "Tue", "Wed", "Thu", "Fri"), times=4) 
Day 

## ----CreatePattern2------------------------------------------------------
rep(1:5, times=1:5) 

## ----CreatePattern3------------------------------------------------------
rep(c(1,2,4), times=3, length.out=8) 

## ----Dates---------------------------------------------------------------
date() 
class(date()) 

## ----Dates2--------------------------------------------------------------
Sys.Date() 
class(Sys.Date()) 

## ----FactorData----------------------------------------------------------
Months = as.factor(c(3,6,9,12,3,6,9,12)) 
Months 

## ----UseLevels-----------------------------------------------------------
levels(Months) = c("Mar", "Jun", "Sep", "Dec") 
Months 

## ----CreateDF------------------------------------------------------------
data.frame(Names, Human) 

## ----CreateDF2-----------------------------------------------------------
MyFirstDF = data.frame(Names, Human) 
str(MyFirstDF) 

## ----CallDF--------------------------------------------------------------
names(MyFirstDF) 

## ----UseDF2--------------------------------------------------------------
MyFirstDF[4,1] 
MyFirstDF[4,"Names"] 
MyFirstDF$Names[4] 

## ----CreateDF3-----------------------------------------------------------
Year = c(1971, 1945, 1925, 2003, 2010, 2012, 2013) 
Month = c("October", "October", "July", "October", "April", "June", "June") 
MySecondDF = data.frame(Year, Month, Human, row.names = Names) 
str(MySecondDF) 

## ----CreateDF4-----------------------------------------------------------
MyThirdDF = expand.grid(h=c(60,80), w=c(100, 300), sex=c("Male", "Female")) 
MyThirdDF 

## ----CreateDF5-----------------------------------------------------------
MyThirdDF$Response = rnorm(8) 
MyThirdDF 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

