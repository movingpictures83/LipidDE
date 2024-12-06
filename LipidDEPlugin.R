knitr::opts_chunk$set(echo = TRUE, message = FALSE, warning = FALSE, fig.width = 8)
library(lipidr)
library(ggplot2)

input <- function(inputfile) {
   d_normalized <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {

de_results = de_analysis(
  data=d_normalized,
  HighFat_water - NormalDiet_water,
  measure="Area"
)

saveRDS(de_results, outputfile)
}
