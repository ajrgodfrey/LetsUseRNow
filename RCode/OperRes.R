## ----ORAssignment--------------------------------------------------------
require(lpSolve)
set.seed(3010)
APCost.mat = matrix(sample(10:100, 16), nrow=4)
APCost.mat
Sol = lp.assign(APCost.mat)
names(Sol)
Sol$solution
Sol$objval
Sol

## ----ORTransport---------------------------------------------------------
require(lpSolve)
set.seed(3010)
TPCost.mat = matrix(sample(10:100, 30), nrow = 5)
TPCost.mat

DemandSigns = rep (">", 6)
DemandLimits = sample(50:300, 6)
DemandLimits
SupplySigns = rep ("<", 5)
SupplyLimits = sample(100:500, 5)
SupplyLimits
Sol = lp.transport (TPCost.mat, "min", SupplySigns, SupplyLimits, DemandSigns, DemandLimits, compute.sens=0)
Sol$solution

