## ----setup, include = FALSE----------------------------------------------
opts_chunk$set(fig.path='figures/Additional', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth")
source("GenericSettings.R")

## ----ChooseUsingText, eval=FALSE-----------------------------------------
chooseCRANmirror(FALSE)

## ----ChooseCloud, eval=FALSE---------------------------------------------
chooseCRANmirror(ind=1)

## ----InstallPackages, eval=FALSE-----------------------------------------
install.packages("Dodge", dependencies=TRUE)

## ----UpdatePackages, eval=FALSE------------------------------------------
update.packages(ask=FALSE)

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

