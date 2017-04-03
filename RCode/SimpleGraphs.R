## ----IntroAirQuality-----------------------------------------------------
str(airquality) 

## ----AttachAirQuality----------------------------------------------------
attach(airquality) 

## ----HistAirQualityWind, echo=TRUE, fig.show="hide"----------------------
hist(Wind) 

## ----HistAirQualityWindSVG, include=FALSE--------------------------------
MakeAccessibleSVG(hist(Wind), "figures/SimpleGraphsHistAirQualityWind")

## ----HistAirQualityWind2, fig.show="hide"--------------------------------
hist(Wind, xlab="Average wind speed (mph)", main="") 

## ----HistAirQualityWind2SVG, include=FALSE-------------------------------
MakeAccessibleSVG(hist(Wind, xlab="Average wind speed (mph)", main="") , "figures/SimpleGraphsHistAirQualityWind2")

## ----Boxplot, echo=FALSE, fig.width=7, fig.height=5, eval=-1-------------
windows(7, 5) 
boxplot(Wind, horizontal=TRUE, xlab="Wind speed (mph)") 

## ----CompBoxplot---------------------------------------------------------
boxplot(Wind~Month, xlab="Month", ylab="Wind speed (mph)") 

## ----DotPlot, echo=FALSE, fig.width=7, fig.height=2.5, eval=-1-----------
windows(7, 2.5) 
dotchart(Wind) 

## ----LinePlot------------------------------------------------------------
plot(Temp, ylim=c(50,100)) 

## ----LinePlot2-----------------------------------------------------------
plot(Temp, ylim=c(50,100), type="l") 

## ----NormPlot------------------------------------------------------------
qqnorm(Wind) 
qqline(Wind) 

## ----ScatterCode1, eval=FALSE--------------------------------------------
plot(Wind, Temp) 

## ----ScatterCode2, eval=FALSE--------------------------------------------
plot(Temp~Wind) 

## ----Scatter-------------------------------------------------------------
plot(Wind, Temp) 

## ----MatrixPlot----------------------------------------------------------
pairs(data.frame(Ozone, Solar.R, Wind, Temp)) 

## ----IntroStateRegion----------------------------------------------------
str(state.region) 
levels(state.region) 

## ----StateRegionBarChart-------------------------------------------------
plot(state.region) 

## ----SummaryState--------------------------------------------------------
summary(state.region) 

## ----StateRegionBarChart2------------------------------------------------
barplot(summary(state.region)) 

## ----ReorderRegions------------------------------------------------------
summary(state.region)[c(4,2,3,1)] 

## ----StateRegionBarChartImp----------------------------------------------
barplot(summary(state.region)[c(4,2,3,1)]) 

## ----StateRegionPieChart, fig.width=7, fig.height=7----------------------
pie(summary(state.region)) 

## ----DetachAirQuality----------------------------------------------------
detach(airquality) 

