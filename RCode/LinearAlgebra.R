## ----setup, include=FALSE------------------------------------------------
rm(list = ls())
if (!file.exists("Data")) dir.create("Data")
if (!file.exists("figures")) dir.create("figures")
if (!file.exists("tables")) dir.create("tables")
if (!file.exists("Other")) dir.create("Other")
set.seed(222664)
options(width = 60,  digits = 4, continue="   ")

## ----ChSetup, include = FALSE--------------------------------------------
opts_chunk$set(fig.path='figures/Algebra', comment=NA, dev=c('pdf','postscript','svg'), prompt=T, out.width="0.7\\textwidth") 

## ----CreateVector--------------------------------------------------------
x=1:4 
x 
class(x) 

## ----CreateMatrix--------------------------------------------------------
X=matrix(x, ncol=1) 
class(X) 
X 

## ----CreateIdentity------------------------------------------------------
I3=diag(3) 
I3 

## ----Transpose-----------------------------------------------------------
M=matrix(1:6,nrow=2) 
M 
t(M) 

## ----CreateHilbert-------------------------------------------------------
row(I3) 
Hilb3=row(I3)+col(I3)-1 

## ----AddConstant---------------------------------------------------------
x+2 
2+x 

## ----ScalarMult----------------------------------------------------------
5*x 
x*5 
5*X 

## ----MatrixElementMult---------------------------------------------------
A=matrix(1:4, nrow=2) 
B=matrix(7:10, nrow=2) 
A*B 

## ----MatrixMult----------------------------------------------------------
A%*%B 
B%*%A 

## ----MultiplyMatrices----------------------------------------------------
y=c(3,4) 
A%*%y 
y%*%A 

## ----GetInverse----------------------------------------------------------
A 
solve(A) 

## ----GetGInverse---------------------------------------------------------
M 
require(MASS) 
ginv(M) 

## ----ShowIdentity--------------------------------------------------------
M%*%ginv(M) 

## ----SolveLinearSet------------------------------------------------------
A 
b=c(5,7) 
solve(A,b) 

## ----Determinant---------------------------------------------------------
A 
det(A) 

## ----FullEigen-----------------------------------------------------------
H4=matrix(-1,nrow=4, ncol=4) 
H4=H4+row(H4)+col(H4) 
H4 
eigen(H4) 

## ----EigenVectors--------------------------------------------------------
eigen(H4)$vectors 

## ----cleanup, include=FALSE----------------------------------------------
rm(list = ls())

