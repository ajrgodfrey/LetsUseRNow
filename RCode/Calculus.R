## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include=FALSE----------------------------------------------
opts_chunk$set(fig.path='figures/Calculus', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 

## ----SineCurve-----------------------------------------------------------
MySine <- function(x){ sin(x)} 
curve(MySine, -4*pi, 2*pi, n = 2001) 

## ----Derivation----------------------------------------------------------
y=expression(exp(2*x)) 
D(y,"x") 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

