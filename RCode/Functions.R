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

