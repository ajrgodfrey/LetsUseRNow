## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----WriteCSV, eval=FALSE------------------------------------------------
write.csv(Chickens, file="chickens.csv") 

## ----WriteCSV2, eval=FALSE-----------------------------------------------
write.csv(Chickens, file="chickens.csv", row.names=FALSE) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

