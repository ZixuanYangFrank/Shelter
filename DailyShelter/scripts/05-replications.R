#### Preamble ####
# Purpose: Replicated Table 2 and figure 2
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(tidyverse)
library(readr)
library(gridExtra)
library(modelsummary)



#### Table 2

Shelter_model  <- readRDS("models/Shelter_model.rds")


modelsummary(
  list(
    "full occupancy" = Shelter_model
  ), statistic = "mad",stars = TRUE
)


#### Figure 2. z-Statistics in 25 Top Economics Journals

modelplot(Shelter_model, conf_level = 0.95) +
  labs(x = "95 Percent Credibility Interval")
