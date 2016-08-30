## ----Hists12Z------------------------------------------------------------
par(mfrow=c(4,3)) 
for(Counter in 1:12){ 
hist(rnorm(100), main=paste("Sample", Counter))} 

## ----CreateArrangement---------------------------------------------------
Arrangement.mat = matrix(c(1,1,1,2,1,1,1,3,1,1,1,4,5,5,6,6), byrow=TRUE, nrow=4) 
Arrangement.mat 

## ----LayoutDiffSizes-----------------------------------------------------
attach(quakes) 
layout(Arrangement.mat) 
plot(long, lat) 
plot(depth, mag, ylim=c(4,6.5)) 
plot(lat, mag, ylim=c(4,6.5), cex=0.5) 
plot(long, mag, ylim=c(4,6.5), cex=0.25) 
boxplot(mag, xlab="Magnitude", horizontal=TRUE) 
boxplot(log(mag), xlab="log(Magnitude)", horizontal=TRUE) 
detach(quakes) 

## ----IrisInColour--------------------------------------------------------
plot(Sepal.Length~Sepal.Width, data=iris, xlab="Sepal width", ylab="Sepal length", col=Species) 

## ----IrisInSymbols-------------------------------------------------------
plot(Petal.Length~Petal.Width, data=iris, xlab="Petal width", ylab="Petal length", pch=as.numeric(Species)) 

## ----Colors, eval=FALSE--------------------------------------------------
## colors()

## ----DeathsTSPlot--------------------------------------------------------
plot(ldeaths, ylim=c(0,4000), xlab="Year", ylab="Number of deaths") 
lines(fdeaths, col="red") 
lines(mdeaths, col="blue") 

## ----QuakesPlaces--------------------------------------------------------
plot(lat~long, data=quakes, xlim=c(160,190), ylim=c(-40,-10)) 
abline(h=-30) 
abline(h=-20, lty=1) 
abline(v=180, lty=2) 
abline(v=170, lty=3) 

## ----HistWithNormalCurve-------------------------------------------------
hist(rnorm(1000)) 
curve(dnorm(x), -3,3, add=TRUE) 

## ----AddPolyCurve--------------------------------------------------------
Ozone.poly2 = lm(Ozone~poly(Wind,2, raw=TRUE), data=airquality) 
Coeffs=coef(Ozone.poly2) 
plot(Ozone~Wind, data=airquality) 
curve(Coeffs[1]+Coeffs[2]*x+Coeffs[2]*x^2, min(Wind), max(Wind), add=TRUE) 

## ----DeathsTSPlotLegend--------------------------------------------------
plot(ldeaths, ylim=c(0,4000), xlab="Year", ylab="Number of deaths") 
lines(fdeaths, col="red") 
lines(mdeaths, col="blue") 
legend("topright", legend=c("Total", "Men", "Women"), col=c("black", "blue", "red"), lty=c(1,1,1)) 

## ----CreateSomeData------------------------------------------------------
Frequency=c(12,19, 22, 18, 11,13, 13, 12) 
Gender=rep(c("Male", "Female"), 4) 
Age=rep(c(17,18,19,20), each=2) 

## ----ClusterBar----------------------------------------------------------
barplot(tapply(Frequency, list(Gender, Age), sum), col=c(2,4), legend=TRUE, beside=TRUE) 
title("Cluster bar chart of age and gender", ylab="Count", xlab="Age") 

## ----StackBar------------------------------------------------------------
barplot(tapply(Frequency, list(Gender, Age), sum), col=c(2,4), legend=TRUE) 
title("Stack bar chart of age and gender", ylab="Count", xlab="Age") 

## ----MtEdenContour-------------------------------------------------------
contour(volcano) 

## ----VolcanoExample, eval=FALSE------------------------------------------
## example(volcano)

## ----XYZContour----------------------------------------------------------
xUnique=((0:100)-50)/10 
yUnique=((0:100)-50)/10 
x=rep(xUnique, 101) 
y=rep(yUnique, each=101) 
z=matrix(0.75*x^2 + 0.5*y^2-0.4*x*y+x-y-1, nrow=101) 
contour(xUnique, yUnique, z) 

