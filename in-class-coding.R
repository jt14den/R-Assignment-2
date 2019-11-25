# 2019-11-25
#load libraries we need today:
library(tidyverse)
library(sf)
library(tmap)

#load the data 
arrests <- read_csv('data/aug6_12_arrest_data.csv')
arrests_sf <- st_as_sf(arrests, coords = c("longitude", "latitude"), crs = 4326)
#geometry type:  MULTILINESTRING
la_county <- st_read(dsn ="data/DRP_COUNTY_BOUNDARY/DRP_COUNTY_BOUNDARY.shp")
la_zips_st <- st_read(dsn = 'data/CAMS_ZIPCODE_STREET_SPECIFIC/CAMS_ZIPCODE_STREET_SPECIFIC.shp')
#geometry type:  MULTIPOLYGON
la_zips <- st_read(dsn = "data/Los_Angeles_City_Zip_Codes/Los_Angeles_City_Zip_Codes.shp")
#geometry type:  MULTILINESTRING
la_freeways <- st_read(dsn ="data/CAMS_FREEWAY_SHIELDS/CAMS_FREEWAY_SHIELDS.shp")
## the below command will make our zip data valid
la_zips <- lwgeom::st_make_valid(la_zips)

## follow along in class! 
