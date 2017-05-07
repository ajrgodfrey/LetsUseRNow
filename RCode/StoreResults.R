## ----HistRand10000Z, eval=2, results='hide', include=FALSE---------------
x11() 
hist(rnorm(10000), xlab="x", main="") 
savePlot(".\\figures\\HistRandValsStandNorm.eps", type = "eps") 
dev.off() 

## ----CreateX-------------------------------------------------------------
x=1:20 
x 

## ----CreateSinkFile, eval=-3, results='hide'-----------------------------
sink(".\\other\\JustPrintX.txt") 
x 
sink() 

## ----CreateSink2, eval=-3------------------------------------------------
sink(".\\other\\JustPrintX2.txt") 
print(x) 
sink() 

## ----CreateSink3, eval=-3------------------------------------------------
sink(".\\other\\JustPrintX3.txt") 
cat(x) 
sink() 

## ----CreateSinkFile4-----------------------------------------------------
cat(x, file=".\\other\\JustCatX.txt") 

