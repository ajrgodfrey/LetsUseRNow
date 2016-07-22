## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include=FALSE----------------------------------------------
opts_chunk$set(fig.path='figures/Scientific', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 

## ----BasicTrig-----------------------------------------------------------
pi 
sin(pi/6) 
sin(30) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

