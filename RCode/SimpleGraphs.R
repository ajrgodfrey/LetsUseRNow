## ----IntroAirQuality-----------------------------------------------------
str(airquality) 

## ----AttachAirQuality----------------------------------------------------
attach(airquality) 

## ----HistAirQualityWind, fig.show="hide"---------------------------------
hist(Wind) 

## ----HistAirQualityWindSVG, echo=FALSE, include=FALSE, messages=FALSE, warnings=FALSE, results="hide", fig.show="hide"----
MyHist = hist(Wind) 
MakeAccessibleSVG(MyHist, "figures/SimpleGraphsHistAirQualityWind")

## ----echo=FALSE----------------------------------------------------------
if(file.exists("AddBlind.txt")){
    VI(MyHist)}

## ----HistAirQualityWind2, fig.show="hide"--------------------------------
hist(Wind, xlab="Average wind speed (mph)", main="") 

## ----HistAirQualityWind2SVG, echo=FALSE, include=FALSE, messages=FALSE, warnings=FALSE, results="hide"----
MyHist = hist(Wind, xlab="Average wind speed (mph)", main="") 
MakeAccessibleSVG(MyHist, "figures/SimpleGraphsHistAirQualityWind2")

## ----echo=FALSE----------------------------------------------------------
if(file.exists("AddBlind.txt")){
    VI(MyHist)}

## ----BoxplotAirQualityWind, fig.width=7, fig.height=5, eval=-1, fig.show="hide"----
windows(7, 5) 
boxplot(Wind, horizontal=TRUE, xlab="Wind speed (mph)") 

## ----BoxplotAirQualityWindSVG, echo=FALSE, include=FALSE, messages=FALSE, warnings=FALSE, results="hide", fig.show="hide"----
MyBoxplot = boxplot(Wind, horizontal=TRUE, xlab="Wind speed (mph)")
#MakeAccessibleSVG(MyBoxplot, "figures/SimpleGraphsBoxplotAirQualityWind")

## ----echo=FALSE----------------------------------------------------------
if(file.exists("AddBlind.txt")){
    VI(MyBoxplot)}

## ----CompBoxplotAirQualityWind, fig.show="hide"--------------------------
boxplot(Wind~Month, xlab="Month", ylab="Wind speed (mph)") 

## ----CompBoxplotAirQualityWindSVG, echo=FALSE, include=FALSE, messages=FALSE, warnings=FALSE, results="hide", fig.show="hide"----
MyBoxplot = boxplot(Wind~Month, xlab="Month", ylab="Wind speed (mph)")
#MakeAccessibleSVG(MyBoxplot, "figures/SimpleGraphsCompBoxplotAirQualityWind") 

## ----echo=FALSE----------------------------------------------------------
if(file.exists("AddBlind.txt")){
    VI(MyBoxplot)}

## ----DotPlot, fig.width=7, fig.height=2.5, eval=-1, fig.show="hide"------
windows(7, 2.5) 
dotchart(Wind) 

## ----DotPlotWindSVG, echo=FALSE, include=FALSE, messages=FALSE, warnings=FALSE, results="hide", fig.show="hide"----
MyDotplot = dotchart(Wind) 
#MakeAccessibleSVG(MyDotplot, "figures/SimpleGraphsDotPlot") 

## ----echo=FALSE----------------------------------------------------------
if(file.exists("AddBlind.txt")){
    VI(MyDotplot)}

## ----LinePlot, fig.show="hide"-------------------------------------------
plot(Temp, ylim=c(50, 100)) 

## ----LinePlot2, fig.show="hide"------------------------------------------
plot(Temp, ylim=c(50, 100), type="l") 

## ----NormPlot, fig.show="hide"-------------------------------------------
qqnorm(Wind) 
qqline(Wind) 

## ----ScatterCode1, eval=FALSE--------------------------------------------
plot(Wind, Temp) 

## ----ScatterCode2, eval=FALSE--------------------------------------------
plot(Temp~Wind) 

## ----Scatter, fig.show="hide"--------------------------------------------
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

