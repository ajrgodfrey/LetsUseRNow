## ----setup, include=FALSE------------------------------------------------
opts_chunk$set(fig.path='figures/TimeSeries', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth")
source("GenericSettings.R")

## ----MakeTSTemp----------------------------------------------------------
Temp.ts = as.ts(airquality$Temp)

## ----NilePlot, fig=TRUE--------------------------------------------------
plot(Nile, xlab="Year", ylab="Flow")

## ----TSPlotsCompared, fig=TRUE-------------------------------------------
plot(airquality$Temp, ylab="Temperature")
plot(Temp.ts, ylab="Temperature")

## ----FilterExample, fig=TRUE---------------------------------------------
plot(Nile)
for(i in 1:4){
w=4*i-1 # choose the window (3, 7,11,15)
lines( (start(Nile)[1]):end(Nile)[1], filter(Nile, rep(1/w, w), sides=1), col=i+2)
}

## ----BoxTest-------------------------------------------------------------
Box.test(Nile, lag=20)

## ----ForecastTests-------------------------------------------------------
library(tseries)
library(forecast)
adf.test(Nile)
pp.test(Nile)
kpss.test(Nile)

## ----NileACF, fig=T------------------------------------------------------
acf(Nile)

## ----NileACFNoPlot-------------------------------------------------------
acf(Nile, plot=FALSE)
pacf(Nile, plot=FALSE)

## ----getAustResData------------------------------------------------------
str(austres)

## ----DecomposeAustRes, fig=TRUE------------------------------------------
AustRes.dec1 = decompose(austres)
Aust.dec2 =decompose(austres, type="mul")

## ----STLAustRes, fig=TRUE------------------------------------------------
AustRes.dec3 = stats::stl(austres, s.window="periodic")
AustRes.dec3
plot(AustRes.dec3)

## ----NileHoltWinters, fig=TRUE-------------------------------------------
Nile.hw1 = HoltWinters(Nile, beta=FALSE, gamma = FALSE)
Nile.hw1
plot(Nile.hw1)

## ----AustResHW, fig=TRUE-------------------------------------------------
AustRes.hw1 = HoltWinters(austres)
AustRes.hw1
plot(AustRes.hw1)
AustRes.hw2 = HoltWinters(austres, seasonal="mult")
AustRes.hw2
plot(AustRes.hw2)

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

