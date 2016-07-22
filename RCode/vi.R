## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include=FALSE----------------------------------------------
opts_chunk$set(fig.path='figures/VI', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 

## ----LoadPackage---------------------------------------------------------
library(BrailleR) 

## ----SaveHistory, eval=FALSE---------------------------------------------
savehistory("WhatIDidToday.txt") 

## ----TXTOut, eval=FALSE--------------------------------------------------
txtOut() 

## ----CreateHist----------------------------------------------------------
MyHist = hist(airquality$Wind, xlab="Average wind speed (mph)", main="", plot=FALSE) 

## ----ShowPrintHist-------------------------------------------------------
MyHist 
str(MyHist) 
class(MyHist) 

## ----VIHist--------------------------------------------------------------
VI(hist(airquality$Wind, xlab="Average wind speed (mph)", main="")) 

## ----VIBoxplot-----------------------------------------------------------
VI(boxplot(airquality$Wind, xlab="Average wind speed (mph)")) 

## ----VIDotplot-----------------------------------------------------------
VI(dotplot(x)) 

## ----UniDesc, eval=FALSE-------------------------------------------------
data(airquality) 
Ozone=airquality$Ozone 
UniDesc(Ozone, Folder="AirQuality") 

## ----VIDataFrame---------------------------------------------------------
summary(airquality) 
VI(airquality) 

## ----CreateVars----------------------------------------------------------
x=(0:100)/100 
y1=5*x+rnorm(101) 
y2=(2*x-1)^2+rnorm(101)/6 
y3=11*x+rnorm(101) 
y4=y3; y4[100]=0 

## ----WhereXY-------------------------------------------------------------
WhereXY(x,y2, grid=c(5,5)) 
WhereXY(x,y2, grid=c(5,5)) 
WhereXY(x,y3, grid=c(5,5)) 
WhereXY(x,y4, grid=c(5,5)) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

