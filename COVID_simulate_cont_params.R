####
## Parameters
####

fitting            <- FALSE   ## Small change in pomp objects if fitting or simulating
## TRUE if COVID_fit previously run, FALSE if COVID_fit was just run and global environment is still full
use.rds            <- TRUE
#rds.name           <- "output/Santa Clara_TRUE_FALSE_0_2020-06-02_cont_temp_NZ_sig_exp.Rds"
#rds.name           <- "output/Santa Clara_TRUE_FALSE_0_2020-06-04_cont_temp_NZ_sig_exp_gamma.Rds"
rds.name           <- "output/Santa Clara_TRUE_FALSE_0_2020-06-05_cont_temp_NZ_sig_exp_gamma.rds"
mobility.file      <- "mobility/unfolded_Jun03.rds"
more.params.uncer  <- FALSE   ## Fit with more (FALSE) or fewer (TRUE) point estimates for a number of parameters
nsim               <- 200     ## Number of epidemic simulations for each parameter set
fit.E0             <- TRUE    ## Was E0 also fit?
usable.cores       <- 1       ## Number of cores to use to fit

int.beta0_sigma    <- 0.16       ## heterogeneity value

## Where to simulate from
sir_init.mid       <- FALSE         ## Starts the epidemic from some non-zero timepoint
sir_init.mid.t     <- "2020-05-28"  ## Date to simulate forward from

## Sim and plotting details
sim_length         <- 200     ## How many days to run the simulation
state.plot         <- "D"     ## State variable for plotting (Hospit [H], Death [D], or Cases [C])
plot.log10         <- TRUE    ## Plot on a log10 scale or not
print.plot         <- FALSE

counter.factual   <- FALSE    ## If true do a special analysis that ignores a lot of these other parameters
cf.type           <- "may1"   ## Specifically modeled counterfactual analyses: no_int, delay, may1 coded for now

####
## Intervention parameters
####
int.movement       <- "post"     ## Shape of human movement after the data ends ::: pre, post, mid
int.type           <- "tail"    ## Extra intervention apart from the movement  ::: none, inf_iso, tail
int.init           <- "2020-06-08"
int.end            <- "2020-08-01"

## Test and Isolate parameters
iso_mild_level     <- 0.2
iso_severe_level   <- 0.2

## Tail chopping parameters
int.catch_eff      <- 0.5       ## effectiveness at catching beta0 values above the beta_catch (0 - 1)
int.beta_catch     <- 0.1       ## beta0 values caught by intervention; alternatively, specify by top percent of distribution to trim
int.beta_catch_type<- "pct"     ## if pct, treated as percentile, otherwise, as absoulte value
# int.beta_red       <- 1       ## new values after those that are caught

loglik.thresh      <- 2       ## Keep parameter sets with a likelihood within top X loglik units
params.all         <- TRUE    ## Keep all fitted parameters above loglik thresh?...
nparams            <- 50      ## ...if FALSE, pick a random subset for speed

fit.with           <- "D_C"   ## Fit with D (deaths) or H (hospitalizations) -- Need your own data for H -- or both deaths and cases (D_C).
fit_to_sip         <- TRUE    ## Fit beta0 and shelter in place strength simultaneously?
meas.nb            <- TRUE    ## Negative binomial measurement process?
import_cases       <- FALSE   ## Use importation of cases?
fit.minus          <- 0       ## Use data until X days prior to the present

fixed.E0           <- !fit.E0
detect.logis       <- T

focal.county      <- "Santa Clara"
focal.state_abbr  <- "CA"