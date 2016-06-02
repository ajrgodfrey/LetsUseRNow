## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/QualityControl', comment=NA, dev='postscript', tidy=FALSE, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth")
source("GenericSettings.R")

## ----GetPackage----------------------------------------------------------
library(qcc)

## ----cleanup, include=FALSE----------------------------------------------
detach(package:qcc)
rm(list = ls())

