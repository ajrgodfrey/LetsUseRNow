## ----ImportCSV, eval=FALSE-----------------------------------------------
## Chickens = read.csv("chickens.csv")

## ----ImportCSV2,eval=FALSE-----------------------------------------------
## Chickens = read.csv("chickens.csv", row.names=1)

## ----ImportCSV3,eval=FALSE-----------------------------------------------
## Chickens = read.csv("chickens.csv", header=FALSE)

## ----GetWD---------------------------------------------------------------
getwd() 

## ----ImportCSVSubFolder1, eval=FALSE-------------------------------------
## Chickens = read.csv("MyData/chickens.csv")

## ----ImportCSVSubFolder2, eval=FALSE-------------------------------------
## Chickens = read.csv("./MyData/chickens.csv")

## ----ImportCSVSOtherFolder, eval=FALSE-----------------------------------
## Chickens = read.csv("../MyData/chickens.csv")

## ----PullData------------------------------------------------------------
data(airquality) 
str(airquality) 
ls() 

## ----PullData2-----------------------------------------------------------
data(anorexia, package="MASS") 

