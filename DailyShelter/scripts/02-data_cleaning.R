#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data.csv")

cleaned_data <-
  raw_data |> 
  mutate(OCCUPANCY_RATE = ifelse(is.na(OCCUPANCY_RATE_BEDS),0,OCCUPANCY_RATE_BEDS) +
           ifelse(is.na(OCCUPANCY_RATE_ROOMS),0,OCCUPANCY_RATE_ROOMS),
         Capacity = ifelse(is.na(CAPACITY_ACTUAL_BED),0,CAPACITY_ACTUAL_BED) +
           ifelse(is.na(CAPACITY_ACTUAL_ROOM),0,CAPACITY_ACTUAL_ROOM)) |>
  mutate(Occupancy_full = ifelse(OCCUPANCY_RATE == 100,1,0)) |>
  dplyr::select(Occupancy_full,LOCATION_CITY,SECTOR,CAPACITY_TYPE,PROGRAM_MODEL,Capacity) |>
  na.omit() |> mutate_if(is.character, as.factor)



#### Save data ####
write_csv(cleaned_data, "data/analysis_data/analysis_data.csv")
