#### Preamble ####
# Purpose: Simulates
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####

set.seed(302)

num_obs <- 1000

shelter = tibble(
  LOCATION_CITY = sample(1:5, size = num_obs, replace = TRUE),
  SECTOR = sample(1:5, size = num_obs, replace = TRUE),
  CAPACITY_TYPE = sample(1:2, size = num_obs, replace = TRUE),
  PROGRAM_MODEL = sample(1:2, size = num_obs, replace = TRUE),
  Capacity = rpois(num_obs,100),
  Occupancy_full = round(((LOCATION_CITY + SECTOR + CAPACITY_TYPE + PROGRAM_MODEL + 6* Capacity/max(Capacity)) / 20)))

sim_shelter = shelter |> mutate(
  LOCATION_CITY = case_when(
    LOCATION_CITY == 1 ~ "Etobicoke",
    LOCATION_CITY == 2 ~ "North York",
    LOCATION_CITY == 3 ~ "Scarborough",
    LOCATION_CITY == 4 ~ "Toronto",
    LOCATION_CITY == 5 ~ "Vaughan"
  ),
  SECTOR = case_when(
    SECTOR == 1 ~ "Families",
    SECTOR == 2 ~ "Men",
    SECTOR == 3 ~ "Mixed Adult ",
    SECTOR == 4 ~ "Women",
    SECTOR == 5 ~ "Youth"
  ),
  CAPACITY_TYPE = case_when(
    CAPACITY_TYPE == 1 ~ "Bed Based Capacity",
    CAPACITY_TYPE == 2 ~ "Room Based Capacity"
  ),
  PROGRAM_MODEL = case_when(
    PROGRAM_MODEL == 1 ~ "Emergency",
    PROGRAM_MODEL == 2 ~ "Transitional"
  )
)

head(sim_shelter)




