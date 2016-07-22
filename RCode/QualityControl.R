## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include=FALSE----------------------------------------------
opts_chunk$set(fig.path='figures/QualityControl', comment=NA, dev='postscript', tidy=FALSE, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 

## ----GetPackage----------------------------------------------------------
library(qcc) 

## ----cleanup, include=FALSE----------------------------------------------
detach(package:qcc) 
rm(list = ls()) 

