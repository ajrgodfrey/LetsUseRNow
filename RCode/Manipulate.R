## ----Sorting-------------------------------------------------------------
x=round(rnorm(10),2) 
sort(x) 
sort(x, decreasing=TRUE) 

## ----Ordering------------------------------------------------------------
Home=c("Jonathan", "Callum", "Annabelle", "Cordelia", "Hershey") 
order(Home) 
Home[order(Home)] 

## ----Ordering2-----------------------------------------------------------
SomeLetters=c("A", "B", "a", "c", "b", "C") 
SomeLetters[order(SomeLetters)] 

## ----Ordering3-----------------------------------------------------------
x=round(rnorm(10),2) 
x 
RunOrder=sample(10) 

## ----Ordering4-----------------------------------------------------------
RunOrder 
Data=data.frame(x,RunOrder) 
Data[order(RunOrder),] 

## ----GetData-------------------------------------------------------------
data(airquality) 

## ----GrabRows1-----------------------------------------------------------
nrow(airquality[airquality$Wind<10,]) 
nrow(airquality[airquality$Temp<60,]) 

## ----GrabRows3-----------------------------------------------------------
nrow(airquality[airquality$Temp==69,]) 

## ----GrabRows2-----------------------------------------------------------
airquality[airquality$Wind<10&airquality$Temp<60,] 

## ----loadDPlyR-----------------------------------------------------------
library(dplyr) 

## ----tbl_dfAirQuality----------------------------------------------------
airquality2 = tbl_df(airquality) 

## ----GlimpseAirQuality---------------------------------------------------
glimpse(airquality) 

## ----GrabRows4-----------------------------------------------------------
filter(airquality, Wind<10&Temp<60) 

## ----GrabRows5-----------------------------------------------------------
airquality %>% filter(Wind<10&Temp<60) 

## ----HottestDays---------------------------------------------------------
airquality2 %>% arrange(desc(Temp)) 

## ----MutateData----------------------------------------------------------
airquality %>% mutate(TempC = (Temp - 32) * 5 / 9) %>% head() 

## ----MutateAlt, eval=FALSE-----------------------------------------------
airquality$TempC = (airquality$Temp - 32) * 5 / 9 

## ----TransmuteData-------------------------------------------------------
airquality2 %>% transmute(TempC = (Temp - 32) * 5 / 9) 

## ----ExtractSampleN------------------------------------------------------
airquality %>% sample_n(4) 

## ----ExtractSampleFrac---------------------------------------------------
airquality %>% sample_frac(0.05) 

