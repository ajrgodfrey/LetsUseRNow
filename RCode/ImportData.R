## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ImportCSV, eval=FALSE-----------------------------------------------
Chickens = read.csv("chickens.csv") 

## ----ImportCSV2,eval=FALSE-----------------------------------------------
Chickens = read.csv("chickens.csv", row.names=1) 

## ----ImportCSV3,eval=FALSE-----------------------------------------------
Chickens = read.csv("chickens.csv", header=FALSE) 

## ----GetWD---------------------------------------------------------------
getwd() 

## ----ImportCSVSubFolder1, eval=FALSE-------------------------------------
Chickens = read.csv("MyData/chickens.csv") 

## ----ImportCSVSubFolder2, eval=FALSE-------------------------------------
Chickens = read.csv("./MyData/chickens.csv") 

## ----ImportCSVSOtherFolder, eval=FALSE-----------------------------------
Chickens = read.csv("../MyData/chickens.csv") 

## ----PullData------------------------------------------------------------
data(airquality) 
str(airquality) 
ls() 

## ----PullData2-----------------------------------------------------------
data(anorexia, package="MASS") 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

