## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/BasicInference', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----BasicStats----------------------------------------------------------
mean(precip) 
sd(precip) 
length(precip) 
qt(0.975, length(precip)-1) 

## ----FirstConfInt--------------------------------------------------------
mean(precip) - qt(0.975, length(precip)-1) * sd(precip) / sqrt(length(precip)) 
mean(precip) + qt(0.975, length(precip)-1) * sd(precip) / sqrt(length(precip)) 

## ----SecondConfInt-------------------------------------------------------
mean(precip) + c(-1,1) * qt(0.975, length(precip)-1) * sd(precip) / sqrt(length(precip)) 

## ----FirstHypTest--------------------------------------------------------
TestStat= (mean(precip)-30)/(sd(precip) / sqrt(length(precip))) 
pt(TestStat, length(precip)-1, lower.tail=FALSE) 

## ----TTest1--------------------------------------------------------------
t.test(precip) 

## ----TTest2--------------------------------------------------------------
t.test(precip, mu=30, alternative="greater") 

## ----GetData-------------------------------------------------------------
attach(sleep) 

## ----TTest3--------------------------------------------------------------
t.test(extra[group=="1"], extra[group=="2"], paired=TRUE) 

## ----TTest4--------------------------------------------------------------
t.test(extra~group, paired=TRUE) 

## ----DropData------------------------------------------------------------
detach(sleep) 

## ----Correlations--------------------------------------------------------
attach(airquality) 
cor.test(Ozone, Wind) 
cor.test(Ozone, Wind, method="spearman") 
detach(airquality) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

