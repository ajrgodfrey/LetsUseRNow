## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/Regression', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 
source("GenericSettings.R") 

## ----GetData, eval=FALSE-------------------------------------------------
data(airquality) 

## ----OzoneLM1------------------------------------------------------------
Ozone.lm1 = lm(Ozone~Wind, data=airquality) 
Ozone.lm1 
summary(Ozone.lm1) 
anova(Ozone.lm1) 
Ozone.lm2 = lm(Ozone~Temp, data=airquality) 
summary(Ozone.lm2) 
anova(Ozone.lm2) 

## ----GetDetails----------------------------------------------------------
names(Ozone.lm1) 
names(summary(Ozone.lm1)) 
summary(Ozone.lm1)$r.squared 

## ----OzoneWindWithLine---------------------------------------------------
attach(airquality) 
plot(Wind, Ozone) 
abline(Ozone.lm1) 

## ----OzoneTempWithLine---------------------------------------------------
plot(Temp, Ozone) 
abline(Ozone.lm2) 
detach(airquality) 

## ----OzoneWindResidPlots-------------------------------------------------
par(mfrow=c(2,2)) 
plot(Ozone.lm1) 

## ----GetValues1----------------------------------------------------------
Ozone.resid1 = resid(Ozone.lm1) 
Ozone.fitted1 = fitted(Ozone.lm1) 
Ozone.lev1 = hatvalues(Ozone.lm1) 

## ----Leverages-----------------------------------------------------------
mean(Ozone.lev1) 
max(Ozone.lev1) 
Ozone.lev1[Ozone.lev1>2*mean(Ozone.lev1)] 

## ----OzonePoly2----------------------------------------------------------
Ozone.poly2 = lm(Ozone~poly(Wind,2, raw=TRUE), data=airquality) 
summary(Ozone.poly2) 

## ----OzonePoly3----------------------------------------------------------
Ozone.poly3 = lm(Ozone~poly(Wind,3, raw=TRUE), data=airquality) 

## ----OzoneANOVA----------------------------------------------------------
anova(Ozone.lm1, Ozone.poly2, Ozone.poly3) 

## ----QuadAddPoints-------------------------------------------------------
plot(Ozone~Wind, data=airquality) 
points(airquality$Wind[!is.na(airquality$Ozone)], fitted(Ozone.poly2), col=2) 

## ----OzoneLM3------------------------------------------------------------
Ozone.lm3 = lm(Ozone~Wind+Temp, data=airquality) 

## ----OzoneLM4------------------------------------------------------------
Ozone.lm4 = lm(Ozone~poly(Wind,2)+Temp, data=airquality) 

## ----OzoneANOVA2---------------------------------------------------------
anova(Ozone.lm2, Ozone.lm3, Ozone.lm4) 

## ----OzoneLM5------------------------------------------------------------
Ozone.lm5 = lm(Ozone~poly(Wind,2)*Temp, data=airquality) 
summary(Ozone.lm5) 

## ----OzoneANOVA3---------------------------------------------------------
anova(Ozone.lm5, Ozone.lm4) 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

