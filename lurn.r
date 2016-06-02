library(knitr)

# some chapters have no code chunks
knit("Intro.rnw")
knit("Citation.rnw")
knit("BlindUse.rnw")
knit("GoodIdeas.rnw")

### but most have chunks for sharing
# data management
knit("DataEntry.rnw")
purl("DataEntry.rnw")
knit("ImportData.rnw")
purl("ImportData.rnw")
knit("Manipulate.rnw")
purl("Manipulate.rnw")
knit("ExportData.rnw")
purl("ExportData.rnw")
knit("StoreResults.rnw")
purl("StoreResults.rnw")

# graphics
knit("SimpleGraphs.rnw")
purl("SimpleGraphs.rnw")
knit("ComplexGraphs.rnw")
purl("ComplexGraphs.rnw")
knit("maps.rnw")
purl("maps.rnw")

# statistical
knit("NumericalEDA.rnw")
purl("NumericalEDA.rnw")
knit("BasicInference.rnw")
purl("BasicInference.rnw")
knit("Regression.rnw")
purl("Regression.rnw")
knit("ANOVA.rnw")
purl("ANOVA.rnw")
knit("TimeSeries.rnw")
purl("TimeSeries.rnw")
knit("Multivariate.rnw")
purl("Multivariate.rnw")
knit("QualityControl.rnw")
purl("QualityControl.rnw")

# R management and use
knit("Additional.rnw")
purl("Additional.rnw")
knit("vi.rnw")
purl("vi.rnw")

# mathematical
knit("Calculus.rnw")
purl("Calculus.rnw")
knit("Scientific.rnw")
purl("Scientific.rnw")
knit("LinearAlgebra.rnw")
purl("LinearAlgebra.rnw")

# advanced
knit("Functions.Rnw")
purl("Functions.Rnw")

library(BrailleR)

example(UniDesc)
