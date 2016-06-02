## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/StoreResults', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth")
source("GenericSettings.R")

## ----HistRand10000Z, eval=2, fig=TRUE, results='hide', include=FALSE-----
x11()
hist(rnorm(10000), xlab="x", main="")
savePlot(".\\figures\\HistRandValsStandNorm.eps", type = "eps")
dev.off()

## ----CreateX-------------------------------------------------------------
x=1:20
x

## ----CreateSinkFile, eval=-3, results='hide'-----------------------------
sink(".\\other\\JustPrintX.txt")
x
sink()

## ----CreateSink2, eval=-3------------------------------------------------
sink(".\\other\\JustPrintX2.txt")
print(x)
sink()

## ----CreateSink3, eval=-3------------------------------------------------
sink(".\\other\\JustPrintX3.txt")
cat(x)
sink()

## ----CreateSinkFile4-----------------------------------------------------
cat(x, file=".\\other\\JustCatX.txt")

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

