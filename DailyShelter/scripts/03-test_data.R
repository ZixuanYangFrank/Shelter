#### Preamble ####
# Purpose: Tests the variables 
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(tidyverse)

#### Test data ####

data = read_csv("data/analysis_data/analysis_data.csv")

## test if occupancy rate between 0 and 100
data$OCCUPANCY_RATE |> class() == "numeric"
  
data$OCCUPANCY_RATE |> min() >= 0

data$OCCUPANCY_RATE |> max() <=100



## test if the location is string variable 
data$LOCATION_CITY |> class() == "character"



## test if the sector is string variable 
data$SECTOR |> class() == "character"


## test if the gender is string variable 
data$gender |> class() == "character"

## test if the CAPACITY_TYPE has two levels 
data$CAPACITY_TYPE |> class() == "character"
data$CAPACITY_TYPE |>
  unique() == c("Room Based Capacity","Bed Based Capacity")




## test if the PROGRAM_MODEL has two levels 
data$PROGRAM_MODEL |> class() == "character"
data$PROGRAM_MODEL |>
  unique() == c("Emergency","Transitional")


## test the capacity is numeric

data$Capacity |> class() == "numeric"




