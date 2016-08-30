## ----BasicSummaries------------------------------------------------------
Ozone.count = length(Ozone)
Ozone.unique = length(unique(Ozone))
Ozone.Nobs = sum(!is.na(Ozone))
Ozone.Nmiss = sum(is.na(Ozone))
Ozone.mean = mean(Ozone, na.rm = TRUE)
Ozone.tmean5 = mean(Ozone, trim =0.025, na.rm = TRUE)
Ozone.tmean10 = mean(Ozone, trim =0.05, na.rm = TRUE)
Ozone.IQR = IQR(Ozone, na.rm = TRUE)
Ozone.sd = sd(Ozone, na.rm = TRUE)
Ozone.var = var(Ozone, na.rm = TRUE)
Ozone.skew = moments::skewness(Ozone, na.rm = TRUE)
Ozone.kurt = moments::kurtosis(Ozone, na.rm = TRUE)

## ----Quantiles1----------------------------------------------------------
Quantiles=quantile(Ozone, na.rm=TRUE)
QList=c("Minimum", "Lower Quartile", "Median", "Upper Quartile", "Maximum")
Results=data.frame(Quantile=QList, Value=Quantiles[1:5])

## ----Hist, fig.cap="The histogram", fig.height=5-------------------------
VI(hist(Ozone, xlab="Ozone", main="Histogram of Ozone"))

## ----Boxplot, fig.cap="The boxplot", fig.height=3.5----------------------
VI(boxplot(Ozone, horizontal=TRUE, main = "Boxplot of Ozone"))

## ----NormalityTests------------------------------------------------------
library(nortest)
Results = matrix(0, nrow=6, ncol=2)
dimnames(Results) = list(c("Shapiro-Wilk", "Anderson-Darling", "Cramer-von Mises",
"Lilliefors (Kolmogorov-Smirnov)", "Pearson chi-square", "Shapiro-Francia"), c("Statistic", "P Value"))
 SW =shapiro.test(Ozone)
Results[1,] = c(SW$statistic, SW$p.value)
AD = ad.test(Ozone)
Results[2,] = c(AD$statistic, AD$p.value)
CV = cvm.test(Ozone)
Results[3,] = c(CV$statistic, CV$p.value)
LI = lillie.test(Ozone)
Results[4,] = c(LI$statistic, LI$p.value)
PE = pearson.test(Ozone)
Results[5,] = c(PE$statistic, PE$p.value)
SF = sf.test(Ozone)
Results[6,] = c(SF$statistic, SF$p.value)

## ----NormalityTestsPrint, eval=FALSE-------------------------------------
## Results

## ----NormPlot, fig.cap="The normality plot", fig.height=7----------------
qqnorm(Ozone, main = "Normality Plot for Ozone")
qqline(Ozone)

## ----MomentsTests--------------------------------------------------------
library(moments)
Results = matrix(0, nrow=2, ncol=3)
dimnames(Results)= list(c( "D'Agostino skewness", "Anscombe-Glynn kurtosis"),
 c("Statistic","Z",  "P Value"))
AG = moments::agostino.test(Ozone)
AN = moments::anscombe.test(Ozone)
Results[1,] = c(AG$statistic, AG$p.value)
Results[2,] = c(AN$statistic, AN$p.value)

## ----MomentsTestsPrint, eval=FALSE---------------------------------------
## Results

