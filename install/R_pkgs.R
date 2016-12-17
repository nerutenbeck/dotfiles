#! /usr/bin/Rscript

package_list <- c("argparser"
                  "caret",
                  "devtools",
                  "dplyr",
                  "ggplot2",
                  "knitr",
                  "pander",
                  "readr",
                  "roxygen2",
                  "rmarkdown",
                  "rstan",
                  "tidyr")

install.packages(package_list, 
                 dependencies = c("depends", "suggests"))
