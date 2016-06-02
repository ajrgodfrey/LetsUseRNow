## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/Multivariate', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----GetPackage----------------------------------------------------------
require(MASS) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

