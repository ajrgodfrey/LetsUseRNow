## ----MapsPackage---------------------------------------------------------
library(maps) 
library(mapdata) 
library(ggmap) 

## ----WholeNZ, fig.height=7, fig.width=5----------------------------------
map("nzHires", ylim=c(-48,-34), xlim=c(166,179), fill=T, col=3) 
box() 
polygon(x=c(172, 179, 179, 172), y=c(-42,-42, -39,-39), border=1, lty=2) 

## ----PartNZ, fig.width=10.1, fig.height=5.7------------------------------
map("nzHires", ylim=c(-42,-39), xlim=c(172,179), fill=T, col=3) 
box() 
map.cities(minpop=70000,maxpop=80000, pch=16, col=2, cex=2) 
map.cities(capitals=1, col=4, pch=19) 

## ----Denmark-------------------------------------------------------------
Places = geocode(location=c("Aalborg", "Copenhagen")) 
Places 
map('worldHires', 'Denmark') 
title('Denmark') 
points(Places, pch=16) 

