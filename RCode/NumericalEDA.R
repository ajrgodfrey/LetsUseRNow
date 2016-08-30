## ----CheckData-----------------------------------------------------------
class(airquality) 

## ----SummaryDF-----------------------------------------------------------
summary(airquality) 

## ----MeansDF-------------------------------------------------------------
colMeans(airquality[,1:4]) 
colMeans(airquality[,1:4], na.rm=TRUE) 
mean(airquality[,1], na.rm=TRUE) 

## ----BasicStats----------------------------------------------------------
#median(airquality[,1:4], na.rm=TRUE) 
min(airquality[,1:4], na.rm=TRUE) 
max(airquality[,1:4], na.rm=TRUE) 

## ----AttachAirQuality----------------------------------------------------
attach(airquality) 

## ----SummaryVector-------------------------------------------------------
min(Temp) 
max(Wind) 
median(Solar.R) 
median(Solar.R, na.rm=TRUE) 

## ----Quartiles-----------------------------------------------------------
fivenum(Ozone) 

## ----TApply1-------------------------------------------------------------
tapply(Wind, Month, mean) 

## ----Aggregate1----------------------------------------------------------
aggregate(Wind~Month, data=airquality, mean) 

## ----TApply2-------------------------------------------------------------
Day15 = Day > 15
tapply(Wind, list(Month, Day15), mean) 
aggregate(Wind ~ Month + Day15, data=airquality, mean) 

## ----TApply3-------------------------------------------------------------
tapply(Wind, Month, summary) 

## ----TApply4-------------------------------------------------------------
tapply(Ozone, Month, mean) 

## ----TApply5-------------------------------------------------------------
tapply(Ozone, Month, mean, na.rm=TRUE) 

## ----SortedTApply--------------------------------------------------------
sort(tapply(Wind, Month, mean)) 

## ----SortedTApply2-------------------------------------------------------
rev(tapply(Wind, Month, mean)) 

## ----SortedTApply3-------------------------------------------------------
rev(sort(tapply(Wind, Month, mean))) 

## ----Correlations--------------------------------------------------------
cor(data.frame(Ozone, Solar.R, Wind, Temp)) 

## ----Correlations2-------------------------------------------------------
cor(data.frame(Ozone, Solar.R, Wind, Temp),  
use = "pairwise.complete.obs") 

## ----Correlations4-------------------------------------------------------
round(cor(data.frame(Ozone, Solar.R, Wind, Temp),  
use = "pairwise.complete.obs", method = "s"), 3) 

## ----loadDPlyR-----------------------------------------------------------
library(dplyr) 

## ----tblAirQuality-------------------------------------------------------
airquality2=tbl_df(airquality) 

## ----WindAverage---------------------------------------------------------
airquality %>% summarise(mean(Wind, na.rm = TRUE)) 

## ----WindSpeedByMonth----------------------------------------------------
airquality%>% group_by(Month) %>% summarise(mean(Wind, na.rm = TRUE)) 

## ----CountMonths---------------------------------------------------------
airquality%>% count(Month) 

## ----FindHottestMonths---------------------------------------------------
Grouped = group_by(airquality, Month) 
Summarised = summarise(Grouped, AveTemp=mean(Temp, na.rm = TRUE)) 
arrange(Summarised, desc(AveTemp)) 

## ----FindHottestMonthsPiping---------------------------------------------
airquality2 %>% 
group_by(Month) %>% 
summarise(AveTemp = mean(Temp, na.rm = TRUE))  %>% 
arrange(desc(AveTemp)) 

## ----DetachAirQuality----------------------------------------------------
detach(airquality) 

