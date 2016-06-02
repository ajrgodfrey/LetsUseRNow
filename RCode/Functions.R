## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/Functions', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----SineCurve-----------------------------------------------------------
MySine <- function(x){ sin(x)} 

## ----MySine2-------------------------------------------------------------
MySine2 <- function(x){ sin(x) 
print(x)} 
MySine2(pi/2) 

## ----MySine3-------------------------------------------------------------
MySine3 <- function(x){ return(sin(x)) 
print(x)} 
MySine3(pi/2) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

