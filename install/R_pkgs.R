#! /usr/bin/Rscript

package_list <- c("dplyr",
                  "tidyr",
                  "readr",
                  "ggplot2",
                  "rmarkdown",
                  "knitr",
                  "pander",
                  "rstan")

install.packages(package_list)
