## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/ANOVA', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----SleepAOV------------------------------------------------------------
summary(aov(extra~ID+group, data=sleep)) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

