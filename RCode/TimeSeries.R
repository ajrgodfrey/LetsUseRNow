## ----IntroData-----------------------------------------------------------
str(LakeHuron) 
str(lynx) 
str(Nile) 

## ----MakeTSTemp----------------------------------------------------------
Temp.ts = as.ts(airquality$Temp) 

## ----NilePlot------------------------------------------------------------
plot(Nile, xlab="Year", ylab="Flow") 

## ----NilePlotSVG---------------------------------------------------------
TimeSeriesPlot(Nile, xlab="Year", ylab="Flow") 

## ----TSPlotsCompared-----------------------------------------------------
plot(airquality$Temp, ylab="Temperature") 
plot(Temp.ts, ylab="Temperature") 

## ----FilterExample-------------------------------------------------------
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

## ----NileACF-------------------------------------------------------------
acf(Nile) 

## ----NileACFNoPlot-------------------------------------------------------
acf(Nile, plot=FALSE) 
pacf(Nile, plot=FALSE) 

## ----getAustResData------------------------------------------------------
str(austres) 

## ----DecomposeAustRes----------------------------------------------------
AustRes.dec1 = decompose(austres) 
Aust.dec2 =decompose(austres, type="mul") 

## ----STLAustRes----------------------------------------------------------
AustRes.dec3 = stats::stl(austres, s.window="periodic") 
AustRes.dec3 
plot(AustRes.dec3) 

## ----NileHoltWinters-----------------------------------------------------
Nile.hw1 = HoltWinters(Nile, beta=FALSE, gamma = FALSE) 
Nile.hw1 
plot(Nile.hw1) 

## ----AustResHW-----------------------------------------------------------
AustRes.hw1 = HoltWinters(austres) 
AustRes.hw1 
plot(AustRes.hw1) 
AustRes.hw2 = HoltWinters(austres, seasonal="mult") 
AustRes.hw2 
plot(AustRes.hw2) 

