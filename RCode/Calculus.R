## ----SineCurve-----------------------------------------------------------
MySine <- function(x){ sin(x)} 
curve(MySine, -4*pi, 2*pi, n = 2001) 

## ----Derivation----------------------------------------------------------
y=expression(exp(2*x)) 
D(y,"x") 

