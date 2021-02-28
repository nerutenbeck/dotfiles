install.packages(
  c(
    "tidyverse",
    "devtools",
    "sf",
    "tidybayes",
    "bayesplot",
    "brms"
  )
)

remotes::install_github("stan-dev/cmdstanr")
remotes::install_github("stan-dev/posterior")