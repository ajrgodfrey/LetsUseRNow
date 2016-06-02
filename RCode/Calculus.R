## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/Calculus', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----SineCurve-----------------------------------------------------------
MySine <- function(x){ sin(x)} 
curve(MySine, -4*pi, 2*pi, n = 2001) 

## ----Derivation----------------------------------------------------------
y=expression(exp(2*x)) 
D(y,"x") 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

