## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/VI', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----LoadPackage---------------------------------------------------------
library(BrailleR) 

## ----SaveHistory, eval=FALSE---------------------------------------------
savehistory("WhatIDidToday.txt") 

## ----TXTOut, eval=FALSE--------------------------------------------------
txtOut() 

## ----CreateHist----------------------------------------------------------
x=rnorm(1000) 
MyHist =hist(x, plot=FALSE) 

## ----ShowPrintHist-------------------------------------------------------
MyHist 
str(MyHist) 
class(MyHist) 

## ----VIHist--------------------------------------------------------------
VI(hist(x)) 

## ----VIBoxplot-----------------------------------------------------------
VI(boxplot(x)) 

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

