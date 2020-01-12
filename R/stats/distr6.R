### R6 interface to 42 probability distributions and 11 kernels
###
### Manual: https://cran.r-project.org/web/packages/distr6/distr6.pdf
### Version: 1.3.1
###
### Date created: 2020-01-08
### Date updated: 2020-01-08
library(distr6)

### Construct a normal distribution
n = Normal$new(verbose = TRUE)
n$print()
n$parameters()

## n$setParameterValue(prec = 2)
## n$getParameterValue("prec")
n$summary(full = FALSE)
n$properties()
n$traits()

n$pdf(2)          # dnorm
n$cdf(2)          # pnorm
n$quantile(0.975) # qnorm
n$rand(10)        # rnorm

n$mean()
n$variance()
n$entropy()
n$mgf(1)
n$cf(1)

head(listDistributions(filter = list(ValueSupport = "discrete",
                                     package = "distr6")))
