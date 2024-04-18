#### Preamble ####
# Purpose: Logistic Models. 
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
analysis_data <- read_csv("data/analysis_data/analysis_data.csv")

analysis_data <- analysis_data |> mutate_if(is.character, as.factor)
### Model data ####

### Model data ####
Shelter_model <-
  stan_glm(
    Occupancy_full ~ Capacity + LOCATION_CITY + SECTOR + CAPACITY_TYPE + PROGRAM_MODEL,
    data = analysis_data,
    family = binomial(link = "logit"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = 
      normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853
  )
#### Save model ####

saveRDS(
  Shelter_model,
  file = "models/Shelter_model.rds"
)

