#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Zixuan Yang
# Date: 01 April 2024
# Contact: zx.yang@utoronto.ca 
# License: UofT
# Pre-requisites: 
# Any other information needed?  No


#### Workspace setup ####
library(opendatatoronto)
library(dplyr)

# get package
package <- show_package("21c83b32-d5a8-4106-a54f-010dbe49f6f2")
package

# get all resources for this package
resources <- list_package_resources("21c83b32-d5a8-4106-a54f-010dbe49f6f2")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
the_raw_data <- filter(datastore_resources, row_number()==1) %>% get_resource()


#### Save data ####
# [...UPDATE THIS...]
# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(the_raw_data, "data/raw_data/raw_data.csv") 

         
