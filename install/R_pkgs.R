#! /usr/bin/Rscript

package_list <- c("argparse"
                  "caret",
                  "dplyr",
                  "ggplot2",
                  "knitr",
                  "pander",
                  "readr",
                  "rmarkdown",
                  "rstan",
                  "tidyr")

install.packages(package_list, 
                 dependencies = c("depends", "suggests"))
