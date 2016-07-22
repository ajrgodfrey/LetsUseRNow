## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include = FALSE--------------------------------------------
opts_chunk$set(fig.path='figures/Additional', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth")

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

